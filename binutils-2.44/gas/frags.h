/* frags.h - Header file for the frag concept.
   Copyright (C) 1987-2025 Free Software Foundation, Inc.

   This file is part of GAS, the GNU Assembler.

   GAS is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3, or (at your option)
   any later version.

   GAS is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with GAS; see the file COPYING.  If not, write to the Free
   Software Foundation, 51 Franklin Street - Fifth Floor, Boston, MA
   02110-1301, USA.  */

#ifndef FRAGS_H
#define FRAGS_H

// fiytosky, add. Detailed annotation of the frag type
struct frag_flags {
  // Whether this frag is the first frag in the frag_chain
  unsigned int first_frag : 1;

  // Whether this frag is an instruction frag
  unsigned int insn_frag : 1;

  // Whether this frag is a data frag
  unsigned int data_frag : 1;

  // Whether this frag is a mix of code and data
  unsigned int mixd_frag : 1;

  // Whether this frag is unknown or unidentifiable
  unsigned int unknown_frag : 1;

  // Whether the type of this frag is align
  // fr_type = rs_align / rs_align_code
  unsigned int align_frag : 1;

  // Whether this frag only contains an anchor symbol with a size of 0.
  // This kind of frag does not affect the size statistics of embedded data,
  // but it affects the access pattern of the embedded data.
  // In assembly code, accesses to embedded data are very likely made
  // through this anchor symbol rather than the actual data symbol.
  // example: openssl-3.3.5 poly1305-x86_64.s
  /*
    leaq	.Lconst(%rip),%rcx
    leaq	48+64(%rdi),%rdi
    vmovdqa	96(%rcx),%ymm9
     ...
    .align	64
    .Lconst:
    .Lmask24:
    .long	0x0ffffff,0,0x0ffffff,0,0x0ffffff,0,0x0ffffff,0
    .L129:
    .long	16777216,0,16777216,0,16777216,0,16777216,0
    .Lmask26:
    .long	0x3ffffff,0,0x3ffffff,0,0x3ffffff,0,0x3ffffff,0
    .Lpermd_avx2:
    .long	2,2,2,3,2,0,2,1
    .Lpermd_avx512:
  */
  unsigned int anchor_frag : 1;
};

/* A code fragment (frag) is some known number of chars, followed by some
   unknown number of chars. Typically the unknown number of chars is an
   instruction address whose size is yet unknown. We always know the greatest
   possible size the unknown number of chars may become, and reserve that
   much room at the end of the frag.
   Once created, frags do not change address during assembly.
   We chain the frags in (a) forward-linked list(s). The object-file address
   of the 1st char of a frag is generally not known until after relax().
   Many things at assembly time describe an address by {object-file-address
   of a particular frag}+offset.

   BUG: it may be smarter to have a single pointer off to various different
   notes for different frag kinds.  See how code pans.  */

struct frag {
  /* Object file address (as an octet offset).  */
  addressT fr_address;
  /* When relaxing multiple times, remember the address the frag had
     in the last relax pass.  */
  addressT last_fr_address;

  /* (Fixed) number of octets we know we have.  May be 0.  */
  valueT fr_fix;
  /* May be used for (Variable) number of octets after above.
     The generic frag handling code no longer makes any use of fr_var.  */
  offsetT fr_var;
  /* For variable-length tail.  */
  offsetT fr_offset;
  /* For variable-length tail.  */
  symbolS *fr_symbol;
  /* Points to opcode low addr byte, for relaxation.  */
  char *fr_opcode;

  /* Chain forward; ascending address order.  Rooted in frch_root.  */
  struct frag *fr_next;

  /* Where the frag was created, or where it became a variant frag.  */
  const char *fr_file;
  unsigned int fr_line;

#ifndef NO_LISTING
  struct list_info_struct *line;
#endif

  /* A serial number for a sequence of frags having at most one alignment
     or org frag, and that at the tail of the sequence.  */
  unsigned int region:16;

