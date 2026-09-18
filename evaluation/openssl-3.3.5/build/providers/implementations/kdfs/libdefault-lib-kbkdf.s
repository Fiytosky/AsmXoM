	.file	"kbkdf.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	be32, @function
be32:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L6
	movl	-20(%rbp), %eax
	jmp	.L7
.L6:
	movl	-20(%rbp), %eax
	shrl	$24, %eax
	orl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	sall	$24, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	be32, .-be32
	.type	init, @function
init:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$32, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 100(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	init, .-init
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/kdfs/kbkdf.c"
	.text
	.type	kbkdf_new, @function
kbkdf_new:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	leaq	.LC0(%rip), %rax
	movl	$120, %edx
	movq	%rax, %rsi
	movl	$112, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	kbkdf_new, .-kbkdf_new
	.type	kbkdf_free, @function
kbkdf_free:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	kbkdf_reset
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$135, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L15:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	kbkdf_free, .-kbkdf_free
	.type	kbkdf_reset, @function
kbkdf_reset:
.LFB461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$145, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$146, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$147, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$148, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	$112, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	kbkdf_reset, .-kbkdf_reset
	.type	kbkdf_dup, @function
kbkdf_dup:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	kbkdf_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L23
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L23
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L23
	movq	-16(%rbp), %rax
	leaq	88(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_memdup@PLT
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	96(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 96(%rax)
	movq	-8(%rbp), %rax
	movl	104(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 104(%rax)
	movq	-8(%rbp), %rax
	movl	100(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 100(%rax)
.L18:
	movq	-16(%rbp), %rax
	jmp	.L22
.L23:
	nop
.L21:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	kbkdf_free
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	kbkdf_dup, .-kbkdf_dup
	.type	derive, @function
derive:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movb	$0, -49(%rbp)
	movl	48(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L25
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L25:
	movl	$1, -36(%rbp)
	jmp	.L26
.L34:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	be32
	movl	%eax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L36
	cmpl	$1, -76(%rbp)
	jne	.L29
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L37
.L29:
	movl	80(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movl	80(%rbp), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$3, %eax
	negl	%eax
	addl	$4, %eax
	cltq
	leaq	-56(%rbp), %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L38
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L38
	cmpl	$0, 56(%rbp)
	je	.L31
	leaq	-49(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L38
.L31:
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L38
	cmpl	$0, -40(%rbp)
	je	.L32
	leaq	48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L38
.L32:
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L38
	movq	72(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	40(%rbp), %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	cmova	%rax, %rdx
	movq	64(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	40(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	$0, -16(%rbp)
	addl	$1, -36(%rbp)
.L26:
	movq	-24(%rbp), %rax
	cmpq	72(%rbp), %rax
	jb	.L34
	movl	$1, -4(%rbp)
	jmp	.L28
.L36:
	nop
	jmp	.L28
.L37:
	nop
	jmp	.L28
.L38:
	nop
.L28:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	derive, .-derive
	.section	.rodata
.LC1:
	.string	"custom"
	.text
	.type	kmac_init, @function
kmac_init:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L40
	cmpq	$0, -104(%rbp)
	jne	.L41
.L40:
	movl	$1, %eax
	jmp	.L43
.L41:
	leaq	-160(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	kmac_init, .-kmac_init
	.section	.rodata
.LC2:
	.string	"size"
	.text
	.type	kmac_derive, @function
kmac_derive:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	leaq	-176(%rbp), %rax
	leaq	-104(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	jle	.L45
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L45
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L45
	movl	$1, %eax
	jmp	.L47
.L45:
	movl	$0, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	kmac_derive, .-kmac_derive
	.type	kbkdf_derive, @function
kbkdf_derive:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L49
	movq	-96(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kbkdf_set_ctx_params
	testl	%eax, %eax
	jne	.L50
.L49:
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L52
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L54
.L53:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$289, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L54:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L52:
	cmpq	$0, -88(%rbp)
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L55:
	movq	-56(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L56
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	kmac_derive
	movl	%eax, -20(%rbp)
	jmp	.L57
.L56:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get_mac_size@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L64
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -48(%rbp)
	je	.L59
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$315, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L59:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L60
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	divq	-48(%rbp)
	cmpq	-64(%rbp), %rax
	jb	.L60
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L60:
	movq	-56(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L61
	movq	-88(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %edi
	call	be32
	movl	%eax, -36(%rbp)
.L61:
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$331, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L65
	movq	-56(%rbp), %rax
	movl	24(%rax), %r10d
	movq	-56(%rbp), %rax
	movl	104(%rax), %r9d
	movq	-56(%rbp), %rax
	movq	72(%rax), %r8
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	56(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	48(%rax), %r11
	movq	-56(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	8(%rax), %esi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	subq	$8, %rsp
	pushq	%r10
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	%r9
	movl	-36(%rbp), %r9d
	pushq	%r9
	pushq	-48(%rbp)
	pushq	-32(%rbp)
	pushq	%r8
	pushq	%rdi
	movq	%rbx, %r9
	movq	%r11, %r8
	movq	%rax, %rdi
	call	derive
	addq	$80, %rsp
	movl	%eax, -20(%rbp)
	jmp	.L57
.L64:
	nop
	jmp	.L57
.L65:
	nop
.L57:
	cmpl	$1, -20(%rbp)
	je	.L63
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L63:
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$341, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-20(%rbp), %eax
.L51:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	kbkdf_derive, .-kbkdf_derive
	.section	.rodata
.LC3:
	.string	"KMAC128"
.LC4:
	.string	"KMAC256"
.LC5:
	.string	"HMAC"
.LC6:
	.string	"CMAC"
.LC7:
	.string	"mode"
.LC8:
	.string	"counter"
.LC9:
	.string	"feedback"
.LC10:
	.string	"key"
.LC11:
	.string	"salt"
.LC12:
	.string	"info"
.LC13:
	.string	"seed"
.LC14:
	.string	"use-l"
.LC15:
	.string	"r"
.LC16:
	.string	"use-separator"
	.text
	.type	kbkdf_set_ctx_params, @function
kbkdf_set_ctx_params:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L67
	movl	$1, %eax
	jmp	.L68
.L67:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	ossl_prov_macctx_load_from_params@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L68
.L69:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-8(%rbp), %rax
	movl	$0, 100(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get0_mac@PLT
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_MAC_is_a@PLT
	testl	%eax, %eax
	jne	.L71
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get0_mac@PLT
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_MAC_is_a@PLT
	testl	%eax, %eax
	je	.L72
.L71:
	movq	-8(%rbp), %rax
	movl	$1, 100(%rax)
	jmp	.L70
.L72:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get0_mac@PLT
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_MAC_is_a@PLT
	testl	%eax, %eax
	jne	.L70
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get0_mac@PLT
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_MAC_is_a@PLT
	testl	%eax, %eax
	jne	.L70
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$368, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L68
.L70:
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L73
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L73
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L74
.L73:
	cmpq	$0, -24(%rbp)
	je	.L75
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC9(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L75
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.L74
.L75:
	cmpq	$0, -24(%rbp)
	je	.L74
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$381, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L68
.L74:
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	.LC10(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_get1_octet_string@PLT
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L68
.L76:
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	.LC11(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_get1_octet_string@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L68
.L77:
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	.LC12(%rip), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_param_get1_concat_octet_string@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L68
.L78:
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	leaq	.LC13(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_get1_octet_string@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L68
.L79:
	leaq	.LC14(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L80
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L68
.L80:
	leaq	.LC15(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L81
	movl	$0, -28(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L82
	movl	$0, %eax
	jmp	.L68
.L82:
	movl	-28(%rbp), %eax
	cmpl	$8, %eax
	je	.L84
	movl	-28(%rbp), %eax
	cmpl	$16, %eax
	je	.L84
	movl	-28(%rbp), %eax
	cmpl	$24, %eax
	je	.L84
	movl	-28(%rbp), %eax
	cmpl	$32, %eax
	je	.L84
	movl	$0, %eax
	jmp	.L68
.L84:
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
.L81:
	leaq	.LC16(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L68
.L85:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L87
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kmac_init
	testl	%eax, %eax
	je	.L88
.L87:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	jne	.L86
.L88:
	movl	$0, %eax
	jmp	.L68
.L86:
	movl	$1, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	kbkdf_set_ctx_params, .-kbkdf_set_ctx_params
	.type	kbkdf_settable_ctx_params, @function
kbkdf_settable_ctx_params:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	kbkdf_settable_ctx_params, .-kbkdf_settable_ctx_params
	.type	kbkdf_get_ctx_params, @function
kbkdf_get_ctx_params:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L92
	movl	$-2, %eax
	jmp	.L93
.L92:
	movq	-8(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	kbkdf_get_ctx_params, .-kbkdf_get_ctx_params
	.type	kbkdf_gettable_ctx_params, @function
kbkdf_gettable_ctx_params:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	kbkdf_gettable_ctx_params, .-kbkdf_gettable_ctx_params
	.globl	ossl_kdf_kbkdf_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_kbkdf_functions, @object
	.size	ossl_kdf_kbkdf_functions, 160
ossl_kdf_kbkdf_functions:
	.long	1
	.zero	4
	.quad	kbkdf_new
	.long	2
	.zero	4
	.quad	kbkdf_dup
	.long	3
	.zero	4
	.quad	kbkdf_free
	.long	4
	.zero	4
	.quad	kbkdf_reset
	.long	5
	.zero	4
	.quad	kbkdf_derive
	.long	8
	.zero	4
	.quad	kbkdf_settable_ctx_params
	.long	11
	.zero	4
	.quad	kbkdf_set_ctx_params
	.long	7
	.zero	4
	.quad	kbkdf_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kbkdf_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"kbkdf_derive"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"kbkdf_set_ctx_params"
.LC17:
	.string	"digest"
.LC18:
	.string	"cipher"
.LC19:
	.string	"mac"
.LC20:
	.string	"properties"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.1, @object
	.size	known_settable_ctx_params.1, 520
known_settable_ctx_params.1:
	.quad	.LC12
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC11
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC13
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC17
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC18
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC19
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC7
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC20
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC14
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC16
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC15
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	known_gettable_ctx_params.0, @object
	.size	known_gettable_ctx_params.0, 80
known_gettable_ctx_params.0:
	.quad	.LC2
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
