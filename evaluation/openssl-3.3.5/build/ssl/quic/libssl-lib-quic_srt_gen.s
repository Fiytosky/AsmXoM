	.file	"quic_srt_gen.c"
	.text
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_srt_gen.c"
.LC1:
	.string	"HMAC"
.LC2:
	.string	"SHA256"
.LC3:
	.string	"digest"
.LC4:
	.string	"properties"
	.text
	.globl	ossl_quic_srt_gen_new
	.type	ossl_quic_srt_gen_new, @function
ossl_quic_srt_gen_new:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$28, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L9
.L2:
	movq	-176(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_fetch@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	movl	$7, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, -176(%rbp)
	je	.L7
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	-176(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
.L7:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-160(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L12
	movq	-32(%rbp), %rax
	jmp	.L9
.L10:
	nop
	jmp	.L5
.L11:
	nop
	jmp	.L5
.L12:
	nop
.L5:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_srt_gen_free@PLT
	movl	$0, %eax
.L9:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	ossl_quic_srt_gen_new, .-ossl_quic_srt_gen_new
	.globl	ossl_quic_srt_gen_free
	.type	ossl_quic_srt_gen_free, @function
ossl_quic_srt_gen_free:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L16
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L13
.L16:
	nop
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	ossl_quic_srt_gen_free, .-ossl_quic_srt_gen_free
	.globl	ossl_quic_srt_gen_calculate_token
	.type	ossl_quic_srt_gen_calculate_token, @function
ossl_quic_srt_gen_calculate_token:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L23
.L18:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L23
.L20:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-8(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L21
	movq	-8(%rbp), %rax
	cmpq	$32, %rax
	je	.L22
.L21:
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	ossl_quic_srt_gen_calculate_token, .-ossl_quic_srt_gen_calculate_token
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
