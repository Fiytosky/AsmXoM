	.file	"evp_key.c"
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
	.local	prompt_string
	.comm	prompt_string,80,32
	.globl	EVP_set_pw_prompt
	.type	EVP_set_pw_prompt, @function
EVP_set_pw_prompt:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movb	$0, prompt_string(%rip)
	jmp	.L8
.L6:
	movq	-8(%rbp), %rax
	leaq	prompt_string(%rip), %rcx
	movl	$79, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	movb	$0, 79+prompt_string(%rip)
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	EVP_set_pw_prompt, .-EVP_set_pw_prompt
	.globl	EVP_get_pw_prompt
	.type	EVP_get_pw_prompt, @function
EVP_get_pw_prompt:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	prompt_string(%rip), %eax
	testb	%al, %al
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	leaq	prompt_string(%rip), %rax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	EVP_get_pw_prompt, .-EVP_get_pw_prompt
	.globl	EVP_read_pw_string
	.type	EVP_read_pw_string, @function
EVP_read_pw_string:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_read_pw_string_min@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	EVP_read_pw_string, .-EVP_read_pw_string
	.globl	EVP_read_pw_string_min
	.type	EVP_read_pw_string_min, @function
EVP_read_pw_string_min:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8240, %rsp
	movq	%rdi, -8216(%rbp)
	movl	%esi, -8220(%rbp)
	movl	%edx, -8224(%rbp)
	movq	%rcx, -8232(%rbp)
	movl	%r8d, -8236(%rbp)
	movl	$-1, -4(%rbp)
	cmpq	$0, -8232(%rbp)
	jne	.L15
	movzbl	prompt_string(%rip), %eax
	testb	%al, %al
	je	.L15
	leaq	prompt_string(%rip), %rax
	movq	%rax, -8232(%rbp)
.L15:
	call	UI_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L16
	movl	-4(%rbp), %eax
	jmp	.L21
.L16:
	movl	-8224(%rbp), %eax
	movl	$8191, %edx
	cmpl	%edx, %eax
	movl	%edx, %edi
	cmovle	%eax, %edi
	movl	-8220(%rbp), %ecx
	movq	-8216(%rbp), %rdx
	movq	-8232(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	UI_add_input_string@PLT
	testl	%eax, %eax
	js	.L22
	cmpl	$0, -8236(%rbp)
	je	.L19
	movl	-8224(%rbp), %eax
	movl	$8191, %edx
	cmpl	%edx, %eax
	cmovle	%eax, %edx
	movl	%edx, %edi
	movl	-8220(%rbp), %ecx
	leaq	-8208(%rbp), %rdx
	movq	-8232(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-8216(%rbp)
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	UI_add_verify_string@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	js	.L22
.L19:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	UI_process@PLT
	movl	%eax, -4(%rbp)
	leaq	-8208(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L20
.L22:
	nop
.L20:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	UI_free@PLT
	movl	-4(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	EVP_read_pw_string_min, .-EVP_read_pw_string_min
	.section	.rodata
.LC0:
	.string	"../crypto/evp/evp_key.c"
	.align 8
.LC1:
	.string	"assertion failed: nkey <= EVP_MAX_KEY_LENGTH"
	.align 8
.LC2:
	.string	"assertion failed: niv >= 0 && niv <= EVP_MAX_IV_LENGTH"
	.text
	.globl	EVP_BytesToKey
	.type	EVP_BytesToKey, @function
EVP_BytesToKey:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	%r8d, -148(%rbp)
	movl	%r9d, -152(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -20(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, -8(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -4(%rbp)
	cmpl	$64, -8(%rbp)
	jle	.L24
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$90, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L24:
	cmpl	$0, -4(%rbp)
	js	.L25
	cmpl	$16, -4(%rbp)
	jle	.L26
.L25:
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$91, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L26:
	cmpq	$0, -144(%rbp)
	jne	.L27
	movl	-8(%rbp), %eax
	jmp	.L53
.L27:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L55
.L29:
	movq	-128(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L56
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L32
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L57
.L32:
	movl	-148(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L58
	cmpq	$0, -136(%rbp)
	je	.L34
	movq	-136(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L59
.L34:
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L60
	movl	$1, -16(%rbp)
	jmp	.L36
.L40:
	movq	-128(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L61
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L62
	leaq	-100(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L63
	addl	$1, -16(%rbp)
.L36:
	movl	-152(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jb	.L40
	movl	$0, -16(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L41
.L45:
	cmpl	$0, -8(%rbp)
	je	.L64
	movl	-100(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	je	.L65
	cmpq	$0, 16(%rbp)
	je	.L44
	movq	16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rbp)
	movl	-16(%rbp), %edx
	movzbl	-96(%rbp,%rdx), %edx
	movb	%dl, (%rax)
.L44:
	subl	$1, -8(%rbp)
	addl	$1, -16(%rbp)
	jmp	.L45
.L64:
	nop
	jmp	.L41
.L65:
	nop
.L41:
	cmpl	$0, -4(%rbp)
	je	.L46
	movl	-100(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	je	.L46
.L50:
	cmpl	$0, -4(%rbp)
	je	.L66
	movl	-100(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	je	.L67
	cmpq	$0, 24(%rbp)
	je	.L49
	movq	24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 24(%rbp)
	movl	-16(%rbp), %edx
	movzbl	-96(%rbp,%rdx), %edx
	movb	%dl, (%rax)
.L49:
	subl	$1, -4(%rbp)
	addl	$1, -16(%rbp)
	jmp	.L50
.L66:
	nop
	jmp	.L46
.L67:
	nop
.L46:
	cmpl	$0, -8(%rbp)
	jne	.L29
	cmpl	$0, -4(%rbp)
	je	.L68
	jmp	.L29
.L68:
	nop
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, -20(%rbp)
	jmp	.L30
.L55:
	nop
	jmp	.L30
.L56:
	nop
	jmp	.L30
.L57:
	nop
	jmp	.L30
.L58:
	nop
	jmp	.L30
.L59:
	nop
	jmp	.L30
.L60:
	nop
	jmp	.L30
.L61:
	nop
	jmp	.L30
.L62:
	nop
	jmp	.L30
.L63:
	nop
.L30:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	-96(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-20(%rbp), %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	EVP_BytesToKey, .-EVP_BytesToKey
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
