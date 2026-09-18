	.file	"names.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB493:
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
.LFE493:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB494:
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
.LFE494:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	EVP_add_cipher
	.type	EVP_add_cipher, @function
EVP_add_cipher:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$2, %esi
	movq	%rcx, %rdi
	call	OBJ_NAME_add@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$2, %esi
	movq	%rcx, %rdi
	call	OBJ_NAME_add@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	EVP_add_cipher, .-EVP_add_cipher
	.globl	EVP_add_digest
	.type	EVP_add_digest, @function
EVP_add_digest:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_add@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rcx, %rdi
	call	OBJ_NAME_add@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	je	.L13
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$32769, %esi
	movq	%rcx, %rdi
	call	OBJ_NAME_add@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L11
.L14:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$32769, %esi
	movq	%rcx, %rdi
	call	OBJ_NAME_add@PLT
	movl	%eax, -4(%rbp)
.L13:
	movl	-4(%rbp), %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	EVP_add_digest, .-EVP_add_digest
	.type	cipher_from_name, @function
cipher_from_name:
.LFB566:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_get@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L15
.L18:
	nop
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	cipher_from_name, .-cipher_from_name
	.globl	EVP_get_cipherbyname
	.type	EVP_get_cipherbyname, @function
EVP_get_cipherbyname:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	evp_get_cipherbyname_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	EVP_get_cipherbyname, .-EVP_get_cipherbyname
	.globl	evp_get_cipherbyname_ex
	.type	evp_get_cipherbyname_ex, @function
evp_get_cipherbyname_ex:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, %esi
	movl	$4, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L29
.L22:
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_get@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L24
	movq	-40(%rbp), %rax
	jmp	.L29
.L24:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -16(%rbp)
.L25:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L26
	cmpl	$0, -4(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L29
.L27:
	movl	$0, -4(%rbp)
	call	ERR_set_mark@PLT
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	call	ERR_pop_to_mark@PLT
	jmp	.L25
.L26:
	leaq	-40(%rbp), %rdx
	leaq	cipher_from_name(%rip), %rdi
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_namemap_doall_names@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-40(%rbp), %rax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	evp_get_cipherbyname_ex, .-evp_get_cipherbyname_ex
	.type	digest_from_name, @function
digest_from_name:
.LFB569:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_get@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L30
.L33:
	nop
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	digest_from_name, .-digest_from_name
	.globl	EVP_get_digestbyname
	.type	EVP_get_digestbyname, @function
EVP_get_digestbyname:
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
	movq	%rax, %rsi
	movl	$0, %edi
	call	evp_get_digestbyname_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	EVP_get_digestbyname, .-EVP_get_digestbyname
	.globl	evp_get_digestbyname_ex
	.type	evp_get_digestbyname_ex, @function
evp_get_digestbyname_ex:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, %esi
	movl	$8, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L44
.L37:
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_get@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L39
	movq	-40(%rbp), %rax
	jmp	.L44
.L39:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -16(%rbp)
.L40:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L41
	cmpl	$0, -4(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L44
.L42:
	movl	$0, -4(%rbp)
	call	ERR_set_mark@PLT
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	call	ERR_pop_to_mark@PLT
	jmp	.L40
.L41:
	leaq	-40(%rbp), %rdx
	leaq	digest_from_name(%rip), %rdi
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_namemap_doall_names@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-40(%rbp), %rax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	evp_get_digestbyname_ex, .-evp_get_digestbyname_ex
	.globl	evp_cleanup_int
	.type	evp_cleanup_int, @function
evp_cleanup_int:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$6, %edi
	call	OBJ_NAME_cleanup@PLT
	movl	$2, %edi
	call	OBJ_NAME_cleanup@PLT
	movl	$1, %edi
	call	OBJ_NAME_cleanup@PLT
	movl	$-1, %edi
	call	OBJ_NAME_cleanup@PLT
	call	EVP_PBE_cleanup@PLT
	call	OBJ_sigid_free@PLT
	call	evp_app_cleanup_int@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	evp_cleanup_int, .-evp_cleanup_int
	.type	do_all_cipher_fn, @function
do_all_cipher_fn:
.LFB573:
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
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L47
	movq	-8(%rbp), %rax
	movq	8(%rax), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%r8
	jmp	.L49
.L47:
	movq	-8(%rbp), %rax
	movq	8(%rax), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
.L49:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	do_all_cipher_fn, .-do_all_cipher_fn
	.globl	EVP_CIPHER_do_all
	.type	EVP_CIPHER_do_all, @function
EVP_CIPHER_do_all:
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
	movl	$0, %esi
	movl	$4, %edi
	call	OPENSSL_init_crypto@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	leaq	do_all_cipher_fn(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	call	OBJ_NAME_do_all@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	EVP_CIPHER_do_all, .-EVP_CIPHER_do_all
	.globl	EVP_CIPHER_do_all_sorted
	.type	EVP_CIPHER_do_all_sorted, @function
EVP_CIPHER_do_all_sorted:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, %esi
	movl	$4, %edi
	call	OPENSSL_init_crypto@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	leaq	do_all_cipher_fn(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	call	OBJ_NAME_do_all_sorted@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	EVP_CIPHER_do_all_sorted, .-EVP_CIPHER_do_all_sorted
	.type	do_all_md_fn, @function
do_all_md_fn:
.LFB576:
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
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movq	8(%rax), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%r8
	jmp	.L55
.L53:
	movq	-8(%rbp), %rax
	movq	8(%rax), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
.L55:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	do_all_md_fn, .-do_all_md_fn
	.globl	EVP_MD_do_all
	.type	EVP_MD_do_all, @function
EVP_MD_do_all:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, %esi
	movl	$8, %edi
	call	OPENSSL_init_crypto@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	leaq	do_all_md_fn(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$1, %edi
	call	OBJ_NAME_do_all@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	EVP_MD_do_all, .-EVP_MD_do_all
	.globl	EVP_MD_do_all_sorted
	.type	EVP_MD_do_all_sorted, @function
EVP_MD_do_all_sorted:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, %esi
	movl	$8, %edi
	call	OPENSSL_init_crypto@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	leaq	do_all_md_fn(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$1, %edi
	call	OBJ_NAME_do_all_sorted@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	EVP_MD_do_all_sorted, .-EVP_MD_do_all_sorted
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
