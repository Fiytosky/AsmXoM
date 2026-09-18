	.file	"by_dir.c"
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
	.type	ossl_check_X509_OBJECT_type, @function
ossl_check_X509_OBJECT_type:
.LFB456:
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
.LFE456:
	.size	ossl_check_X509_OBJECT_type, .-ossl_check_X509_OBJECT_type
	.type	ossl_check_const_X509_OBJECT_sk_type, @function
ossl_check_const_X509_OBJECT_sk_type:
.LFB457:
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
.LFE457:
	.size	ossl_check_const_X509_OBJECT_sk_type, .-ossl_check_const_X509_OBJECT_sk_type
	.type	ossl_check_X509_OBJECT_sk_type, @function
ossl_check_X509_OBJECT_sk_type:
.LFB458:
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
.LFE458:
	.size	ossl_check_X509_OBJECT_sk_type, .-ossl_check_X509_OBJECT_sk_type
	.type	sk_BY_DIR_HASH_value, @function
sk_BY_DIR_HASH_value:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	sk_BY_DIR_HASH_value, .-sk_BY_DIR_HASH_value
	.type	sk_BY_DIR_HASH_new, @function
sk_BY_DIR_HASH_new:
.LFB516:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	sk_BY_DIR_HASH_new, .-sk_BY_DIR_HASH_new
	.type	sk_BY_DIR_HASH_push, @function
sk_BY_DIR_HASH_push:
.LFB524:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	sk_BY_DIR_HASH_push, .-sk_BY_DIR_HASH_push
	.type	sk_BY_DIR_HASH_pop_free, @function
sk_BY_DIR_HASH_pop_free:
.LFB528:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	sk_BY_DIR_HASH_pop_free, .-sk_BY_DIR_HASH_pop_free
	.type	sk_BY_DIR_HASH_find, @function
sk_BY_DIR_HASH_find:
.LFB531:
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
	call	OPENSSL_sk_find@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	sk_BY_DIR_HASH_find, .-sk_BY_DIR_HASH_find
	.type	sk_BY_DIR_HASH_sort, @function
sk_BY_DIR_HASH_sort:
.LFB534:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	sk_BY_DIR_HASH_sort, .-sk_BY_DIR_HASH_sort
	.type	sk_BY_DIR_ENTRY_num, @function
sk_BY_DIR_ENTRY_num:
.LFB539:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	sk_BY_DIR_ENTRY_num, .-sk_BY_DIR_ENTRY_num
	.type	sk_BY_DIR_ENTRY_value, @function
sk_BY_DIR_ENTRY_value:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	sk_BY_DIR_ENTRY_value, .-sk_BY_DIR_ENTRY_value
	.type	sk_BY_DIR_ENTRY_new_null, @function
sk_BY_DIR_ENTRY_new_null:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	sk_BY_DIR_ENTRY_new_null, .-sk_BY_DIR_ENTRY_new_null
	.type	sk_BY_DIR_ENTRY_push, @function
sk_BY_DIR_ENTRY_push:
.LFB549:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	sk_BY_DIR_ENTRY_push, .-sk_BY_DIR_ENTRY_push
	.type	sk_BY_DIR_ENTRY_pop_free, @function
sk_BY_DIR_ENTRY_pop_free:
.LFB553:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	sk_BY_DIR_ENTRY_pop_free, .-sk_BY_DIR_ENTRY_pop_free
	.section	.rodata
	.align 8
.LC0:
	.string	"Load certs from files in a directory"
	.section	.data.rel.local,"aw"
	.align 32
	.type	x509_dir_lookup, @object
	.size	x509_dir_lookup, 96
x509_dir_lookup:
	.quad	.LC0
	.quad	new_dir
	.quad	free_dir
	.quad	0
	.quad	0
	.quad	dir_ctrl
	.quad	get_cert_by_subject
	.quad	0
	.quad	0
	.quad	0
	.quad	get_cert_by_subject_ex
	.quad	0
	.text
	.globl	X509_LOOKUP_hash_dir
	.type	X509_LOOKUP_hash_dir, @function
