	.file	"siphash.c"
	.text
	.globl	SipHash_ctx_size
	.type	SipHash_ctx_size, @function
SipHash_ctx_size:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$64, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	SipHash_ctx_size, .-SipHash_ctx_size
	.globl	SipHash_hash_size
	.type	SipHash_hash_size, @function
SipHash_hash_size:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	SipHash_hash_size, .-SipHash_hash_size
	.type	siphash_adjust_hash_size, @function
siphash_adjust_hash_size:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movq	$16, -8(%rbp)
.L6:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	siphash_adjust_hash_size, .-siphash_adjust_hash_size
	.globl	SipHash_set_hash_size
	.type	SipHash_set_hash_size, @function
SipHash_set_hash_size:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	siphash_adjust_hash_size
	movq	%rax, -16(%rbp)
	cmpq	$8, -16(%rbp)
	je	.L9
	cmpq	$16, -16(%rbp)
	je	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	siphash_adjust_hash_size
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -16(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	xorb	$-18, %al
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 44(%rax)
.L11:
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	SipHash_set_hash_size, .-SipHash_set_hash_size
	.globl	SipHash_Init
	.type	SipHash_Init, @function
SipHash_Init:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-32(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$13, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$14, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$15, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	siphash_adjust_hash_size
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	cmpl	$0, -40(%rbp)
	jne	.L13
	movl	$4, -40(%rbp)
.L13:
	cmpl	$0, -36(%rbp)
	jne	.L14
	movl	$2, -36(%rbp)
.L14:
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 52(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movabsq	$8317987319222330741, %rax
	xorq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movabsq	$7237128888997146477, %rax
	xorq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movabsq	$7816392313619706465, %rax
	xorq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movabsq	$8387220255154660723, %rax
	xorq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	$16, %eax
	jne	.L15
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	xorb	$-18, %al
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
.L15:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	SipHash_Init, .-SipHash_Init
	.globl	SipHash_Update
	.type	SipHash_Update, @function
SipHash_Update:
.LFB35:
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
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L18
	movq	-88(%rbp), %rax
	movl	40(%rax), %eax
	movl	$8, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L19
	movq	-88(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	leaq	48(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-88(%rbp), %rax
	movl	40(%rax), %eax
	movq	-104(%rbp), %rdx
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L17
.L19:
	movq	-88(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	leaq	48(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rax
	subq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movzbl	56(%rax), %eax
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movzbl	57(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movzbl	58(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movzbl	59(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movzbl	60(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movzbl	61(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movzbl	62(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, %rdx
	movq	-88(%rbp), %rax
	movzbl	63(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	orq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L21
.L22:
	movq	-24(%rbp), %rax
	addq	%rax, -16(%rbp)
	rolq	$13, -24(%rbp)
	movq	-16(%rbp), %rax
	xorq	%rax, -24(%rbp)
	rolq	$32, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	rolq	$16, -40(%rbp)
	movq	-32(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -16(%rbp)
	rolq	$21, -40(%rbp)
	movq	-16(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -32(%rbp)
	rolq	$17, -24(%rbp)
	movq	-32(%rbp), %rax
	xorq	%rax, -24(%rbp)
	rolq	$32, -32(%rbp)
	addl	$1, -4(%rbp)
.L21:
	movq	-88(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L22
	movq	-56(%rbp), %rax
	xorq	%rax, -16(%rbp)
.L18:
	movq	-104(%rbp), %rax
	andl	$7, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	movq	-104(%rbp), %rdx
	subq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	jmp	.L23
.L26:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-96(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	orq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L24
.L25:
	movq	-24(%rbp), %rax
	addq	%rax, -16(%rbp)
	rolq	$13, -24(%rbp)
	movq	-16(%rbp), %rax
	xorq	%rax, -24(%rbp)
	rolq	$32, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	rolq	$16, -40(%rbp)
	movq	-32(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -16(%rbp)
	rolq	$21, -40(%rbp)
	movq	-16(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -32(%rbp)
	rolq	$17, -24(%rbp)
	movq	-32(%rbp), %rax
	xorq	%rax, -24(%rbp)
	rolq	$32, -32(%rbp)
	addl	$1, -4(%rbp)
.L24:
	movq	-88(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L25
	movq	-56(%rbp), %rax
	xorq	%rax, -16(%rbp)
	addq	$8, -96(%rbp)
.L23:
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L26
	cmpl	$0, -60(%rbp)
	je	.L27
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L27:
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	SipHash_Update, .-SipHash_Update
	.globl	SipHash_Final
	.type	SipHash_Final, @function
SipHash_Final:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$56, %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L29
	cmpq	$0, -72(%rbp)
	je	.L29
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -72(%rbp)
	je	.L30
.L29:
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$7, %eax
	je	.L32
	cmpl	$7, %eax
	ja	.L33
	cmpl	$6, %eax
	je	.L34
	cmpl	$6, %eax
	ja	.L33
	cmpl	$5, %eax
	je	.L35
	cmpl	$5, %eax
	ja	.L33
	cmpl	$4, %eax
	je	.L36
	cmpl	$4, %eax
	ja	.L33
	cmpl	$3, %eax
	je	.L37
	cmpl	$3, %eax
	ja	.L33
	cmpl	$2, %eax
	je	.L38
	cmpl	$2, %eax
	ja	.L33
	testl	%eax, %eax
	je	.L50
	cmpl	$1, %eax
	je	.L40
	jmp	.L33
.L32:
	movq	-56(%rbp), %rax
	movzbl	62(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, -16(%rbp)
.L34:
	movq	-56(%rbp), %rax
	movzbl	61(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, -16(%rbp)
.L35:
	movq	-56(%rbp), %rax
	movzbl	60(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, -16(%rbp)
.L36:
	movq	-56(%rbp), %rax
	movzbl	59(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, -16(%rbp)
.L37:
	movq	-56(%rbp), %rax
	movzbl	58(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, -16(%rbp)
.L38:
	movq	-56(%rbp), %rax
	movzbl	57(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, -16(%rbp)
.L40:
	movq	-56(%rbp), %rax
	movzbl	56(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, -16(%rbp)
.L50:
	nop
.L33:
	movq	-16(%rbp), %rax
	xorq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L41
.L42:
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
	rolq	$13, -32(%rbp)
	movq	-24(%rbp), %rax
	xorq	%rax, -32(%rbp)
	rolq	$32, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -40(%rbp)
	rolq	$16, -48(%rbp)
	movq	-40(%rbp), %rax
	xorq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	rolq	$21, -48(%rbp)
	movq	-24(%rbp), %rax
	xorq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -40(%rbp)
	rolq	$17, -32(%rbp)
	movq	-40(%rbp), %rax
	xorq	%rax, -32(%rbp)
	rolq	$32, -40(%rbp)
	addl	$1, -4(%rbp)
.L41:
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L42
	movq	-16(%rbp), %rax
	xorq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	$16, %eax
	jne	.L43
	xorq	$238, -40(%rbp)
	jmp	.L44
.L43:
	xorq	$255, -40(%rbp)
.L44:
	movl	$0, -4(%rbp)
	jmp	.L45
.L46:
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
	rolq	$13, -32(%rbp)
	movq	-24(%rbp), %rax
	xorq	%rax, -32(%rbp)
	rolq	$32, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -40(%rbp)
	rolq	$16, -48(%rbp)
	movq	-40(%rbp), %rax
	xorq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	rolq	$21, -48(%rbp)
	movq	-24(%rbp), %rax
	xorq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -40(%rbp)
	rolq	$17, -32(%rbp)
	movq	-40(%rbp), %rax
	xorq	%rax, -32(%rbp)
	rolq	$32, -40(%rbp)
	addl	$1, -4(%rbp)
.L45:
	movq	-56(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L46
	movq	-24(%rbp), %rax
	xorq	-32(%rbp), %rax
	xorq	-40(%rbp), %rax
	xorq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$6, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$7, %rax
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	$8, %eax
	jne	.L47
	movl	$1, %eax
	jmp	.L31
.L47:
	xorq	$221, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L48
.L49:
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
	rolq	$13, -32(%rbp)
	movq	-24(%rbp), %rax
	xorq	%rax, -32(%rbp)
	rolq	$32, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -40(%rbp)
	rolq	$16, -48(%rbp)
	movq	-40(%rbp), %rax
	xorq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
	rolq	$21, -48(%rbp)
	movq	-24(%rbp), %rax
	xorq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -40(%rbp)
	rolq	$17, -32(%rbp)
	movq	-40(%rbp), %rax
	xorq	%rax, -32(%rbp)
	rolq	$32, -40(%rbp)
	addl	$1, -4(%rbp)
.L48:
	movq	-56(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L49
	movq	-24(%rbp), %rax
	xorq	-32(%rbp), %rax
	xorq	-40(%rbp), %rax
	xorq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$9, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$10, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$11, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	$12, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$13, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$14, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$15, %rax
	movb	%dl, (%rax)
	movl	$1, %eax
.L31:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	SipHash_Final, .-SipHash_Final
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
