	.file	"sha1_one.c"
	.text
	.globl	ossl_sha1
	.type	ossl_sha1, @function
ossl_sha1:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L2
	leaq	m.5(%rip), %rax
	movq	%rax, -120(%rbp)
.L2:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	testl	%eax, %eax
	jne	.L3
	movl	$0, %eax
	jmp	.L5
.L3:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	leaq	-96(%rbp), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-120(%rbp), %rax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_sha1, .-ossl_sha1
	.section	.rodata
.LC0:
	.string	"SHA1"
	.text
	.globl	SHA1
	.type	SHA1, @function
SHA1:
.LFB321:
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
	cmpq	$0, -24(%rbp)
	jne	.L7
	leaq	m.4(%rip), %rax
	movq	%rax, -24(%rbp)
.L7:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %edi
	call	EVP_Q_digest@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L8
	movq	-24(%rbp), %rax
	jmp	.L10
.L8:
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	SHA1, .-SHA1
	.section	.rodata
.LC1:
	.string	"SHA224"
	.text
	.globl	SHA224
	.type	SHA224, @function
SHA224:
.LFB322:
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
	cmpq	$0, -24(%rbp)
	jne	.L12
	leaq	m.3(%rip), %rax
	movq	%rax, -24(%rbp)
.L12:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %edi
	call	EVP_Q_digest@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	jmp	.L15
.L13:
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	SHA224, .-SHA224
	.section	.rodata
.LC2:
	.string	"SHA256"
	.text
	.globl	SHA256
	.type	SHA256, @function
SHA256:
.LFB323:
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
	cmpq	$0, -24(%rbp)
	jne	.L17
	leaq	m.2(%rip), %rax
	movq	%rax, -24(%rbp)
.L17:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %edi
	call	EVP_Q_digest@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L18
	movq	-24(%rbp), %rax
	jmp	.L20
.L18:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	SHA256, .-SHA256
	.section	.rodata
.LC3:
	.string	"SHA384"
	.text
	.globl	SHA384
	.type	SHA384, @function
SHA384:
.LFB324:
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
	cmpq	$0, -24(%rbp)
	jne	.L22
	leaq	m.1(%rip), %rax
	movq	%rax, -24(%rbp)
.L22:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %edi
	call	EVP_Q_digest@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rax
	jmp	.L25
.L23:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	SHA384, .-SHA384
	.section	.rodata
.LC4:
	.string	"SHA512"
	.text
	.globl	SHA512
	.type	SHA512, @function
SHA512:
.LFB325:
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
	cmpq	$0, -24(%rbp)
	jne	.L27
	leaq	m.0(%rip), %rax
	movq	%rax, -24(%rbp)
.L27:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %edi
	call	EVP_Q_digest@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rax
	jmp	.L30
.L28:
	movl	$0, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	SHA512, .-SHA512
	.local	m.5
	.comm	m.5,20,16
	.local	m.4
	.comm	m.4,20,16
	.local	m.3
	.comm	m.3,28,16
	.local	m.2
	.comm	m.2,32,32
	.local	m.1
	.comm	m.1,48,32
	.local	m.0
	.comm	m.0,64,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
