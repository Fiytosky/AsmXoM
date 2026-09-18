	.file	"prov_running.c"
	.text
	.globl	ossl_set_error_state
	.type	ossl_set_error_state, @function
ossl_set_error_state:
.LFB260:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE260:
	.size	ossl_set_error_state, .-ossl_set_error_state
	.globl	ossl_prov_is_running
	.type	ossl_prov_is_running, @function
ossl_prov_is_running:
.LFB261:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE261:
	.size	ossl_prov_is_running, .-ossl_prov_is_running
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
