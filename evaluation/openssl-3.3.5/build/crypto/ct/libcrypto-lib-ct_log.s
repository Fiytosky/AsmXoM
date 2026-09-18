	.file	"ct_log.c"
	.text
	.type	ossl_check_CTLOG_type, @function
ossl_check_CTLOG_type:
.LFB455:
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
.LFE455:
	.size	ossl_check_CTLOG_type, .-ossl_check_CTLOG_type
	.type	ossl_check_const_CTLOG_sk_type, @function
ossl_check_const_CTLOG_sk_type:
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
	.size	ossl_check_const_CTLOG_sk_type, .-ossl_check_const_CTLOG_sk_type
	.type	ossl_check_CTLOG_sk_type, @function
ossl_check_CTLOG_sk_type:
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
	.size	ossl_check_CTLOG_sk_type, .-ossl_check_CTLOG_sk_type
	.type	ossl_check_CTLOG_freefunc_type, @function
ossl_check_CTLOG_freefunc_type:
.LFB460:
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
.LFE460:
	.size	ossl_check_CTLOG_freefunc_type, .-ossl_check_CTLOG_freefunc_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB505:
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
.LFE505:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB506:
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
.LFE506:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/ct/ct_log.c"
	.text
	.type	ctlog_store_load_ctx_new, @function
ctlog_store_load_ctx_new:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$63, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ctlog_store_load_ctx_new, .-ctlog_store_load_ctx_new
	.type	ctlog_store_load_ctx_free, @function
ctlog_store_load_ctx_free:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ctlog_store_load_ctx_free, .-ctlog_store_load_ctx_free
	.section	.rodata
.LC1:
	.string	"SHA2-256"
	.text
	.type	ct_v1_log_id_from_pkey, @function