  /* Flipped each relax pass so we can easily determine whether
     fr_address has been adjusted.  */
  unsigned int relax_marker:1;

  /* Used to ensure that all insns are emitted on proper address
     boundaries.  */
  unsigned int has_code:1;
  unsigned int insn_addr:6;

  /* What state is my tail in? */
  relax_stateT fr_type;
  relax_substateT fr_subtype;

#ifdef USING_CGEN
  /* Don't include this unless using CGEN to keep frag size down.  */
  struct {
    /* CGEN_INSN entry for this instruction.  */
    const struct cgen_insn *insn;
    /* Index into operand table.  */
    int opindex;
    /* Target specific data, usually reloc number.  */
    int opinfo;
  } fr_cgen;
#endif

#ifdef TC_FRAG_TYPE
  TC_FRAG_TYPE tc_frag_data;
#endif
#ifdef OBJ_FRAG_TYPE
  OBJ_FRAG_TYPE obj_frag_data;
#endif

  /* fiytosky, add. */
  struct basic_block *last_bb; // last basic block in this fragment
  unsigned int bb_offset; // basic block offset in this fragment
  offsetT last_bb_added_size; // last basic block may be added
  offsetT last_bb_added_fix_size; // fr_fix added number
  asection *parent; // which section it belongs to

  // fiytosky, add
  struct frag_flags fr_flags;
  symbolS *frag_symbol; /* Records the symbol associated with the frag */
  symbolS *frag_anchor; /* anchor symbol */
  unsigned int frag_index;

  bool frag_has_hardcode; /* Whether the frag contains hardcoded bytes */
  bool frag_has_insn; /* Whether instructions have been written to the frag */
  bool begin_bytes; /* Hardcoded bytes are located at the beginning of the frag */
  bool frag_has_checked;
  unsigned int hardcode_size;

  /* Data begins here.  */
  char fr_literal[1];
};

#define SIZEOF_STRUCT_FRAG \
((char *) zero_address_frag.fr_literal - (char *) &zero_address_frag)
/* We want to say fr_literal[0] above.  */

/* Current frag we are building.  This frag is incomplete.  It is,
   however, included in frchain_now.  The fr_fix field is bogus;
   instead, use frag_now_fix ().  */
COMMON fragS *frag_now;
extern addressT frag_now_fix (void);
extern addressT frag_now_fix_octets (void);

/* For foreign-segment symbol fixups.  */
COMMON fragS zero_address_frag;
COMMON fragS predefined_address_frag;

extern void frag_append_1_char (int);
#define FRAG_APPEND_1_CHAR(X) frag_append_1_char (X)

void frag_init (void);
fragS *frag_alloc (struct obstack *, size_t);
void frag_grow (size_t nchars);
char *frag_more (size_t nchars);
void frag_align (int alignment, int fill_character, int max);
void frag_align_pattern (int alignment, const char *fill_pattern,
			 size_t n_fill, int max);
void frag_align_code (int alignment, int max);
void frag_new (size_t old_frags_var_max_size);
void frag_wane (fragS * fragP);
size_t frag_room (void);

char *frag_variant (relax_stateT type,
		    size_t max_chars,
		    size_t var,
		    relax_substateT subtype,
		    symbolS * symbol,
		    offsetT offset,
		    char *opcode);

char *frag_var (relax_stateT type,
		size_t max_chars,
		size_t var,
		relax_substateT subtype,
		symbolS * symbol,
		offsetT offset,
		char *opcode);

bool frag_offset_fixed_p (const fragS *, const fragS *, offsetT *);
bool frag_offset_ignore_align_p (const fragS *, const fragS *, offsetT *);
bool frag_gtoffset_p (valueT, const fragS *, valueT, const fragS *, offsetT *);

unsigned int get_frag_count (void);
void clear_frag_count (void);

// fiytosky, add
/* handle anchor list*/
void frag_add_anchor (fragS *, symbolS *);
struct anchor_list * frag_find_anchor (const fragS *fragP, const symbolS *anchor);
#endif /* FRAGS_H */
