	.file	"ssl_asn1.c"
	.text
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB577:
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
.LFE577:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB578:
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
.LFE578:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_to_time_t, @function
ossl_time_to_time_t:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	ossl_time_to_time_t, .-ossl_time_to_time_t
	.type	ossl_time_from_time_t, @function
ossl_time_from_time_t:
.LFB584:
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
	imulq	$1000000000, %rax, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	ossl_time_from_time_t, .-ossl_time_from_time_t
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"version"
.LC1:
	.string	"ssl_version"
.LC2:
	.string	"cipher"
.LC3:
	.string	"session_id"
.LC4:
	.string	"master_key"
.LC5:
	.string	"key_arg"
.LC6:
	.string	"time"
.LC7:
	.string	"timeout"
.LC8:
	.string	"peer"
.LC9:
	.string	"session_id_context"
.LC10:
	.string	"verify_result"
.LC11:
	.string	"tlsext_hostname"
.LC12:
	.string	"psk_identity_hint"
.LC13:
	.string	"psk_identity"
.LC14:
	.string	"tlsext_tick_lifetime_hint"
.LC15:
	.string	"tlsext_tick"
.LC16:
	.string	"comp_id"
.LC17:
	.string	"srp_username"
.LC18:
	.string	"flags"
.LC19:
	.string	"tlsext_tick_age_add"
.LC20:
	.string	"max_early_data"
.LC21:
	.string	"alpn_selected"
.LC22:
	.string	"tlsext_max_fragment_len_mode"
.LC23:
	.string	"ticket_appdata"
.LC24:
	.string	"kex_group"
.LC25:
	.string	"peer_rpk"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	SSL_SESSION_ASN1_seq_tt, @object
	.size	SSL_SESSION_ASN1_seq_tt, 1040
SSL_SESSION_ASN1_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	UINT32_it
	.quad	4096
	.quad	0
	.quad	4
	.quad	.LC1
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC2
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	32
	.quad	.LC3
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC4
	.quad	ASN1_OCTET_STRING_it
	.quad	137
	.quad	0
	.quad	40
	.quad	.LC5
	.quad	ASN1_OCTET_STRING_it
	.quad	4241
	.quad	1
	.quad	48
	.quad	.LC6
	.quad	ZINT64_it
	.quad	4241
	.quad	2
	.quad	56
	.quad	.LC7
	.quad	ZINT64_it
	.quad	145
	.quad	3
	.quad	64
	.quad	.LC8
	.quad	X509_it
	.quad	145
	.quad	4
	.quad	72
	.quad	.LC9
	.quad	ASN1_OCTET_STRING_it
	.quad	4241
	.quad	5
	.quad	80
	.quad	.LC10
	.quad	ZINT32_it
	.quad	145
	.quad	6
	.quad	88
	.quad	.LC11
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	7
	.quad	120
	.quad	.LC12
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	8
	.quad	128
	.quad	.LC13
	.quad	ASN1_OCTET_STRING_it
	.quad	4241
	.quad	9
	.quad	96
	.quad	.LC14
	.quad	ZUINT64_it
	.quad	145
	.quad	10
	.quad	112
	.quad	.LC15
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	11
	.quad	16
	.quad	.LC16
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	12
	.quad	136
	.quad	.LC17
	.quad	ASN1_OCTET_STRING_it
	.quad	4241
	.quad	13
	.quad	144
	.quad	.LC18
	.quad	ZUINT64_it
	.quad	4241
	.quad	14
	.quad	104
	.quad	.LC19
	.quad	ZUINT32_it
	.quad	4241
	.quad	15
	.quad	152
	.quad	.LC20
	.quad	ZUINT32_it
	.quad	145
	.quad	16
	.quad	160
	.quad	.LC21
	.quad	ASN1_OCTET_STRING_it
	.quad	4241
	.quad	17
	.quad	168
	.quad	.LC22
	.quad	ZUINT32_it
	.quad	145
	.quad	18
	.quad	176
	.quad	.LC23
	.quad	ASN1_OCTET_STRING_it
	.quad	4241
	.quad	19
	.quad	184
	.quad	.LC24
	.quad	UINT32_it
	.quad	145
	.quad	20
	.quad	192
	.quad	.LC25
	.quad	ASN1_OCTET_STRING_it
	.text
	.type	SSL_SESSION_ASN1_it, @function
SSL_SESSION_ASN1_it:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	SSL_SESSION_ASN1_it, .-SSL_SESSION_ASN1_it
	.type	d2i_SSL_SESSION_ASN1, @function
