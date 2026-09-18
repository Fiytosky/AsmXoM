	.file	"aes_ige.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/aes/aes_ige.c"
	.align 8
.LC1:
	.string	"assertion failed: in && out && key && ivec"
	.align 8
.LC2:
	.string	"assertion failed: (AES_ENCRYPT == enc) || (AES_DECRYPT == enc)"
	.align 8
.LC3:
	.string	"assertion failed: (length % AES_BLOCK_SIZE) == 0"
	.text
	.globl	AES_ige_encrypt
	.type	AES_ige_encrypt, @function
AES_ige_encrypt:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movl	%r9d, -268(%rbp)
	movq	-248(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -248(%rbp)
	je	.L39
	cmpq	$0, -232(%rbp)
	je	.L8
	cmpq	$0, -240(%rbp)
	je	.L8
	cmpq	$0, -256(%rbp)
	je	.L8
	cmpq	$0, -264(%rbp)
	jne	.L9
.L8:
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L9:
	cmpl	$1, -268(%rbp)
	je	.L10
	cmpl	$0, -268(%rbp)
	je	.L10
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L10:
	movq	-248(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L11
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L11:
	cmpl	$1, -268(%rbp)
	jne	.L12
	movq	-232(%rbp), %rax
	cmpq	-240(%rbp), %rax
	je	.L13
	movq	-264(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-264(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	jmp	.L14
.L19:
	movq	-232(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L15
.L16:
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rcx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	xorq	%rax, %rcx
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -8(%rbp)
.L15:
	cmpq	$1, -8(%rbp)
	jbe	.L16
	movq	-80(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-256(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_encrypt@PLT
	movq	$0, -8(%rbp)
	jmp	.L17
.L18:
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rcx
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	xorq	%rax, %rcx
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -8(%rbp)
.L17:
	cmpq	$1, -8(%rbp)
	jbe	.L18
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	subq	$1, -16(%rbp)
	addq	$16, -232(%rbp)
	addq	$16, -240(%rbp)
.L14:
	cmpq	$0, -16(%rbp)
	jne	.L19
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-264(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L5
.L13:
	movq	-264(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-264(%rbp), %rax
	addq	$16, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	jmp	.L20
.L25:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L21
.L22:
	movq	-8(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, -112(%rbp,%rax,8)
	addq	$1, -8(%rbp)
.L21:
	cmpq	$1, -8(%rbp)
	jbe	.L22
	movq	-256(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_encrypt@PLT
	movq	$0, -8(%rbp)
	jmp	.L23
.L24:
	movq	-8(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, -112(%rbp,%rax,8)
	addq	$1, -8(%rbp)
.L23:
	cmpq	$1, -8(%rbp)
	jbe	.L24
	movq	-240(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	subq	$1, -16(%rbp)
	addq	$16, -232(%rbp)
	addq	$16, -240(%rbp)
.L20:
	cmpq	$0, -16(%rbp)
	jne	.L25
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-264(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L5
.L12:
	movq	-232(%rbp), %rax
	cmpq	-240(%rbp), %rax
	je	.L26
	movq	-264(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-264(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	jmp	.L27
.L32:
	movq	-232(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L28
.L29:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rcx
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	xorq	%rax, %rcx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, -160(%rbp,%rax,8)
	addq	$1, -8(%rbp)
.L28:
	cmpq	$1, -8(%rbp)
	jbe	.L29
	movq	-64(%rbp), %rcx
	movq	-256(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_decrypt@PLT
	movq	$0, -8(%rbp)
	jmp	.L30
.L31:
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rcx
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	xorq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -8(%rbp)
.L30:
	cmpq	$1, -8(%rbp)
	jbe	.L31
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	subq	$1, -16(%rbp)
	addq	$16, -232(%rbp)
	addq	$16, -240(%rbp)
.L27:
	cmpq	$0, -16(%rbp)
	jne	.L32
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-264(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L5
.L26:
	movq	-264(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-264(%rbp), %rax
	addq	$16, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	jmp	.L33
.L38:
	movq	-232(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L34
.L35:
	movq	-8(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	-224(%rbp,%rax,8), %rax
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, -176(%rbp,%rax,8)
	addq	$1, -8(%rbp)
.L34:
	cmpq	$1, -8(%rbp)
	jbe	.L35
	movq	-256(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_decrypt@PLT
	movq	$0, -8(%rbp)
	jmp	.L36
.L37:
	movq	-8(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	-208(%rbp,%rax,8), %rax
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, -176(%rbp,%rax,8)
	addq	$1, -8(%rbp)
.L36:
	cmpq	$1, -8(%rbp)
	jbe	.L37
	movq	-240(%rbp), %rcx
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	subq	$1, -16(%rbp)
	addq	$16, -232(%rbp)
	addq	$16, -240(%rbp)
.L33:
	cmpq	$0, -16(%rbp)
	jne	.L38
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-264(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L5
.L39:
	nop
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	AES_ige_encrypt, .-AES_ige_encrypt
	.globl	AES_bi_ige_encrypt
	.type	AES_bi_ige_encrypt, @function
AES_bi_ige_encrypt:
.LFB161:
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
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L41
	cmpq	$0, -112(%rbp)
	je	.L41
	cmpq	$0, -128(%rbp)
	je	.L41
	cmpq	$0, -144(%rbp)
	jne	.L42
.L41:
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$200, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L42:
	cmpl	$1, 16(%rbp)
	je	.L43
	cmpl	$0, 16(%rbp)
	je	.L43
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$201, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L43:
	movq	-120(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L44
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$202, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L44:
	cmpl	$1, 16(%rbp)
	jne	.L45
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-144(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	jmp	.L46
.L51:
	movq	$0, -8(%rbp)
	jmp	.L47
.L48:
	movq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L47:
	cmpq	$15, -8(%rbp)
	jbe	.L48
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_encrypt@PLT
	movq	$0, -8(%rbp)
	jmp	.L49
.L50:
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L49:
	cmpq	$15, -8(%rbp)
	jbe	.L50
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	subq	$16, -16(%rbp)
	addq	$16, -104(%rbp)
	addq	$16, -112(%rbp)
.L46:
	cmpq	$15, -16(%rbp)
	ja	.L51
	movq	-144(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	movq	-144(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L52
.L57:
	subq	$16, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L53
.L54:
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L53:
	cmpq	$15, -8(%rbp)
	jbe	.L54
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_encrypt@PLT
	movq	$0, -8(%rbp)
	jmp	.L55
.L56:
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L55:
	cmpq	$15, -8(%rbp)
	jbe	.L56
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	subq	$16, -16(%rbp)
.L52:
	cmpq	$15, -16(%rbp)
	ja	.L57
	jmp	.L71
.L45:
	movq	-144(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	movq	-144(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	addq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	addq	%rax, -112(%rbp)
	jmp	.L59
.L64:
	subq	$16, -104(%rbp)
	subq	$16, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L60
.L61:
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	leaq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L60:
	cmpq	$15, -8(%rbp)
	jbe	.L61
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_decrypt@PLT
	movq	$0, -8(%rbp)
	jmp	.L62
.L63:
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L62:
	cmpq	$15, -8(%rbp)
	jbe	.L63
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	subq	$16, -16(%rbp)
.L59:
	cmpq	$15, -16(%rbp)
	ja	.L64
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-144(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L65
.L70:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L66
.L67:
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	leaq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L66:
	cmpq	$15, -8(%rbp)
	jbe	.L67
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AES_decrypt@PLT
	movq	$0, -8(%rbp)
	jmp	.L68
.L69:
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L68:
	cmpq	$15, -8(%rbp)
	jbe	.L69
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	subq	$16, -16(%rbp)
	addq	$16, -104(%rbp)
	addq	$16, -112(%rbp)
.L65:
	cmpq	$15, -16(%rbp)
	ja	.L70
.L71:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	AES_bi_ige_encrypt, .-AES_bi_ige_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
