	.file	"ts_conf.c"
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
	.type	ossl_check_const_X509_INFO_sk_type, @function
ossl_check_const_X509_INFO_sk_type:
.LFB445:
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
.LFE445:
	.size	ossl_check_const_X509_INFO_sk_type, .-ossl_check_const_X509_INFO_sk_type
	.type	ossl_check_X509_INFO_sk_type, @function
ossl_check_X509_INFO_sk_type:
.LFB446:
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
.LFE446:
	.size	ossl_check_X509_INFO_sk_type, .-ossl_check_X509_INFO_sk_type
	.type	ossl_check_X509_INFO_freefunc_type, @function
ossl_check_X509_INFO_freefunc_type:
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
	.size	ossl_check_X509_INFO_freefunc_type, .-ossl_check_X509_INFO_freefunc_type
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB493:
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
.LFE493:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB494:
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
.LFE494:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB497:
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
.LFE497:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"../crypto/ts/ts_conf.c"
	.text
	.globl	TS_CONF_load_cert
	.type	TS_CONF_load_cert, @function
TS_CONF_load_cert:
.LFB635:
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
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L22
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_X509_AUX@PLT
	movq	%rax, -8(%rbp)
	jmp	.L19
.L22:
	nop
.L19:
	cmpq	$0, -8(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L20:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	TS_CONF_load_cert, .-TS_CONF_load_cert
	.globl	TS_CONF_load_certs
	.type	TS_CONF_load_certs, @function
TS_CONF_load_certs:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L33
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L34
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_X509_INFO_read_bio@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L27
.L30:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_INFO_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_cert@PLT
	testl	%eax, %eax
	jne	.L29
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L25
.L29:
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L28:
	addl	$1, -36(%rbp)
.L27:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -36(%rbp)
	jl	.L30
	jmp	.L25
.L33:
	nop
	jmp	.L25
.L34:
	nop
.L25:
	cmpq	$0, -24(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L31:
	movq	X509_INFO_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	TS_CONF_load_certs, .-TS_CONF_load_certs
	.globl	TS_CONF_load_key
	.type	TS_CONF_load_key, @function
TS_CONF_load_key:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	jmp	.L37
.L40:
	nop
.L37:
	cmpq	$0, -8(%rbp)
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L38:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	TS_CONF_load_key, .-TS_CONF_load_key
	.section	.rodata
.LC2:
	.string	"%s::%s"
	.text
	.type	ts_CONF_lookup_fail, @function
ts_CONF_lookup_fail:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$115, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$136, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ts_CONF_lookup_fail, .-ts_CONF_lookup_fail
	.type	ts_CONF_invalid, @function
ts_CONF_invalid:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$135, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ts_CONF_invalid, .-ts_CONF_invalid
	.section	.rodata
.LC3:
	.string	"default_tsa"
.LC4:
	.string	"tsa"
	.text
	.globl	TS_CONF_get_tsa_section
	.type	TS_CONF_get_tsa_section, @function
TS_CONF_get_tsa_section:
.LFB640:
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
	jne	.L44
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L44
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_lookup_fail
.L44:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	TS_CONF_get_tsa_section, .-TS_CONF_get_tsa_section
	.section	.rodata
.LC5:
	.string	"serial"
	.text
	.globl	TS_CONF_set_serial
	.type	TS_CONF_set_serial, @function
TS_CONF_set_serial:
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
	movl	$0, -4(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L47
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_lookup_fail
	jmp	.L48
.L47:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_serial_cb@PLT
	movl	$1, -4(%rbp)
.L48:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	TS_CONF_set_serial, .-TS_CONF_set_serial
	.section	.rodata
.LC6:
	.string	"crypto_device"
	.text
	.globl	TS_CONF_set_crypto_device
	.type	TS_CONF_set_crypto_device, @function
TS_CONF_set_crypto_device:
.LFB642:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L51
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -40(%rbp)
.L51:
	cmpq	$0, -40(%rbp)
	je	.L52
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_CONF_set_default_engine@PLT
	testl	%eax, %eax
	jne	.L52
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L53
.L52:
	movl	$1, -4(%rbp)
.L53:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	TS_CONF_set_crypto_device, .-TS_CONF_set_crypto_device
	.section	.rodata
.LC7:
	.string	"builtin"
.LC8:
	.string	"chil"
.LC9:
	.string	"engine:%s"
	.text
	.globl	TS_CONF_set_default_engine
	.type	TS_CONF_set_default_engine, @function
TS_CONF_set_default_engine:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC7(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_by_id@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L63
	leaq	.LC8(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L60
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	ENGINE_ctrl@PLT
.L60:
	movq	-16(%rbp), %rax
	movl	$65535, %esi
	movq	%rax, %rdi
	call	ENGINE_set_default@PLT
	testl	%eax, %eax
	je	.L64
	movl	$1, -4(%rbp)
	jmp	.L59
.L63:
	nop
	jmp	.L59
.L64:
	nop
.L59:
	cmpl	$0, -4(%rbp)
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	movl	$127, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L62:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movl	-4(%rbp), %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	TS_CONF_set_default_engine, .-TS_CONF_set_default_engine
	.section	.rodata
.LC10:
	.string	"signer_cert"
	.text
	.globl	TS_CONF_set_signer_cert
	.type	TS_CONF_set_signer_cert, @function
TS_CONF_set_signer_cert:
.LFB644:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L66
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L66
	leaq	.LC10(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_lookup_fail
	jmp	.L67
.L66:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_CONF_load_cert@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L71
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_signer_cert@PLT
	testl	%eax, %eax
	je	.L72
	movl	$1, -4(%rbp)
	jmp	.L67
.L71:
	nop
	jmp	.L67
.L72:
	nop
.L67:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	TS_CONF_set_signer_cert, .-TS_CONF_set_signer_cert
	.section	.rodata
.LC11:
	.string	"certs"
	.text
	.globl	TS_CONF_set_certs
	.type	TS_CONF_set_certs, @function
TS_CONF_set_certs:
.LFB645:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L74
	leaq	.LC11(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L79
.L74:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	TS_CONF_load_certs@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L80
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_certs@PLT
	testl	%eax, %eax
	je	.L81
	jmp	.L75
.L79:
	nop
.L75:
	movl	$1, -4(%rbp)
	jmp	.L77
.L80:
	nop
	jmp	.L77
.L81:
	nop
.L77:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	TS_CONF_set_certs, .-TS_CONF_set_certs
	.section	.rodata
.LC12:
	.string	"signer_key"
	.text
	.globl	TS_CONF_set_signer_key
	.type	TS_CONF_set_signer_key, @function
TS_CONF_set_signer_key:
.LFB646:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L83
	leaq	.LC12(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -40(%rbp)
.L83:
	cmpq	$0, -40(%rbp)
	jne	.L84
	leaq	.LC12(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_lookup_fail
	jmp	.L85
.L84:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_CONF_load_key@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L89
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_signer_key@PLT
	testl	%eax, %eax
	je	.L90
	movl	$1, -4(%rbp)
	jmp	.L85
.L89:
	nop
	jmp	.L85
.L90:
	nop
.L85:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	TS_CONF_set_signer_key, .-TS_CONF_set_signer_key
	.section	.rodata
.LC13:
	.string	"signer_digest"
	.text
	.globl	TS_CONF_set_signer_digest
	.type	TS_CONF_set_signer_digest, @function
TS_CONF_set_signer_digest:
.LFB647:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L92
	leaq	.LC13(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -40(%rbp)
.L92:
	cmpq	$0, -40(%rbp)
	jne	.L93
	leaq	.LC13(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_lookup_fail
	jmp	.L94
.L93:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L95
	leaq	.LC13(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L94
.L95:
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_signer_digest@PLT
	testl	%eax, %eax
	je	.L98
	movl	$1, -4(%rbp)
	jmp	.L94
.L98:
	nop
.L94:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	TS_CONF_set_signer_digest, .-TS_CONF_set_signer_digest
	.section	.rodata
.LC14:
	.string	"default_policy"
	.text
	.globl	TS_CONF_set_def_policy
	.type	TS_CONF_set_def_policy, @function
TS_CONF_set_def_policy:
.LFB648:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L100
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -40(%rbp)
.L100:
	cmpq	$0, -40(%rbp)
	jne	.L101
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_lookup_fail
	jmp	.L102
.L101:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L103
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L102
.L103:
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_def_policy@PLT
	testl	%eax, %eax
	je	.L106
	movl	$1, -4(%rbp)
	jmp	.L102
.L106:
	nop
.L102:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	TS_CONF_set_def_policy, .-TS_CONF_set_def_policy
	.section	.rodata
.LC15:
	.string	"other_policies"
	.text
	.globl	TS_CONF_set_policies
	.type	TS_CONF_set_policies, @function
TS_CONF_set_policies:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC15(%rip), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L108
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L108
	leaq	.LC15(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L109
.L108:
	movl	$0, -24(%rbp)
	jmp	.L110
.L115:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L112
.L111:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.L112:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L113
	leaq	.LC15(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L109
.L113:
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_policy@PLT
	testl	%eax, %eax
	je	.L117
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	addl	$1, -24(%rbp)
.L110:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L115
	movl	$1, -20(%rbp)
	jmp	.L109
.L117:
	nop
.L109:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	TS_CONF_set_policies, .-TS_CONF_set_policies
	.section	.rodata
.LC16:
	.string	"digests"
	.text
	.globl	TS_CONF_set_digests
	.type	TS_CONF_set_digests, @function
TS_CONF_set_digests:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC16(%rip), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L119
	leaq	.LC16(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_lookup_fail
	jmp	.L120
.L119:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L121
	leaq	.LC16(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L120
.L121:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L122
	leaq	.LC16(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L120
.L122:
	movl	$0, -24(%rbp)
	jmp	.L123
.L128:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L125
.L124:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.L125:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L126
	leaq	.LC16(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L120
.L126:
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_md@PLT
	testl	%eax, %eax
	je	.L130
	addl	$1, -24(%rbp)
.L123:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L128
	movl	$1, -20(%rbp)
	jmp	.L120
.L130:
	nop
.L120:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	TS_CONF_set_digests, .-TS_CONF_set_digests
	.section	.rodata
.LC17:
	.string	"accuracy"
.LC18:
	.string	"secs"
.LC19:
	.string	"millisecs"
.LC20:
	.string	"microsecs"
	.text
	.globl	TS_CONF_set_accuracy
	.type	TS_CONF_set_accuracy, @function
TS_CONF_set_accuracy:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	leaq	.LC17(%rip), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L132
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L132
	leaq	.LC17(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L133
.L132:
	movl	$0, -24(%rbp)
	jmp	.L134
.L139:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L135
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -28(%rbp)
	jmp	.L136
.L135:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L137
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -32(%rbp)
	jmp	.L136
.L137:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L138
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -36(%rbp)
	jmp	.L136
.L138:
	leaq	.LC17(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L133
.L136:
	addl	$1, -24(%rbp)
.L134:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L139
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_accuracy@PLT
	testl	%eax, %eax
	je	.L142
	movl	$1, -20(%rbp)
	jmp	.L133
.L142:
	nop
.L133:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	TS_CONF_set_accuracy, .-TS_CONF_set_accuracy
	.section	.rodata
.LC21:
	.string	"clock_precision_digits"
	.text
	.globl	TS_CONF_set_clock_precision_digits
	.type	TS_CONF_set_clock_precision_digits, @function
TS_CONF_set_clock_precision_digits:
.LFB652:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC21(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_CONF_get_number@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L144
	cmpq	$6, -16(%rbp)
	jle	.L145
.L144:
	leaq	.LC21(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L146
.L145:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_clock_precision_digits@PLT
	testl	%eax, %eax
	je	.L149
	movl	$1, %eax
	jmp	.L148
.L149:
	nop
.L146:
	movl	-4(%rbp), %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	TS_CONF_set_clock_precision_digits, .-TS_CONF_set_clock_precision_digits
	.section	.rodata
.LC22:
	.string	"yes"
.LC23:
	.string	"no"
	.text
	.type	ts_CONF_add_flag, @function
ts_CONF_add_flag:
.LFB653:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L151
	leaq	.LC22(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L152
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	TS_RESP_CTX_add_flags@PLT
	jmp	.L151
.L152:
	leaq	.LC23(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L151
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	movl	$0, %eax
	jmp	.L153
.L151:
	movl	$1, %eax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	ts_CONF_add_flag, .-ts_CONF_add_flag
	.section	.rodata
.LC24:
	.string	"ordering"
	.text
	.globl	TS_CONF_set_ordering
	.type	TS_CONF_set_ordering, @function
TS_CONF_set_ordering:
.LFB654:
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
	leaq	.LC24(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ts_CONF_add_flag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	TS_CONF_set_ordering, .-TS_CONF_set_ordering
	.section	.rodata
.LC25:
	.string	"tsa_name"
	.text
	.globl	TS_CONF_set_tsa_name
	.type	TS_CONF_set_tsa_name, @function
TS_CONF_set_tsa_name:
.LFB655:
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
	leaq	.LC25(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ts_CONF_add_flag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	TS_CONF_set_tsa_name, .-TS_CONF_set_tsa_name
	.section	.rodata
.LC26:
	.string	"ess_cert_id_chain"
	.text
	.globl	TS_CONF_set_ess_cert_id_chain
	.type	TS_CONF_set_ess_cert_id_chain, @function
TS_CONF_set_ess_cert_id_chain:
.LFB656:
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
	leaq	.LC26(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$4, %ecx
	movq	%rax, %rdi
	call	ts_CONF_add_flag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	TS_CONF_set_ess_cert_id_chain, .-TS_CONF_set_ess_cert_id_chain
	.section	.rodata
.LC27:
	.string	"ess_cert_id_alg"
.LC28:
	.string	"sha256"
	.text
	.globl	TS_CONF_set_ess_cert_id_digest
	.type	TS_CONF_set_ess_cert_id_digest, @function
TS_CONF_set_ess_cert_id_digest:
.LFB657:
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
	movq	$0, -24(%rbp)
	leaq	.LC27(%rip), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L161
	leaq	.LC28(%rip), %rax
	movq	%rax, -16(%rbp)
.L161:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L162
	leaq	.LC27(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_CONF_invalid
	jmp	.L163
.L162:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_RESP_CTX_set_ess_cert_id_digest@PLT
	testl	%eax, %eax
	je	.L166
	movl	$1, -4(%rbp)
	jmp	.L163
.L166:
	nop
.L163:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	TS_CONF_set_ess_cert_id_digest, .-TS_CONF_set_ess_cert_id_digest
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 18
__func__.5:
	.string	"TS_CONF_load_cert"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"TS_CONF_load_certs"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"TS_CONF_load_key"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"ts_CONF_lookup_fail"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"ts_CONF_invalid"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"TS_CONF_set_default_engine"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