ct_v1_log_id_from_pkey:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -20(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L17
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L18
.L17:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L18
.L19:
	movq	-56(%rbp), %rax
	leaq	24(%rax), %rdi
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	movl	%eax, -4(%rbp)
.L18:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	ct_v1_log_id_from_pkey, .-ct_v1_log_id_from_pkey
	.globl	CTLOG_STORE_new_ex
	.type	CTLOG_STORE_new_ex, @function
CTLOG_STORE_new_ex:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$102, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L24
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$109, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L27
.L24:
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L26:
	movq	-8(%rbp), %rax
	jmp	.L23
.L27:
	nop
.L25:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CTLOG_STORE_free@PLT
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	CTLOG_STORE_new_ex, .-CTLOG_STORE_new_ex
	.globl	CTLOG_STORE_new
	.type	CTLOG_STORE_new, @function
CTLOG_STORE_new:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	CTLOG_STORE_new_ex@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	CTLOG_STORE_new, .-CTLOG_STORE_new
	.globl	CTLOG_STORE_free
	.type	CTLOG_STORE_free, @function
CTLOG_STORE_free:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$134, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	CTLOG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CTLOG_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CTLOG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$136, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L32:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	CTLOG_STORE_free, .-CTLOG_STORE_free
	.section	.rodata
.LC2:
	.string	"description"
.LC3:
	.string	"key"
	.text
	.type	ctlog_new_from_conf, @function
ctlog_new_from_conf:
.LFB527:
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
	movq	%rcx, -48(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$153, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L36:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CTLOG_new_from_base64_ex@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	ctlog_new_from_conf, .-ctlog_new_from_conf
	.section	.rodata
.LC4:
	.string	"CTLOG_FILE"
	.align 8
.LC5:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/ssl/ct_log_list.cnf"
	.text
	.globl	CTLOG_STORE_load_default_file
	.type	CTLOG_STORE_load_default_file, @function
CTLOG_STORE_load_default_file:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L38
	leaq	.LC5(%rip), %rax
	movq	%rax, -8(%rbp)
.L38:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CTLOG_STORE_load_file@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	CTLOG_STORE_load_default_file, .-CTLOG_STORE_load_default_file
	.type	ctlog_store_load_log, @function
ctlog_store_load_log:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L41
	movl	$1, %eax
	jmp	.L47
.L41:
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$190, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L43
	movl	$-1, %eax
	jmp	.L47
.L43:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	ctlog_new_from_conf
	movl	%eax, -28(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$195, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -28(%rbp)
	jns	.L44
	movl	-28(%rbp), %eax
	jmp	.L47
.L44:
	cmpl	$0, -28(%rbp)
	jne	.L45
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	jmp	.L47
.L45:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CTLOG_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CTLOG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L46
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	CTLOG_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L47
.L46:
	movl	$1, %eax
.L47:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	ctlog_store_load_log, .-ctlog_store_load_log
	.section	.rodata
.LC6:
	.string	"enabled_logs"
	.text
	.globl	CTLOG_STORE_load_file
	.type	CTLOG_STORE_load_file, @function
CTLOG_STORE_load_file:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	call	ctlog_store_load_ctx_new
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load@PLT
	testl	%eax, %eax
	jg	.L53
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$229, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L53:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L54:
	movq	-16(%rbp), %rcx
	leaq	ctlog_store_load_log(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
	testl	%eax, %eax
	je	.L55
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L56
.L55:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$241, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L56:
	movl	$1, -4(%rbp)
	jmp	.L52
.L57:
	nop
.L52:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ctlog_store_load_ctx_free
	movl	-4(%rbp), %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	CTLOG_STORE_load_file, .-CTLOG_STORE_load_file
	.globl	CTLOG_new_ex
	.type	CTLOG_new_ex, @function
CTLOG_new_ex:
.LFB531:
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
	movq	%rcx, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$260, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -48(%rbp)
	je	.L61
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$267, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L65
.L61:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$272, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ct_v1_log_id_from_pkey
	cmpl	$1, %eax
	jne	.L67
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	jmp	.L60
.L65:
	nop
	jmp	.L62
.L66:
	nop
	jmp	.L62
.L67:
	nop
.L62:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CTLOG_free@PLT
	movl	$0, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	CTLOG_new_ex, .-CTLOG_new_ex
	.globl	CTLOG_new
	.type	CTLOG_new, @function
CTLOG_new:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CTLOG_new_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	CTLOG_new, .-CTLOG_new
	.globl	CTLOG_free
	.type	CTLOG_free, @function
CTLOG_free:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L72
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$295, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$297, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$298, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L72:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	CTLOG_free, .-CTLOG_free
	.globl	CTLOG_get0_name
	.type	CTLOG_get0_name, @function
CTLOG_get0_name:
.LFB534:
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
.LFE534:
	.size	CTLOG_get0_name, .-CTLOG_get0_name
	.globl	CTLOG_get0_log_id
	.type	CTLOG_get0_log_id, @function
CTLOG_get0_log_id:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	$32, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	CTLOG_get0_log_id, .-CTLOG_get0_log_id
	.globl	CTLOG_get0_public_key
	.type	CTLOG_get0_public_key, @function
CTLOG_get0_public_key:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	CTLOG_get0_public_key, .-CTLOG_get0_public_key
	.globl	CTLOG_STORE_get0_log_by_id
	.type	CTLOG_STORE_get0_log_by_id, @function
CTLOG_STORE_get0_log_by_id:
.LFB537:
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
	jmp	.L79
.L82:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CTLOG_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L80
	movq	-16(%rbp), %rax
	jmp	.L81
.L80:
	addl	$1, -4(%rbp)
.L79:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CTLOG_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L82
	movl	$0, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	CTLOG_STORE_get0_log_by_id, .-CTLOG_STORE_get0_log_by_id
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"ct_v1_log_id_from_pkey"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"CTLOG_STORE_new_ex"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"ctlog_new_from_conf"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"ctlog_store_load_log"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"CTLOG_STORE_load_file"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
