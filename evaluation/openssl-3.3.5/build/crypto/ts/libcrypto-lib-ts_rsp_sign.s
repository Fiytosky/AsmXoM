	.file	"ts_rsp_sign.c"
	.text
	.type	ossl_check_ASN1_OBJECT_type, @function
ossl_check_ASN1_OBJECT_type:
.LFB54:
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
.LFE54:
	.size	ossl_check_ASN1_OBJECT_type, .-ossl_check_ASN1_OBJECT_type
	.type	ossl_check_const_ASN1_OBJECT_sk_type, @function
ossl_check_const_ASN1_OBJECT_sk_type:
.LFB55:
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
.LFE55:
	.size	ossl_check_const_ASN1_OBJECT_sk_type, .-ossl_check_const_ASN1_OBJECT_sk_type
	.type	ossl_check_ASN1_OBJECT_sk_type, @function
ossl_check_ASN1_OBJECT_sk_type:
.LFB56:
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
.LFE56:
	.size	ossl_check_ASN1_OBJECT_sk_type, .-ossl_check_ASN1_OBJECT_sk_type
	.type	ossl_check_ASN1_OBJECT_freefunc_type, @function
ossl_check_ASN1_OBJECT_freefunc_type:
.LFB59:
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
.LFE59:
	.size	ossl_check_ASN1_OBJECT_freefunc_type, .-ossl_check_ASN1_OBJECT_freefunc_type
	.type	ossl_check_ASN1_UTF8STRING_type, @function
ossl_check_ASN1_UTF8STRING_type:
.LFB66:
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
.LFE66:
	.size	ossl_check_ASN1_UTF8STRING_type, .-ossl_check_ASN1_UTF8STRING_type
	.type	ossl_check_ASN1_UTF8STRING_sk_type, @function
ossl_check_ASN1_UTF8STRING_sk_type:
.LFB68:
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
.LFE68:
	.size	ossl_check_ASN1_UTF8STRING_sk_type, .-ossl_check_ASN1_UTF8STRING_sk_type
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB327:
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
.LFE327:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB351:
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
.LFE351:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB613:
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
.LFE613:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB614:
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
.LFE614:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	safe_add_time, @function
safe_add_time:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jnc	.L22
	movl	$1, %ecx
.L22:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L24
	movq	-8(%rbp), %rax
	jmp	.L26
.L24:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L26:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	safe_add_time, .-safe_add_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$-1, %rdi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_to_timeval, @function
ossl_time_to_timeval:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	-20(%rbp), %rdx
	movl	$999, %esi
	movq	%rax, %rdi
	call	safe_add_time
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L34
	call	ossl_time_infinite
	movq	%rax, -40(%rbp)
.L34:
	movq	-40(%rbp), %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	imulq	$1000000000, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ossl_time_to_timeval, .-ossl_time_to_timeval
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L39
	movl	$-1, %eax
	jmp	.L38
.L39:
	movl	$0, %eax
.L38:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_zero, @function
ossl_time_is_zero:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_zero
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ossl_time_is_zero, .-ossl_time_is_zero
	.type	sk_EVP_MD_num, @function
sk_EVP_MD_num:
.LFB657:
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
.LFE657:
	.size	sk_EVP_MD_num, .-sk_EVP_MD_num
	.type	sk_EVP_MD_value, @function
sk_EVP_MD_value:
.LFB658:
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
.LFE658:
	.size	sk_EVP_MD_value, .-sk_EVP_MD_value
	.type	sk_EVP_MD_new_null, @function
sk_EVP_MD_new_null:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	sk_EVP_MD_new_null, .-sk_EVP_MD_new_null
	.type	sk_EVP_MD_free, @function
sk_EVP_MD_free:
.LFB663:
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
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	sk_EVP_MD_free, .-sk_EVP_MD_free
	.type	sk_EVP_MD_push, @function
sk_EVP_MD_push:
.LFB667:
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
.LFE667:
	.size	sk_EVP_MD_push, .-sk_EVP_MD_push
	.section	.rodata
.LC0:
	.string	"../crypto/ts/ts_rsp_sign.c"
	.align 8
.LC1:
	.string	"Error during serial number generation."
	.text
	.type	def_serial_cb, @function
def_serial_cb:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L56
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L57
	movq	-8(%rbp), %rax
	jmp	.L55
