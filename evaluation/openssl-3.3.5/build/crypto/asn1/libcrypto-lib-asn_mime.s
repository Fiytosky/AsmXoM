	.file	"asn_mime.c"
	.text
	.type	ossl_check_BIO_type, @function
ossl_check_BIO_type:
.LFB33:
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
.LFE33:
	.size	ossl_check_BIO_type, .-ossl_check_BIO_type
	.type	ossl_check_const_BIO_sk_type, @function
ossl_check_const_BIO_sk_type:
.LFB34:
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
.LFE34:
	.size	ossl_check_const_BIO_sk_type, .-ossl_check_const_BIO_sk_type
	.type	ossl_check_BIO_sk_type, @function
ossl_check_BIO_sk_type:
.LFB35:
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
.LFE35:
	.size	ossl_check_BIO_sk_type, .-ossl_check_BIO_sk_type
	.type	ossl_check_BIO_freefunc_type, @function
ossl_check_BIO_freefunc_type:
.LFB38:
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
.LFE38:
	.size	ossl_check_BIO_freefunc_type, .-ossl_check_BIO_freefunc_type
	.type	ossl_check_const_X509_ALGOR_sk_type, @function
ossl_check_const_X509_ALGOR_sk_type:
.LFB40:
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
.LFE40:
	.size	ossl_check_const_X509_ALGOR_sk_type, .-ossl_check_const_X509_ALGOR_sk_type
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
	.type	sk_MIME_PARAM_value, @function
sk_MIME_PARAM_value:
.LFB753:
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
.LFE753:
	.size	sk_MIME_PARAM_value, .-sk_MIME_PARAM_value
	.type	sk_MIME_PARAM_new, @function
sk_MIME_PARAM_new:
.LFB754:
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
.LFE754:
	.size	sk_MIME_PARAM_new, .-sk_MIME_PARAM_new
	.type	sk_MIME_PARAM_push, @function
sk_MIME_PARAM_push:
.LFB762:
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
.LFE762:
	.size	sk_MIME_PARAM_push, .-sk_MIME_PARAM_push
	.type	sk_MIME_PARAM_pop_free, @function
sk_MIME_PARAM_pop_free:
.LFB766:
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
.LFE766:
	.size	sk_MIME_PARAM_pop_free, .-sk_MIME_PARAM_pop_free
	.type	sk_MIME_PARAM_find, @function
sk_MIME_PARAM_find:
.LFB769:
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
.LFE769:
	.size	sk_MIME_PARAM_find, .-sk_MIME_PARAM_find
	.type	sk_MIME_PARAM_sort, @function
sk_MIME_PARAM_sort:
.LFB772:
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
.LFE772:
	.size	sk_MIME_PARAM_sort, .-sk_MIME_PARAM_sort
	.type	sk_MIME_HEADER_num, @function
sk_MIME_HEADER_num:
.LFB777:
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
.LFE777:
	.size	sk_MIME_HEADER_num, .-sk_MIME_HEADER_num
	.type	sk_MIME_HEADER_value, @function
sk_MIME_HEADER_value:
.LFB778:
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
.LFE778:
	.size	sk_MIME_HEADER_value, .-sk_MIME_HEADER_value
	.type	sk_MIME_HEADER_new, @function
sk_MIME_HEADER_new:
.LFB779:
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
.LFE779:
	.size	sk_MIME_HEADER_new, .-sk_MIME_HEADER_new
	.type	sk_MIME_HEADER_push, @function
sk_MIME_HEADER_push:
.LFB787:
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
.LFE787:
	.size	sk_MIME_HEADER_push, .-sk_MIME_HEADER_push
	.type	sk_MIME_HEADER_pop_free, @function
sk_MIME_HEADER_pop_free:
.LFB791:
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
.LFE791:
	.size	sk_MIME_HEADER_pop_free, .-sk_MIME_HEADER_pop_free
	.type	sk_MIME_HEADER_find, @function
sk_MIME_HEADER_find:
.LFB794:
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
.LFE794:
	.size	sk_MIME_HEADER_find, .-sk_MIME_HEADER_find
	.type	sk_MIME_HEADER_sort, @function
sk_MIME_HEADER_sort:
.LFB797:
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
.LFE797:
	.size	sk_MIME_HEADER_sort, .-sk_MIME_HEADER_sort
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/asn_mime.c"
	.text
	.globl	i2d_ASN1_bio_stream
	.type	i2d_ASN1_bio_stream, @function
