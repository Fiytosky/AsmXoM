	.file	"ct_test.c"
	.text
	.type	ossl_check_SCT_type, @function
ossl_check_SCT_type:
.LFB449:
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
.LFE449:
	.size	ossl_check_SCT_type, .-ossl_check_SCT_type
	.type	ossl_check_const_SCT_sk_type, @function
ossl_check_const_SCT_sk_type:
.LFB450:
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
.LFE450:
	.size	ossl_check_const_SCT_sk_type, .-ossl_check_const_SCT_sk_type
	.type	ossl_check_SCT_sk_type, @function
ossl_check_SCT_sk_type:
.LFB451:
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
.LFE451:
	.size	ossl_check_SCT_sk_type, .-ossl_check_SCT_sk_type
	.local	certs_dir
	.comm	certs_dir,8,8
	.local	ct_dir
	.comm	ct_dir,8,8
	.section	.rodata
.LC0:
	.string	"../test/ct_test.c"
	.align 8
.LC1:
	.string	"fixture = OPENSSL_zalloc(sizeof(*fixture))"
	.align 8
.LC2:
	.string	"fixture->ctlog_store = CTLOG_STORE_new()"
.LC3:
	.string	"1"
	.align 8
.LC4:
	.string	"CTLOG_STORE_load_default_file(fixture->ctlog_store)"
.LC5:
	.string	"Failed to setup"
	.text
	.type	set_up, @function
set_up:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$64, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L14
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movabsq	$1580335307000, %rcx
	movq	%rcx, 8(%rax)
	call	CTLOG_STORE_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$68, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L15
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CTLOG_STORE_load_default_file@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L15
	movq	-8(%rbp), %rax
	jmp	.L12
.L14:
	nop
	jmp	.L9
.L15:
	nop
.L9:
	cmpq	$0, -8(%rbp)
	je	.L13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CTLOG_STORE_free@PLT
.L13:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$77, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$78, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	set_up, .-set_up
	.type	tear_down, @function
tear_down:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L17
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CTLOG_STORE_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	SCT_LIST_free@PLT
.L17:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$88, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	tear_down, .-tear_down
	.section	.rodata
.LC6:
	.string	"r"
	.text
	.type	load_pem_cert, @function
