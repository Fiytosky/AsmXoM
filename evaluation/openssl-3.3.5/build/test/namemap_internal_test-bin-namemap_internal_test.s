	.file	"namemap_internal_test.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"1"
.LC1:
	.string	"ossl_namemap_empty(NULL)"
	.align 8
.LC2:
	.string	"../test/namemap_internal_test.c"
.LC3:
	.string	"nm = ossl_namemap_new()"
.LC4:
	.string	"ossl_namemap_empty(nm)"
.LC5:
	.string	"name1"
.LC6:
	.string	"0"
	.align 8
.LC7:
	.string	"ossl_namemap_add_name(nm, 0, NAME1)"
	.text
	.type	test_namemap_empty, @function
test_namemap_empty:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$0, %edi
	call	ossl_namemap_empty@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$24, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	call	ossl_namemap_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_empty@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$26, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$27, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_empty@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$28, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	test_namemap_empty, .-test_namemap_empty
	.section	.rodata
.LC8:
	.string	"name2"
.LC9:
	.string	"alias1"
.LC10:
	.string	"ALIAS1"
.LC11:
	.string	"cookie"
.LC12:
	.string	"num1"
.LC13:
	.string	"num2"
.LC14:
	.string	"num3"
.LC15:
	.string	"num4"
.LC16:
	.string	"check1"
.LC17:
	.string	"check2"
.LC18:
	.string	"check3"
.LC19:
	.string	"check4"
.LC20:
	.string	"false1"
	.text
	.type	test_namemap, @function
