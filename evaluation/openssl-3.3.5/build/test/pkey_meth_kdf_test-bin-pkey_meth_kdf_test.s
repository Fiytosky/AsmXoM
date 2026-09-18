	.file	"pkey_meth_kdf_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"EVP_PKEY_TLS1_PRF"
.LC1:
	.string	"../test/pkey_meth_kdf_test.c"
.LC2:
	.string	"EVP_PKEY_derive_init"
.LC3:
	.string	"EVP_PKEY_CTX_set_tls1_prf_md"
.LC4:
	.string	"secret"
	.align 8
.LC5:
	.string	"EVP_PKEY_CTX_set1_tls1_prf_secret"
.LC6:
	.string	"seed"
	.align 8
.LC7:
	.string	"EVP_PKEY_CTX_add1_tls1_prf_seed"
.LC8:
	.string	"se"
.LC9:
	.string	"ed"
.LC10:
	.string	"EVP_PKEY_derive"
.LC11:
	.string	"expected"
.LC12:
	.string	"out"
	.text
	.type	test_kdf_tls1_prf, @function
test_kdf_tls1_prf:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	$0, -4(%rbp)
	movq	$16, -40(%rbp)
	movl	$0, %esi
	movl	$1021, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L3
.L2:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jg	.L4
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L3
.L4:
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_tls1_prf_md@PLT
	testl	%eax, %eax
	jg	.L5
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L3
.L5:
	leaq	.LC4(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_tls1_prf_secret@PLT
	testl	%eax, %eax
	jg	.L6
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L3
.L6:
	cmpl	$0, -68(%rbp)
	jne	.L7
	leaq	.LC6(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_tls1_prf_seed@PLT
	testl	%eax, %eax
	jg	.L8
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L3
.L7:
	leaq	.LC8(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_tls1_prf_seed@PLT
	testl	%eax, %eax
	jg	.L9
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L3
.L9:
	leaq	.LC9(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_tls1_prf_seed@PLT
	testl	%eax, %eax
	jg	.L8
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L3
.L8:
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jg	.L10
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L3
.L10:
	movabsq	$-6888863453204492914, %rax
	movabsq	$-3720409777865168470, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	leaq	-64(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$71, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L13
	movl	$1, -4(%rbp)
	jmp	.L3
.L13:
	nop
.L3:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_kdf_tls1_prf, .-test_kdf_tls1_prf
	.section	.rodata
.LC13:
	.string	"EVP_PKEY_HKDF"
.LC14:
	.string	"EVP_PKEY_CTX_set_hkdf_md"
.LC15:
	.string	"salt"
.LC16:
	.string	"EVP_PKEY_CTX_set1_hkdf_salt"
.LC17:
	.string	"EVP_PKEY_CTX_set1_hkdf_key"
.LC18:
	.string	"label"
.LC19:
	.string	"EVP_PKEY_CTX_add1_hkdf_info"
.LC20:
	.string	"lab"
.LC21:
	.string	"el"
	.text
	.type	test_kdf_hkdf, @function
test_kdf_hkdf:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	$0, -4(%rbp)
	movq	$10, -40(%rbp)
	movl	$0, %esi
	movl	$1036, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L15
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L15:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jg	.L17
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L17:
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_hkdf_md@PLT
	testl	%eax, %eax
	jg	.L18
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L18:
	leaq	.LC15(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_hkdf_salt@PLT
	testl	%eax, %eax
	jg	.L19
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L19:
	leaq	.LC4(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_hkdf_key@PLT
	testl	%eax, %eax
	jg	.L20
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L20:
	cmpl	$0, -68(%rbp)
	jne	.L21
	leaq	.LC18(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_hkdf_info@PLT
	testl	%eax, %eax
	jg	.L22
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L21:
	leaq	.LC20(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_hkdf_info@PLT
	testl	%eax, %eax
	jg	.L23
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L23:
	leaq	.LC21(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_hkdf_info@PLT
	testl	%eax, %eax
	jg	.L22
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$124, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L22:
	leaq	-40(%rbp), %rdx
	leaq	-26(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jg	.L24
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L16
.L24:
	movabsq	$-534141294403468246, %rax
	movq	%rax, -50(%rbp)
	movw	$5086, -42(%rbp)
	leaq	-26(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$10
	leaq	-50(%rbp), %rsi
	pushq	%rsi
	movl	$10, %r9d
	movq	%rdi, %r8
	movl	$137, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L27
	movl	$1, -4(%rbp)
	jmp	.L16
.L27:
	nop
.L16:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_kdf_hkdf, .-test_kdf_hkdf
	.section	.rodata
.LC22:
	.string	"EVP_PKEY_SCRYPT"
.LC23:
	.string	"password"
.LC24:
	.string	"EVP_PKEY_CTX_set1_pbe_pass"
.LC25:
	.string	"NaCl"
.LC26:
	.string	"EVP_PKEY_CTX_set1_scrypt_salt"
.LC27:
	.string	"EVP_PKEY_CTX_set_scrypt_N"
.LC28:
	.string	"EVP_PKEY_CTX_set_scrypt_r"
.LC29:
	.string	"EVP_PKEY_CTX_set_scrypt_p"
.LC30:
	.string	"EVP_PKEY_CTX_set_maxmem_bytes"
	.align 8
.LC31:
	.string	"EVP_PKEY_derive should have failed"
	.text
	.type	test_kdf_scrypt, @function
test_kdf_scrypt:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	$0, -4(%rbp)
	movq	$64, -88(%rbp)
	movl	$0, %esi
	movl	$973, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L29
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L29:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	testl	%eax, %eax
	jg	.L31
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L31:
	leaq	.LC23(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_pbe_pass@PLT
	testl	%eax, %eax
	jg	.L32
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L32:
	leaq	.LC25(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_scrypt_salt@PLT
	testl	%eax, %eax
	jg	.L33
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L33:
	movq	-16(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_scrypt_N@PLT
	testl	%eax, %eax
	jg	.L34
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$172, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L34:
	movq	-16(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_scrypt_r@PLT
	testl	%eax, %eax
	jg	.L35
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L35:
	movq	-16(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_scrypt_p@PLT
	testl	%eax, %eax
	jg	.L36
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L36:
	movq	-16(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_scrypt_maxmem_bytes@PLT
	testl	%eax, %eax
	jg	.L37
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L37:
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jle	.L38
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L38:
	movq	-16(%rbp), %rax
	movl	$10485760, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_scrypt_maxmem_bytes@PLT
	testl	%eax, %eax
	jg	.L39
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L39:
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	testl	%eax, %eax
	jg	.L40
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L30
.L40:
	movabsq	$32145996741786365, %rax
	movabsq	$-78530362721479048, %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movabsq	$3492580856346143356, %rax
	movabsq	$7075497286506542055, %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movabsq	$-8600993278739828946, %rax
	movabsq	$-2724509973826899601, %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movabsq	$7921413151557363655, %rax
	movabsq	$4613599868199067779, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$64
	leaq	-160(%rbp), %rsi
	pushq	%rsi
	movl	$64, %r9d
	movq	%rdi, %r8
	movl	$211, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L43
	movl	$1, -4(%rbp)
	jmp	.L30
.L43:
	nop
.L30:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_kdf_scrypt, .-test_kdf_scrypt
	.section	.rodata
.LC32:
	.string	"test_kdf_tls1_prf"
.LC33:
	.string	"test_kdf_hkdf"
.LC34:
	.string	"test_kdf_scrypt"
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
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	movl	$1, %ecx
	movl	$3, %edx
	movl	$3, %esi
	movl	$0, %edi
	call	fips_provider_version_ge@PLT
	testl	%eax, %eax
	je	.L45
	movl	$2, -4(%rbp)
.L45:
	movl	-4(%rbp), %eax
	leaq	test_kdf_tls1_prf(%rip), %rsi
	leaq	.LC32(%rip), %rdi
	movl	$1, %ecx
	movl	%eax, %edx
	call	add_all_tests@PLT
	movl	-4(%rbp), %eax
	leaq	test_kdf_hkdf(%rip), %rsi
	leaq	.LC33(%rip), %rdi
	movl	$1, %ecx
	movl	%eax, %edx
	call	add_all_tests@PLT
	leaq	test_kdf_scrypt(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
