	.file	"cipher_cts.c"
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
	.section	.rodata
.LC0:
	.string	"CS1"
.LC1:
	.string	"CS2"
.LC2:
	.string	"CS3"
	.section	.data.rel.local,"aw"
	.align 32
	.type	cts_modes, @object
	.size	cts_modes, 48
cts_modes:
	.long	0
	.zero	4
	.quad	.LC0
	.long	1
	.zero	4
	.quad	.LC1
	.long	2
	.zero	4
	.quad	.LC2
	.text
	.globl	ossl_cipher_cbc_cts_mode_id2name
	.type	ossl_cipher_cbc_cts_mode_id2name, @function
ossl_cipher_cbc_cts_mode_id2name:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L6
.L9:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	cts_modes(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L7
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+cts_modes(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L8
.L7:
	addq	$1, -8(%rbp)
.L6:
	cmpq	$2, -8(%rbp)
	jbe	.L9
	movl	$0, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	ossl_cipher_cbc_cts_mode_id2name, .-ossl_cipher_cbc_cts_mode_id2name
	.globl	ossl_cipher_cbc_cts_mode_name2id
	.type	ossl_cipher_cbc_cts_mode_name2id, @function
ossl_cipher_cbc_cts_mode_name2id:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L11
.L14:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+cts_modes(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L12
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	cts_modes(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L13
.L12:
	addq	$1, -8(%rbp)
.L11:
	cmpq	$2, -8(%rbp)
	jbe	.L14
	movl	$-1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	ossl_cipher_cbc_cts_mode_name2id, .-ossl_cipher_cbc_cts_mode_name2id
	.type	cts128_cs1_encrypt, @function
cts128_cs1_encrypt:
.LFB459:
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
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L20
.L16:
	cmpq	$0, -8(%rbp)
	jne	.L18
	movq	-64(%rbp), %rax
	jmp	.L20
.L18:
	movq	-64(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, -56(%rbp)
	leaq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	cts128_cs1_encrypt, .-cts128_cs1_encrypt
	.type	do_xor, @function
do_xor:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L22
.L23:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L22:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L23
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	do_xor, .-do_xor
	.type	cts128_cs1_decrypt, @function
cts128_cs1_decrypt:
.LFB461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L25
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L32
.L26:
	movq	-112(%rbp), %rax
	jmp	.L32
.L25:
	movq	-112(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L28
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L32
.L29:
	movq	-112(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-112(%rbp), %rax
	addq	%rax, -104(%rbp)
.L28:
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	leaq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L32
.L30:
	movq	-8(%rbp), %rdx
	movq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$16, %eax
	subq	-8(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	leaq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-104(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	do_xor
	movq	-88(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	leaq	-48(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-88(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	cts128_cs1_decrypt, .-cts128_cs1_decrypt
	.type	cts128_cs3_encrypt, @function
cts128_cs3_encrypt:
.LFB462:
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
	movq	%rcx, -64(%rbp)
	cmpq	$15, -64(%rbp)
	ja	.L34
	movl	$0, %eax
	jmp	.L42
.L34:
	cmpq	$16, -64(%rbp)
	jne	.L36
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L37
	movq	-64(%rbp), %rax
	jmp	.L42
.L37:
	movl	$0, %eax
	jmp	.L42
.L36:
	movq	-64(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	movq	$16, -8(%rbp)
.L39:
	movq	-8(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L42
.L40:
	movq	-64(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, -56(%rbp)
	leaq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-56(%rbp), %rax
	leaq	-16(%rax), %rsi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	cts128_cs3_encrypt, .-cts128_cs3_encrypt
	.type	cts128_cs3_decrypt, @function
cts128_cs3_decrypt:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	cmpq	$15, -112(%rbp)
	ja	.L44
	movl	$0, %eax
	jmp	.L55
.L44:
	cmpq	$16, -112(%rbp)
	jne	.L46
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L47
	movq	-112(%rbp), %rax
	jmp	.L55
.L47:
	movl	$0, %eax
	jmp	.L55
.L46:
	movq	-112(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L49
	movq	$16, -8(%rbp)
.L49:
	movq	-112(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L50
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L55
.L51:
	movq	-112(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-112(%rbp), %rax
	addq	%rax, -104(%rbp)
.L50:
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L55
.L52:
	movq	-96(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	cmpq	$16, -8(%rbp)
	je	.L53
	movl	$16, %eax
	subq	-8(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	leaq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L53:
	movq	-104(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	do_xor
	movq	-88(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-88(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	leaq	-48(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-88(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	cts128_cs3_decrypt, .-cts128_cs3_decrypt
	.type	cts128_cs2_encrypt, @function
cts128_cs2_encrypt:
.LFB464:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	jne	.L57
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-32(%rbp), %rax
	jmp	.L59
.L57:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cts128_cs3_encrypt
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	cts128_cs2_encrypt, .-cts128_cs2_encrypt
	.type	cts128_cs2_decrypt, @function
cts128_cs2_decrypt:
.LFB465:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	jne	.L61
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	movq	-32(%rbp), %rax
	jmp	.L63
.L61:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cts128_cs3_decrypt
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	cts128_cs2_decrypt, .-cts128_cs2_decrypt
	.globl	ossl_cipher_cbc_cts_block_update
	.type	ossl_cipher_cbc_cts_block_update, @function
ossl_cipher_cbc_cts_block_update:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$15, -64(%rbp)
	ja	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L67
	movl	$0, %eax
	jmp	.L66
.L67:
	cmpq	$0, -32(%rbp)
	jne	.L68
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L66
.L68:
	movq	-16(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L69
	movl	$0, %eax
	jmp	.L66
.L69:
	movq	-16(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L70
	movq	-16(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	jne	.L71
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	cts128_cs1_encrypt
	movq	%rax, -8(%rbp)
	jmp	.L72
.L71:
	movq	-16(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$1, %eax
	jne	.L73
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	cts128_cs2_encrypt
	movq	%rax, -8(%rbp)
	jmp	.L72
.L73:
	movq	-16(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$2, %eax
	jne	.L72
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	cts128_cs3_encrypt
	movq	%rax, -8(%rbp)
	jmp	.L72
.L70:
	movq	-16(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	jne	.L74
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	cts128_cs1_decrypt
	movq	%rax, -8(%rbp)
	jmp	.L72
.L74:
	movq	-16(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$1, %eax
	jne	.L75
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	cts128_cs2_decrypt
	movq	%rax, -8(%rbp)
	jmp	.L72
.L75:
	movq	-16(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$2, %eax
	jne	.L72
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	cts128_cs3_decrypt
	movq	%rax, -8(%rbp)
.L72:
	cmpq	$0, -8(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L66
.L76:
	movq	-16(%rbp), %rax
	movzbl	108(%rax), %edx
	orl	$16, %edx
	movb	%dl, 108(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	ossl_cipher_cbc_cts_block_update, .-ossl_cipher_cbc_cts_block_update
	.globl	ossl_cipher_cbc_cts_block_final
	.type	ossl_cipher_cbc_cts_block_final, @function
ossl_cipher_cbc_cts_block_final:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	ossl_cipher_cbc_cts_block_final, .-ossl_cipher_cbc_cts_block_final
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
