	.file	"pem_read_depr_test.c"
	.text
	.local	datadir
	.comm	datadir,8,8
	.section	.rodata
.LC0:
	.string	"paramsfile"
.LC1:
	.string	"../test/pem_read_depr_test.c"
.LC2:
	.string	"r"
	.text
	.type	getfile, @function
getfile:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	datadir(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$31, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L5
	leaq	.LC2(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	jmp	.L3
.L5:
	nop
.L3:
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$36, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	getfile, .-getfile
	.section	.rodata
.LC3:
	.string	"dhparams.pem"
.LC4:
	.string	"infile"
.LC5:
	.string	"dh"
	.text
	.type	test_read_dh_params, @function
test_read_dh_params:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	getfile
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$47, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L11
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_DHparams@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$51, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L12
	movl	$1, -4(%rbp)
	jmp	.L8
.L11:
	nop
	jmp	.L8
.L12:
	nop
.L8:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_read_dh_params, .-test_read_dh_params
	.section	.rodata
.LC6:
	.string	"x942params.pem"
	.text
	.type	test_read_dh_x942_params, @function
test_read_dh_x942_params:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	getfile
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$68, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_DHparams@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$72, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movl	$1, -4(%rbp)
	jmp	.L15
.L18:
	nop
	jmp	.L15
.L19:
	nop
.L15:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_read_dh_x942_params, .-test_read_dh_x942_params
	.section	.rodata
.LC7:
	.string	"dsaparams.pem"
.LC8:
	.string	"dsa"
	.text
	.type	test_read_dsa_params, @function
test_read_dsa_params:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	getfile
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$91, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_DSAparams@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$95, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	movl	$1, -4(%rbp)
	jmp	.L22
.L25:
	nop
	jmp	.L22
.L26:
	nop
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_read_dsa_params, .-test_read_dsa_params
	.section	.rodata
.LC9:
	.string	"dsaprivatekey.pem"
	.text
	.type	test_read_dsa_private, @function
test_read_dsa_private:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	getfile
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$112, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_DSAPrivateKey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L33
	movl	$1, -4(%rbp)
	jmp	.L29
.L32:
	nop
	jmp	.L29
.L33:
	nop
.L29:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_read_dsa_private, .-test_read_dsa_private
	.section	.rodata
.LC10:
	.string	"dsapublickey.pem"
	.text
	.type	test_read_dsa_public, @function
test_read_dsa_public:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	getfile
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$133, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_DSA_PUBKEY@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$137, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	movl	$1, -4(%rbp)
	jmp	.L36
.L39:
	nop
	jmp	.L36
.L40:
	nop
.L36:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_read_dsa_public, .-test_read_dsa_public
	.section	.rodata
.LC11:
	.string	"rsaprivatekey.pem"
.LC12:
	.string	"rsa"
	.text
	.type	test_read_rsa_private, @function
test_read_rsa_private:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	getfile
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$155, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_RSAPrivateKey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$159, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L47
	movl	$1, -4(%rbp)
	jmp	.L43
.L46:
	nop
	jmp	.L43
.L47:
	nop
.L43:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_read_rsa_private, .-test_read_rsa_private
	.section	.rodata
.LC13:
	.string	"rsapublickey.pem"
	.text
	.type	test_read_rsa_public, @function
test_read_rsa_public:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	getfile
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$176, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_RSA_PUBKEY@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$180, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movl	$1, -4(%rbp)
	jmp	.L50
.L53:
	nop
	jmp	.L50
.L54:
	nop
.L50:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_read_rsa_public, .-test_read_rsa_public
	.section	.rodata
.LC14:
	.string	"Error parsing test options\n"
	.align 8
.LC15:
	.string	"datadir = test_get_argument(0)"
.LC16:
	.string	"Error getting data dir\n"
.LC17:
	.string	"test_read_dh_params"
.LC18:
	.string	"test_read_dh_x942_params"
.LC19:
	.string	"test_read_dsa_params"
.LC20:
	.string	"test_read_dsa_private"
.LC21:
	.string	"test_read_dsa_public"
.LC22:
	.string	"test_read_rsa_private"
.LC23:
	.string	"test_read_rsa_public"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L56
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L57
.L56:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, datadir(%rip)
	movq	datadir(%rip), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$198, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L58
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L57
.L58:
	leaq	test_read_dh_params(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_read_dh_x942_params(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_read_dsa_params(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_read_dsa_private(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_read_dsa_public(%rip), %rdx
	leaq	.LC21(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_read_rsa_private(%rip), %rdx
	leaq	.LC22(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_read_rsa_public(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L57:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
