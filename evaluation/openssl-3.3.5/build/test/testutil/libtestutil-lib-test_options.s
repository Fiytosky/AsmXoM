	.file	"test_options.c"
	.text
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC0:
	.string	"Usage: %s [options]\n"
.LC1:
	.string	"Valid options are:\n"
.LC2:
	.string	"help"
.LC3:
	.string	"Display this summary"
.LC4:
	.string	"list"
	.align 8
.LC5:
	.string	"Display the list of tests available"
.LC6:
	.string	"test"
	.align 8
.LC7:
	.string	"Run a single test by id or name"
.LC8:
	.string	"iter"
	.align 8
.LC9:
	.string	"Run a single iteration of a test"
.LC10:
	.string	"indent"
	.align 8
.LC11:
	.string	"Number of tabs added to output"
.LC12:
	.string	"seed"
	.align 8
.LC13:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	default_options.0, @object
	.size	default_options.0, 216
default_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC1
	.quad	.LC2
	.long	500
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	501
	.long	45
	.quad	.LC5
	.quad	.LC6
	.long	502
	.long	115
	.quad	.LC7
	.quad	.LC8
	.long	503
	.long	110
	.quad	.LC9
	.quad	.LC10
	.long	504
	.long	112
	.quad	.LC11
	.quad	.LC12
	.long	505
	.long	110
	.quad	.LC13
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