.L56:
	nop
	jmp	.L53
.L57:
	nop
.L53:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	def_serial_cb, .-def_serial_cb
	.section	.rodata
.LC2:
	.string	"Time is not available."
	.text
	.type	def_time_cb, @function
def_time_cb:
.LFB683:
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
	movq	%rcx, -64(%rbp)
	call	ossl_time_now@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	je	.L59
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC2(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-40(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_failure_info@PLT
	movl	$0, %eax
	jmp	.L61
.L59:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_to_timeval
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	def_time_cb, .-def_time_cb
	.section	.rodata
.LC3:
	.string	"Unsupported extension."
	.text
	.type	def_extension_cb, @function
def_extension_cb:
.LFB684:
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
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_failure_info@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	def_extension_cb, .-def_extension_cb
	.globl	TS_RESP_CTX_new_ex
	.type	TS_RESP_CTX_new_ex, @function
TS_RESP_CTX_new_ex:
.LFB685:
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
	movl	$98, %edx
	movq	%rax, %rsi
	movl	$184, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	cmpq	$0, -32(%rbp)
	je	.L67
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$102, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L66
.L67:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 168(%rax)
	movq	-8(%rbp), %rax
	leaq	def_serial_cb(%rip), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	leaq	def_time_cb(%rip), %rdx
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	leaq	def_extension_cb(%rip), %rdx
	movq	%rdx, 128(%rax)
	movq	-8(%rbp), %rax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	TS_RESP_CTX_new_ex, .-TS_RESP_CTX_new_ex
	.globl	TS_RESP_CTX_new
	.type	TS_RESP_CTX_new, @function
TS_RESP_CTX_new:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	TS_RESP_CTX_new_ex@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	TS_RESP_CTX_new, .-TS_RESP_CTX_new
	.globl	TS_RESP_CTX_free
	.type	TS_RESP_CTX_free, @function
TS_RESP_CTX_free:
.LFB687:
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
	je	.L73
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$126, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	ASN1_OBJECT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	sk_EVP_MD_free
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$136, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L70
.L73:
	nop
.L70:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	TS_RESP_CTX_free, .-TS_RESP_CTX_free
	.globl	TS_RESP_CTX_set_signer_cert
	.type	TS_RESP_CTX_set_signer_cert, @function
TS_RESP_CTX_set_signer_cert:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	je	.L75
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$142, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	TS_RESP_CTX_set_signer_cert, .-TS_RESP_CTX_set_signer_cert
	.globl	TS_RESP_CTX_set_signer_key
	.type	TS_RESP_CTX_set_signer_key, @function
TS_RESP_CTX_set_signer_key:
.LFB689:
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
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	TS_RESP_CTX_set_signer_key, .-TS_RESP_CTX_set_signer_key
	.globl	TS_RESP_CTX_set_signer_digest
	.type	TS_RESP_CTX_set_signer_digest, @function
TS_RESP_CTX_set_signer_digest:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	TS_RESP_CTX_set_signer_digest, .-TS_RESP_CTX_set_signer_digest
	.globl	TS_RESP_CTX_set_def_policy
	.type	TS_RESP_CTX_set_def_policy, @function
TS_RESP_CTX_set_def_policy:
.LFB691:
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
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movl	$1, %eax
	jmp	.L84
.L86:
	nop
.L83:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524296, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	TS_RESP_CTX_set_def_policy, .-TS_RESP_CTX_set_def_policy
	.globl	TS_RESP_CTX_set_certs
	.type	TS_RESP_CTX_set_certs, @function
TS_RESP_CTX_set_certs:
.LFB692:
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
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -16(%rbp)
	je	.L88
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L89
.L88:
	movl	$1, %eax
	jmp	.L91
.L89:
	movl	$0, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	TS_RESP_CTX_set_certs, .-TS_RESP_CTX_set_certs
	.globl	TS_RESP_CTX_add_policy
	.type	TS_RESP_CTX_add_policy, @function
TS_RESP_CTX_add_policy:
.LFB693:
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
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L94
.L93:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524296, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L94
.L95:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L96
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L94
.L96:
	movl	$1, %eax
	jmp	.L97
.L94:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	$0, %eax
.L97:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	TS_RESP_CTX_add_policy, .-TS_RESP_CTX_add_policy
	.globl	TS_RESP_CTX_add_md
	.type	TS_RESP_CTX_add_md, @function
TS_RESP_CTX_add_md:
.LFB694:
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
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L99
	call	sk_EVP_MD_new_null
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L103
.L99:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_MD_push
	testl	%eax, %eax
	je	.L104
	movl	$1, %eax
	jmp	.L102
.L103:
	nop
	jmp	.L100
.L104:
	nop
.L100:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$219, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	TS_RESP_CTX_add_md, .-TS_RESP_CTX_add_md
	.globl	TS_RESP_CTX_set_accuracy
	.type	TS_RESP_CTX_set_accuracy, @function
TS_RESP_CTX_set_accuracy:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	cmpl	$0, -12(%rbp)
	je	.L106
	call	ASN1_INTEGER_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L114
.L106:
	cmpl	$0, -16(%rbp)
	je	.L109
	call	ASN1_INTEGER_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L115
.L109:
	cmpl	$0, -20(%rbp)
	je	.L111
	call	ASN1_INTEGER_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L116
.L111:
	movl	$1, %eax
	jmp	.L113
.L114:
	nop
	jmp	.L108
.L115:
	nop
	jmp	.L108
.L116:
	nop
.L108:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	TS_RESP_CTX_set_accuracy, .-TS_RESP_CTX_set_accuracy
	.globl	TS_RESP_CTX_add_flags
	.type	TS_RESP_CTX_add_flags, @function
TS_RESP_CTX_add_flags:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	92(%rax), %edx
	movl	-12(%rbp), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 92(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	TS_RESP_CTX_add_flags, .-TS_RESP_CTX_add_flags
	.globl	TS_RESP_CTX_set_serial_cb
	.type	TS_RESP_CTX_set_serial_cb, @function
TS_RESP_CTX_set_serial_cb:
.LFB697:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 104(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	TS_RESP_CTX_set_serial_cb, .-TS_RESP_CTX_set_serial_cb
	.globl	TS_RESP_CTX_set_time_cb
	.type	TS_RESP_CTX_set_time_cb, @function
TS_RESP_CTX_set_time_cb:
.LFB698:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 120(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	TS_RESP_CTX_set_time_cb, .-TS_RESP_CTX_set_time_cb
	.globl	TS_RESP_CTX_set_extension_cb
	.type	TS_RESP_CTX_set_extension_cb, @function
TS_RESP_CTX_set_extension_cb:
.LFB699:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 136(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	TS_RESP_CTX_set_extension_cb, .-TS_RESP_CTX_set_extension_cb
	.globl	TS_RESP_CTX_set_status_info
	.type	TS_RESP_CTX_set_status_info, @function
TS_RESP_CTX_set_status_info:
.LFB700:
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
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	call	TS_STATUS_INFO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$288, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524335, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L123
.L122:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L123
.L124:
	cmpq	$0, -72(%rbp)
	je	.L125
	call	ASN1_UTF8STRING_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L126
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L127
.L126:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L123
.L127:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$303, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L123
.L128:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L129
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L123
.L129:
	movq	$0, -24(%rbp)
.L125:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_set_status_info@PLT
	testl	%eax, %eax
	jne	.L130
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524335, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L123
.L130:
	movl	$1, -28(%rbp)
.L123:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_STATUS_INFO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTF8STRING_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	TS_RESP_CTX_set_status_info, .-TS_RESP_CTX_set_status_info
	.globl	TS_RESP_CTX_set_status_info_cond
	.type	TS_RESP_CTX_set_status_info_cond, @function
TS_RESP_CTX_set_status_info_cond:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	testq	%rax, %rax
	jne	.L133
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movl	%eax, -4(%rbp)
.L133:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	TS_RESP_CTX_set_status_info_cond, .-TS_RESP_CTX_set_status_info_cond
	.globl	TS_RESP_CTX_add_failure_info
	.type	TS_RESP_CTX_add_failure_info, @function
TS_RESP_CTX_add_failure_info:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L136
	call	ASN1_BIT_STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L140
.L136:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %ecx
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set_bit@PLT
	testl	%eax, %eax
	je	.L141
	movl	$1, %eax
	jmp	.L139
.L140:
	nop
	jmp	.L137
.L141:
	nop
.L137:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$345, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	TS_RESP_CTX_add_failure_info, .-TS_RESP_CTX_add_failure_info
	.globl	TS_RESP_CTX_get_request
	.type	TS_RESP_CTX_get_request, @function
TS_RESP_CTX_get_request:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	TS_RESP_CTX_get_request, .-TS_RESP_CTX_get_request
	.globl	TS_RESP_CTX_get_tst_info
	.type	TS_RESP_CTX_get_tst_info, @function
TS_RESP_CTX_get_tst_info:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	TS_RESP_CTX_get_tst_info, .-TS_RESP_CTX_get_tst_info
	.globl	TS_RESP_CTX_set_clock_precision_digits
	.type	TS_RESP_CTX_set_clock_precision_digits, @function
TS_RESP_CTX_set_clock_precision_digits:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$6, -12(%rbp)
	jbe	.L147
	movl	$0, %eax
	jmp	.L148
.L147:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 88(%rax)
	movl	$1, %eax
.L148:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	TS_RESP_CTX_set_clock_precision_digits, .-TS_RESP_CTX_set_clock_precision_digits
	.section	.rodata
	.align 8
.LC4:
	.string	"Bad request format or system error."
	.align 8
.LC5:
	.string	"Error during response generation."
	.text
	.globl	TS_RESP_create_response
	.type	TS_RESP_create_response, @function
TS_RESP_create_response:
.LFB706:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ts_RESP_CTX_init
	call	TS_RESP_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 152(%rdx)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L150
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$378, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524335, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L151
.L150:
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_TS_REQ_bio@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L152
	leaq	.LC4(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-40(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_failure_info@PLT
	jmp	.L151
.L152:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	testl	%eax, %eax
	je	.L161
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ts_RESP_check_request
	testl	%eax, %eax
	je	.L162
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ts_RESP_get_policy
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L163
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_RESP_create_tst_info
	movq	-40(%rbp), %rdx
	movq	%rax, 160(%rdx)
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L164
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ts_RESP_process_extensions
	testl	%eax, %eax
	je	.L165
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ts_RESP_sign
	testl	%eax, %eax
	je	.L166
	movl	$1, -4(%rbp)
	jmp	.L151
.L161:
	nop
	jmp	.L151
.L162:
	nop
	jmp	.L151
.L163:
	nop
	jmp	.L151
.L164:
	nop
	jmp	.L151
.L165:
	nop
	jmp	.L151
.L166:
	nop
.L151:
	cmpl	$0, -4(%rbp)
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L159
	leaq	.LC5(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info_cond@PLT
	testl	%eax, %eax
	jne	.L159
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	TS_RESP_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 152(%rax)
.L159:
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ts_RESP_CTX_cleanup
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	TS_RESP_create_response, .-TS_RESP_create_response
	.type	ts_RESP_CTX_init, @function
ts_RESP_CTX_init:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	ts_RESP_CTX_init, .-ts_RESP_CTX_init
	.type	ts_RESP_CTX_cleanup, @function
ts_RESP_CTX_cleanup:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	TS_REQ_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	TS_RESP_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	TS_TST_INFO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	ts_RESP_CTX_cleanup, .-ts_RESP_CTX_cleanup
	.section	.rodata
.LC6:
	.string	"Bad request version."
	.align 8
.LC7:
	.string	"Message digest algorithm is not supported."
	.align 8
.LC8:
	.string	"Superfluous message digest parameter."
.LC9:
	.string	"Bad message digest."
	.text
	.type	ts_RESP_check_request, @function
ts_RESP_check_request:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_REQ_get_version@PLT
	cmpq	$1, %rax
	je	.L170
	leaq	.LC6(%rip), %rdx
	movq	-136(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-136(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_failure_info@PLT
	movl	$0, %eax
	jmp	.L179
.L170:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movl	$0, -28(%rbp)
	jmp	.L172
.L175:
	movq	-136(%rbp), %rax
	movq	56(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_MD_value
	movq	%rax, -64(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L173
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L173:
	addl	$1, -28(%rbp)
.L172:
	cmpq	$0, -24(%rbp)
	jne	.L174
	movq	-136(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	sk_EVP_MD_num
	cmpl	%eax, -28(%rbp)
	jl	.L175
.L174:
	cmpq	$0, -24(%rbp)
	jne	.L176
	leaq	.LC7(%rip), %rdx
	movq	-136(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-136(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_failure_info@PLT
	movl	$0, %eax
	jmp	.L179
.L176:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L177
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_get@PLT
	cmpl	$5, %eax
	je	.L177
	leaq	.LC8(%rip), %rdx
	movq	-136(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-136(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_failure_info@PLT
	movl	$0, %eax
	jmp	.L179
.L177:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cmpl	%eax, %ebx
	je	.L178
	leaq	.LC9(%rip), %rdx
	movq	-136(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-136(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_failure_info@PLT
	movl	$0, %eax
	jmp	.L179
.L178:
	movl	$1, %eax
.L179:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	ts_RESP_check_request, .-ts_RESP_check_request
	.section	.rodata
	.align 8
.LC10:
	.string	"Requested policy is not supported."
	.text
	.type	ts_RESP_get_policy, @function
ts_RESP_get_policy:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L181
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$499, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L182
.L181:
	cmpq	$0, -24(%rbp)
	je	.L183
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L184
.L183:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.L184:
	movl	$0, -12(%rbp)
	jmp	.L185
.L188:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L186
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L186:
	addl	$1, -12(%rbp)
.L185:
	cmpq	$0, -8(%rbp)
	jne	.L187
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L188
.L187:
	cmpq	$0, -8(%rbp)
	jne	.L189
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC10(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info@PLT
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_failure_info@PLT
.L189:
	movq	-8(%rbp), %rax
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	ts_RESP_get_policy, .-ts_RESP_get_policy
	.section	.rodata
	.align 8
.LC11:
	.string	"Error during TSTInfo generation."
	.text
	.type	ts_RESP_create_tst_info, @function
ts_RESP_create_tst_info:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	call	TS_TST_INFO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L213
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	TS_TST_INFO_set_version@PLT
	testl	%eax, %eax
	je	.L214
	movq	-96(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_set_policy_id@PLT
	testl	%eax, %eax
	je	.L215
	movq	-88(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_set_msg_imprint@PLT
	testl	%eax, %eax
	je	.L216
	movq	-88(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L217
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_set_serial@PLT
	testl	%eax, %eax
	je	.L217
	movq	-88(%rbp), %rax
	movq	112(%rax), %r8
	movq	-88(%rbp), %rax
	movq	120(%rax), %rsi
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L218
	movq	-88(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	TS_RESP_set_genTime_with_precision
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L218
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_set_time@PLT
	testl	%eax, %eax
	je	.L218
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L200
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L200
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L201
.L200:
	call	TS_ACCURACY_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L219
.L201:
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L202
	movq	-88(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_ACCURACY_set_seconds@PLT
	testl	%eax, %eax
	je	.L220
.L202:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L203
	movq	-88(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_ACCURACY_set_millis@PLT
	testl	%eax, %eax
	je	.L221
.L203:
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L204
	movq	-88(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_ACCURACY_set_micros@PLT
	testl	%eax, %eax
	je	.L222
.L204:
	cmpq	$0, -40(%rbp)
	je	.L205
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_set_accuracy@PLT
	testl	%eax, %eax
	je	.L223
.L205:
	movq	-88(%rbp), %rax
	movl	92(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L206
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	TS_TST_INFO_set_ordering@PLT
	testl	%eax, %eax
	je	.L224
.L206:
	movq	-88(%rbp), %rax
	movq	144(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L207
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_set_nonce@PLT
	testl	%eax, %eax
	je	.L225
.L207:
	movq	-88(%rbp), %rax
	movl	92(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L208
	call	GENERAL_NAME_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L226
	movq	-48(%rbp), %rax
	movl	$4, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L227
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_set_tsa@PLT
	testl	%eax, %eax
	je	.L228
.L208:
	movl	$1, -4(%rbp)
	jmp	.L192
.L213:
	nop
	jmp	.L192
.L214:
	nop
	jmp	.L192
.L215:
	nop
	jmp	.L192
.L216:
	nop
	jmp	.L192
.L217:
	nop
	jmp	.L192
.L218:
	nop
	jmp	.L192
.L219:
	nop
	jmp	.L192
.L220:
	nop
	jmp	.L192
.L221:
	nop
	jmp	.L192
.L222:
	nop
	jmp	.L192
.L223:
	nop
	jmp	.L192
.L224:
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
.L192:
	cmpl	$0, -4(%rbp)
	jne	.L211
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	TS_TST_INFO_free@PLT
	movq	$0, -16(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$588, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC11(%rip), %rdx
	movq	-88(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info_cond@PLT
.L211:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_ACCURACY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	ts_RESP_create_tst_info, .-ts_RESP_create_tst_info
	.type	ts_RESP_process_extensions, @function
ts_RESP_process_extensions:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L230
.L232:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L230:
	cmpl	$0, -8(%rbp)
	je	.L231
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L232
.L231:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	ts_RESP_process_extensions, .-ts_RESP_process_extensions
	.type	ossl_ess_add1_signing_cert, @function
ossl_ess_add1_signing_cert:
.LFB713:
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
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$628, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L235
	movl	$0, %eax
	jmp	.L240
.L235:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT@PLT
	call	ASN1_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L237
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L238
.L237:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$637, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L240
.L238:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$641, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$223, %esi
	movq	%rax, %rdi
	call	PKCS7_add_signed_attribute@PLT
	testl	%eax, %eax
	jne	.L239
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L240
.L239:
	movl	$1, %eax
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	ossl_ess_add1_signing_cert, .-ossl_ess_add1_signing_cert
	.type	ossl_ess_add1_signing_cert_v2, @function
ossl_ess_add1_signing_cert_v2:
.LFB714:
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
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT_V2@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$655, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L242
	movl	$0, %eax
	jmp	.L247
.L242:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ESS_SIGNING_CERT_V2@PLT
	call	ASN1_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L244
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L245
.L244:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$664, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L247
.L245:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$668, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$1086, %esi
	movq	%rax, %rdi
	call	PKCS7_add_signed_attribute@PLT
	testl	%eax, %eax
	jne	.L246
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
	jmp	.L247
.L246:
	movl	$1, %eax
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	ossl_ess_add1_signing_cert_v2, .-ossl_ess_add1_signing_cert_v2
	.section	.rodata
.LC12:
	.string	"SHA256"
.LC13:
	.string	"SHA1"
	.align 8
.LC14:
	.string	"Error during signature generation."
	.text
	.type	ts_RESP_sign, @function
ts_RESP_sign:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
	testl	%eax, %eax
	jne	.L249
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$691, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L249:
	movq	-120(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L251
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$696, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L251:
	movq	-32(%rbp), %rax
	movl	$22, %esi
	movq	%rax, %rdi
	call	PKCS7_set_type@PLT
	testl	%eax, %eax
	je	.L277
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L278
	movq	-120(%rbp), %rax
	movq	144(%rax), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L254
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add_certificate@PLT
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L254
	movl	$0, -68(%rbp)
	jmp	.L255
.L256:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_add_certificate@PLT
	addl	$1, -68(%rbp)
.L255:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -68(%rbp)
	jl	.L256
.L254:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L257
	movq	-120(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -80(%rbp)
	jmp	.L258
.L257:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_provider@PLT
	testq	%rax, %rax
	jne	.L259
	movq	-120(%rbp), %rax
	movq	176(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -80(%rbp)
	jmp	.L258
.L259:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.L258:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rsi
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_add_signature@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L260
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$724, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L260:
	movl	$207, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	call	PKCS7_add_signed_attribute@PLT
	testl	%eax, %eax
	jne	.L261
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$731, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L261:
	movq	-120(%rbp), %rax
	movl	92(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L262
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L263
.L262:
	movq	$0, -40(%rbp)
.L263:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L264
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L265
.L264:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ESS_signing_cert_new_init@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L279
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ess_add1_signing_cert
	testl	%eax, %eax
	jne	.L268
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$743, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L265:
	movq	-120(%rbp), %rax
	movq	(%rax), %rsi
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_ESS_signing_cert_v2_new_init@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L280
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ess_add1_signing_cert_v2
	testl	%eax, %eax
	jne	.L268
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L268:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ts_TST_INFO_content_new
	testl	%eax, %eax
	je	.L281
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS7_dataInit@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L271
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$761, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524321, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L271:
	movq	-120(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_TS_TST_INFO_bio@PLT
	testl	%eax, %eax
	jne	.L272
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$765, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L272:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_dataFinal@PLT
	testl	%eax, %eax
	jne	.L273
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L250
.L273:
	movq	-120(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_set_tst_info@PLT
	movq	$0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	$0, 160(%rax)
	movl	$1, -20(%rbp)
	jmp	.L250
.L277:
	nop
	jmp	.L250
.L278:
	nop
	jmp	.L250
.L279:
	nop
	jmp	.L250
.L280:
	nop
	jmp	.L250
.L281:
	nop
.L250:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -80(%rbp)
	je	.L274
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
.L274:
	cmpl	$0, -20(%rbp)
	jne	.L275
	leaq	.LC14(%rip), %rdx
	movq	-120(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_status_info_cond@PLT
.L275:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_V2_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ESS_SIGNING_CERT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	ts_RESP_sign, .-ts_RESP_sign
	.type	ts_TST_INFO_content_new, @function
ts_TST_INFO_content_new:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	call	PKCS7_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L289
	call	ASN1_TYPE_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L290
	movl	$207, %edi
	call	OBJ_nid2obj@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L291
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_set_content@PLT
	testl	%eax, %eax
	je	.L292
	movl	$1, %eax
	jmp	.L288
.L289:
	nop
	jmp	.L284
.L290:
	nop
	jmp	.L284
.L291:
	nop
	jmp	.L284
.L292:
	nop
.L284:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movl	$0, %eax
.L288:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	ts_TST_INFO_content_new, .-ts_TST_INFO_content_new
	.section	.rodata
.LC15:
	.string	"%04d%02d%02d%02d%02d%02d"
.LC16:
	.string	".%06ld"
	.text
	.type	TS_RESP_set_genTime_with_precision, @function
TS_RESP_set_genTime_with_precision:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	%ecx, -156(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-128(%rbp), %rax
	addq	$23, %rax
	movq	%rax, -24(%rbp)
	cmpl	$6, -156(%rbp)
	ja	.L304
	leaq	-96(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_gmtime@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L305
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %r9d
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %r10d
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	leal	1900(%rax), %ecx
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %r11
	leaq	.LC15(%rip), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	movl	%r10d, %r8d
	movq	%r11, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$32, %rsp
	cltq
	addq	%rax, -8(%rbp)
	cmpl	$0, -156(%rbp)
	je	.L297
	movl	-156(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %edi
	movq	-152(%rbp), %rdx
	leaq	.LC16(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, -8(%rbp)
	jmp	.L298
.L299:
	nop
.L298:
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	je	.L299
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L297
	addq	$1, -8(%rbp)
.L297:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$90, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	cmpq	$0, -136(%rbp)
	jne	.L300
	call	ASN1_GENERALIZEDTIME_new@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L306
.L300:
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_set_string@PLT
	testl	%eax, %eax
	jne	.L301
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_free@PLT
	jmp	.L295
.L301:
	movq	-136(%rbp), %rax
	jmp	.L303
.L304:
	nop
	jmp	.L295
.L305:
	nop
	jmp	.L295
.L306:
	nop
.L295:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$883, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L303:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	TS_RESP_set_genTime_with_precision, .-TS_RESP_set_genTime_with_precision
	.globl	TS_RESP_CTX_set_ess_cert_id_digest
	.type	TS_RESP_CTX_set_ess_cert_id_digest, @function
TS_RESP_CTX_set_ess_cert_id_digest:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	TS_RESP_CTX_set_ess_cert_id_digest, .-TS_RESP_CTX_set_ess_cert_id_digest
	.section	.rodata
	.align 8
	.type	__func__.13, @object
	.size	__func__.13, 14
__func__.13:
	.string	"def_serial_cb"
	.align 8
	.type	__func__.12, @object
	.size	__func__.12, 12
__func__.12:
	.string	"def_time_cb"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 28
__func__.11:
	.string	"TS_RESP_CTX_set_signer_cert"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 27
__func__.10:
	.string	"TS_RESP_CTX_set_def_policy"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 23
__func__.9:
	.string	"TS_RESP_CTX_add_policy"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 19
__func__.8:
	.string	"TS_RESP_CTX_add_md"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 25
__func__.7:
	.string	"TS_RESP_CTX_set_accuracy"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 28
__func__.6:
	.string	"TS_RESP_CTX_set_status_info"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 29
__func__.5:
	.string	"TS_RESP_CTX_add_failure_info"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"TS_RESP_create_response"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"ts_RESP_get_policy"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 24
__func__.2:
	.string	"ts_RESP_create_tst_info"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"ts_RESP_sign"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 35
__func__.0:
	.string	"TS_RESP_set_genTime_with_precision"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
