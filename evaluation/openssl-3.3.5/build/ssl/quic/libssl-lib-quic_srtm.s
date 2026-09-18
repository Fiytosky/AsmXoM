	.file	"quic_srtm.c"
	.text
	.type	lh_SRTM_ITEM_hfn_thunk, @function
lh_SRTM_ITEM_hfn_thunk:
.LFB563:
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
.LFE563:
	.size	lh_SRTM_ITEM_hfn_thunk, .-lh_SRTM_ITEM_hfn_thunk
	.type	lh_SRTM_ITEM_cfn_thunk, @function
lh_SRTM_ITEM_cfn_thunk:
.LFB564:
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
.LFE564:
	.size	lh_SRTM_ITEM_cfn_thunk, .-lh_SRTM_ITEM_cfn_thunk
	.type	lh_SRTM_ITEM_free, @function
lh_SRTM_ITEM_free:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	lh_SRTM_ITEM_free, .-lh_SRTM_ITEM_free
	.type	lh_SRTM_ITEM_insert, @function
lh_SRTM_ITEM_insert:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	lh_SRTM_ITEM_insert, .-lh_SRTM_ITEM_insert
	.type	lh_SRTM_ITEM_delete, @function
lh_SRTM_ITEM_delete:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	lh_SRTM_ITEM_delete, .-lh_SRTM_ITEM_delete
	.type	lh_SRTM_ITEM_retrieve, @function
lh_SRTM_ITEM_retrieve:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	lh_SRTM_ITEM_retrieve, .-lh_SRTM_ITEM_retrieve
	.type	lh_SRTM_ITEM_error, @function
lh_SRTM_ITEM_error:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_error@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	lh_SRTM_ITEM_error, .-lh_SRTM_ITEM_error
	.type	lh_SRTM_ITEM_doall_thunk, @function
lh_SRTM_ITEM_doall_thunk:
.LFB574:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	lh_SRTM_ITEM_doall_thunk, .-lh_SRTM_ITEM_doall_thunk
	.type	lh_SRTM_ITEM_doall_arg_thunk, @function
lh_SRTM_ITEM_doall_arg_thunk:
.LFB575:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	lh_SRTM_ITEM_doall_arg_thunk, .-lh_SRTM_ITEM_doall_arg_thunk
	.type	lh_SRTM_ITEM_doall, @function
lh_SRTM_ITEM_doall:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_doall@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	lh_SRTM_ITEM_doall, .-lh_SRTM_ITEM_doall
	.type	lh_SRTM_ITEM_new, @function
lh_SRTM_ITEM_new:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_SRTM_ITEM_doall_arg_thunk(%rip), %rsi
	leaq	lh_SRTM_ITEM_doall_thunk(%rip), %rcx
	leaq	lh_SRTM_ITEM_cfn_thunk(%rip), %rdx
	leaq	lh_SRTM_ITEM_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	lh_SRTM_ITEM_new, .-lh_SRTM_ITEM_new
	.type	items_fwd_hash, @function
items_fwd_hash:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	items_fwd_hash, .-items_fwd_hash
	.type	items_fwd_cmp, @function
items_fwd_cmp:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	items_fwd_cmp, .-items_fwd_cmp
	.type	items_rev_hash, @function
items_rev_hash:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	items_rev_hash, .-items_rev_hash
	.type	items_rev_cmp, @function
items_rev_cmp:
.LFB582:
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
	leaq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	items_rev_cmp, .-items_rev_cmp
	.type	srtm_check_lh, @function
srtm_check_lh:
.LFB583:
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
	call	lh_SRTM_ITEM_error
	testl	%eax, %eax
	je	.L28
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	movl	$0, %eax
	jmp	.L29
.L28:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	srtm_check_lh, .-srtm_check_lh
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_srtm.c"
.LC1:
	.string	"AES-128-ECB"
	.text
	.globl	ossl_quic_srtm_new
	.type	ossl_quic_srtm_new, @function
ossl_quic_srtm_new:
.LFB584:
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
	leaq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$128, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	cmpl	$1, %eax
	jne	.L41
	leaq	.LC0(%rip), %rax
	movl	$119, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L33
	movl	$0, %eax
	jmp	.L40
