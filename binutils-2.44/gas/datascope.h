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
extern char *log_file;

extern bool is_in_func; /* 当前处理位置是否在function中*/
extern bool is_finish_subseg; /* gas是否已经遍历一遍汇编文件 */
extern unsigned long long text_frag_index;

extern unsigned int total_hardcoded_bytes; /* 硬编码字节大小 */
extern bool fall_through_insn; /* 当前指令是否为非控制流跳转指令 */
extern unsigned int direct_code_num; /* 硬编码字节位于直接跳转目标地址的数量 */
extern unsigned int direct_data_num; /* 硬编码字节位于直接数据访存地址的数量 */
extern unsigned int fall_through_num; /* 硬编码字节位于非跳转指令之后的数量(code) */
extern unsigned int idirect_code_num; /* 硬编码字节位于非直接跳转目标地址的数量 */
extern unsigned int idirect_data_num; /* 硬编码字节位于非直接跳转目标地址的数量 */
extern bool flash_symbol_point; /* 当前指令是否为非控制流跳转指令 */


///////////////// frag 使用的结构体 /////////////////
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
	/* frag在对应汇编文件中的索引号 */
	unsigned int frag_index;

	/* frag的大小 */
	unsigned int frag_size;

	/* frag在汇编结束后的段内偏移 */
	// addressT frag_address;

	/* frag元数据属性 */
	struct frag_flags fr_flags;

	/* frag绑定符号的size */
	unsigned int symbol_size;

	/* symbol name, begin here */
	// char name[1];
} ATTRIBUTE_PACKED;
typedef struct metedata_test metedataTS;

extern void write_meteheader_for_test (unsigned int total_hardcoded_bytes, unsigned int bytes_frag_num, 
                              unsigned int direct_code_num, unsigned int direct_data_num, 
							  unsigned int fall_through_num);
extern void write_metedata_for_test (metedataTS *data, const char* sym_name);

// 全局函数
extern void datascope_init (void);
extern void datascope_clean (void);
extern void update_cur_symbol (symbolS *sym);
extern void update_frag_symbol (void);
extern symbolS * get_cur_symbol (void);

// 分离嵌入数据
extern void splitdata (void);
extern void debug_section (bfd *abfd ATTRIBUTE_UNUSED,
			 segT section,
			 void *xxx ATTRIBUTE_UNUSED);

#endif // DATASCOPE_H