d2i_SSL_SESSION_ASN1:
.LFB736:
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
	call	SSL_SESSION_ASN1_it
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	d2i_SSL_SESSION_ASN1, .-d2i_SSL_SESSION_ASN1
	.type	i2d_SSL_SESSION_ASN1, @function
i2d_SSL_SESSION_ASN1:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	SSL_SESSION_ASN1_it
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	i2d_SSL_SESSION_ASN1, .-i2d_SSL_SESSION_ASN1
	.type	ssl_session_oinit, @function
ssl_session_oinit:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ssl_session_oinit, .-ssl_session_oinit
	.type	ssl_session_sinit, @function
ssl_session_sinit:
.LFB739:
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
	cmpq	$0, -24(%rbp)
	je	.L29
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_session_oinit
	jmp	.L31
.L29:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L31:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	ssl_session_sinit, .-ssl_session_sinit
	.section	.rodata
.LC26:
	.string	"../ssl/ssl_asn1.c"
	.text
	.globl	i2d_SSL_SESSION
	.type	i2d_SSL_SESSION, @function
i2d_SSL_SESSION:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$656, %rsp
	movq	%rdi, -648(%rbp)
	movq	%rsi, -656(%rbp)
	cmpq	$0, -648(%rbp)
	je	.L33
	movq	-648(%rbp), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	movq	-648(%rbp), %rax
	movq	768(%rax), %rax
	testq	%rax, %rax
	jne	.L34
.L33:
	movl	$0, %eax
	jmp	.L46
