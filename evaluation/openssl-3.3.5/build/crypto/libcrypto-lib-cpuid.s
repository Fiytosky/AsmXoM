	.file	"cpuid.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	todigit, @function
todigit:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	je	.L6
	movsbl	-4(%rbp), %eax
	subl	$48, %eax
	jmp	.L7
.L6:
	movsbl	-4(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L8
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	subl	$87, %eax
	jmp	.L7
.L8:
	movl	$16, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	todigit, .-todigit
	.type	ossl_strtouint64, @function
ossl_strtouint64:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$10, -12(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L11
	movl	$8, -12(%rbp)
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	cmpl	$120, %eax
	jne	.L11
	movl	$16, -12(%rbp)
	addq	$1, -24(%rbp)
	jmp	.L11
.L12:
	movl	-12(%rbp), %eax
	imulq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L11:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	todigit
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jb	.L12
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_strtouint64, .-ossl_strtouint64
	.type	ossl_strchr, @function
ossl_strchr:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	jmp	.L15
.L18:
	movzbl	-1(%rbp), %eax
	cmpb	-28(%rbp), %al
	jne	.L16
	movq	-24(%rbp), %rax
	jmp	.L17
.L16:
	addq	$1, -24(%rbp)
.L15:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	cmpb	$0, -1(%rbp)
	jne	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ossl_strchr, .-ossl_strchr
	.section	.rodata
.LC0:
	.string	"OPENSSL_ia32cap"
	.text
	.globl	OPENSSL_cpuid_setup
	.type	OPENSSL_cpuid_setup, @function
OPENSSL_cpuid_setup:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	trigger.0(%rip), %eax
	testl	%eax, %eax
	jne	.L28
	movl	$1, trigger.0(%rip)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L22
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	ossl_strtouint64
	movq	%rax, -8(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L23
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	OPENSSL_ia32_cpuid@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	notq	%rax
	andq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	andl	$16777216, %eax
	testq	%rax, %rax
	je	.L24
	movabsq	$-1297045497365659649, %rax
	andq	%rax, -8(%rbp)
	jmp	.L24
.L23:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L24
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	OPENSSL_ia32_cpuid@PLT
	movq	%rax, -8(%rbp)
.L24:
	movq	-16(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	ossl_strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L25
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	ossl_strtouint64
	movq	%rax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L26
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	8(%rax), %eax
	movq	-40(%rbp), %rdx
	notl	%edx
	andl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	%edx, 8(%rax)
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	12(%rax), %eax
	movq	-40(%rbp), %rdx
	shrq	$32, %rdx
	notl	%edx
	andl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	%edx, 12(%rax)
	jmp	.L27
.L26:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	%edx, 12(%rax)
	jmp	.L27
.L25:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	$0, 8(%rax)
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	$0, 12(%rax)
	jmp	.L27
.L22:
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	OPENSSL_ia32_cpuid@PLT
	movq	%rax, -8(%rbp)
.L27:
	movq	-8(%rbp), %rax
	orb	$4, %ah
	movl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	%edx, 4(%rax)
	jmp	.L19
.L28:
	nop
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	OPENSSL_cpuid_setup, .-OPENSSL_cpuid_setup
	.local	trigger.0
	.comm	trigger.0,4,4
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