X509_LOOKUP_hash_dir:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	x509_dir_lookup(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	X509_LOOKUP_hash_dir, .-X509_LOOKUP_hash_dir
	.section	.rodata
.LC1:
	.string	"../crypto/x509/by_dir.c"
	.text
	.type	dir_ctrl, @function
dir_ctrl:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$2, -44(%rbp)
	jne	.L33
	cmpq	$3, -64(%rbp)
	jne	.L34
	call	X509_get_default_cert_dir_env@PLT
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_cert_dir
	movl	%eax, -4(%rbp)
	jmp	.L36
.L35:
	call	X509_get_default_cert_dir@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_cert_dir
	movl	%eax, -4(%rbp)
.L36:
	cmpl	$0, -4(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L34:
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_cert_dir
	movl	%eax, -4(%rbp)
.L39:
	nop
.L33:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	dir_ctrl, .-dir_ctrl
	.type	new_dir, @function
new_dir:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$110, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	call	BUF_MEM_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L44
.L45:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	jmp	.L42
.L44:
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	new_dir, .-new_dir
	.type	by_dir_hash_free, @function
by_dir_hash_free:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$136, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	by_dir_hash_free, .-by_dir_hash_free
	.type	by_dir_hash_cmp, @function
by_dir_hash_cmp:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L48
	movl	$1, %eax
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L50
	movl	$-1, %eax
	jmp	.L49
.L50:
	movl	$0, %eax
.L49:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	by_dir_hash_cmp, .-by_dir_hash_cmp
	.type	by_dir_entry_free, @function
by_dir_entry_free:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$151, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	by_dir_hash_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BY_DIR_HASH_pop_free
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$153, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	by_dir_entry_free, .-by_dir_entry_free
	.type	free_dir, @function
free_dir:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	by_dir_entry_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BY_DIR_ENTRY_pop_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$163, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	free_dir, .-free_dir
	.type	add_cert_dir, @function
add_cert_dir:
.LFB596:
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
	cmpq	$0, -64(%rbp)
	je	.L54
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L55
.L54:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L69:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L57
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L58
.L57:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L70
	movl	$0, -4(%rbp)
	jmp	.L60
.L63:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BY_DIR_ENTRY_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, -40(%rbp)
	jne	.L61
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L71
.L61:
	addl	$1, -4(%rbp)
.L60:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_BY_DIR_ENTRY_num
	cmpl	%eax, -4(%rbp)
	jl	.L63
	jmp	.L62
.L71:
	nop
.L62:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_BY_DIR_ENTRY_num
	cmpl	%eax, -4(%rbp)
	jl	.L72
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	call	sk_BY_DIR_ENTRY_new_null
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$198, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L65:
	leaq	.LC1(%rip), %rax
	movl	$202, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L56
.L66:
	movq	-48(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 8(%rax)
	leaq	by_dir_hash_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_BY_DIR_HASH_new
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$207, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L68
.L67:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	by_dir_entry_free
	movl	$0, %eax
	jmp	.L56
.L68:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BY_DIR_ENTRY_push
	testl	%eax, %eax
	jne	.L58
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	by_dir_entry_free
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$214, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L70:
	nop
	jmp	.L58
.L72:
	nop
.L58:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L69
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	add_cert_dir, .-add_cert_dir
	.section	.rodata
.LC2:
	.string	""
.LC3:
	.string	"r"
.LC4:
	.string	"%s%c%08lx.%s%d"
	.text
	.type	get_cert_by_subject_ex, @function
get_cert_by_subject_ex:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$712, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -680(%rbp)
	movl	%esi, -684(%rbp)
	movq	%rdx, -696(%rbp)
	movq	%rcx, -704(%rbp)
	movq	%r8, -712(%rbp)
	movq	%r9, -720(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -696(%rbp)
	jne	.L74
	movl	$0, %eax
	jmp	.L109
.L74:
	movl	-684(%rbp), %eax
	movl	%eax, -512(%rbp)
	cmpl	$1, -684(%rbp)
	jne	.L76
	movq	-696(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, -504(%rbp)
	jmp	.L77
.L76:
	cmpl	$2, -684(%rbp)
	jne	.L78
	movq	-696(%rbp), %rax
	movq	%rax, -456(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, -504(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L77
.L78:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L77:
	call	BUF_MEM_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L80:
	movq	-680(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	leaq	-484(%rbp), %rcx
	movq	-720(%rbp), %rdx
	movq	-712(%rbp), %rsi
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_hash_ex@PLT
	movq	%rax, -72(%rbp)
	movl	-484(%rbp), %eax
	testl	%eax, %eax
	je	.L110
	movl	$0, -484(%rbp)
	jmp	.L82
.L106:
	movl	-484(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BY_DIR_ENTRY_value
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$17, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L83:
	cmpl	$2, -684(%rbp)
	jne	.L85
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-72(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	je	.L111
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-528(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BY_DIR_HASH_find
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	js	.L87
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	-88(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BY_DIR_HASH_value
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -24(%rbp)
	jmp	.L88
.L87:
	movq	$0, -56(%rbp)
	movl	$0, -24(%rbp)
.L88:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L94
.L85:
	movl	$0, -24(%rbp)
	movq	$0, -56(%rbp)
.L94:
	movb	$47, -89(%rbp)
	movsbl	-89(%rbp), %r8d
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %r9
	leaq	.LC4(%rip), %rdi
	movl	-24(%rbp), %ecx
	pushq	%rcx
	pushq	-48(%rbp)
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-672(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	js	.L112
	cmpl	$1, -684(%rbp)
	jne	.L92
	movq	-80(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-720(%rbp), %rdi
	movq	-712(%rbp), %rcx
	movq	-680(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	X509_load_cert_file_ex@PLT
	testl	%eax, %eax
	jne	.L93
	jmp	.L91
.L92:
	cmpl	$2, -684(%rbp)
	jne	.L93
	movq	-80(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-680(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_load_crl_file@PLT
	testl	%eax, %eax
	je	.L113
.L93:
	addl	$1, -24(%rbp)
	jmp	.L94
.L112:
	nop
	jmp	.L91
.L113:
	nop
.L91:
	cmpl	$0, -24(%rbp)
	jle	.L95
	movq	-680(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_lock@PLT
	testl	%eax, %eax
	je	.L114
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_type
	movq	%rax, %rbx
	movq	-680(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	movl	%eax, -84(%rbp)
	movq	-680(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-680(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	jmp	.L97
.L95:
	movq	$0, -40(%rbp)
.L97:
	cmpl	$2, -684(%rbp)
	jne	.L98
	cmpl	$0, -24(%rbp)
	jle	.L98
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L115
	cmpq	$0, -56(%rbp)
	jne	.L100
	movq	-72(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-528(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BY_DIR_HASH_find
	movl	%eax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	-88(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BY_DIR_HASH_value
	movq	%rax, -56(%rbp)
.L100:
	cmpq	$0, -56(%rbp)
	jne	.L101
	leaq	.LC1(%rip), %rax
	movl	$378, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L102
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, -20(%rbp)
	jmp	.L79
.L102:
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BY_DIR_HASH_push
	testl	%eax, %eax
	jne	.L103
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$388, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -20(%rbp)
	jmp	.L79
.L103:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_BY_DIR_HASH_sort
	jmp	.L104
.L101:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jle	.L104
	movq	-56(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 8(%rax)
.L104:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L98:
	cmpq	$0, -40(%rbp)
	je	.L105
	movl	$1, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-704(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-704(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	call	ERR_clear_error@PLT
	jmp	.L79
.L105:
	movl	-484(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -484(%rbp)
.L82:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_BY_DIR_ENTRY_num
	movl	%eax, %edx
	movl	-484(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L106
	jmp	.L79
.L110:
	nop
	jmp	.L79
.L111:
	nop
	jmp	.L79
.L114:
	nop
	jmp	.L79
.L115:
	nop
.L79:
	movq	-680(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_lock@PLT
	testl	%eax, %eax
	je	.L107
	movq	-680(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_is_sorted@PLT
	testl	%eax, %eax
	jne	.L108
	movq	-680(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
.L108:
	movq	-680(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
.L107:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	-20(%rbp), %eax
.L109:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	get_cert_by_subject_ex, .-get_cert_by_subject_ex
	.type	get_cert_by_subject, @function
get_cert_by_subject:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	get_cert_by_subject_ex
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	get_cert_by_subject, .-get_cert_by_subject
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 9
__func__.3:
	.string	"dir_ctrl"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 8
__func__.2:
	.string	"new_dir"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"add_cert_dir"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"get_cert_by_subject_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