test_namemap:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -4(%rbp)
	leaq	.LC8(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -8(%rbp)
	leaq	.LC9(%rip), %rdx
	movl	-4(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -12(%rbp)
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -16(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -20(%rbp)
	leaq	.LC8(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -24(%rbp)
	leaq	.LC9(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -28(%rbp)
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -32(%rbp)
	leaq	.LC11(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -36(%rbp)
	movl	-4(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L10
	movl	-8(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$46, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L10
	movl	-12(%rbp), %edi
	movl	-4(%rbp), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L10
	movl	-16(%rbp), %edi
	movl	-12(%rbp), %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L10
	movl	-20(%rbp), %edi
	movl	-4(%rbp), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$49, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L10
	movl	-24(%rbp), %edi
	movl	-8(%rbp), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$50, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L10
	movl	-28(%rbp), %edi
	movl	-12(%rbp), %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L10
	movl	-32(%rbp), %edi
	movl	-16(%rbp), %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$52, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L10
	movl	-36(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L10
	movl	$1, %eax
	jmp	.L12
.L10:
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	test_namemap, .-test_namemap
	.section	.rodata
.LC21:
	.string	"nm"
	.text
	.type	test_namemap_independent, @function
test_namemap_independent:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ossl_namemap_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L14
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test_namemap
	testl	%eax, %eax
	je	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movl	$0, %eax
.L15:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	test_namemap_independent, .-test_namemap_independent
	.type	test_namemap_stored, @function
test_namemap_stored:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	ossl_namemap_stored@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$69, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	test_namemap
	testl	%eax, %eax
	je	.L18
	movl	$1, %eax
	jmp	.L20
.L18:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	test_namemap_stored, .-test_namemap_stored
	.section	.rodata
.LC22:
	.string	"SHA256"
.LC23:
	.string	"id"
.LC24:
	.string	"foo"
	.align 8
.LC25:
	.string	"ossl_namemap_add_name(nm, id, \"foo\")"
.LC26:
	.string	"sha256"
	.text
	.type	test_digestbyname, @function
test_digestbyname:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, %edi
	call	ossl_namemap_stored@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$83, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	leaq	.LC22(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$86, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$0, %eax
	jmp	.L23
.L24:
	leaq	.LC24(%rip), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, %esi
	movl	-12(%rbp), %edi
	leaq	.LC23(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L23
.L25:
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$92, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L23
.L26:
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L23
.L27:
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	test_digestbyname, .-test_digestbyname
	.section	.rodata
.LC27:
	.string	"AES-128-CBC"
.LC28:
	.string	"bar"
	.align 8
.LC29:
	.string	"ossl_namemap_add_name(nm, id, \"bar\")"
.LC30:
	.string	"aes128"
	.text
	.type	test_cipherbyname, @function
test_cipherbyname:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, %edi
	call	ossl_namemap_stored@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	leaq	.LC27(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	leaq	.LC28(%rip), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, %esi
	movl	-12(%rbp), %edi
	leaq	.LC23(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L30
.L32:
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$120, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L30
.L33:
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$123, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L30
.L34:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	test_cipherbyname, .-test_cipherbyname
	.section	.rodata
.LC31:
	.string	"AES-256-CCM"
.LC32:
	.string	"fetched"
.LC33:
	.string	"id-aes256-CCM"
	.align 8
.LC34:
	.string	"EVP_CIPHER_is_a(fetched, \"id-aes256-CCM\")"
.LC35:
	.string	"AES-128-GCM"
	.align 8
.LC36:
	.string	"EVP_CIPHER_is_a(fetched, \"AES-128-GCM\")"
.LC37:
	.string	"AES-256-GCM"
	.align 8
.LC38:
	.string	"EVP_CIPHER_is_a(EVP_aes_256_gcm(), \"AES-256-GCM\")"
.LC39:
	.string	"AES-128-CCM"
	.align 8
.LC40:
	.string	"EVP_CIPHER_is_a(EVP_aes_256_gcm(), \"AES-128-CCM\")"
	.text
	.type	test_cipher_is_a, @function
test_cipher_is_a:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC31(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$138, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	leaq	.LC33(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$140, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC35(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$141, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L39
.L38:
	movl	$0, -4(%rbp)
.L39:
	call	EVP_aes_256_gcm@PLT
	movq	%rax, %rdx
	leaq	.LC37(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$143, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	call	EVP_aes_256_gcm@PLT
	movq	%rax, %rdx
	leaq	.LC39(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$144, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L41
.L40:
	movl	$0, -4(%rbp)
.L41:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	test_cipher_is_a, .-test_cipher_is_a
	.section	.rodata
.LC41:
	.string	"SHA2-512"
.LC42:
	.string	"SHA512"
	.align 8
.LC43:
	.string	"EVP_MD_is_a(fetched, \"SHA512\")"
.LC44:
	.string	"SHA1"
.LC45:
	.string	"EVP_MD_is_a(fetched, \"SHA1\")"
.LC46:
	.string	"SHA2-256"
	.align 8
.LC47:
	.string	"EVP_MD_is_a(EVP_sha256(), \"SHA2-256\")"
.LC48:
	.string	"SHA3-256"
	.align 8
.LC49:
	.string	"EVP_MD_is_a(EVP_sha256(), \"SHA3-256\")"
	.text
	.type	test_digest_is_a, @function
test_digest_is_a:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC41(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$160, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	leaq	.LC42(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$162, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	leaq	.LC44(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$163, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L46
.L45:
	movl	$0, -4(%rbp)
.L46:
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$165, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	call	EVP_sha256@PLT
	movq	%rax, %rdx
	leaq	.LC48(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$166, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L48
.L47:
	movl	$0, -4(%rbp)
.L48:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	test_digest_is_a, .-test_digest_is_a
	.section	.rodata
.LC50:
	.string	"test_namemap_empty"
.LC51:
	.string	"test_namemap_independent"
.LC52:
	.string	"test_namemap_stored"
.LC53:
	.string	"test_digestbyname"
.LC54:
	.string	"test_cipherbyname"
.LC55:
	.string	"test_digest_is_a"
.LC56:
	.string	"test_cipher_is_a"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_namemap_empty(%rip), %rdx
	leaq	.LC50(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_namemap_independent(%rip), %rdx
	leaq	.LC51(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_namemap_stored(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_digestbyname(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cipherbyname(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_digest_is_a(%rip), %rdx
	leaq	.LC55(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cipher_is_a(%rip), %rdx
	leaq	.LC56(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
