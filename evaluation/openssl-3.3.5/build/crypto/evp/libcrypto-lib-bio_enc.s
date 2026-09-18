	.file	"bio_enc.c"
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
	.string	"cipher"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_enc, @object
	.size	methods_enc, 112
methods_enc:
	.long	522
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	enc_write
	.quad	bread_conv
	.quad	enc_read
	.quad	0
	.quad	0
	.quad	enc_ctrl
	.quad	enc_new
	.quad	enc_free
	.quad	enc_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_cipher
	.type	BIO_f_cipher, @function
BIO_f_cipher:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_enc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	BIO_f_cipher, .-BIO_f_cipher
	.section	.rodata
.LC1:
	.string	"../crypto/evp/bio_enc.c"
	.text
	.type	enc_new, @function
enc_new:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$68, %edx
	movq	%rax, %rsi
	movl	$4432, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-8(%rbp), %rax
	leaq	336(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	enc_new, .-enc_new
	.type	enc_free, @function
enc_free:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L13
.L14:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$97, %ecx
	movl	$4432, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	enc_free, .-enc_free
	.type	enc_read, @function
enc_read:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L18
	cmpq	$0, -32(%rbp)
	jne	.L19
.L18:
	movl	$0, %eax
	jmp	.L17
.L19:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L20
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.L21
	movl	-68(%rbp), %eax
	movl	%eax, -8(%rbp)
.L21:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	leaq	48(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
	movl	-8(%rbp), %eax
	subl	%eax, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L20
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
.L20:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L17
.L22:
	cmpl	$1, -12(%rbp)
	jne	.L24
	movl	$0, -12(%rbp)
	jmp	.L24
.L42:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L45
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L27
	movq	-24(%rbp), %rax
	leaq	336(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L28
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L28
.L27:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movl	%edx, -8(%rbp)
.L28:
	cmpl	$0, -8(%rbp)
	jg	.L29
	movq	-32(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L30
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.L31
.L30:
	cmpl	$0, -4(%rbp)
	jne	.L46
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L46
.L29:
	cmpl	$256, -68(%rbp)
	jle	.L34
	movl	-68(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-8(%rbp), %edx
	movl	-36(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L35
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
	jmp	.L17
.L35:
	movl	-40(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
	movl	-40(%rbp), %eax
	subl	%eax, -68(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L36
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L24
.L36:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
.L34:
	cmpl	$256, -8(%rbp)
	jle	.L37
	movl	$256, -8(%rbp)
.L37:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-8(%rbp), %edi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L38
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$0, %eax
	jmp	.L17
.L38:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L31
	jmp	.L24
.L31:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jl	.L39
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L40
.L39:
	movl	-68(%rbp), %eax
	movl	%eax, -8(%rbp)
.L40:
	cmpl	$0, -8(%rbp)
	jle	.L47
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	-8(%rbp), %eax
	subl	%eax, -68(%rbp)
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
.L24:
	cmpl	$0, -68(%rbp)
	jg	.L42
	jmp	.L26
.L45:
	nop
	jmp	.L26
.L46:
	nop
	jmp	.L26
.L47:
	nop
.L26:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -4(%rbp)
	jne	.L43
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L17
.L43:
	movl	-4(%rbp), %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	enc_read, .-enc_read
	.type	enc_write, @function
enc_write:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L49
	cmpq	$0, -24(%rbp)
	jne	.L50
.L49:
	movl	$0, %eax
	jmp	.L51
.L50:
	movl	-52(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	jmp	.L52
.L54:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L53
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-28(%rbp), %eax
	jmp	.L51
.L53:
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-28(%rbp), %eax
	subl	%eax, -4(%rbp)
.L52:
	cmpl	$0, -4(%rbp)
	jg	.L54
	cmpq	$0, -48(%rbp)
	je	.L55
	cmpl	$0, -52(%rbp)
	jg	.L56
.L55:
	movl	$0, %eax
	jmp	.L51
.L56:
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.L57
.L64:
	movl	-52(%rbp), %eax
	movl	$4096, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edi
	movq	-48(%rbp), %rcx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L58
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$0, %eax
	jmp	.L51
.L58:
	movl	-4(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L59
.L63:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L60
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L61
	movl	-8(%rbp), %eax
	subl	-52(%rbp), %eax
	jmp	.L51
.L61:
	movl	-28(%rbp), %eax
	jmp	.L51
.L60:
	movl	-28(%rbp), %eax
	subl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
.L59:
	cmpl	$0, -4(%rbp)
	jg	.L63
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
.L57:
	cmpl	$0, -52(%rbp)
	jg	.L64
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-8(%rbp), %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	enc_write, .-enc_write
	.type	enc_ctrl, @function
enc_ctrl:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	$1, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	cmpl	$129, -76(%rbp)
	je	.L68
	cmpl	$129, -76(%rbp)
	jg	.L69
	cmpl	$113, -76(%rbp)
	je	.L70
	cmpl	$113, -76(%rbp)
	jg	.L69
	cmpl	$101, -76(%rbp)
	je	.L71
	cmpl	$101, -76(%rbp)
	jg	.L69
	cmpl	$13, -76(%rbp)
	je	.L72
	cmpl	$13, -76(%rbp)
	jg	.L69
	cmpl	$12, -76(%rbp)
	je	.L73
	cmpl	$12, -76(%rbp)
	jg	.L69
	cmpl	$11, -76(%rbp)
	je	.L84
	cmpl	$11, -76(%rbp)
	jg	.L69
	cmpl	$10, -76(%rbp)
	je	.L75
	cmpl	$10, -76(%rbp)
	jg	.L69
	cmpl	$1, -76(%rbp)
	je	.L76
	cmpl	$2, -76(%rbp)
	je	.L77
	jmp	.L69
.L76:
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L67
.L78:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L79
.L77:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jg	.L80
	movq	$1, -8(%rbp)
	jmp	.L79
.L80:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L79
.L72:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L91
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L91
.L75:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L92
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L92
.L74:
	jmp	.L84
.L86:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	enc_write
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	js	.L85
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	cmpl	%edx, -52(%rbp)
	jne	.L84
.L85:
	movl	-56(%rbp), %eax
	cltq
	jmp	.L67
.L84:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L86
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L87
	movq	-16(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	cmpq	$0, -8(%rbp)
	jle	.L93
	jmp	.L74
.L87:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L79
.L70:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L79
.L71:
	movq	-72(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L79
.L68:
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	jmp	.L79
.L73:
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -48(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	movl	$0, %eax
	jmp	.L67
.L89:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_copy@PLT
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L94
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	jmp	.L94
.L69:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L79
.L91:
	nop
	jmp	.L79
.L92:
	nop
	jmp	.L79
.L93:
	nop
	jmp	.L79
.L94:
	nop
.L79:
	movq	-8(%rbp), %rax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	enc_ctrl, .-enc_ctrl
	.type	enc_callback_ctrl, @function
enc_callback_ctrl:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L96
	movl	$0, %eax
	jmp	.L97
.L96:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	enc_callback_ctrl, .-enc_callback_ctrl
	.globl	BIO_set_cipher
	.type	BIO_set_cipher, @function
BIO_set_cipher:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_callback_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L101
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	pushq	$0
	pushq	$1
	movq	-24(%rbp), %r10
	movq	%rcx, %r9
	movl	$4, %r8d
	movl	$0, %ecx
	movl	$6, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testq	%rax, %rax
	jg	.L102
	movl	$0, %eax
	jmp	.L100
.L101:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_callback@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L102
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %r10
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$4, %ecx
	movl	$6, %esi
	movq	%rax, %rdi
	call	*%r10
	testq	%rax, %rax
	jg	.L102
	movl	$0, %eax
	jmp	.L100
.L102:
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	jmp	.L100
.L103:
	cmpq	$0, -24(%rbp)
	je	.L104
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	pushq	$0
	pushq	$1
	movq	-24(%rbp), %r10
	movq	%rcx, %r9
	movl	$4, %r8d
	movl	$0, %ecx
	movl	$134, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L100
.L104:
	cmpq	$0, -8(%rbp)
	je	.L105
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %r10
	movl	$1, %r9d
	movq	%rcx, %r8
	movl	$4, %ecx
	movl	$6, %esi
	movq	%rax, %rdi
	call	*%r10
	jmp	.L100
.L105:
	movl	$1, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	BIO_set_cipher, .-BIO_set_cipher
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
