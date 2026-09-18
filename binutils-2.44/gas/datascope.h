#ifndef DATASCOPE_H
#define DATASCOPE_H

#include "as.h"
#include <stdint.h>
#include "frags.h"

// xom section name
#ifndef XOM_SECTION_NAME
#define XOM_SECTION_NAME	".xom"
#endif

// Collected embedded data information
#ifndef XOM_DATA_SECTION_NAME
#define XOM_DATA_SECTION_NAME	".xomdata"
#endif

extern segT xom_section;

extern segT xom_data_section;
extern void xom_data_section_init (void);

// global variables
extern symbolS *text_cur_symbol;
extern const char* cur_func_name;
extern const char* alias_func_name;
extern char *log_file;

extern bool is_in_func; /* Is the current processing position inside a function? */
extern bool is_finish_subseg; /* Check whether gas has already made a pass over the assembly file. */
extern unsigned long long text_frag_index;

extern unsigned int total_hardcoded_bytes; /* Total size of hardcoded bytes */
extern bool fall_through_insn; /* Whether the current instruction is a non-control-flow jump instruction (fall-through) */
extern unsigned int direct_code_num; /* Number of hardcoded bytes located at direct jump target addresses */
extern unsigned int direct_data_num; /* Number of hardcoded bytes located at direct data access addresses */
extern unsigned int fall_through_num; /* Number of hardcoded bytes located after non-jump instructions (code) */
extern unsigned int idirect_code_num; /* Number of hardcoded bytes located at indirect jump target addresses */
extern unsigned int idirect_data_num; /* Number of hardcoded bytes located at indirect jump target addresses */
extern bool flash_symbol_point; /* Whether the current instruction is a non-control-flow jump instruction */


///////////////// struct for frag  /////////////////
struct meteheader {
	/* magic "xom" */
	char magic[4];
	
	/* file name size */
	unsigned int name_size;

	/* file name, begin here */
	// char name[1];
} ATTRIBUTE_PACKED;
typedef struct meteheader meteheaderS;
extern meteheaderS mete_header;

struct metedata_test {
	/* Index number of the frag in the corresponding assembly file */
	unsigned int frag_index;

	/* Size of the frag */
	unsigned int frag_size;

	/* Offset of the frag within the section after assembly */
	// addressT frag_address;

	/* Metadata attributes of the frag */
	struct frag_flags fr_flags;

	/* Size of the symbol bound to the frag */
	unsigned int symbol_size;

	/* symbol name, begin here */
	// char name[1];
} ATTRIBUTE_PACKED;
typedef struct metedata_test metedataTS;

extern void write_meteheader_for_test (unsigned int total_hardcoded_bytes, unsigned int bytes_frag_num, 
                              unsigned int direct_code_num, unsigned int direct_data_num, 
							  unsigned int fall_through_num);
extern void write_metedata_for_test (metedataTS *data, const char* sym_name);

extern void datascope_init (void);
extern void datascope_clean (void);
extern void update_cur_symbol (symbolS *sym);
extern void update_frag_symbol (void);
extern symbolS * get_cur_symbol (void);
extern void set_alias_func_name (const char*);
extern const char* get_cur_func_name (void);

// split data
extern void splitdata (void);
extern void debug_section (bfd *abfd ATTRIBUTE_UNUSED,
			 segT section,
			 void *xxx ATTRIBUTE_UNUSED);

#endif // DATASCOPE_H
