	.file	"pbetest.c"
	.text
	.section	.rodata
	.align 16
	.type	pbe_password, @object
	.size	pbe_password, 20
pbe_password:
	.string	"MyVoiceIsMyPassport"
	.data
	.align 8
	.type	pbe_salt, @object
	.size	pbe_salt, 8
pbe_salt:
	.base64	"AQIDBAUGBwg="
	.section	.rodata
	.align 4
	.type	pbe_iter, @object
	.size	pbe_iter, 4
pbe_iter:
	.long	1000
	.data
	.align 16
	.type	pbe_plaintext, @object
	.size	pbe_plaintext, 24
pbe_plaintext:
	.ascii	"We are all made of stars"
	.section	.rodata
	.align 16
	.type	pbe_ciphertext_rc4_md5, @object
	.size	pbe_ciphertext_rc4_md5, 24
pbe_ciphertext_rc4_md5:
	.base64	"IZD67pVmWUX6Hp/iJdL5cZTkPcl8sAcj"
	.align 32
	.type	pbe_ciphertext_des_sha1, @object
	.size	pbe_ciphertext_des_sha1, 32
pbe_ciphertext_des_sha1:
	.base64	"zkuwCntI1+Oan0bWQUJLRDZFX2CPPNBV0I2pq3hbY68="
.LC0:
	.string	"ctx"
.LC1:
	.string	"../test/pbetest.c"
.LC2:
	.string	"algor"
	.align 8
.LC3:
	.string	"PKCS5_pbe_set0_algor(algor, EVP_CIPHER_nid(cipher), pbe_iter, pbe_salt, sizeof(pbe_salt))"
	.align 8
.LC4:
	.string	"PKCS5_PBE_keyivgen(ctx, pbe_password, strlen(pbe_password), algor->parameter, cipher, md, 1)"
	.align 8
.LC5:
	.string	"EVP_CipherUpdate(ctx, out, &i, pbe_plaintext, sizeof(pbe_plaintext))"
	.align 8
.LC6:
	.string	"EVP_CipherFinal_ex(ctx, out + i, &i)"
.LC7:
	.string	"exp"
.LC8:
	.string	"out"
	.align 8
.LC9:
	.string	"PKCS5_PBE_keyivgen(ctx, pbe_password, strlen(pbe_password), algor->parameter, cipher, md, 0)"
	.align 8
.LC10:
	.string	"EVP_CipherUpdate(ctx, out, &i, exp, exp_len)"
.LC11:
	.string	"pbe_plaintext"
	.text
	.type	test_pkcs5_pbe, @function
test_pkcs5_pbe:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$69, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L14
	call	X509_ALGOR_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$73, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L15
	movl	$1000, %ebx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_nid@PLT
	movl	%eax, %esi
	leaq	pbe_salt(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	%ebx, %edx
	movq	%rax, %rdi
	call	PKCS5_pbe_set0_algor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	leaq	pbe_password(%rip), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$19, %edx
	movq	%rax, %rdi
	call	PKCS5_PBE_keyivgen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$78, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	leaq	pbe_plaintext(%rip), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$24, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$80, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	cltq
	leaq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$85, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	movl	-48(%rbp), %eax
	addl	%eax, -44(%rbp)
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	movl	-44(%rbp), %eax
	movslq	%eax, %r8
	leaq	-80(%rbp), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-104(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L18
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	leaq	pbe_password(%rip), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$19, %edx
	movq	%rax, %rdi
	call	PKCS5_PBE_keyivgen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$94, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movl	-108(%rbp), %edi
	movq	-104(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$96, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	cltq
	leaq	-80(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	movl	-44(%rbp), %eax
	movslq	%eax, %r8
	leaq	-80(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$24
	leaq	pbe_plaintext(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L21
	movl	$1, -20(%rbp)
	jmp	.L3
.L14:
	nop
	jmp	.L3
.L15:
	nop
	jmp	.L3
.L16:
	nop
	jmp	.L3
.L17:
	nop
	jmp	.L3
.L18:
	nop
	jmp	.L3
.L19:
	nop
	jmp	.L3
.L20:
	nop
	jmp	.L3
.L21:
	nop
.L3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_pkcs5_pbe, .-test_pkcs5_pbe
	.type	test_pkcs5_pbe_rc4_md5, @function
test_pkcs5_pbe_rc4_md5:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	call	EVP_md5@PLT
	movq	%rax, %rbx
	call	EVP_rc4@PLT
	movq	%rax, %rdi
	leaq	pbe_ciphertext_rc4_md5(%rip), %rax
	movl	$24, %ecx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	test_pkcs5_pbe
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_pkcs5_pbe_rc4_md5, .-test_pkcs5_pbe_rc4_md5
	.type	test_pkcs5_pbe_des_sha1, @function
test_pkcs5_pbe_des_sha1:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	call	EVP_sha1@PLT
	movq	%rax, %rbx
	call	EVP_des_cbc@PLT
	movq	%rax, %rdi
	leaq	pbe_ciphertext_des_sha1(%rip), %rax
	movl	$32, %ecx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	test_pkcs5_pbe
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_pkcs5_pbe_des_sha1, .-test_pkcs5_pbe_des_sha1
	.section	.rodata
.LC12:
	.string	"test_pkcs5_pbe_rc4_md5"
.LC13:
	.string	"test_pkcs5_pbe_des_sha1"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_pkcs5_pbe_rc4_md5(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs5_pbe_des_sha1(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
