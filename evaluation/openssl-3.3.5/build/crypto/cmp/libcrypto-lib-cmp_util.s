	.file	"cmp_util.c"
	.text
	.type	ossl_check_ASN1_UTF8STRING_type, @function
ossl_check_ASN1_UTF8STRING_type:
.LFB69:
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
.LFE69:
	.size	ossl_check_ASN1_UTF8STRING_type, .-ossl_check_ASN1_UTF8STRING_type
	.type	ossl_check_ASN1_UTF8STRING_sk_type, @function
ossl_check_ASN1_UTF8STRING_sk_type:
.LFB71:
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
.LFE71:
	.size	ossl_check_ASN1_UTF8STRING_sk_type, .-ossl_check_ASN1_UTF8STRING_sk_type
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB409:
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
.LFE409:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.globl	OSSL_CMP_log_open
	.type	OSSL_CMP_log_open, @function
OSSL_CMP_log_open:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	OSSL_CMP_log_open, .-OSSL_CMP_log_open
	.globl	OSSL_CMP_log_close
	.type	OSSL_CMP_log_close, @function
OSSL_CMP_log_close:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$13, %edi
	call	OSSL_trace_set_channel@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	OSSL_CMP_log_close, .-OSSL_CMP_log_close
	.section	.rodata
.LC0:
	.string	"CMP "
.LC1:
	.string	"EMERG"
.LC2:
	.string	"ALERT"
.LC3:
	.string	"CRIT"
.LC4:
	.string	"ERROR"
.LC5:
	.string	"WARN"
.LC6:
	.string	"NOTE"
.LC7:
	.string	"INFO"
.LC8:
	.string	"DEBUG"
	.text
	.type	parse_level, @function
parse_level:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	movl	$-1, %eax
	jmp	.L31
.L18:
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L20
	addq	$4, -40(%rbp)
.L20:
	movq	-8(%rbp), %rax
	subq	-40(%rbp), %rax
	movl	%eax, -12(%rbp)
	cmpl	$5, -12(%rbp)
	jle	.L21
	movl	$-1, %eax
	jmp	.L31
