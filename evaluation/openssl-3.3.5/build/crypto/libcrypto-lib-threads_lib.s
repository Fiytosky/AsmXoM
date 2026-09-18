	.file	"threads_lib.c"
	.text
	.globl	OPENSSL_fork_prepare
	.type	OPENSSL_fork_prepare, @function
OPENSSL_fork_prepare:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	OPENSSL_fork_prepare, .-OPENSSL_fork_prepare
	.globl	OPENSSL_fork_parent
	.type	OPENSSL_fork_parent, @function
OPENSSL_fork_parent:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	OPENSSL_fork_parent, .-OPENSSL_fork_parent
	.globl	OPENSSL_fork_child
	.type	OPENSSL_fork_child, @function
OPENSSL_fork_child:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	OPENSSL_fork_child, .-OPENSSL_fork_child
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