.L33:
	movq	-48(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L42
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex2@PLT
	testl	%eax, %eax
	je	.L44
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	$0, -16(%rbp)
	leaq	items_fwd_cmp(%rip), %rdx
	leaq	items_fwd_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_new
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L45
	leaq	items_rev_cmp(%rip), %rdx
	leaq	items_rev_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_new
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-8(%rbp), %rax
	jmp	.L40
.L41:
	nop
	jmp	.L32
.L42:
	nop
	jmp	.L32
.L43:
	nop
	jmp	.L32
.L44:
	nop
	jmp	.L32
.L45:
	nop
.L32:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_srtm_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	ossl_quic_srtm_new, .-ossl_quic_srtm_new
	.type	srtm_free_each, @function
srtm_free_each:
.LFB585:
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
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L47
.L48:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$158, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L47:
	cmpq	$0, -8(%rbp)
	jne	.L48
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$161, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	srtm_free_each, .-srtm_free_each
	.globl	ossl_quic_srtm_free
	.type	ossl_quic_srtm_free, @function
ossl_quic_srtm_free:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	srtm_free_each(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_doall
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_free
.L52:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L49
.L53:
	nop
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ossl_quic_srtm_free, .-ossl_quic_srtm_free
	.type	srtm_find, @function
srtm_find:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L56
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L56
.L60:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -104(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-104(%rbp), %rax
	jnb	.L59
	movq	$0, -8(%rbp)
	jmp	.L58
.L59:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L56:
	cmpq	$0, -8(%rbp)
	jne	.L60
	jmp	.L58
.L63:
	nop
.L58:
	cmpq	$0, -120(%rbp)
	je	.L61
	movq	-120(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L61:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	srtm_find, .-srtm_find
	.type	sorted_insert_seq_num, @function
sorted_insert_seq_num:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L65
.L67:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L65:
	cmpq	$0, -8(%rbp)
	je	.L66
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L67
.L66:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	sorted_insert_seq_num, .-sorted_insert_seq_num
	.type	sorted_insert_srt, @function
sorted_insert_srt:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L69
.L71:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L69:
	cmpq	$0, -8(%rbp)
	je	.L70
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L71
.L70:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	sorted_insert_srt, .-sorted_insert_srt
	.type	srtm_compute_blinded, @function
srtm_compute_blinded:
.LFB590:
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
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	leaq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	leaq	-4(%rbp), %rdx
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L76
.L73:
	movl	-4(%rbp), %eax
	cmpl	$16, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L75
	movl	$0, %eax
	jmp	.L76
.L75:
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	srtm_compute_blinded, .-srtm_compute_blinded
	.globl	ossl_quic_srtm_add
	.type	ossl_quic_srtm_add, @function
ossl_quic_srtm_add:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L78
	movl	$0, %eax
	jmp	.L87
.L78:
	leaq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	srtm_find
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L80
	movl	$0, %eax
	jmp	.L87
.L80:
	leaq	.LC0(%rip), %rax
	movl	$294, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L81
	movl	$0, %eax
	jmp	.L87
.L81:
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, 32(%rcx)
	movq	%rdx, 40(%rcx)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	srtm_compute_blinded
	testl	%eax, %eax
	jne	.L82
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$301, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L87
.L82:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L83
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_insert
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srtm_check_lh
	testl	%eax, %eax
	jne	.L84
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$310, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L87
.L83:
	movq	-24(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sorted_insert_seq_num
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L84
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_insert
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srtm_check_lh
	testl	%eax, %eax
	jne	.L84
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$318, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L87
.L84:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_retrieve
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L85
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_insert
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srtm_check_lh
	testl	%eax, %eax
	jne	.L86
	movl	$0, %eax
	jmp	.L87
.L85:
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sorted_insert_srt
	movq	-32(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	je	.L86
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_insert
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srtm_check_lh
	testl	%eax, %eax
	jne	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ossl_quic_srtm_add, .-ossl_quic_srtm_add
	.type	srtm_remove_from_rev, @function
srtm_remove_from_rev:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_retrieve
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L93
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_insert
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srtm_check_lh
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L92
.L90:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_delete
	jmp	.L91
.L94:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L93:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L94
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L91:
	movl	$1, %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	srtm_remove_from_rev, .-srtm_remove_from_rev
	.globl	ossl_quic_srtm_remove
	.type	ossl_quic_srtm_remove, @function
ossl_quic_srtm_remove:
.LFB593:
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
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L96
	movl	$0, %eax
	jmp	.L103
.L96:
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	srtm_find
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L98
	movl	$0, %eax
	jmp	.L103
.L98:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L99
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L100
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_insert
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srtm_check_lh
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L103
.L100:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_delete
	jmp	.L101
.L99:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L101:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srtm_remove_from_rev
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L103
.L102:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$411, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	ossl_quic_srtm_remove, .-ossl_quic_srtm_remove
	.globl	ossl_quic_srtm_cull
	.type	ossl_quic_srtm_cull, @function
ossl_quic_srtm_cull:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -8(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L105
	movl	$0, %eax
	jmp	.L111
.L105:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_retrieve
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L107
	movl	$1, %eax
	jmp	.L111
.L107:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L108
.L110:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L109
	movq	-8(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srtm_remove_from_rev
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$431, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L109:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L108:
	cmpq	$0, -8(%rbp)
	jne	.L110
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_delete
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srtm_remove_from_rev
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$437, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	ossl_quic_srtm_cull, .-ossl_quic_srtm_cull
	.globl	ossl_quic_srtm_lookup
	.type	ossl_quic_srtm_lookup, @function
ossl_quic_srtm_lookup:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-88(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L113
	movl	$0, %eax
	jmp	.L122
.L113:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	srtm_compute_blinded
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L122
.L115:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SRTM_ITEM_retrieve
	movq	%rax, -8(%rbp)
	jmp	.L116
.L118:
	subq	$1, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L116:
	cmpq	$0, -104(%rbp)
	je	.L117
	cmpq	$0, -8(%rbp)
	jne	.L118
.L117:
	cmpq	$0, -8(%rbp)
	jne	.L119
	movl	$0, %eax
	jmp	.L122
.L119:
	cmpq	$0, -112(%rbp)
	je	.L120
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
.L120:
	cmpq	$0, -120(%rbp)
	je	.L121
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
.L121:
	movl	$1, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	ossl_quic_srtm_lookup, .-ossl_quic_srtm_lookup
	.globl	ossl_quic_srtm_check
	.type	ossl_quic_srtm_check, @function
ossl_quic_srtm_check:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	ossl_quic_srtm_check, .-ossl_quic_srtm_check
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