load_pem_cert:
.LFB590:
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
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L19
	leaq	.LC6(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L20
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	movq	%rax, -8(%rbp)
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L19:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	load_pem_cert, .-load_pem_cert
	.type	read_text_file, @function
read_text_file:
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
	movl	%ecx, -60(%rbp)
	movl	$-1, -4(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L23
	leaq	.LC6(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L24
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
.L24:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L23:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	read_text_file, .-read_text_file
	.section	.rodata
	.align 8
.LC7:
	.string	"text_buffer = BIO_new(BIO_s_mem())"
.LC8:
	.string	"\n"
.LC9:
	.zero	2
	.align 8
.LC10:
	.string	"BIO_write(text_buffer, \"\\0\", 1)"
.LC11:
	.string	"expected_output"
.LC12:
	.string	"actual_output"
	.text
	.type	compare_sct_list_printout, @function
compare_sct_list_printout:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$133, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	leaq	.LC8(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	SCT_LIST_print@PLT
	leaq	.LC9(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$139, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$143, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L34
	movl	$1, -4(%rbp)
	jmp	.L28
.L32:
	nop
	jmp	.L28
.L33:
	nop
	jmp	.L28
.L34:
	nop
.L28:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	compare_sct_list_printout, .-compare_sct_list_printout
	.section	.rodata
	.align 8
.LC13:
	.string	"X509V3_EXT_print(text_buffer, extension, X509V3_EXT_DEFAULT, 0)"
	.align 8
.LC14:
	.string	"BIO_write(text_buffer, \"\\n\", 1)"
	.text
	.type	compare_extension_printout, @function
compare_extension_printout:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$159, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509V3_EXT_print@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	leaq	.LC8(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$165, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	.LC9(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$173, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L46
	movl	$1, -4(%rbp)
	jmp	.L38
.L43:
	nop
	jmp	.L38
.L44:
	nop
	jmp	.L38
.L45:
	nop
	jmp	.L38
.L46:
	nop
.L38:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	compare_extension_printout, .-compare_extension_printout
	.section	.rodata
.LC15:
	.string	"0"
	.align 8
.LC16:
	.string	"SCT_LIST_validate(scts, policy_ctx)"
	.align 8
.LC17:
	.string	"fixture->expected_valid_sct_count"
.LC18:
	.string	"valid_sct_count"
	.align 8
.LC19:
	.string	"%d SCTs failed, %d SCTs unverified"
	.text
	.type	assert_validity, @function
assert_validity:
.LFB594:
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
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_LIST_validate@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$190, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movl	$0, -12(%rbp)
	jmp	.L50
.L54:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_get_validation_status@PLT
	cmpl	$5, %eax
	ja	.L51
	cmpl	$4, %eax
	jnb	.L56
	cmpl	$3, %eax
	je	.L53
	cmpl	$3, %eax
	ja	.L51
	cmpl	$1, %eax
	jbe	.L56
	cmpl	$2, %eax
	jne	.L51
	addl	$1, -8(%rbp)
	jmp	.L51
.L53:
	addl	$1, -4(%rbp)
	jmp	.L51
.L56:
	nop
.L51:
	addl	$1, -12(%rbp)
.L50:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L54
	movq	-40(%rbp), %rax
	movl	52(%rax), %edi
	movl	-8(%rbp), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$212, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L55
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %ecx
	movl	-4(%rbp), %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$216, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L49
.L55:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	assert_validity, .-assert_validity
	.section	.rodata
.LC20:
	.string	"sct_text_len"
	.align 8
.LC21:
	.string	"cert = load_pem_cert(fixture->certs_dir, fixture->certificate_file)"
	.align 8
.LC22:
	.string	"issuer = load_pem_cert(fixture->certs_dir, fixture->issuer_file)"
.LC23:
	.string	"sct_extension"
.LC24:
	.string	"SCT_SOURCE_X509V3_EXTENSION"
.LC25:
	.string	"SCT_get_source(sct_i)"
	.align 8
.LC26:
	.string	"o2i_SCT_LIST(&scts, &p, fixture->tls_sct_list_len)"
.LC27:
	.string	"tls_sct_list"
.LC28:
	.string	"fixture->tls_sct_list"
	.text
	.type	execute_cert_test, @function
execute_cert_test:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8224, %rsp
	movq	%rdi, -8216(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -8200(%rbp)
	movq	$0, -56(%rbp)
	call	CT_POLICY_EVAL_CTX_new@PLT
	movq	%rax, -64(%rbp)
	movq	-8216(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-8216(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-8216(%rbp), %rax
	movq	80(%rax), %rax
	leaq	-8192(%rbp), %rdx
	movl	$8095, %ecx
	movq	%rax, %rdi
	call	read_text_file
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$241, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L78
	movl	-44(%rbp), %eax
	cltq
	movb	$0, -8192(%rbp,%rax)
.L58:
	movq	-8216(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE@PLT
	movq	-8216(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_set_time@PLT
	movq	-8216(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	$0, -72(%rbp)
	movq	-8216(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8216(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pem_cert
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$256, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L79
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_set1_cert@PLT
	movq	-8216(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-8216(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8216(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pem_cert
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$263, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L80
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_set1_issuer@PLT
.L63:
	movq	-16(%rbp), %rax
	movl	$-1, %edx
	movl	$951, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_get_ext@PLT
	movq	%rax, -72(%rbp)
	movq	-8216(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jle	.L65
	movq	-72(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$273, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	-8216(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L67
	leaq	-8192(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare_extension_printout
	testl	%eax, %eax
	je	.L82
.L67:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_d2i@PLT
	movq	%rax, -96(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L68
.L70:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_get_source@PLT
	movl	%eax, %esi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$285, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L83
	addl	$1, -28(%rbp)
.L68:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L70
	movq	-8216(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L61
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-8216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	assert_validity
	testl	%eax, %eax
	jne	.L61
	jmp	.L60
.L65:
	movq	-72(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$295, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L84
.L61:
	movq	-8216(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-8216(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8208(%rbp)
	movq	-8216(%rbp), %rax
	movq	64(%rax), %rdx
	leaq	-8208(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	o2i_SCT_LIST@PLT
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$303, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L85
	movq	-8216(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L74
	cmpq	$0, -16(%rbp)
	je	.L74
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-8216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	assert_validity
	testl	%eax, %eax
	je	.L86
.L74:
	movq	-8216(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-96(%rbp), %rax
	leaq	-8192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare_sct_list_printout
	testl	%eax, %eax
	je	.L87
.L75:
	movq	-96(%rbp), %rax
	leaq	-8200(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2o_SCT_LIST@PLT
	cltq
	movq	%rax, -56(%rbp)
	movq	-8200(%rbp), %rsi
	movq	-8216(%rbp), %rax
	movq	64(%rax), %r8
	movq	-8216(%rbp), %rax
	movq	56(%rax), %rdi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	-56(%rbp)
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$317, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L88
.L71:
	movl	$1, -4(%rbp)
	jmp	.L60
.L78:
	nop
	jmp	.L60
.L79:
	nop
	jmp	.L60
.L80:
	nop
	jmp	.L60
.L81:
	nop
	jmp	.L60
.L82:
	nop
	jmp	.L60
.L83:
	nop
	jmp	.L60
.L84:
	nop
	jmp	.L60
.L85:
	nop
	jmp	.L60
.L86:
	nop
	jmp	.L60
.L87:
	nop
	jmp	.L60
.L88:
	nop
.L60:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_LIST_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_free@PLT
	movq	-8200(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$329, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	execute_cert_test, .-execute_cert_test
	.section	.rodata
.LC29:
	.string	"leaf.pem"
.LC30:
	.string	"subinterCA.pem"
	.text
	.type	test_no_scts_in_certificate, @function
test_no_scts_in_certificate:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.7(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	certs_dir(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
	cmpq	$0, -16(%rbp)
	je	.L92
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cert_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L92:
	movl	-4(%rbp), %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	test_no_scts_in_certificate, .-test_no_scts_in_certificate
	.section	.rodata
.LC31:
	.string	"embeddedSCTs1.pem"
.LC32:
	.string	"embeddedSCTs1_issuer.pem"
.LC33:
	.string	"embeddedSCTs1.sct"
	.text
	.type	test_one_sct_in_certificate, @function
test_one_sct_in_certificate:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.6(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L95
.L94:
	movq	certs_dir(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 48(%rax)
	movq	certs_dir(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, 88(%rax)
	cmpq	$0, -16(%rbp)
	je	.L96
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cert_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L96:
	movl	-4(%rbp), %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	test_one_sct_in_certificate, .-test_one_sct_in_certificate
	.section	.rodata
.LC34:
	.string	"embeddedSCTs3.pem"
.LC35:
	.string	"embeddedSCTs3_issuer.pem"
.LC36:
	.string	"embeddedSCTs3.sct"
	.text
	.type	test_multiple_scts_in_certificate, @function
test_multiple_scts_in_certificate:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.5(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	movq	certs_dir(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$3, 48(%rax)
	movq	certs_dir(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, 88(%rax)
	cmpq	$0, -16(%rbp)
	je	.L100
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cert_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L100:
	movl	-4(%rbp), %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	test_multiple_scts_in_certificate, .-test_multiple_scts_in_certificate
	.type	test_verify_one_sct, @function
test_verify_one_sct:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.4(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L102
	movl	$0, %eax
	jmp	.L103
.L102:
	movq	certs_dir(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 96(%rax)
	cmpq	$0, -16(%rbp)
	je	.L104
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cert_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L104:
	movl	-4(%rbp), %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	test_verify_one_sct, .-test_verify_one_sct
	.type	test_verify_multiple_scts, @function
test_verify_multiple_scts:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.3(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	certs_dir(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$3, 52(%rax)
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 96(%rax)
	cmpq	$0, -16(%rbp)
	je	.L108
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cert_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L108:
	movl	-4(%rbp), %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	test_verify_multiple_scts, .-test_verify_multiple_scts
	.type	test_verify_fails_for_future_sct, @function
test_verify_fails_for_future_sct:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	__func__.2(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L110
	movl	$0, %eax
	jmp	.L111
.L110:
	movq	-16(%rbp), %rax
	movabsq	$1365094800000, %rcx
	movq	%rcx, 8(%rax)
	movq	certs_dir(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 96(%rax)
	cmpq	$0, -16(%rbp)
	je	.L112
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cert_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L112:
	movl	-4(%rbp), %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	test_verify_fails_for_future_sct, .-test_verify_fails_for_future_sct
	.section	.rodata
.LC37:
	.string	"tls1.sct"
	.text
	.type	test_decode_tls_sct, @function
test_decode_tls_sct:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movabsq	$3322775818165319680, %rax
	movabsq	$7037234312739034561, %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movabsq	$-1704197544241974680, %rax
	movabsq	$805582467973236471, %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movabsq	$72058027149377469, %rax
	movabsq	$288231011255835453, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$5197156466171510787, %rax
	movabsq	$6099803768941012783, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movabsq	$-4666556713122415050, %rax
	movabsq	$3478347458348728730, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movabsq	$145873182172352296, %rax
	movabsq	$-4234830877917183967, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$7524015144521871730, %rax
	movabsq	$9007834564115583750, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$-6773415501679702147, %rax
	movabsq	$2462826750628101, %rdx
	movq	%rax, -37(%rbp)
	movq	%rdx, -29(%rbp)
	leaq	__func__.1(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L114
	movl	$0, %eax
	jmp	.L117
.L114:
	movq	-16(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$122, 64(%rax)
	movq	ct_dir(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	movq	%rdx, 88(%rax)
	cmpq	$0, -16(%rbp)
	je	.L116
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cert_test
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L116:
	movl	-4(%rbp), %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	test_decode_tls_sct, .-test_decode_tls_sct
	.section	.rodata
	.align 8
.LC38:
	.string	"sct = SCT_new_from_base64(SCT_VERSION_V1, log_id, CT_LOG_ENTRY_TYPE_X509, timestamp, extensions, signature)"
	.text
	.type	test_encode_tls_sct, @function
test_encode_tls_sct:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movabsq	$4707759658511071283, %rax
	movabsq	$8018192330635495020, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movabsq	$6515662305356901453, %rax
	movabsq	$4065118995616256054, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movabsq	$8524245658167175732, %rax
	movabsq	$17259249594808660, %rdx
	movq	%rax, -67(%rbp)
	movq	%rdx, -59(%rbp)
	movq	$1, -32(%rbp)
	movb	$0, -97(%rbp)
	movabsq	$4702455454629708098, %rax
	movabsq	$5936925512009148749, %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movabsq	$3625798404952062578, %rax
	movabsq	$4123117315123275894, %rdx
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movabsq	$6220439004638098806, %rax
	movabsq	$7650288980492381035, %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movabsq	$7514650987136116021, %rax
	movabsq	$3923565975329591105, %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movabsq	$8023292703889119352, %rax
	movabsq	$6435481425128993393, %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movabsq	$3112952994006131558, %rax
	movabsq	$5346435029939861039, %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movabsq	$20609667785437786, %rax
	movq	%rax, -115(%rbp)
	movq	$0, -40(%rbp)
	leaq	__func__.0(%rip), %rax
	movq	%rax, %rdi
	call	set_up
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L119
	movl	$0, %eax
	jmp	.L124
.L119:
	call	OPENSSL_sk_new_null@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
	jmp	.L124
.L121:
	leaq	-208(%rbp), %rsi
	leaq	-97(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	SCT_new_from_base64@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$458, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L122
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
	movl	$0, %eax
	jmp	.L124
.L122:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movq	ct_dir(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-48(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	movq	%rdx, 88(%rax)
	cmpq	$0, -48(%rbp)
	je	.L123
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	execute_cert_test
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	tear_down
.L123:
	movl	-20(%rbp), %eax
.L124:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	test_encode_tls_sct, .-test_encode_tls_sct
	.section	.rodata
.LC39:
	.string	"time_tolerance"
	.align 8
.LC40:
	.string	"abs((int)difftime(time(NULL), default_time))"
	.text
	.type	test_default_ct_policy_eval_ctx_time_is_now, @function
test_default_ct_policy_eval_ctx_time_is_now:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	call	CT_POLICY_EVAL_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_get_time@PLT
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	$600, -32(%rbp)
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	difftime@PLT
	cvttsd2sil	%xmm0, %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC39(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_time_t_le@PLT
	testl	%eax, %eax
	je	.L129
	movl	$1, -4(%rbp)
	jmp	.L127
.L129:
	nop
.L127:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	test_default_ct_policy_eval_ctx_time_is_now, .-test_default_ct_policy_eval_ctx_time_is_now
	.section	.rodata
	.align 8
.LC41:
	.string	"!CTLOG_new_from_base64(&ctlogp, notb64, name)"
	.align 8
.LC42:
	.string	"!CTLOG_new_from_base64(&ctlogp, pad, name)"
	.text
	.type	test_ctlog_from_base64, @function
test_ctlog_from_base64:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movl	$67305985, -13(%rbp)
	movb	$0, -9(%rbp)
	movl	$1027423549, -18(%rbp)
	movb	$0, -14(%rbp)
	movl	$1701667182, -23(%rbp)
	movb	$0, -19(%rbp)
	leaq	-23(%rbp), %rdx
	leaq	-13(%rbp), %rcx
	leaq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CTLOG_new_from_base64@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$503, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L131
	leaq	-23(%rbp), %rdx
	leaq	-18(%rbp), %rcx
	leaq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CTLOG_new_from_base64@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$504, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L132
.L131:
	movl	$0, %eax
	jmp	.L134
.L132:
	movl	$1, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	test_ctlog_from_base64, .-test_ctlog_from_base64
	.section	.rodata
.LC43:
	.string	"CT_DIR"
.LC44:
	.string	"ct"
.LC45:
	.string	"CERTS_DIR"
.LC46:
	.string	"certs"
.LC47:
	.string	"test_no_scts_in_certificate"
.LC48:
	.string	"test_one_sct_in_certificate"
	.align 8
.LC49:
	.string	"test_multiple_scts_in_certificate"
.LC50:
	.string	"test_verify_one_sct"
.LC51:
	.string	"test_verify_multiple_scts"
	.align 8
.LC52:
	.string	"test_verify_fails_for_future_sct"
.LC53:
	.string	"test_decode_tls_sct"
.LC54:
	.string	"test_encode_tls_sct"
	.align 8
.LC55:
	.string	"test_default_ct_policy_eval_ctx_time_is_now"
.LC56:
	.string	"test_ctlog_from_base64"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, ct_dir(%rip)
	movq	ct_dir(%rip), %rax
	testq	%rax, %rax
	jne	.L136
	leaq	.LC44(%rip), %rax
	movq	%rax, ct_dir(%rip)
.L136:
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, certs_dir(%rip)
	movq	certs_dir(%rip), %rax
	testq	%rax, %rax
	jne	.L137
	leaq	.LC46(%rip), %rax
	movq	%rax, certs_dir(%rip)
.L137:
	leaq	test_no_scts_in_certificate(%rip), %rdx
	leaq	.LC47(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_one_sct_in_certificate(%rip), %rdx
	leaq	.LC48(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multiple_scts_in_certificate(%rip), %rdx
	leaq	.LC49(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_verify_one_sct(%rip), %rdx
	leaq	.LC50(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_verify_multiple_scts(%rip), %rdx
	leaq	.LC51(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_verify_fails_for_future_sct(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_decode_tls_sct(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_encode_tls_sct(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_default_ct_policy_eval_ctx_time_is_now(%rip), %rdx
	leaq	.LC55(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ctlog_from_base64(%rip), %rdx
	leaq	.LC56(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 28
__func__.7:
	.string	"test_no_scts_in_certificate"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 28
__func__.6:
	.string	"test_one_sct_in_certificate"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 34
__func__.5:
	.string	"test_multiple_scts_in_certificate"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 20
__func__.4:
	.string	"test_verify_one_sct"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 26
__func__.3:
	.string	"test_verify_multiple_scts"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 33
__func__.2:
	.string	"test_verify_fails_for_future_sct"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"test_decode_tls_sct"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"test_encode_tls_sct"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