i2d_ASN1_bio_stream:
.LFB802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movl	$1, -4(%rbp)
	movl	-60(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_new_NDEF@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L39:
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SMIME_crlf_copy@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, -4(%rbp)
.L41:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L42:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L42
	jmp	.L43
.L38:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d_bio@PLT
	movl	%eax, -4(%rbp)
.L43:
	movl	-4(%rbp), %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	i2d_ASN1_bio_stream, .-i2d_ASN1_bio_stream
	.type	B64_write_ASN1, @function
B64_write_ASN1:
.LFB803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	call	BIO_f_base64@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	i2d_ASN1_bio_stream@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	B64_write_ASN1, .-B64_write_ASN1
	.section	.rodata
.LC1:
	.string	"-----BEGIN %s-----\n"
.LC2:
	.string	"-----END %s-----\n"
	.text
	.globl	PEM_write_bio_ASN1_stream
	.type	PEM_write_bio_ASN1_stream, @function
PEM_write_bio_ASN1_stream:
.LFB804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-56(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rdi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	B64_write_ASN1
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	PEM_write_bio_ASN1_stream, .-PEM_write_bio_ASN1_stream
	.type	b64_read_asn1, @function
b64_read_asn1:
.LFB805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	call	BIO_f_base64@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_d2i_bio_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L52:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE805:
	.size	b64_read_asn1, .-b64_read_asn1
	.section	.rodata
.LC3:
	.string	","
.LC4:
	.string	"shake-128"
.LC5:
	.string	"shake-256"
.LC6:
	.string	"sha1"
.LC7:
	.string	"md5"
.LC8:
	.string	"sha-256"
.LC9:
	.string	"sha-384"
.LC10:
	.string	"sha-512"
.LC11:
	.string	"gostr3411-94"
.LC12:
	.string	"gostr3411-2012-256"
.LC13:
	.string	"gostr3411-2012-512"
.LC14:
	.string	"unknown"
	.text
	.type	asn1_write_micalg, @function
asn1_write_micalg:
.LFB806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L54
.L75:
	cmpl	$0, -12(%rbp)
	je	.L55
	leaq	.LC3(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L55:
	movl	$1, -12(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -20(%rbp)
	cmpl	$1100, -20(%rbp)
	jne	.L56
	leaq	.LC4(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jns	.L77
	jmp	.L58
.L56:
	cmpl	$1101, -20(%rbp)
	jne	.L60
	leaq	.LC5(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jns	.L78
	jmp	.L58
.L60:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L62
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-32(%rbp), %rax
	movq	80(%rax), %r8
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$2, %esi
	movl	$0, %edi
	call	*%r8
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L63
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$191, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L59
.L63:
	cmpl	$-2, -36(%rbp)
	jne	.L79
.L62:
	cmpl	$983, -20(%rbp)
	je	.L65
	cmpl	$983, -20(%rbp)
	jg	.L66
	cmpl	$982, -20(%rbp)
	je	.L67
	cmpl	$982, -20(%rbp)
	jg	.L66
	cmpl	$809, -20(%rbp)
	je	.L68
	cmpl	$809, -20(%rbp)
	jg	.L66
	cmpl	$674, -20(%rbp)
	je	.L69
	cmpl	$674, -20(%rbp)
	jg	.L66
	cmpl	$673, -20(%rbp)
	je	.L70
	cmpl	$673, -20(%rbp)
	jg	.L66
	cmpl	$672, -20(%rbp)
	je	.L71
	cmpl	$672, -20(%rbp)
	jg	.L66
	cmpl	$4, -20(%rbp)
	je	.L72
	cmpl	$64, -20(%rbp)
	jne	.L66
	leaq	.LC6(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L59
.L72:
	leaq	.LC7(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L59
.L71:
	leaq	.LC8(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L59
.L70:
	leaq	.LC9(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L59
.L69:
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L59
.L68:
	leaq	.LC11(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L59
.L67:
	leaq	.LC12(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L59
.L65:
	leaq	.LC13(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L59
.L66:
	cmpl	$0, -8(%rbp)
	je	.L73
	movl	$0, -12(%rbp)
	jmp	.L59
.L73:
	leaq	.LC14(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, -8(%rbp)
	jmp	.L59
.L77:
	nop
	jmp	.L59
.L78:
	nop
.L59:
	addl	$1, -4(%rbp)
.L54:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L75
	movl	$1, -16(%rbp)
	jmp	.L58
.L79:
	nop
.L58:
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	asn1_write_micalg, .-asn1_write_micalg
	.section	.rodata
.LC15:
	.string	"smime.p7m"
.LC16:
	.string	"application/x-pkcs7-"
.LC17:
	.string	"application/pkcs7-"
.LC18:
	.string	"\r\n"
.LC19:
	.string	"\n"
.LC20:
	.string	"MIME-Version: 1.0%s"
	.align 8
.LC21:
	.string	"Content-Type: multipart/signed;"
.LC22:
	.string	" protocol=\"%ssignature\";"
.LC23:
	.string	" micalg=\""
.LC24:
	.string	"\"; boundary=\"----%s\"%s%s"
	.align 8
.LC25:
	.string	"This is an S/MIME signed message%s%s"
.LC26:
	.string	"------%s%s"
.LC27:
	.string	"%s------%s%s"
.LC28:
	.string	"Content-Type: %ssignature;"
.LC29:
	.string	" name=\"smime.p7s\"%s"
	.align 8
.LC30:
	.string	"Content-Transfer-Encoding: base64%s"
	.align 8
.LC31:
	.string	"Content-Disposition: attachment;"
.LC32:
	.string	" filename=\"smime.p7s\"%s%s"
.LC33:
	.string	"%s------%s--%s%s"
.LC34:
	.string	"enveloped-data"
.LC35:
	.string	"authEnveloped-data"
.LC36:
	.string	"signed-receipt"
.LC37:
	.string	"signed-data"
.LC38:
	.string	"certs-only"
.LC39:
	.string	"compressed-data"
.LC40:
	.string	"smime.p7z"
.LC41:
	.string	" filename=\"%s\"%s"
.LC42:
	.string	"Content-Type: %smime;"
.LC43:
	.string	" smime-type=%s;"
.LC44:
	.string	" name=\"%s\"%s"
	.align 8
.LC45:
	.string	"Content-Transfer-Encoding: base64%s%s"
.LC46:
	.string	"%s"
	.text
	.globl	SMIME_write_ASN1_ex
	.type	SMIME_write_ASN1_ex, @function
SMIME_write_ASN1_ex:
.LFB807:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movl	%r8d, -112(%rbp)
	movl	%r9d, -116(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	-108(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L81
	leaq	.LC16(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L82
.L81:
	leaq	.LC17(%rip), %rax
	movq	%rax, -16(%rbp)
.L82:
	movl	-108(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L83
	leaq	.LC18(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L84
.L83:
	leaq	.LC19(%rip), %rax
	movq	%rax, -24(%rbp)
.L84:
	movl	-108(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L85
	cmpq	$0, -104(%rbp)
	je	.L85
	leaq	-80(%rbp), %rsi
	movq	32(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L86
	movl	$0, %eax
	jmp	.L102
.L86:
	movl	$0, -8(%rbp)
	jmp	.L88
.L91:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	andl	$15, %eax
	movb	%al, -1(%rbp)
	cmpb	$9, -1(%rbp)
	jg	.L89
	movzbl	-1(%rbp), %eax
	addl	$48, %eax
	movb	%al, -1(%rbp)
	jmp	.L90
.L89:
	movzbl	-1(%rbp), %eax
	addl	$55, %eax
	movb	%al, -1(%rbp)
.L90:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-1(%rbp), %edx
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -8(%rbp)
.L88:
	cmpl	$31, -8(%rbp)
	jle	.L91
	movb	$0, -48(%rbp)
	movq	-24(%rbp), %rdx
	leaq	.LC20(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC21(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rdx
	leaq	.LC22(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC23(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	16(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_write_micalg
	testl	%eax, %eax
	jne	.L92
	movl	$0, %eax
	jmp	.L102
.L92:
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	.LC24(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC25(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	.LC26(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	24(%rbp), %rdi
	movl	-108(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_output_data
	testl	%eax, %eax
	jne	.L93
	movl	$0, %eax
	jmp	.L102
.L93:
	movq	-24(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC27(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rdx
	leaq	.LC28(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rdx
	leaq	.LC29(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rdx
	leaq	.LC30(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC31(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC32(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	24(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	B64_write_ASN1
	movq	-24(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC33(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L102
.L85:
	cmpl	$23, -112(%rbp)
	jne	.L94
	leaq	.LC34(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L95
.L94:
	cmpl	$1059, -112(%rbp)
	jne	.L96
	leaq	.LC35(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L95
.L96:
	cmpl	$22, -112(%rbp)
	jne	.L97
	cmpl	$204, -116(%rbp)
	jne	.L98
	leaq	.LC36(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L95
.L98:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_ALGOR_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	js	.L99
	leaq	.LC37(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L95
.L99:
	leaq	.LC38(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L95
.L97:
	cmpl	$786, -112(%rbp)
	jne	.L95
	leaq	.LC39(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC40(%rip), %rax
	movq	%rax, -32(%rbp)
.L95:
	movq	-24(%rbp), %rdx
	leaq	.LC20(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC31(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	.LC41(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rdx
	leaq	.LC42(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -40(%rbp)
	je	.L100
	movq	-40(%rbp), %rdx
	leaq	.LC43(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L100:
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	.LC44(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC45(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	24(%rbp), %rdi
	movl	-108(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	B64_write_ASN1
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L102
.L101:
	movq	-24(%rbp), %rdx
	leaq	.LC46(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE807:
	.size	SMIME_write_ASN1_ex, .-SMIME_write_ASN1_ex
	.globl	SMIME_write_ASN1
	.type	SMIME_write_ASN1, @function
SMIME_write_ASN1:
.LFB808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-36(%rbp), %r8d
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	SMIME_write_ASN1_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE808:
	.size	SMIME_write_ASN1, .-SMIME_write_ASN1
	.type	asn1_output_data, @function
asn1_output_data:
.LFB809:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	%r8, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movl	-76(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L106
	movl	-76(%rbp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L107
.L106:
	movl	-76(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SMIME_crlf_copy@PLT
	jmp	.L116
.L107:
	cmpq	$0, -16(%rbp)
	je	.L109
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L110
.L109:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$374, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$202, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L116
.L110:
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %r8
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$12, %edi
	call	*%r8
	testl	%eax, %eax
	jg	.L111
	movl	$0, %eax
	jmp	.L116
.L111:
	movq	-40(%rbp), %rcx
	movl	-76(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SMIME_crlf_copy@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$0, -4(%rbp)
.L112:
	movq	-16(%rbp), %rax
	movq	24(%rax), %r8
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$13, %edi
	call	*%r8
	testl	%eax, %eax
	jg	.L114
	movl	$0, -4(%rbp)
	jmp	.L114
.L115:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.L114:
	movq	-40(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L115
	movl	-4(%rbp), %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE809:
	.size	asn1_output_data, .-asn1_output_data
	.section	.rodata
.LC47:
	.string	"content-type"
.LC48:
	.string	"multipart/signed"
.LC49:
	.string	"boundary"
.LC50:
	.string	"application/x-pkcs7-signature"
.LC51:
	.string	"application/pkcs7-signature"
.LC52:
	.string	"type: %s"
.LC53:
	.string	"application/x-pkcs7-mime"
.LC54:
	.string	"application/pkcs7-mime"
	.text
	.globl	SMIME_read_ASN1_ex
	.type	SMIME_read_ASN1_ex, @function
SMIME_read_ASN1_ex:
.LFB810:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L118
	movq	-104(%rbp), %rax
	movq	$0, (%rax)
.L118:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	mime_parse_hdr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L119
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$207, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L137
.L119:
	leaq	.LC47(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mime_hdr_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L121
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L122
.L121:
	leaq	mime_hdr_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$436, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$209, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L137
.L122:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L123
	leaq	.LC49(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mime_param_find
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L124
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L125
.L124:
	leaq	mime_hdr_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$447, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$211, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L137
.L125:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-72(%rbp), %rcx
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	multi_split
	movl	%eax, -52(%rbp)
	leaq	mime_hdr_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	cmpl	$0, -52(%rbp)
	je	.L126
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_BIO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$2, %eax
	je	.L127
.L126:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$453, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$210, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	BIO_vfree@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L137
.L127:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_BIO_sk_type
	movl	$1, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	mime_parse_hdr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$462, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$208, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	BIO_vfree@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L137
.L128:
	leaq	.LC47(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mime_hdr_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L129
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L130
.L129:
	leaq	mime_hdr_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$472, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$212, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	BIO_vfree@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L137
.L130:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L131
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC51(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L131
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$479, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	movl	$213, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	mime_hdr_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	movq	BIO_vfree@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L137
.L131:
	leaq	mime_hdr_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	movq	16(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	b64_read_asn1
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L132
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$488, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$204, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	BIO_vfree@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L137
.L132:
	cmpq	$0, -104(%rbp)
	je	.L133
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_BIO_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L134
.L133:
	movq	BIO_vfree@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
.L134:
	movq	-40(%rbp), %rax
	jmp	.L137
.L123:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC53(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L135
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L135
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	movl	$205, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	mime_hdr_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	movl	$0, %eax
	jmp	.L137
.L135:
	leaq	mime_hdr_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	movq	16(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	b64_read_asn1
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$516, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$203, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L137
.L136:
	movq	-40(%rbp), %rax
.L137:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE810:
	.size	SMIME_read_ASN1_ex, .-SMIME_read_ASN1_ex
	.globl	SMIME_read_ASN1
	.type	SMIME_read_ASN1, @function
SMIME_read_ASN1:
.LFB811:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	SMIME_read_ASN1_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE811:
	.size	SMIME_read_ASN1, .-SMIME_read_ASN1
	.section	.rodata
.LC55:
	.string	"Content-Type: text/plain\r\n\r\n"
	.text
	.globl	SMIME_crlf_copy
	.type	SMIME_crlf_copy, @function
SMIME_crlf_copy:
.LFB812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%rsi, -1072(%rbp)
	movl	%edx, -1076(%rbp)
	cmpq	$0, -1064(%rbp)
	je	.L141
	cmpq	$0, -1072(%rbp)
	jne	.L142
.L141:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$537, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L158
.L142:
	call	BIO_f_buffer@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L144
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$547, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L158
.L144:
	movq	-1072(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -1072(%rbp)
	movl	-1076(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L145
	jmp	.L146
.L147:
	movl	-28(%rbp), %edx
	leaq	-1056(%rbp), %rcx
	movq	-1072(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L146:
	leaq	-1056(%rbp), %rcx
	movq	-1064(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jg	.L147
	jmp	.L148
.L145:
	movl	$0, -4(%rbp)
	movl	-1076(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L150
	leaq	.LC55(%rip), %rdx
	movq	-1072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L150
.L156:
	movl	-1076(%rbp), %edx
	leaq	-28(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strip_eol
	movb	%al, -17(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jle	.L151
	movl	-1076(%rbp), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L152
	movl	$0, -8(%rbp)
	jmp	.L153
.L154:
	leaq	.LC18(%rip), %rcx
	movq	-1072(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	addl	$1, -8(%rbp)
.L153:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L154
	movl	$0, -4(%rbp)
.L152:
	movl	-28(%rbp), %edx
	leaq	-1056(%rbp), %rcx
	movq	-1072(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpb	$0, -17(%rbp)
	je	.L150
	leaq	.LC18(%rip), %rcx
	movq	-1072(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L150
.L151:
	movl	-1076(%rbp), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L155
	addl	$1, -4(%rbp)
	jmp	.L150
.L155:
	cmpb	$0, -17(%rbp)
	je	.L150
	leaq	.LC18(%rip), %rcx
	movq	-1072(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L150:
	leaq	-1056(%rbp), %rcx
	movq	-1064(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jg	.L156
.L148:
	movq	-1072(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -24(%rbp)
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -24(%rbp)
	jg	.L157
	movl	$0, %eax
	jmp	.L158
.L157:
	movl	$1, %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE812:
	.size	SMIME_crlf_copy, .-SMIME_crlf_copy
	.section	.rodata
.LC56:
	.string	"text/plain"
	.text
	.globl	SMIME_text
	.type	SMIME_text, @function
SMIME_text:
.LFB813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4144, %rsp
	movq	%rdi, -4136(%rbp)
	movq	%rsi, -4144(%rbp)
	movq	-4136(%rbp), %rax
	movq	%rax, %rdi
	call	mime_parse_hdr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L160
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$596, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$207, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L168
.L160:
	leaq	.LC47(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mime_hdr_find
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L162
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L163
.L162:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$601, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$206, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	mime_hdr_free(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	movl	$0, %eax
	jmp	.L168
.L163:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC56(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L164
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$606, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rcx
	movl	$205, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	mime_hdr_free(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	movl	$0, %eax
	jmp	.L168
.L164:
	leaq	mime_hdr_free(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	jmp	.L165
.L166:
	movl	-20(%rbp), %edx
	leaq	-4128(%rbp), %rcx
	movq	-4144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L165:
	leaq	-4128(%rbp), %rcx
	movq	-4136(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L166
	cmpl	$0, -20(%rbp)
	jns	.L167
	movl	$0, %eax
	jmp	.L168
.L167:
	movl	$1, %eax
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE813:
	.size	SMIME_text, .-SMIME_text
	.type	multi_split, @function
multi_split:
.LFB814:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1128, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1112(%rbp)
	movl	%esi, -1116(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	%rcx, -1136(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -44(%rbp)
	movb	$0, -33(%rbp)
	movb	$0, -45(%rbp)
	movb	$1, -34(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -56(%rbp)
	movq	-1136(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-1136(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L172
	movl	$0, %eax
	jmp	.L183
.L182:
	movl	-1092(%rbp), %esi
	movl	-44(%rbp), %ecx
	movq	-1128(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	mime_bound_check
	movb	%al, -45(%rbp)
	cmpb	$1, -45(%rbp)
	jne	.L173
	movb	$1, -34(%rbp)
	movzbl	-33(%rbp), %eax
	addl	$1, %eax
	movb	%al, -33(%rbp)
	jmp	.L172
.L173:
	cmpb	$2, -45(%rbp)
	jne	.L174
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L175
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L183
.L175:
	movl	$1, %eax
	jmp	.L183
.L174:
	cmpb	$0, -33(%rbp)
	je	.L172
	movl	-1116(%rbp), %edx
	leaq	-1092(%rbp), %rcx
	leaq	-1088(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strip_eol
	movl	%eax, -40(%rbp)
	cmpb	$0, -34(%rbp)
	je	.L176
	movb	$0, -34(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L177
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L177
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L183
.L177:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L178
	movl	$0, %eax
	jmp	.L183
.L178:
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	jmp	.L179
.L176:
	cmpl	$0, -20(%rbp)
	je	.L179
	movl	-1116(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L180
	movl	-1116(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L181
.L180:
	leaq	.LC18(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L179
.L181:
	leaq	.LC19(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L179:
	movl	-40(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-1092(%rbp), %eax
	testl	%eax, %eax
	jle	.L172
	movl	-1092(%rbp), %edx
	leaq	-1088(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L172:
	leaq	-1088(%rbp), %rcx
	movq	-1112(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_get_line@PLT
	movl	%eax, -1092(%rbp)
	movl	-1092(%rbp), %eax
	testl	%eax, %eax
	jg	.L182
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L183:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	multi_split, .-multi_split
	.type	mime_parse_hdr, @function
mime_parse_hdr:
.LFB815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movq	%rdi, -1112(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -52(%rbp)
	leaq	mime_hdr_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_MIME_HEADER_new
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L187
	movl	$0, %eax
	jmp	.L221
.L217:
	cmpq	$0, -32(%rbp)
	je	.L188
	movzbl	-1104(%rbp), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L188
	movl	$3, -48(%rbp)
	jmp	.L189
.L188:
	movl	$1, -48(%rbp)
.L189:
	movq	$0, -24(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L190
.L211:
	cmpl	$6, -48(%rbp)
	je	.L191
	cmpl	$6, -48(%rbp)
	jg	.L192
	cmpl	$5, -48(%rbp)
	je	.L193
	cmpl	$5, -48(%rbp)
	jg	.L192
	cmpl	$4, -48(%rbp)
	je	.L194
	cmpl	$4, -48(%rbp)
	jg	.L192
	cmpl	$3, -48(%rbp)
	je	.L195
	cmpl	$3, -48(%rbp)
	jg	.L192
	cmpl	$1, -48(%rbp)
	je	.L196
	cmpl	$2, -48(%rbp)
	je	.L197
	jmp	.L192
.L196:
	cmpb	$58, -69(%rbp)
	jne	.L222
	movl	$2, -48(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strip_ends
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L222
.L197:
	cmpb	$59, -69(%rbp)
	jne	.L199
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strip_ends
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mime_hdr_new
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L223
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_push
	testl	%eax, %eax
	je	.L224
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	$3, -48(%rbp)
	jmp	.L225
.L199:
	cmpb	$40, -69(%rbp)
	jne	.L225
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$6, -48(%rbp)
	jmp	.L225
.L191:
	cmpb	$41, -69(%rbp)
	jne	.L226
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L226
.L195:
	cmpb	$61, -69(%rbp)
	jne	.L227
	movl	$4, -48(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strip_ends
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L227
.L194:
	cmpb	$59, -69(%rbp)
	jne	.L206
	movl	$3, -48(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strip_ends
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mime_hdr_addparam
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L228
.L206:
	cmpb	$34, -69(%rbp)
	jne	.L208
	movl	$5, -48(%rbp)
	jmp	.L228
.L208:
	cmpb	$40, -69(%rbp)
	jne	.L228
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$6, -48(%rbp)
	jmp	.L228
.L193:
	cmpb	$34, -69(%rbp)
	jne	.L229
	movl	$4, -48(%rbp)
	jmp	.L229
.L222:
	nop
	jmp	.L192
.L225:
	nop
	jmp	.L192
.L226:
	nop
	jmp	.L192
.L227:
	nop
	jmp	.L192
.L228:
	nop
	jmp	.L192
.L229:
	nop
.L192:
	addq	$1, -8(%rbp)
.L190:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -69(%rbp)
	cmpb	$0, -69(%rbp)
	je	.L210
	cmpb	$13, -69(%rbp)
	je	.L210
	cmpb	$10, -69(%rbp)
	jne	.L211
.L210:
	cmpl	$2, -48(%rbp)
	jne	.L212
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strip_ends
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mime_hdr_new
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L230
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_push
	testl	%eax, %eax
	je	.L231
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L215
.L212:
	cmpl	$4, -48(%rbp)
	jne	.L215
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strip_ends
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mime_hdr_addparam
.L215:
	leaq	-1104(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	je	.L232
.L187:
	leaq	-1104(%rbp), %rcx
	movq	-1112(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jg	.L217
	jmp	.L216
.L232:
	nop
.L216:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_MIME_HEADER_sort
	movl	$0, -44(%rbp)
	jmp	.L218
.L220:
	movl	-44(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_value
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L219
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L219
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	sk_MIME_PARAM_sort
.L219:
	addl	$1, -44(%rbp)
.L218:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_MIME_HEADER_num
	cmpl	%eax, -44(%rbp)
	jl	.L220
	movq	-64(%rbp), %rax
	jmp	.L221
.L223:
	nop
	jmp	.L201
.L224:
	nop
	jmp	.L201
.L230:
	nop
	jmp	.L201
.L231:
	nop
.L201:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	mime_hdr_free
	leaq	mime_hdr_free(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_pop_free
	movl	$0, %eax
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE815:
	.size	mime_parse_hdr, .-mime_parse_hdr
	.type	strip_ends, @function
strip_ends:
.LFB816:
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
	call	strip_start
	movq	%rax, %rdi
	call	strip_end
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE816:
	.size	strip_ends, .-strip_ends
	.type	strip_start, @function
strip_start:
.LFB817:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L236
.L241:
	cmpb	$34, -9(%rbp)
	jne	.L237
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L238
	movq	-8(%rbp), %rax
	addq	$1, %rax
	jmp	.L239
.L238:
	movl	$0, %eax
	jmp	.L239
.L237:
	movsbl	-9(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L240
	movq	-8(%rbp), %rax
	jmp	.L239
.L240:
	addq	$1, -8(%rbp)
.L236:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	cmpb	$0, -9(%rbp)
	jne	.L241
	movl	$0, %eax
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE817:
	.size	strip_start, .-strip_start
	.type	strip_end, @function
strip_end:
.LFB818:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L243
	movl	$0, %eax
	jmp	.L244
.L243:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L245
.L250:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	cmpb	$34, -9(%rbp)
	jne	.L246
	movq	-8(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -24(%rbp)
	jne	.L247
	movl	$0, %eax
	jmp	.L244
.L247:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L244
.L246:
	movsbl	-9(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L248
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L251
.L248:
	movq	-24(%rbp), %rax
	jmp	.L244
.L251:
	subq	$1, -8(%rbp)
.L245:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L250
	movl	$0, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	strip_end, .-strip_end
	.type	mime_hdr_new, @function
mime_hdr_new:
.LFB819:
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
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L253
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$877, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L254
	movl	$0, %eax
	jmp	.L255
.L254:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L256
.L257:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -32(%rbp)
.L256:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L257
.L253:
	cmpq	$0, -48(%rbp)
	je	.L258
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$883, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L265
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L261
.L262:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -32(%rbp)
.L261:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L262
.L258:
	leaq	.LC0(%rip), %rax
	movl	$888, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L266
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	mime_param_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_MIME_PARAM_new
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L267
	movq	-8(%rbp), %rax
	jmp	.L255
.L265:
	nop
	jmp	.L260
.L266:
	nop
	jmp	.L260
.L267:
	nop
.L260:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$898, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$899, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$900, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE819:
	.size	mime_hdr_new, .-mime_hdr_new
	.type	mime_hdr_addparam, @function
mime_hdr_addparam:
.LFB820:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L269
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$910, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L278
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L272
.L273:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L272:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L273
.L269:
	cmpq	$0, -56(%rbp)
	je	.L274
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$917, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L279
.L274:
	leaq	.LC0(%rip), %rax
	movl	$922, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L280
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_PARAM_push
	testl	%eax, %eax
	je	.L281
	movl	$1, %eax
	jmp	.L277
.L278:
	nop
	jmp	.L271
.L279:
	nop
	jmp	.L271
.L280:
	nop
	jmp	.L271
.L281:
	nop
.L271:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$931, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$932, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$933, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE820:
	.size	mime_hdr_addparam, .-mime_hdr_addparam
	.type	mime_hdr_cmp, @function
mime_hdr_cmp:
.LFB821:
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
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L283
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L284
.L283:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	jmp	.L285
.L284:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
.L285:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE821:
	.size	mime_hdr_cmp, .-mime_hdr_cmp
	.type	mime_param_cmp, @function
mime_param_cmp:
.LFB822:
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
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L287
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L288
.L287:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	jmp	.L289
.L288:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
.L289:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE822:
	.size	mime_param_cmp, .-mime_param_cmp
	.type	mime_hdr_find, @function
mime_hdr_find:
.LFB823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_find
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MIME_HEADER_value
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE823:
	.size	mime_hdr_find, .-mime_hdr_find
	.type	mime_param_find, @function
mime_param_find:
.LFB824:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_PARAM_find
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MIME_PARAM_value
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	mime_param_find, .-mime_param_find
	.type	mime_hdr_free, @function
mime_hdr_free:
.LFB825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L298
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$984, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$985, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L297
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	mime_param_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MIME_PARAM_pop_free
.L297:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$988, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L294
.L298:
	nop
.L294:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE825:
	.size	mime_hdr_free, .-mime_hdr_free
	.type	mime_param_free, @function
mime_param_free:
.LFB826:
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
	leaq	.LC0(%rip), %rcx
	movl	$993, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$994, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$995, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	mime_param_free, .-mime_param_free
	.section	.rodata
.LC57:
	.string	"--"
	.text
	.type	mime_bound_check, @function
mime_bound_check:
.LFB827:
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
	movl	%ecx, -16(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L301
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
.L301:
	cmpl	$-1, -16(%rbp)
	jne	.L302
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -16(%rbp)
.L302:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jg	.L303
	movl	$0, %eax
	jmp	.L304
.L303:
	leaq	.LC57(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L305
	addq	$2, -8(%rbp)
	movl	$1, %eax
	jmp	.L306
.L305:
	movl	$0, %eax
.L306:
	testb	%al, %al
	je	.L307
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L307
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC57(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L308
	movl	$2, %eax
	jmp	.L304
.L308:
	movl	$1, %eax
	jmp	.L304
.L307:
	movl	$0, %eax
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE827:
	.size	mime_bound_check, .-mime_bound_check
	.type	strip_eol, @function
strip_eol:
.LFB828:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$0, -20(%rbp)
	movl	-52(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L311
	cmpl	$0, -4(%rbp)
	jle	.L312
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L313
.L312:
	movl	$0, %eax
	jmp	.L314
.L313:
	movl	-52(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L315
	cmpl	$1, -4(%rbp)
	jle	.L316
	movl	-4(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L317
.L316:
	movl	$0, %eax
	jmp	.L314
.L317:
	subl	$1, -4(%rbp)
.L315:
	subl	$1, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L314
.L311:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L318
.L323:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -21(%rbp)
	cmpb	$10, -21(%rbp)
	jne	.L319
	movl	$1, -20(%rbp)
	jmp	.L320
.L319:
	cmpl	$0, -20(%rbp)
	je	.L321
	movl	-52(%rbp), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	je	.L321
	cmpb	$32, -21(%rbp)
	je	.L324
.L321:
	cmpb	$13, -21(%rbp)
	jne	.L325
	jmp	.L320
.L324:
	nop
.L320:
	subl	$1, -4(%rbp)
	subq	$1, -16(%rbp)
.L318:
	cmpl	$0, -4(%rbp)
	jg	.L323
	jmp	.L322
.L325:
	nop
.L322:
	movq	-48(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	-20(%rbp), %eax
.L314:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE828:
	.size	strip_eol, .-strip_eol
	.section	.rodata
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 20
__func__.6:
	.string	"i2d_ASN1_bio_stream"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 15
__func__.5:
	.string	"B64_write_ASN1"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"b64_read_asn1"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"asn1_output_data"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"SMIME_read_ASN1_ex"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"SMIME_crlf_copy"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"SMIME_text"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
