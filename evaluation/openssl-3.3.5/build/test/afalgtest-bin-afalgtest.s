	.file	"afalgtest.c"
	.text
	.local	e
	.comm	e,8,8
	.section	.rodata
.LC0:
	.string	"ctx = EVP_CIPHER_CTX_new()"
.LC1:
	.string	"../test/afalgtest.c"
	.align 8
.LC2:
	.string	"EVP_CipherInit_ex(ctx, cipher, e, key, iv, 1)"
	.align 8
.LC3:
	.string	"EVP_CipherUpdate(ctx, ebuf, &encl, in, BUFFER_SIZE)"
	.align 8
.LC4:
	.string	"EVP_CipherFinal_ex(ctx, ebuf + encl, &encf)"
.LC5:
	.string	"ebuf"
.LC6:
	.string	"enc_result"
.LC7:
	.string	"EVP_CIPHER_CTX_reset(ctx)"
	.align 8
.LC8:
	.string	"EVP_CipherInit_ex(ctx, cipher, e, key, iv, 0)"
	.align 8
.LC9:
	.string	"EVP_CipherUpdate(ctx, dbuf, &decl, ebuf, encl)"
	.align 8
.LC10:
	.string	"EVP_CipherFinal_ex(ctx, dbuf + decl, &decf)"
.LC11:
	.string	"BUFFER_SIZE"
.LC12:
	.string	"decl"
.LC13:
	.string	"in"
.LC14:
	.string	"dbuf"
	.text
	.type	test_afalg_aes_cbc, @function
test_afalg_aes_cbc:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -180(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$2, -180(%rbp)
	je	.L2
	cmpl	$2, -180(%rbp)
	jg	.L3
	cmpl	$0, -180(%rbp)
	je	.L4
	cmpl	$1, -180(%rbp)
	je	.L5
	jmp	.L3
.L4:
	call	EVP_aes_128_cbc@PLT
	movq	%rax, -8(%rbp)
	leaq	encresult_128.5(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L6
.L5:
	call	EVP_aes_192_cbc@PLT
	movq	%rax, -8(%rbp)
	leaq	encresult_192.4(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L6
.L2:
	call	EVP_aes_256_cbc@PLT
	movq	%rax, -8(%rbp)
	leaq	encresult_256.3(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L6
.L3:
	movq	$0, -8(%rbp)
.L6:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$82, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L17
.L7:
	movq	e(%rip), %rdx
	leaq	iv.1(%rip), %rdi
	leaq	key.2(%rip), %rcx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$85, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L18
	leaq	in.0(%rip), %rcx
	leaq	-164(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$17, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L18
	movl	-164(%rbp), %eax
	cltq
	leaq	-96(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-168(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L18
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -164(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$17
	leaq	-96(%rbp), %rsi
	pushq	%rsi
	movl	$17, %r9d
	movq	%rdi, %r8
	movl	$91, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_reset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$94, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	movq	e(%rip), %rdx
	leaq	iv.1(%rip), %rdi
	leaq	key.2(%rip), %rcx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$95, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	movl	-164(%rbp), %edi
	leaq	-96(%rbp), %rcx
	leaq	-172(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$96, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	movl	-172(%rbp), %eax
	cltq
	leaq	-160(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-176(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$97, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$17, %r9d
	movl	%esi, %r8d
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L21
	leaq	-160(%rbp), %rdi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$17
	leaq	in.0(%rip), %rsi
	pushq	%rsi
	movl	$17, %r9d
	movq	%rdi, %r8
	movl	$102, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L21
	movl	$1, -20(%rbp)
	jmp	.L11
.L18:
	nop
	jmp	.L11
.L19:
	nop
	jmp	.L11
.L20:
	nop
	jmp	.L11
.L21:
	nop
.L11:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-20(%rbp), %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_afalg_aes_cbc, .-test_afalg_aes_cbc
	.section	.rodata
.LC15:
	.string	"ENGINE_init(e)"
.LC16:
	.string	"ret"
	.text
	.type	test_pr16743, @function
test_pr16743:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	e(%rip), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	e(%rip), %rax
	movl	$419, %esi
	movq	%rax, %rdi
	call	ENGINE_get_cipher@PLT
	movq	%rax, -16(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L25
	cmpq	$0, -24(%rbp)
	je	.L25
	movq	e(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	movl	%eax, -4(%rbp)
.L25:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$124, %esi
	call	test_true@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	e(%rip), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movl	-4(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_pr16743, .-test_pr16743
	.globl	global_init
	.type	global_init, @function
global_init:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ENGINE_load_builtin_engines@PLT
	movl	$0, %esi
	movl	$32768, %edi
	call	OPENSSL_init_crypto@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	global_init, .-global_init
	.section	.rodata
.LC17:
	.string	"afalg"
.LC18:
	.string	"Can't load AFALG engine"
.LC19:
	.string	"test_afalg_aes_cbc"
.LC20:
	.string	"test_pr16743"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	ENGINE_by_id@PLT
	movq	%rax, e(%rip)
	movq	e(%rip), %rax
	testq	%rax, %rax
	jne	.L29
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L30
.L29:
	leaq	test_afalg_aes_cbc(%rip), %rsi
	leaq	.LC19(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_pr16743(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L30:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	e(%rip), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 16
	.type	encresult_128.5, @object
	.size	encresult_128.5, 17
encresult_128.5:
	.base64	"41N3nBB5rrgnCJQtvncYGi0="
	.align 16
	.type	encresult_192.4, @object
	.size	encresult_192.4, 17
encresult_192.4:
	.base64	"9+Qm0dVPjzmxnuDfYbnCVes="
	.align 16
	.type	encresult_256.3, @object
	.size	encresult_256.3, 17
encresult_256.3:
	.base64	"oHaF/cFlcZ3H6RNurlVJtBM="
	.align 32
	.type	key.2, @object
	.size	key.2, 33
key.2:
	.base64	"BqkhQDa4oVtRLgPVNBIABgapIUA2uKFbUS4D1TQSAAYA"
	.align 16
	.type	iv.1, @object
	.size	iv.1, 17
iv.1:
	.base64	"Pa+6Qp2etDC0ItqALJ+sQQA="
	.align 16
	.type	in.0, @object
	.size	in.0, 17
in.0:
	.ascii	"Single block msg\n"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
