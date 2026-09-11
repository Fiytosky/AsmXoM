#include "datascope.h"
#include "symbols.h"
#include "subsegs.h"

#include <limits.h>
#include <signal.h>
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

segT xom_section;
segT xom_data_section;

symbolS *text_cur_symbol;
const char* cur_func_name;
char *log_file;

bool is_in_func;
bool is_finish_subseg;
unsigned long long text_frag_index;
meteheaderS mete_header;

unsigned int total_hardcoded_bytes; 
bool fall_through_insn; 
unsigned int direct_code_num; 
unsigned int direct_data_num; 
unsigned int fall_through_num; 
unsigned int idirect_code_num; 
unsigned int idirect_data_num; 
bool flash_symbol_point;


void xom_data_section_init () {
	// as_warn ("Create .xom section");
	xom_data_section = subseg_new (XOM_DATA_SECTION_NAME, 0);
	bfd_set_section_flags (xom_data_section, SEC_HAS_CONTENTS);

	subseg_set (xom_data_section, 0);
}


static void
log_file_init () {
	char *filename = (char*)malloc(64 * sizeof(char));
	if (filename == NULL) {
		as_fatal ("Failed to create log file -> memory allocation failed");
		return;
	}

	const char* log_dir = getenv("ASMXOM_HOME");
	if (log_dir == NULL) {
		log_dir = "/tmp";
	}
	sprintf(filename, "%s/workspace/data-info/data_%d.txt", log_dir, getpid());

	log_file = filename;
	as_warn (_("The log will be written in file %s"), log_file);
}

void datascope_init () {
	text_cur_symbol = NULL;
	cur_func_name = NULL;

	is_in_func = false;
	is_finish_subseg = false;
	text_frag_index = 0;

	total_hardcoded_bytes = 0;
	fall_through_insn = false;
	direct_code_num = 0; 
	direct_data_num = 0; 
	fall_through_num = 0; 
	idirect_code_num = 0; 
	idirect_data_num = 0; 
	flash_symbol_point = false;

	// 当前-g参数会导致subseg_new(XOM_DATA_SECTION)失败，当开启--dcollect时
	// 禁止-g参数生效-->设置debug_type和dwarf_level为默认值
	///FIXME: fix this bug
	debug_type = DEBUG_UNSPECIFIED;
	dwarf_level = 3;
	
	log_file_init ();
}

void datascope_clean () {
	free (log_file);
}

void update_cur_symbol (symbolS *sym) {
	text_cur_symbol = sym;
}

void update_frag_symbol (void) {
	frag_now->frag_symbol = text_cur_symbol;
}

symbolS * get_cur_symbol (void) {
	return text_cur_symbol;
}

// metedata
void write_meteheader_for_test (unsigned int total_hardcoded_bytes, unsigned int bytes_frag_num, 
                       unsigned int direct_code_num, unsigned int direct_data_num, 
					   unsigned int fall_through_num) {
	gas_assert (now_seg == xom_data_section);

	strcpy (mete_header.magic, "xom");
	unsigned int x;
	const char *filename;
	filename = as_where (&x);
	if (!filename) {
		filename = "unkown_name";
	}
	unsigned int size = strlen (filename) + 1;
	mete_header.name_size = size;

	size_t uint_size = sizeof(unsigned int);
	size_t total_size = sizeof(meteheaderS) + size + uint_size * 5;
	char *p = frag_more (total_size);

	memcpy (p, &mete_header, sizeof(meteheaderS));
	memcpy (p + sizeof(meteheaderS), filename, size);
	memcpy (p + sizeof(meteheaderS) + size, &total_hardcoded_bytes, uint_size);
	memcpy (p + sizeof(meteheaderS) + size + uint_size, &bytes_frag_num, uint_size);
	memcpy (p + sizeof(meteheaderS) + size + uint_size * 2, &direct_code_num, uint_size);
	memcpy (p + sizeof(meteheaderS) + size + uint_size * 3, &direct_data_num, uint_size);
	memcpy (p + sizeof(meteheaderS) + size + uint_size * 4, &fall_through_num, uint_size);
	// as_warn (_("meteheader filename: %s, write_size: %u"), filename, total_size);
	as_datascope (_("meteheader filename: %s, write_size: %u, total_hardcoded_bytes: %u, bytes_frag_num: %u, direct_code_num: %u, direct_data_num: %u, fall_through_num: %u"),
					 filename, total_size, total_hardcoded_bytes, bytes_frag_num, direct_code_num, direct_data_num, fall_through_num);
}

void write_metedata_for_test (metedataTS *data, const char *syn_name) {
	gas_assert (now_seg == xom_data_section);
	
	size_t total_size = sizeof(metedataTS) + data->symbol_size;
	char *p = frag_more (total_size);

	memcpy (p, data, sizeof(metedataTS));
	memcpy (p + sizeof(metedataTS), syn_name, data->symbol_size);
	// as_warn (_("write frag_info, frag_index: %u, write_size: %u"), data->frag_index, total_size);
}

// log
// copy from messages.c
static void
identify (const char *file)
{
  static int identified;

  if (identified)
    return;
  identified++;

  if (!file)
    {
      unsigned int x;
      file = as_where (&x);
    }

  if (file)
    fprintf (stderr, "%s: ", file);
  fprintf (stderr, _("Assembler messages:\n"));
}

static void
as_datascope_internal (const char *file, unsigned int line, char *buffer)
{
  bool context = false;

  if (file == NULL)
    {
      file = as_where_top (&line);
      context = true;
    }

	FILE *fp = fopen(log_file, "a");
	if (fp) {
		identify (file);
		if (file)
			{
				if (line != 0)
		fprintf (fp, "%s:%u: %s%s\n", file, line, _("Warning: "), buffer);
				else
		fprintf (fp, "%s: %s%s\n", file, _("Warning: "), buffer);
			}
		else
			fprintf (fp, "%s%s\n", _("Warning: "), buffer);

		fclose(fp);
	} else {
		identify (file);
		if (file)
			{
				if (line != 0)
		fprintf (stderr, "%s:%u: %s%s\n", file, line, _("Warning: "), buffer);
				else
		fprintf (stderr, "%s: %s%s\n", file, _("Warning: "), buffer);
			}
		else
			fprintf (stderr, "%s%s\n", _("Warning: "), buffer);
	}

  if (context)
    as_report_context ();
}

void as_datascope (const char *format, ...) {
	va_list args;
  char buffer[2000];

  if (!flag_no_warnings) {
		va_start (args, format);
		vsnprintf (buffer, sizeof (buffer), format, args);
		va_end (args);
		as_datascope_internal ((char *) NULL, 0, buffer);
	}
}

// fiytosky, add for split data
void debug_section (bfd *abfd ATTRIBUTE_UNUSED,
			        segT section,
			        void *xxx ATTRIBUTE_UNUSED) {
    printf("sec_name: %s\n", section->name);
}