.L21:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	leaq	-18(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	leaq	.LC1(%rip), %rdx
	leaq	-18(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L22
	leaq	.LC2(%rip), %rdx
	leaq	-18(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L23
	leaq	.LC3(%rip), %rdx
	leaq	-18(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L24
	leaq	.LC4(%rip), %rdx
	leaq	-18(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L25
	leaq	.LC5(%rip), %rdx
	leaq	-18(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L26
	leaq	.LC6(%rip), %rdx
	leaq	-18(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L27
	leaq	.LC7(%rip), %rdx
	leaq	-18(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L28
	leaq	.LC8(%rip), %rdx
	leaq	-18(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$7, %eax
	jmp	.L31
.L29:
	movl	$-1, %eax
	jmp	.L31
.L28:
	movl	$6, %eax
	jmp	.L31
.L27:
	movl	$5, %eax
	jmp	.L31
.L26:
	movl	$4, %eax
	jmp	.L31
.L25:
	movl	$3, %eax
	jmp	.L31
.L24:
	movl	$2, %eax
	jmp	.L31
.L23:
	movl	$1, %eax
	jmp	.L31
.L22:
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	parse_level, .-parse_level
	.section	.rodata
.LC9:
	.string	"../crypto/cmp/cmp_util.c"
	.text
	.globl	ossl_cmp_log_parse_metadata
	.type	ossl_cmp_log_parse_metadata, @function
ossl_cmp_log_parse_metadata:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L33
	movq	-72(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	jmp	.L34
.L33:
	movq	$0, -8(%rbp)
.L34:
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	movl	$-1, (%rax)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movq	-104(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -8(%rbp)
	je	.L35
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	parse_level
	movq	-80(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L35
	cmpq	$0, -40(%rbp)
	je	.L35
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	addq	$1, -40(%rbp)
	leaq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L35
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L35
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	parse_level
	movq	-80(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L35
	movq	-8(%rbp), %rax
	subq	$1, %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$99, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	subq	$1, %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$100, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-96(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L35
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L35
	addq	$1, -16(%rbp)
.L35:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	ossl_cmp_log_parse_metadata, .-ossl_cmp_log_parse_metadata
	.section	.rodata
.LC10:
	.string	"(unknown function)"
	.text
	.type	improve_location_name, @function
improve_location_name:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L39
	cmpq	$0, -8(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	jmp	.L42
.L40:
	leaq	.LC10(%rip), %rax
	jmp	.L42
.L39:
	cmpq	$0, -8(%rbp)
	je	.L43
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L43
	leaq	.LC10(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L44
.L43:
	movq	-16(%rbp), %rax
	jmp	.L42
.L44:
	movq	-8(%rbp), %rax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	improve_location_name, .-improve_location_name
	.section	.rodata
.LC11:
	.string	"(unknown level)"
.LC12:
	.string	"info"
.LC13:
	.string	"warning"
.LC14:
	.string	"error"
.LC15:
	.string	"CMP %s: %s\n"
	.text
	.globl	OSSL_CMP_print_to_bio
	.type	OSSL_CMP_print_to_bio, @function
OSSL_CMP_print_to_bio:
.LFB744:
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
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L47
	cmpl	$1, -48(%rbp)
	je	.L48
	cmpl	$2, -48(%rbp)
	je	.L49
	cmpl	$3, -48(%rbp)
	je	.L50
	cmpl	$4, -48(%rbp)
	je	.L51
	cmpl	$5, -48(%rbp)
	je	.L52
	cmpl	$6, -48(%rbp)
	je	.L53
	cmpl	$7, -48(%rbp)
	jne	.L54
	leaq	.LC8(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L55
.L54:
	leaq	.LC11(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L55
.L53:
	leaq	.LC12(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L55
.L52:
	leaq	.LC6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L55
.L51:
	leaq	.LC13(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L55
.L50:
	leaq	.LC14(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L55
.L49:
	leaq	.LC3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L55
.L48:
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L55
.L47:
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
.L55:
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	OSSL_CMP_print_to_bio, .-OSSL_CMP_print_to_bio
	.section	.rodata
.LC16:
	.string	"reason(%lu)"
.LC17:
	.string	"%s:%s"
.LC18:
	.string	"%s"
	.text
	.globl	OSSL_CMP_print_errors_cb
	.type	OSSL_CMP_print_errors_cb, @function
OSSL_CMP_print_errors_cb:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4448, %rsp
	movq	%rdi, -4440(%rbp)
	movq	$0, -4152(%rbp)
	movq	$0, -4160(%rbp)
	movq	$0, -4168(%rbp)
	jmp	.L58
.L67:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_lib_error_string@PLT
	movq	%rax, %rdx
	movq	-4160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	improve_location_name
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cltq
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L59
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	leaq	-4432(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	openssl_strerror_r@PLT
	testl	%eax, %eax
	je	.L60
	leaq	-4432(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L60
.L59:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	movq	%rax, -8(%rbp)
.L60:
	cmpq	$0, -8(%rbp)
	jne	.L61
	movq	-32(%rbp), %rdx
	leaq	.LC16(%rip), %rsi
	leaq	-4432(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-4432(%rbp), %rax
	movq	%rax, -8(%rbp)
.L61:
	movq	-4168(%rbp), %rax
	testq	%rax, %rax
	je	.L62
	movl	-4176(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L62
	movq	-4168(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC17(%rip), %rsi
	leaq	-4144(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$4096, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L63
.L62:
	movq	-8(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	leaq	-4144(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$4096, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L63:
	cmpq	$0, -4440(%rbp)
	jne	.L64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L58
	movl	-4172(%rbp), %ecx
	movq	-4152(%rbp), %rdx
	leaq	-4144(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movl	$3, %r8d
	movq	%rax, %rdi
	call	OSSL_CMP_print_to_bio@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L58
.L64:
	movl	-4172(%rbp), %edx
	movq	-4152(%rbp), %rsi
	leaq	-4144(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	-4440(%rbp), %r9
	movq	%rcx, %r8
	movl	$3, %ecx
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jg	.L58
	nop
	jmp	.L68
.L58:
	leaq	-4176(%rbp), %rdi
	leaq	-4168(%rbp), %rcx
	leaq	-4160(%rbp), %rdx
	leaq	-4172(%rbp), %rsi
	leaq	-4152(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ERR_get_error_all@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L67
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	OSSL_CMP_print_errors_cb, .-OSSL_CMP_print_errors_cb
	.globl	ossl_cmp_X509_STORE_add1_certs
	.type	ossl_cmp_X509_STORE_add1_certs, @function
ossl_cmp_X509_STORE_add1_certs:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L70
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$207, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L70:
	cmpq	$0, -32(%rbp)
	jne	.L72
	movl	$1, %eax
	jmp	.L71
.L72:
	movl	$0, -4(%rbp)
	jmp	.L73
.L76:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L74
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_self_signed@PLT
	cmpl	$1, %eax
	jne	.L75
.L74:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_cert@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L71
.L75:
	addl	$1, -4(%rbp)
.L73:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L76
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ossl_cmp_X509_STORE_add1_certs, .-ossl_cmp_X509_STORE_add1_certs
	.globl	ossl_cmp_sk_ASN1_UTF8STRING_push_str
	.type	ossl_cmp_sk_ASN1_UTF8STRING_push_str, @function
ossl_cmp_sk_ASN1_UTF8STRING_push_str:
.LFB747:
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
	movl	%edx, -52(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L78
	cmpq	$0, -48(%rbp)
	je	.L78
	movl	$1, %eax
	jmp	.L79
.L78:
	movl	$0, %eax
.L79:
	cltq
	testq	%rax, %rax
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	call	ASN1_UTF8STRING_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L82
	movl	$0, %eax
	jmp	.L81
.L82:
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L86
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L87
	movl	$1, %eax
	jmp	.L81
.L86:
	nop
	jmp	.L84
.L87:
	nop
.L84:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTF8STRING_free@PLT
	movl	$0, %eax
.L81:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ossl_cmp_sk_ASN1_UTF8STRING_push_str, .-ossl_cmp_sk_ASN1_UTF8STRING_push_str
	.globl	ossl_cmp_asn1_octet_string_set1
	.type	ossl_cmp_asn1_octet_string_set1, @function
ossl_cmp_asn1_octet_string_set1:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L89:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L91
	movl	$1, %eax
	jmp	.L90
.L91:
	cmpq	$0, -32(%rbp)
	je	.L92
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L90
.L92:
	movq	$0, -8(%rbp)
.L93:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	ossl_cmp_asn1_octet_string_set1, .-ossl_cmp_asn1_octet_string_set1
	.globl	ossl_cmp_asn1_octet_string_set1_bytes
	.type	ossl_cmp_asn1_octet_string_set1_bytes, @function
ossl_cmp_asn1_octet_string_set1_bytes:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movl	$272, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L96
.L95:
	cmpq	$0, -32(%rbp)
	je	.L97
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L98
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L97
.L98:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
	jmp	.L96
.L97:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	ossl_cmp_asn1_octet_string_set1_bytes, .-ossl_cmp_asn1_octet_string_set1_bytes
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 31
__func__.2:
	.string	"ossl_cmp_X509_STORE_add1_certs"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 32
__func__.1:
	.string	"ossl_cmp_asn1_octet_string_set1"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 38
__func__.0:
	.string	"ossl_cmp_asn1_octet_string_set1_bytes"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
