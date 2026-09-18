	.file	"bio_ok.c"
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
	.string	"reliable"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_ok, @object
	.size	methods_ok, 112
methods_ok:
	.long	522
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	ok_write
	.quad	bread_conv
	.quad	ok_read
	.quad	0
	.quad	0
	.quad	ok_ctrl
	.quad	ok_new
	.quad	ok_free
	.quad	ok_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_reliable
	.type	BIO_f_reliable, @function
BIO_f_reliable:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_ok(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	BIO_f_reliable, .-BIO_f_reliable
	.section	.rodata
.LC1:
	.string	"../crypto/evp/bio_ok.c"
	.text
	.type	ok_new, @function
ok_new:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$135, %edx
	movq	%rax, %rsi
	movl	$4352, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 52(%rax)
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$142, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	ok_new, .-ok_new
	.type	ok_free, @function
ok_free:
.LFB459:
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
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$161, %ecx
	movl	$4352, %esi
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
.LFE459:
	.size	ok_free, .-ok_free
	.type	ok_read, @function
ok_read:
.LFB460:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L17
	cmpq	$0, -24(%rbp)
	je	.L17
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_init@PLT
	testl	%eax, %eax
	jne	.L19
.L17:
	movl	$0, %eax
	jmp	.L16
.L29:
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L21
	movl	-52(%rbp), %eax
	movl	%eax, -8(%rbp)
.L21:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-8(%rbp), %eax
	subl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L20
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L22
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	leaq	48(%rdx), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	leaq	8(%rdx), %rsi
	movq	-16(%rbp), %rdx
	leaq	56(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memmove@PLT
	jmp	.L23
.L22:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.L23:
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
.L20:
	cmpl	$0, -52(%rbp)
	je	.L30
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	$4292, %eax
	subl	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L31
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	jne	.L27
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sig_in
	testl	%eax, %eax
	jne	.L27
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
	jmp	.L16
.L27:
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	block_in
	testl	%eax, %eax
	jne	.L28
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
	jmp	.L16
.L28:
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jle	.L32
.L19:
	cmpl	$0, -52(%rbp)
	jg	.L29
	jmp	.L25
.L30:
	nop
	jmp	.L25
.L31:
	nop
	jmp	.L25
.L32:
	nop
.L25:
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-4(%rbp), %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	ok_read, .-ok_read
	.type	ok_write, @function
ok_write:
.LFB461:
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
	cmpl	$0, -52(%rbp)
	jg	.L34
	movl	-52(%rbp), %eax
	jmp	.L35
.L34:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L36
	cmpq	$0, -24(%rbp)
	je	.L36
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_init@PLT
	testl	%eax, %eax
	jne	.L37
.L36:
	movl	$0, %eax
	jmp	.L35
.L37:
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L50
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sig_out
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L35
.L50:
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L39
.L43:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L40
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L41
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
.L41:
	movl	-28(%rbp), %eax
	jmp	.L35
.L40:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-28(%rbp), %eax
	subl	%eax, -4(%rbp)
.L39:
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L42
	cmpl	$0, -4(%rbp)
	jg	.L43
.L42:
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L44
	movq	-16(%rbp), %rax
	movq	$4, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.L44:
	cmpq	$0, -48(%rbp)
	je	.L45
	cmpl	$0, -52(%rbp)
	jg	.L46
.L45:
	movl	$0, %eax
	jmp	.L35
.L46:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	cmpq	$4100, %rax
	jbe	.L47
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	$4100, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L48
.L47:
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.L48:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$4099, %rax
	jbe	.L49
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	block_out
	testl	%eax, %eax
	jne	.L49
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
	jmp	.L35
.L49:
	cmpl	$0, -52(%rbp)
	jg	.L50
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-8(%rbp), %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	ok_write, .-ok_write
	.type	ok_ctrl, @function
ok_ctrl:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$1, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpl	$112, -60(%rbp)
	je	.L52
	cmpl	$112, -60(%rbp)
	jg	.L53
	cmpl	$111, -60(%rbp)
	je	.L54
	cmpl	$111, -60(%rbp)
	jg	.L53
	cmpl	$101, -60(%rbp)
	je	.L55
	cmpl	$101, -60(%rbp)
	jg	.L53
	cmpl	$13, -60(%rbp)
	je	.L56
	cmpl	$13, -60(%rbp)
	jg	.L53
	cmpl	$11, -60(%rbp)
	je	.L57
	cmpl	$11, -60(%rbp)
	jg	.L53
	cmpl	$10, -60(%rbp)
	je	.L56
	cmpl	$10, -60(%rbp)
	jg	.L53
	cmpl	$3, -60(%rbp)
	je	.L58
	cmpl	$3, -60(%rbp)
	jg	.L53
	cmpl	$1, -60(%rbp)
	je	.L59
	cmpl	$2, -60(%rbp)
	je	.L60
	jmp	.L53
.L59:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L61
.L60:
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jg	.L62
	movq	$1, -8(%rbp)
	jmp	.L61
.L62:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L61
.L56:
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L64
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.L65
.L64:
	movq	$0, -8(%rbp)
.L65:
	cmpq	$0, -8(%rbp)
	jg	.L75
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L75
.L57:
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L69
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	block_out
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L68
.L71:
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ok_write
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L69
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L70
.L69:
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L71
.L70:
	movq	-16(%rbp), %rax
	movl	$1, 36(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L61
.L55:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L61
.L58:
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L61
.L54:
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L68
.L72:
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	jmp	.L61
.L52:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_init@PLT
	testl	%eax, %eax
	je	.L73
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L61
.L73:
	movq	$0, -8(%rbp)
	jmp	.L61
.L53:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L61
.L75:
	nop
.L61:
	movq	-8(%rbp), %rax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	ok_ctrl, .-ok_ctrl
	.type	ok_callback_ctrl, @function
ok_callback_ctrl:
.LFB463:
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
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	ok_callback_ctrl, .-ok_callback_ctrl
	.type	longswap, @function
longswap:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L83
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L81
.L82:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	leaq	3(%rax), %rdx
	movzbl	-25(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -25(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	movzbl	-25(%rbp), %eax
	movb	%al, (%rdx)
	addq	$4, -8(%rbp)
.L81:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L82
.L83:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	longswap, .-longswap
	.section	.rodata
	.align 8
.LC2:
	.string	"The quick brown fox jumped over the lazy dog's back."
	.text
	.type	sig_out, @function
sig_out:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	cltq
	addq	%rdx, %rax
	cmpq	$4096, %rax
	jbe	.L85
	movl	$1, %eax
	jmp	.L86
.L85:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L92
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jle	.L93
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-28(%rbp), %eax
	cltq
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	leaq	48(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	longswap
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$52, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L94
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L95
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
	movl	$1, %eax
	jmp	.L86
.L92:
	nop
	jmp	.L88
.L93:
	nop
	jmp	.L88
.L94:
	nop
	jmp	.L88
.L95:
	nop
.L88:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	sig_out, .-sig_out
	.type	sig_in, @function
sig_in:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movl	$0, -4(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L109
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	js	.L110
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, %edx
	jge	.L100
	movl	$1, %eax
	jmp	.L108
.L100:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L111
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	longswap
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$52, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-112(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L113
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	cmpl	$1, -4(%rbp)
	jne	.L105
	movq	-16(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L106
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L106:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L107
.L105:
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
.L107:
	movl	$1, %eax
	jmp	.L108
.L109:
	nop
	jmp	.L98
.L110:
	nop
	jmp	.L98
.L111:
	nop
	jmp	.L98
.L112:
	nop
	jmp	.L98
.L113:
	nop
.L98:
	movq	-120(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	sig_in, .-sig_in
	.type	block_out, @function
block_out:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	$4, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$24, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 56(%rax)
	movq	-40(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 57(%rax)
	movq	-40(%rbp), %rax
	shrq	$8, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 58(%rax)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 59(%rax)
	movq	-8(%rbp), %rax
	leaq	60(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L119
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L120
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	movl	$1, %eax
	jmp	.L118
.L119:
	nop
	jmp	.L116
.L120:
	nop
.L116:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	block_out, .-block_out
	.type	block_in, @function
block_in:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L133
	movq	-16(%rbp), %rax
	movzbl	56(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movzbl	57(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movzbl	58(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movzbl	59(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$4096, -8(%rbp)
	ja	.L134
	movl	-28(%rbp), %eax
	cltq
	movq	$-5, %rdx
	subq	%rax, %rdx
	cmpq	-8(%rbp), %rdx
	jb	.L135
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	jnb	.L126
	movl	$1, %eax
	jmp	.L132
.L126:
	movq	-16(%rbp), %rax
	leaq	60(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L136
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L137
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	leaq	8(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L130
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$4, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	$1, 48(%rax)
	jmp	.L131
.L130:
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
.L131:
	movl	$1, %eax
	jmp	.L132
.L133:
	nop
	jmp	.L123
.L134:
	nop
	jmp	.L123
.L135:
	nop
	jmp	.L123
.L136:
	nop
	jmp	.L123
.L137:
	nop
.L123:
	movq	-104(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	block_in, .-block_in
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
