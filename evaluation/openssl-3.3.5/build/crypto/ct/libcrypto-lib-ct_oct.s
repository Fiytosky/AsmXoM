	.file	"ct_oct.c"
	.text
	.type	ossl_check_SCT_type, @function
ossl_check_SCT_type:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ossl_check_SCT_type, .-ossl_check_SCT_type
	.type	ossl_check_const_SCT_sk_type, @function
ossl_check_const_SCT_sk_type:
.LFB450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	ossl_check_const_SCT_sk_type, .-ossl_check_const_SCT_sk_type
	.type	ossl_check_SCT_sk_type, @function
ossl_check_SCT_sk_type:
.LFB451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	ossl_check_SCT_sk_type, .-ossl_check_SCT_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/ct/ct_oct.c"
	.text
	.globl	o2i_SCT_signature
	.type	o2i_SCT_signature, @function
o2i_SCT_signature:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L8
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L9
.L8:
	cmpq	$4, -56(%rbp)
	ja	.L10
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L9
.L10:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %edx
	movq	-40(%rbp), %rax
	movb	%dl, 64(%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %edx
	movq	-40(%rbp), %rax
	movb	%dl, 65(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_get_signature_nid@PLT
	testl	%eax, %eax
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L9
.L11:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	addq	$2, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	subq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L12
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L9
.L12:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SCT_set1_signature@PLT
	cmpl	$1, %eax
	je	.L13
	movl	$-1, %eax
	jmp	.L9
.L13:
	movq	-24(%rbp), %rax
	subq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	o2i_SCT_signature, .-o2i_SCT_signature
	.globl	o2i_SCT
	.type	o2i_SCT, @function
o2i_SCT:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L15
	cmpq	$65535, -56(%rbp)
	jbe	.L16
.L15:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L17
.L16:
	call	SCT_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L30
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L19
	cmpq	$42, -56(%rbp)
	ja	.L20
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L17
.L20:
	subq	$43, -56(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$104, %ecx
	movl	$32, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-8(%rbp), %rax
	movq	$32, 32(%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L22
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L17
.L22:
	cmpq	$0, -16(%rbp)
	je	.L23
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rsi
	movl	$118, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L32
.L23:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	o2i_SCT_signature@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L24
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L17
.L24:
	movl	-20(%rbp), %eax
	cltq
	subq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L25
.L19:
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	-56(%rbp), %rsi
	movl	$135, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L25:
	cmpq	$0, -40(%rbp)
	je	.L27
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SCT_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L27:
	movq	-8(%rbp), %rax
	jmp	.L29
.L30:
	nop
	jmp	.L17
.L31:
	nop
	jmp	.L17
.L32:
	nop
	jmp	.L17
.L33:
	nop
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_free@PLT
	movl	$0, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	o2i_SCT, .-o2i_SCT
	.globl	i2o_SCT_signature
	.type	i2o_SCT_signature, @function
i2o_SCT_signature:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_signature_is_complete@PLT
	testl	%eax, %eax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L35:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L37
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L36
.L37:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L38
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L40
.L39:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$180, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L43
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L40:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	64(%rdx), %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	65(%rdx), %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	shrq	$8, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L38:
	movq	-24(%rbp), %rax
	jmp	.L42
.L43:
	nop
.L36:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$194, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$-1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	i2o_SCT_signature, .-i2o_SCT_signature
	.globl	i2o_SCT
	.type	i2o_SCT, @function
i2o_SCT:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_is_complete@PLT
	testl	%eax, %eax
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L45:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L47
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	addq	%rdx, %rax
	addq	$47, %rax
	movq	%rax, -8(%rbp)
	jmp	.L48
.L47:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L48:
	cmpq	$0, -48(%rbp)
	jne	.L49
	movq	-8(%rbp), %rax
	jmp	.L57
.L49:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L52
.L51:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$225, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L58
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L52:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L54
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$56, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$48, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$40, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L55:
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2o_SCT_signature@PLT
	testl	%eax, %eax
	jg	.L56
	jmp	.L46
.L54:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L56:
	movq	-8(%rbp), %rax
	jmp	.L57
.L58:
	nop
.L46:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$249, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$-1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	i2o_SCT, .-i2o_SCT
	.globl	o2i_SCT_LIST
	.type	o2i_SCT_LIST, @function
o2i_SCT_LIST:
.LFB589:
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
	movq	$0, -24(%rbp)
	cmpq	$1, -88(%rbp)
	jbe	.L60
	cmpq	$65535, -88(%rbp)
	jbe	.L61
.L60:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$260, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	subq	$2, %rax
	cmpq	%rax, -32(%rbp)
	je	.L63
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L63:
	cmpq	$0, -72(%rbp)
	je	.L64
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L65
.L64:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L67
	movl	$0, %eax
	jmp	.L62
.L65:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L68
.L69:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_free@PLT
.L68:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L69
.L67:
	jmp	.L70
.L76:
	cmpq	$1, -32(%rbp)
	ja	.L71
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L71:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$2, -32(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L73
	movq	-48(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L74
.L73:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L74:
	movq	-48(%rbp), %rax
	subq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	o2i_SCT@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L80
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L70
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_free@PLT
	jmp	.L72
.L70:
	cmpq	$0, -32(%rbp)
	jne	.L76
	cmpq	$0, -72(%rbp)
	je	.L77
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L77
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L77:
	movq	-24(%rbp), %rax
	jmp	.L62
.L80:
	nop
.L72:
	cmpq	$0, -72(%rbp)
	je	.L78
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L79
.L78:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_LIST_free@PLT
.L79:
	movl	$0, %eax
.L62:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	o2i_SCT_LIST, .-o2i_SCT_LIST
	.globl	i2o_SCT_LIST
	.type	i2o_SCT_LIST, @function
i2o_SCT_LIST:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L82
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L83
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2o_SCT_LIST.localalias
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$326, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L96
.L84:
	movl	-28(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$329, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L86
	movl	$-1, %eax
	jmp	.L96
.L86:
	movl	$1, -12(%rbp)
.L83:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
.L82:
	movq	$2, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L87
.L92:
	cmpq	$0, -64(%rbp)
	je	.L88
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	i2o_SCT@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.L97
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, -40(%rbp)
	jmp	.L91
.L88:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2o_SCT@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.L98
.L91:
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	addq	%rax, -24(%rbp)
	addl	$1, -8(%rbp)
.L87:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L92
	cmpq	$65535, -24(%rbp)
	ja	.L99
	cmpq	$0, -64(%rbp)
	je	.L94
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	subq	$2, %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	subl	$2, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L94
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L94:
	movq	-24(%rbp), %rax
	jmp	.L96
.L97:
	nop
	jmp	.L90
.L98:
	nop
	jmp	.L90
.L99:
	nop
.L90:
	cmpl	$0, -12(%rbp)
	je	.L95
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$364, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L95:
	movl	$-1, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	i2o_SCT_LIST, .-i2o_SCT_LIST
	.set	i2o_SCT_LIST.localalias,i2o_SCT_LIST
	.globl	d2i_SCT_LIST
	.type	d2i_SCT_LIST, @function
d2i_SCT_LIST:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_ASN1_OCTET_STRING@PLT
	testq	%rax, %rax
	jne	.L101
	movl	$0, %eax
	jmp	.L104
.L101:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	o2i_SCT_LIST@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L103
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L103:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	d2i_SCT_LIST, .-d2i_SCT_LIST
	.globl	i2d_SCT_LIST
	.type	i2d_SCT_LIST, @function
i2d_SCT_LIST:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	leaq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2o_SCT_LIST@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L106
	movl	$-1, %eax
	jmp	.L108
.L106:
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_OCTET_STRING@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$399, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	i2d_SCT_LIST, .-i2d_SCT_LIST
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 18
__func__.5:
	.string	"o2i_SCT_signature"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 8
__func__.4:
	.string	"o2i_SCT"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"i2o_SCT_signature"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 8
__func__.2:
	.string	"i2o_SCT"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"o2i_SCT_LIST"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"i2o_SCT_LIST"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
