	.file	"eng_openssl.c"
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
	.string	"openssl"
	.section	.data.rel.local,"aw"
	.align 8
	.type	engine_openssl_id, @object
	.size	engine_openssl_id, 8
engine_openssl_id:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"Software engine support"
	.section	.data.rel.local
	.align 8
	.type	engine_openssl_name, @object
	.size	engine_openssl_name, 8
engine_openssl_name:
	.quad	.LC1
	.text
	.type	bind_helper, @function
bind_helper:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	engine_openssl_id(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	je	.L6
	movq	engine_openssl_name(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	je	.L6
	leaq	openssl_destroy(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_destroy_function@PLT
	testl	%eax, %eax
	je	.L6
	call	RSA_get_default_method@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_RSA@PLT
	testl	%eax, %eax
	je	.L6
	call	DSA_get_default_method@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_DSA@PLT
	testl	%eax, %eax
	je	.L6
	call	EC_KEY_OpenSSL@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_EC@PLT
	testl	%eax, %eax
	je	.L6
	call	DH_get_default_method@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_DH@PLT
	testl	%eax, %eax
	je	.L6
	call	RAND_OpenSSL@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_RAND@PLT
	testl	%eax, %eax
	je	.L6
	leaq	openssl_ciphers(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_ciphers@PLT
	testl	%eax, %eax
	je	.L6
	leaq	openssl_digests(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_digests@PLT
	testl	%eax, %eax
	je	.L6
	leaq	openssl_load_privkey(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_load_privkey_function@PLT
	testl	%eax, %eax
	jne	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	bind_helper, .-bind_helper
	.type	engine_openssl, @function
engine_openssl:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ENGINE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bind_helper
	testl	%eax, %eax
	jne	.L12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	engine_openssl, .-engine_openssl
	.globl	engine_load_openssl_int
	.type	engine_load_openssl_int, @function
engine_load_openssl_int:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	engine_openssl
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L16
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	call	ERR_pop_to_mark@PLT
	jmp	.L13
.L16:
	nop
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	engine_load_openssl_int, .-engine_load_openssl_int
	.section	.rodata
	.align 8
.LC2:
	.string	"(TEST_ENG_OPENSSL_RC4) test_init_key() called\n"
	.text
	.type	test_rc4_init_key, @function
test_rc4_init_key:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -20(%rbp)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$46, %edx
	movl	$1, %esi
	call	fwrite@PLT
	cmpl	$0, -20(%rbp)
	jg	.L18
	movl	-20(%rbp), %eax
	jmp	.L19
.L18:
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	16(%rax), %rcx
	movl	-20(%rbp), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	RC4_set_key@PLT
	movl	$1, %eax
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	test_rc4_init_key, .-test_rc4_init_key
	.type	test_rc4_cipher, @function
test_rc4_cipher:
.LFB627:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	leaq	16(%rax), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	call	RC4@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	test_rc4_cipher, .-test_rc4_cipher
	.local	r4_cipher
	.comm	r4_cipher,8,8
	.type	test_r4_cipher, @function
test_r4_cipher:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	r4_cipher(%rip), %rax
	testq	%rax, %rax
	jne	.L23
	movl	$16, %edx
	movl	$1, %esi
	movl	$5, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L24
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L24
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L24
	leaq	test_rc4_init_key(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L24
	leaq	test_rc4_cipher(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L24
	movq	-8(%rbp), %rax
	movl	$1048, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	jne	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, -8(%rbp)
.L25:
	movq	-8(%rbp), %rax
	movq	%rax, r4_cipher(%rip)
.L23:
	movq	r4_cipher(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	test_r4_cipher, .-test_r4_cipher
	.type	test_r4_cipher_destroy, @function
test_r4_cipher_destroy:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	r4_cipher(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, r4_cipher(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	test_r4_cipher_destroy, .-test_r4_cipher_destroy
	.local	r4_40_cipher
	.comm	r4_40_cipher,8,8
	.type	test_r4_40_cipher, @function
test_r4_40_cipher:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	r4_40_cipher(%rip), %rax
	testq	%rax, %rax
	jne	.L29
	movl	$5, %edx
	movl	$1, %esi
	movl	$5, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L30
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L30
	leaq	test_rc4_init_key(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L30
	leaq	test_rc4_cipher(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L30
	movq	-8(%rbp), %rax
	movl	$1048, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	jne	.L31
.L30:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, -8(%rbp)
.L31:
	movq	-8(%rbp), %rax
	movq	%rax, r4_40_cipher(%rip)
.L29:
	movq	r4_40_cipher(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	test_r4_40_cipher, .-test_r4_40_cipher
	.type	test_r4_40_cipher_destroy, @function
test_r4_40_cipher_destroy:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	r4_40_cipher(%rip), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	$0, r4_40_cipher(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	test_r4_40_cipher_destroy, .-test_r4_40_cipher_destroy
	.type	test_cipher_nids, @function
test_cipher_nids:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	init.5(%rip), %eax
	testl	%eax, %eax
	jne	.L35
	call	test_r4_cipher
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L36
	movl	pos.4(%rip), %ebx
	leal	1(%rbx), %eax
	movl	%eax, pos.4(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_nid@PLT
	movslq	%ebx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	cipher_nids.3(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
.L36:
	call	test_r4_40_cipher
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L37
	movl	pos.4(%rip), %ebx
	leal	1(%rbx), %eax
	movl	%eax, pos.4(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_nid@PLT
	movslq	%ebx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	cipher_nids.3(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
.L37:
	movl	pos.4(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	cipher_nids.3(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	$1, init.5(%rip)
.L35:
	movq	-40(%rbp), %rax
	leaq	cipher_nids.3(%rip), %rdx
	movq	%rdx, (%rax)
	movl	pos.4(%rip), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	test_cipher_nids, .-test_cipher_nids
	.type	openssl_ciphers, @function
openssl_ciphers:
.LFB633:
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
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L40
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_cipher_nids
	jmp	.L41
.L40:
	cmpl	$5, -28(%rbp)
	jne	.L42
	call	test_r4_cipher
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L43
.L42:
	cmpl	$97, -28(%rbp)
	jne	.L44
	call	test_r4_40_cipher
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L43
.L44:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L41
.L43:
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	openssl_ciphers, .-openssl_ciphers
	.type	test_sha1_init, @function
test_sha1_init:
.LFB634:
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
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	test_sha1_init, .-test_sha1_init
	.type	test_sha1_update, @function
test_sha1_update:
.LFB635:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA1_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	test_sha1_update, .-test_sha1_update
	.type	test_sha1_final, @function
test_sha1_final:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	test_sha1_final, .-test_sha1_final
	.local	sha1_md
	.comm	sha1_md,8,8
	.type	test_sha_md, @function
test_sha_md:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	sha1_md(%rip), %rax
	testq	%rax, %rax
	jne	.L52
	movl	$65, %esi
	movl	$64, %edi
	call	EVP_MD_meth_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_result_size@PLT
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_input_blocksize@PLT
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_app_datasize@PLT
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L53
	leaq	test_sha1_init(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_init@PLT
	testl	%eax, %eax
	je	.L53
	leaq	test_sha1_update(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_update@PLT
	testl	%eax, %eax
	je	.L53
	leaq	test_sha1_final(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_meth_set_final@PLT
	testl	%eax, %eax
	jne	.L54
.L53:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_meth_free@PLT
	movq	$0, -8(%rbp)
.L54:
	movq	-8(%rbp), %rax
	movq	%rax, sha1_md(%rip)
.L52:
	movq	sha1_md(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	test_sha_md, .-test_sha_md
	.type	test_sha_md_destroy, @function
test_sha_md_destroy:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	sha1_md(%rip), %rax
	movq	%rax, %rdi
	call	EVP_MD_meth_free@PLT
	movq	$0, sha1_md(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	test_sha_md_destroy, .-test_sha_md_destroy
	.type	test_digest_nids, @function
test_digest_nids:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	init.2(%rip), %eax
	testl	%eax, %eax
	jne	.L58
	call	test_sha_md
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L59
	movl	pos.1(%rip), %ebx
	leal	1(%rbx), %eax
	movl	%eax, pos.1(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movslq	%ebx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	digest_nids.0(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
.L59:
	movl	pos.1(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	digest_nids.0(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	$1, init.2(%rip)
.L58:
	movq	-40(%rbp), %rax
	leaq	digest_nids.0(%rip), %rdx
	movq	%rdx, (%rax)
	movl	pos.1(%rip), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	test_digest_nids, .-test_digest_nids
	.type	openssl_digests, @function
openssl_digests:
.LFB640:
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
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L62
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_digest_nids
	jmp	.L63
.L62:
	cmpl	$64, -28(%rbp)
	jne	.L64
	call	test_sha_md
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
	jmp	.L63
.L64:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	openssl_digests, .-openssl_digests
	.section	.rodata
	.align 8
.LC3:
	.string	"(TEST_ENG_OPENSSL_PKEY)Loading Private key %s\n"
.LC4:
	.string	"r"
	.text
	.type	openssl_load_privkey, @function
openssl_load_privkey:
.LFB641:
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
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	leaq	.LC4(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	openssl_load_privkey, .-openssl_load_privkey
	.type	openssl_destroy, @function
openssl_destroy:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	test_sha_md_destroy
	call	test_r4_cipher_destroy
	call	test_r4_40_cipher_destroy
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	openssl_destroy, .-openssl_destroy
	.local	init.5
	.comm	init.5,4,4
	.local	pos.4
	.comm	pos.4,4,4
	.local	cipher_nids.3
	.comm	cipher_nids.3,16,16
	.local	init.2
	.comm	init.2,4,4
	.local	pos.1
	.comm	pos.1,4,4
	.local	digest_nids.0
	.comm	digest_nids.0,8,8
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
