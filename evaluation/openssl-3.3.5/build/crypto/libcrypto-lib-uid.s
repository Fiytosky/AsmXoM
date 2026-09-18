	.file	"uid.c"
	.text
	.globl	OPENSSL_issetugid
	.type	OPENSSL_issetugid, @function
OPENSSL_issetugid:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$23, %edi
	call	getauxval@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	OPENSSL_issetugid, .-OPENSSL_issetugid
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
