	.file	"passphrase.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB499:
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
.LFE499:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB500:
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
.LFE500:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/passphrase.c"
	.text
	.globl	ossl_pw_clear_passphrase_data
	.type	ossl_pw_clear_passphrase_data, @function
ossl_pw_clear_passphrase_data:
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
	je	.L8
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$20, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_cache@PLT
	movq	-8(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	ossl_pw_clear_passphrase_data, .-ossl_pw_clear_passphrase_data
	.globl	ossl_pw_clear_passphrase_cache
	.type	ossl_pw_clear_passphrase_cache, @function
ossl_pw_clear_passphrase_cache:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$29, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ossl_pw_clear_passphrase_cache, .-ossl_pw_clear_passphrase_cache
	.globl	ossl_pw_set_passphrase
	.type	ossl_pw_set_passphrase, @function
ossl_pw_set_passphrase:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	cmpq	$0, -16(%rbp)
	je	.L11
	movl	$1, %eax
	jmp	.L12
.L11:
	movl	$0, %eax
.L12:
	cltq
	testq	%rax, %rax
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_data@PLT
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	cmpq	$0, -24(%rbp)
	je	.L15
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$44, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	jmp	.L16
.L15:
	leaq	.LC0(%rip), %rax
	movl	$45, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
.L16:
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	movl	$0, %eax
	jmp	.L14
.L17:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	ossl_pw_set_passphrase, .-ossl_pw_set_passphrase
	.globl	ossl_pw_set_pem_password_cb
	.type	ossl_pw_set_pem_password_cb, @function
ossl_pw_set_pem_password_cb:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L19
	cmpq	$0, -16(%rbp)
	je	.L19
	movl	$1, %eax
	jmp	.L20
.L19:
	movl	$0, %eax
.L20:
	cltq
	testq	%rax, %rax
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_data@PLT
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	ossl_pw_set_pem_password_cb, .-ossl_pw_set_pem_password_cb
	.globl	ossl_pw_set_ossl_passphrase_cb
	.type	ossl_pw_set_ossl_passphrase_cb, @function
ossl_pw_set_ossl_passphrase_cb:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L24
	cmpq	$0, -16(%rbp)
	je	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	movl	$0, %eax
.L25:
	cltq
	testq	%rax, %rax
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_data@PLT
	movq	-8(%rbp), %rax
	movl	$3, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ossl_pw_set_ossl_passphrase_cb, .-ossl_pw_set_ossl_passphrase_cb
	.globl	ossl_pw_set_ui_method
	.type	ossl_pw_set_ui_method, @function
ossl_pw_set_ui_method:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L29
	cmpq	$0, -16(%rbp)
	je	.L29
	movl	$1, %eax
	jmp	.L30
.L29:
	movl	$0, %eax
.L30:
	cltq
	testq	%rax, %rax
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_data@PLT
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	ossl_pw_set_ui_method, .-ossl_pw_set_ui_method
	.globl	ossl_pw_enable_passphrase_caching
	.type	ossl_pw_enable_passphrase_caching, @function
ossl_pw_enable_passphrase_caching:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ossl_pw_enable_passphrase_caching, .-ossl_pw_enable_passphrase_caching
	.globl	ossl_pw_disable_passphrase_caching
	.type	ossl_pw_disable_passphrase_caching, @function
ossl_pw_disable_passphrase_caching:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ossl_pw_disable_passphrase_caching, .-ossl_pw_disable_passphrase_caching
	.section	.rodata
.LC1:
	.string	"pass phrase"
	.text
	.type	do_ui_passphrase, @function
do_ui_passphrase:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%r9, -112(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$-1, -36(%rbp)
	movl	$-1, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L38
	cmpq	$0, -80(%rbp)
	je	.L38
	cmpq	$0, -88(%rbp)
	je	.L38
	movl	$1, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	cltq
	testq	%rax, %rax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L41
.L40:
	call	UI_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524328, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L41
.L42:
	cmpq	$0, -112(%rbp)
	je	.L43
	movq	-112(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_set_method@PLT
	cmpq	$0, 16(%rbp)
	je	.L43
	movq	16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_add_user_data@PLT
.L43:
	movq	-96(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	UI_construct_prompt@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524328, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L44:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$149, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L55
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	UI_add_input_string@PLT
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L47
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524328, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L47:
	cmpl	$0, -100(%rbp)
	je	.L48
	movq	-80(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$163, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L56
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	-8(%rbp)
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	UI_add_verify_string@PLT
	addq	$16, %rsp
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jns	.L48
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524328, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L48:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_process@PLT
	cmpl	$-2, %eax
	je	.L50
	cmpl	$-1, %eax
	je	.L51
	jmp	.L54
.L50:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524553, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L51:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524328, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L54:
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	UI_get_result_length@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L53
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524328, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L45
.L53:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, -20(%rbp)
	jmp	.L45
.L55:
	nop
	jmp	.L45
.L56:
	nop
.L45:
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$196, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$197, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$198, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	UI_free@PLT
	movl	-20(%rbp), %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	do_ui_passphrase, .-do_ui_passphrase
	.section	.rodata
.LC2:
	.string	"info"
	.align 8
.LC3:
	.string	"Prompt info data type incorrect"
.LC4:
	.string	"No password method specified"
	.text
	.globl	ossl_pw_get_passphrase
	.type	ossl_pw_get_passphrase, @function
ossl_pw_get_passphrase:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	%r8d, -132(%rbp)
	movq	%r9, -144(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L58
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L59
.L58:
	movq	-144(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L59
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-144(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.L59:
	cmpq	$0, -8(%rbp)
	je	.L60
	movq	-16(%rbp), %rax
	cmpq	%rax, -112(%rbp)
	jnb	.L61
	movq	-112(%rbp), %rax
	movq	%rax, -16(%rbp)
.L61:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-120(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L62
.L60:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L63
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	%eax, -52(%rbp)
	jmp	.L64
.L63:
	leaq	.LC2(%rip), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L65
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L66
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L66:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L65:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L67
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-132(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	UI_UTIL_wrap_read_pem_callback@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L68
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524328, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L67:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L68
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
.L68:
	cmpq	$0, -32(%rbp)
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L69:
	movq	-32(%rbp), %r8
	movl	-132(%rbp), %edi
	movq	-24(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	do_ui_passphrase
	addq	$16, %rsp
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	UI_destroy_method@PLT
.L64:
	cmpl	$0, -52(%rbp)
	je	.L70
	movq	-144(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L70
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	movq	40(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L72
.L71:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$290, %r8d
	movq	%rax, %rdi
	call	CRYPTO_clear_realloc@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L73
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L62
.L73:
	movq	-144(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L72:
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-144(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, 40(%rax)
.L70:
	movl	-52(%rbp), %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ossl_pw_get_passphrase, .-ossl_pw_get_passphrase
	.type	ossl_pw_get_password, @function
ossl_pw_get_password:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r8, -128(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -96(%rbp)
	movl	$4, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$-1, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	movq	-120(%rbp), %r8
	movl	-112(%rbp), %edi
	leaq	-96(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_pw_get_passphrase@PLT
	testl	%eax, %eax
	je	.L75
	movq	-8(%rbp), %rax
	jmp	.L77
.L75:
	movl	$-1, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	ossl_pw_get_password, .-ossl_pw_get_password
	.section	.rodata
.LC5:
	.string	"PEM"
	.text
	.globl	ossl_pw_pem_password
	.type	ossl_pw_pem_password, @function
ossl_pw_pem_password:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	leaq	.LC5(%rip), %rdi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_pw_get_password
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	ossl_pw_pem_password, .-ossl_pw_pem_password
	.section	.rodata
.LC6:
	.string	"PVK"
	.text
	.globl	ossl_pw_pvk_password
	.type	ossl_pw_pvk_password, @function
ossl_pw_pvk_password:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	leaq	.LC6(%rip), %rdi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_pw_get_password
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	ossl_pw_pvk_password, .-ossl_pw_pvk_password
	.globl	ossl_pw_passphrase_callback_enc
	.type	ossl_pw_passphrase_callback_enc, @function
ossl_pw_passphrase_callback_enc:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	ossl_pw_get_passphrase@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	ossl_pw_passphrase_callback_enc, .-ossl_pw_passphrase_callback_enc
	.globl	ossl_pw_passphrase_callback_dec
	.type	ossl_pw_passphrase_callback_dec, @function
ossl_pw_passphrase_callback_dec:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_pw_get_passphrase@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	ossl_pw_passphrase_callback_dec, .-ossl_pw_passphrase_callback_dec
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 23
__func__.5:
	.string	"ossl_pw_set_passphrase"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 28
__func__.4:
	.string	"ossl_pw_set_pem_password_cb"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 31
__func__.3:
	.string	"ossl_pw_set_ossl_passphrase_cb"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"ossl_pw_set_ui_method"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"do_ui_passphrase"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ossl_pw_get_passphrase"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