.L34:
	leaq	-224(%rbp), %rax
	movl	$200, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -224(%rbp)
	movq	-648(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -220(%rbp)
	movq	-648(%rbp), %rax
	movl	776(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-648(%rbp), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movq	-648(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L37
.L36:
	movq	-648(%rbp), %rax
	movq	760(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
.L37:
	movq	-8(%rbp), %rax
	sarq	$8, %rax
	movb	%al, -258(%rbp)
	movq	-8(%rbp), %rax
	movb	%al, -257(%rbp)
	leaq	-258(%rbp), %rdx
	leaq	-256(%rbp), %rax
	leaq	-224(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movl	$2, %ecx
	movq	%rax, %rsi
	call	ssl_session_oinit
	movq	-648(%rbp), %rax
	movl	752(%rax), %eax
	testl	%eax, %eax
	je	.L38
	movq	-648(%rbp), %rax
	movl	752(%rax), %eax
	movb	%al, -385(%rbp)
	leaq	-385(%rbp), %rdx
	leaq	-384(%rbp), %rax
	leaq	-224(%rbp), %rcx
	leaq	16(%rcx), %rdi
	movl	$1, %ecx
	movq	%rax, %rsi
	call	ssl_session_oinit
.L38:
	movq	-648(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-648(%rbp), %rax
	leaq	80(%rax), %rsi
	leaq	-288(%rbp), %rax
	leaq	-224(%rbp), %rcx
	leaq	24(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	ssl_session_oinit
	movq	-648(%rbp), %rax
	movq	592(%rax), %rdx
	movq	-648(%rbp), %rax
	leaq	600(%rax), %rsi
	leaq	-320(%rbp), %rax
	leaq	-224(%rbp), %rcx
	leaq	32(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	ssl_session_oinit
	movq	-648(%rbp), %rax
	movq	632(%rax), %rdx
	movq	-648(%rbp), %rax
	leaq	640(%rax), %rsi
	leaq	-352(%rbp), %rax
	leaq	-224(%rbp), %rcx
	leaq	72(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	ssl_session_oinit
	movq	-648(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_to_time_t
	movq	%rax, -176(%rbp)
	movq	-648(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, -168(%rbp)
	movq	-648(%rbp), %rax
	movq	720(%rax), %rax
	movl	%eax, -144(%rbp)
	movq	-648(%rbp), %rax
	movq	704(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -632(%rbp)
	movq	-648(%rbp), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-648(%rbp), %rax
	movq	696(%rax), %rax
	leaq	-640(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -640(%rbp)
	movl	-640(%rbp), %eax
	testl	%eax, %eax
	jle	.L39
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	je	.L39
	leaq	-640(%rbp), %rax
	movq	%rax, -32(%rbp)
.L39:
	movq	-648(%rbp), %rax
	movq	800(%rax), %rdx
	leaq	-416(%rbp), %rax
	leaq	-224(%rbp), %rcx
	addq	$88, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ssl_session_sinit
	movq	-648(%rbp), %rax
	movq	808(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-648(%rbp), %rax
	movq	816(%rax), %rcx
	movq	-648(%rbp), %rax
	movq	808(%rax), %rdx
	leaq	-448(%rbp), %rax
	leaq	-224(%rbp), %rsi
	leaq	112(%rsi), %rdi
	movq	%rax, %rsi
	call	ssl_session_oinit
.L40:
	movq	-648(%rbp), %rax
	movq	824(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-648(%rbp), %rax
	movq	824(%rax), %rax
	movq	%rax, -128(%rbp)
.L41:
	movq	-648(%rbp), %rax
	movl	832(%rax), %eax
	movl	%eax, -120(%rbp)
	movq	-648(%rbp), %rax
	movq	672(%rax), %rdx
	leaq	-544(%rbp), %rax
	leaq	-224(%rbp), %rcx
	addq	$120, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ssl_session_sinit
	movq	-648(%rbp), %rax
	movq	680(%rax), %rdx
	leaq	-512(%rbp), %rax
	leaq	-224(%rbp), %rcx
	subq	$-128, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ssl_session_sinit
	movq	-648(%rbp), %rax
	movq	864(%rax), %rdx
	leaq	-480(%rbp), %rax
	leaq	-224(%rbp), %rcx
	addq	$136, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ssl_session_sinit
	movq	-648(%rbp), %rax
	movl	888(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -80(%rbp)
	movq	-648(%rbp), %rax
	movl	836(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-648(%rbp), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	jne	.L42
	movq	$0, -64(%rbp)
	jmp	.L43
.L42:
	movq	-648(%rbp), %rax
	movq	848(%rax), %rcx
	movq	-648(%rbp), %rax
	movq	840(%rax), %rdx
	leaq	-576(%rbp), %rax
	leaq	-224(%rbp), %rsi
	leaq	160(%rsi), %rdi
	movq	%rax, %rsi
	call	ssl_session_oinit
.L43:
	movq	-648(%rbp), %rax
	movzbl	856(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	movq	-648(%rbp), %rax
	movq	872(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movq	$0, -48(%rbp)
	jmp	.L45
.L44:
	movq	-648(%rbp), %rax
	movq	880(%rax), %rcx
	movq	-648(%rbp), %rax
	movq	872(%rax), %rdx
	leaq	-608(%rbp), %rax
	leaq	-224(%rbp), %rsi
	leaq	176(%rsi), %rdi
	movq	%rax, %rsi
	call	ssl_session_oinit
.L45:
	movq	-656(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_SSL_SESSION_ASN1
	movl	%eax, -12(%rbp)
	movq	-632(%rbp), %rax
	leaq	.LC26(%rip), %rcx
	movl	$221, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	i2d_SSL_SESSION, .-i2d_SSL_SESSION
	.type	ssl_session_strndup, @function
ssl_session_strndup:
.LFB741:
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
	leaq	.LC26(%rip), %rcx
	movl	$231, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -16(%rbp)
	jne	.L48
	movl	$1, %eax
	jmp	.L49
.L48:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC26(%rip), %rdx
	movl	$235, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L50
	movl	$0, %eax
	jmp	.L49
.L50:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	ssl_session_strndup, .-ssl_session_strndup
	.type	ssl_session_memcpy, @function
ssl_session_memcpy:
.LFB742:
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
	movq	%rcx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L52
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L53
.L52:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L54
.L53:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L55
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	-32(%rbp), %rdx
	cmpl	%edx, %eax
	jle	.L56
.L55:
	movl	$0, %eax
	jmp	.L54
.L56:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	ssl_session_memcpy, .-ssl_session_memcpy
	.globl	d2i_SSL_SESSION
	.type	d2i_SSL_SESSION, @function
d2i_SSL_SESSION:
.LFB743:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	d2i_SSL_SESSION_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	d2i_SSL_SESSION, .-d2i_SSL_SESSION
	.globl	d2i_SSL_SESSION_ex
	.type	d2i_SSL_SESSION_ex, @function
d2i_SSL_SESSION_ex:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-88(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_SSL_SESSION_ASN1
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L97
	cmpq	$0, -72(%rbp)
	je	.L62
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L63
.L62:
	call	SSL_SESSION_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L65
	jmp	.L61
.L63:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L65:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L66
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC26(%rip), %rax
	movl	$286, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$254, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L66:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	sarl	$8, %eax
	cmpl	$3, %eax
	je	.L67
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	sarl	$8, %eax
	cmpl	$254, %eax
	je	.L67
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$256, %eax
	je	.L67
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC26(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$259, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L67:
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	184(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 776(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L68
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC26(%rip), %rax
	movl	$302, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L68:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	orq	$50331648, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 768(%rax)
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	call	ssl3_get_cipher_by_id@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 760(%rdx)
	movq	-24(%rbp), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	592(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	600(%rdx), %rdi
	movl	$32, %ecx
	movq	%rax, %rdx
	call	ssl_session_memcpy
	testl	%eax, %eax
	je	.L99
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	80(%rax), %rdi
	leaq	-48(%rbp), %rax
	movl	$512, %ecx
	movq	%rax, %rsi
	call	ssl_session_memcpy
	testl	%eax, %eax
	je	.L100
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rbx
	movq	%rax, %rdi
	call	ossl_time_from_time_t
	movq	%rax, 736(%rbx)
	jmp	.L73
.L72:
	movq	-24(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 736(%rbx)
.L73:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	imulq	$1000000000, %rax, %rax
	movq	-24(%rbp), %rbx
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, 728(%rbx)
	jmp	.L75
.L74:
	movq	-24(%rbp), %rbx
	movl	$3000000000, %eax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, 728(%rbx)
.L75:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 704(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	696(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 696(%rax)
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PUBKEY_ex@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 696(%rdx)
	movq	-24(%rbp), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L101
.L76:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	632(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	640(%rdx), %rdi
	movl	$32, %ecx
	movq	%rax, %rdx
	call	ssl_session_memcpy
	testl	%eax, %eax
	je	.L102
	movq	-32(%rbp), %rax
	movl	80(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 720(%rax)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$800, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ssl_session_strndup
	testl	%eax, %eax
	je	.L103
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$672, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ssl_session_strndup
	testl	%eax, %eax
	je	.L104
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$680, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ssl_session_strndup
	testl	%eax, %eax
	je	.L105
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 824(%rax)
	movq	-32(%rbp), %rax
	movl	104(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 832(%rax)
	movq	-24(%rbp), %rax
	movq	808(%rax), %rax
	leaq	.LC26(%rip), %rcx
	movl	$371, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 808(%rax)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 816(%rax)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	$0, 8(%rax)
	jmp	.L83
.L82:
	movq	-24(%rbp), %rax
	movq	$0, 808(%rax)
.L83:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L85
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC26(%rip), %rax
	movl	$382, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$271, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L85:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 752(%rax)
	jmp	.L86
.L84:
	movq	-24(%rbp), %rax
	movl	$0, 752(%rax)
.L86:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$864, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ssl_session_strndup
	testl	%eax, %eax
	je	.L106
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 888(%rax)
	movq	-32(%rbp), %rax
	movl	152(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 836(%rax)
	movq	-24(%rbp), %rax
	movq	840(%rax), %rax
	leaq	.LC26(%rip), %rcx
	movl	$399, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 840(%rax)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 848(%rax)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	$0, 8(%rax)
	jmp	.L89
.L88:
	movq	-24(%rbp), %rax
	movq	$0, 840(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 848(%rax)
.L89:
	movq	-32(%rbp), %rax
	movl	168(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 856(%rax)
	movq	-24(%rbp), %rax
	movq	872(%rax), %rax
	leaq	.LC26(%rip), %rcx
	movl	$411, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 872(%rax)
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 880(%rax)
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	$0, 8(%rax)
	jmp	.L91
.L90:
	movq	-24(%rbp), %rax
	movq	$0, 872(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 880(%rax)
.L91:
	call	SSL_SESSION_ASN1_it
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	cmpq	$0, -72(%rbp)
	je	.L92
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L92:
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L96
.L97:
	nop
	jmp	.L61
.L98:
	nop
	jmp	.L61
.L99:
	nop
	jmp	.L61
.L100:
	nop
	jmp	.L61
.L101:
	nop
	jmp	.L61
.L102:
	nop
	jmp	.L61
.L103:
	nop
	jmp	.L61
.L104:
	nop
	jmp	.L61
.L105:
	nop
	jmp	.L61
.L106:
	nop
.L61:
	call	SSL_SESSION_ASN1_it
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	cmpq	$0, -72(%rbp)
	je	.L94
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L95
.L94:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
.L95:
	movl	$0, %eax
.L96:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	d2i_SSL_SESSION_ex, .-d2i_SSL_SESSION_ex
	.section	.rodata
.LC27:
	.string	"SSL_SESSION_ASN1"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	SSL_SESSION_ASN1_seq_tt
	.quad	26
	.quad	0
	.quad	200
	.quad	.LC27
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"d2i_SSL_SESSION_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
