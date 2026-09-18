	.file	"t1_trce.c"
	.text
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
	.string	"UNKNOWN"
	.text
	.type	do_ssl_trace_str, @function
do_ssl_trace_str:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L14
.L17:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L15
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L16
.L15:
	addq	$1, -8(%rbp)
	addq	$16, -32(%rbp)
.L14:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L17
	leaq	.LC0(%rip), %rax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	do_ssl_trace_str, .-do_ssl_trace_str
	.section	.rodata
.LC1:
	.string	"%s (%d)\n"
	.text
	.type	do_ssl_trace_list, @function
do_ssl_trace_list:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	je	.L21
	movl	$0, %eax
	jmp	.L20
.L23:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpq	$2, -56(%rbp)
	jne	.L22
	movl	-4(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
.L22:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-4(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-56(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	subq	%rax, -48(%rbp)
.L21:
	cmpq	$0, -48(%rbp)
	jne	.L23
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	do_ssl_trace_list, .-do_ssl_trace_list
	.section	.rodata
.LC2:
	.string	"SSL 3.0"
.LC3:
	.string	"TLS 1.0"
.LC4:
	.string	"TLS 1.1"
.LC5:
	.string	"TLS 1.2"
.LC6:
	.string	"TLS 1.3"
.LC7:
	.string	"DTLS 1.0"
.LC8:
	.string	"DTLS 1.2"
.LC9:
	.string	"DTLS 1.0 (bad)"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ssl_version_tbl, @object
	.size	ssl_version_tbl, 128
ssl_version_tbl:
	.long	768
	.zero	4
	.quad	.LC2
	.long	769
	.zero	4
	.quad	.LC3
	.long	770
	.zero	4
	.quad	.LC4
	.long	771
	.zero	4
	.quad	.LC5
	.long	772
	.zero	4
	.quad	.LC6
	.long	65279
	.zero	4
	.quad	.LC7
	.long	65277
	.zero	4
	.quad	.LC8
	.long	256
	.zero	4
	.quad	.LC9
	.section	.rodata
.LC10:
	.string	"ChangeCipherSpec"
.LC11:
	.string	"Alert"
.LC12:
	.string	"Handshake"
.LC13:
	.string	"ApplicationData"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_content_tbl, @object
	.size	ssl_content_tbl, 64
ssl_content_tbl:
	.long	20
	.zero	4
	.quad	.LC10
	.long	21
	.zero	4
	.quad	.LC11
	.long	22
	.zero	4
	.quad	.LC12
	.long	23
	.zero	4
	.quad	.LC13
	.section	.rodata
.LC14:
	.string	"HelloRequest"
.LC15:
	.string	"ClientHello"
.LC16:
	.string	"ServerHello"
.LC17:
	.string	"HelloVerifyRequest"
.LC18:
	.string	"NewSessionTicket"
.LC19:
	.string	"EndOfEarlyData"
.LC20:
	.string	"EncryptedExtensions"
.LC21:
	.string	"Certificate"
.LC22:
	.string	"ServerKeyExchange"
.LC23:
	.string	"CertificateRequest"
.LC24:
	.string	"ServerHelloDone"
.LC25:
	.string	"CertificateVerify"
.LC26:
	.string	"ClientKeyExchange"
.LC27:
	.string	"Finished"
.LC28:
	.string	"CertificateUrl"
.LC29:
	.string	"CertificateStatus"
.LC30:
	.string	"SupplementalData"
.LC31:
	.string	"KeyUpdate"
.LC32:
	.string	"CompressedCertificate"
.LC33:
	.string	"NextProto"
.LC34:
	.string	"MessageHash"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_handshake_tbl, @object
	.size	ssl_handshake_tbl, 336
ssl_handshake_tbl:
	.long	0
	.zero	4
	.quad	.LC14
	.long	1
	.zero	4
	.quad	.LC15
	.long	2
	.zero	4
	.quad	.LC16
	.long	3
	.zero	4
	.quad	.LC17
	.long	4
	.zero	4
	.quad	.LC18
	.long	5
	.zero	4
	.quad	.LC19
	.long	8
	.zero	4
	.quad	.LC20
	.long	11
	.zero	4
	.quad	.LC21
	.long	12
	.zero	4
	.quad	.LC22
	.long	13
	.zero	4
	.quad	.LC23
	.long	14
	.zero	4
	.quad	.LC24
	.long	15
	.zero	4
	.quad	.LC25
	.long	16
	.zero	4
	.quad	.LC26
	.long	20
	.zero	4
	.quad	.LC27
	.long	21
	.zero	4
	.quad	.LC28
	.long	22
	.zero	4
	.quad	.LC29
	.long	23
	.zero	4
	.quad	.LC30
	.long	24
	.zero	4
	.quad	.LC31
	.long	25
	.zero	4
	.quad	.LC32
	.long	67
	.zero	4
	.quad	.LC33
	.long	254
	.zero	4
	.quad	.LC34
	.section	.rodata
.LC35:
	.string	"TLS_NULL_WITH_NULL_NULL"
.LC36:
	.string	"TLS_RSA_WITH_NULL_MD5"
.LC37:
	.string	"TLS_RSA_WITH_NULL_SHA"
	.align 8
.LC38:
	.string	"TLS_RSA_EXPORT_WITH_RC4_40_MD5"
.LC39:
	.string	"TLS_RSA_WITH_RC4_128_MD5"
.LC40:
	.string	"TLS_RSA_WITH_RC4_128_SHA"
	.align 8
.LC41:
	.string	"TLS_RSA_EXPORT_WITH_RC2_CBC_40_MD5"
.LC42:
	.string	"TLS_RSA_WITH_IDEA_CBC_SHA"
	.align 8
.LC43:
	.string	"TLS_RSA_EXPORT_WITH_DES40_CBC_SHA"
.LC44:
	.string	"TLS_RSA_WITH_DES_CBC_SHA"
.LC45:
	.string	"TLS_RSA_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC46:
	.string	"TLS_DH_DSS_EXPORT_WITH_DES40_CBC_SHA"
.LC47:
	.string	"TLS_DH_DSS_WITH_DES_CBC_SHA"
	.align 8
.LC48:
	.string	"TLS_DH_DSS_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC49:
	.string	"TLS_DH_RSA_EXPORT_WITH_DES40_CBC_SHA"
.LC50:
	.string	"TLS_DH_RSA_WITH_DES_CBC_SHA"
	.align 8
.LC51:
	.string	"TLS_DH_RSA_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC52:
	.string	"TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"
.LC53:
	.string	"TLS_DHE_DSS_WITH_DES_CBC_SHA"
	.align 8
.LC54:
	.string	"TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC55:
	.string	"TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"
.LC56:
	.string	"TLS_DHE_RSA_WITH_DES_CBC_SHA"
	.align 8
.LC57:
	.string	"TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC58:
	.string	"TLS_DH_anon_EXPORT_WITH_RC4_40_MD5"
.LC59:
	.string	"TLS_DH_anon_WITH_RC4_128_MD5"
	.align 8
.LC60:
	.string	"TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA"
.LC61:
	.string	"TLS_DH_anon_WITH_DES_CBC_SHA"
	.align 8
.LC62:
	.string	"TLS_DH_anon_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC63:
	.string	"SSL_FORTEZZA_KEA_WITH_FORTEZZA_CBC_SHA"
	.align 8
.LC64:
	.string	"SSL_FORTEZZA_KEA_WITH_RC4_128_SHA"
	.align 8
.LC65:
	.string	"TLS_KRB5_WITH_3DES_EDE_CBC_SHA"
.LC66:
	.string	"TLS_KRB5_WITH_RC4_128_SHA"
.LC67:
	.string	"TLS_KRB5_WITH_IDEA_CBC_SHA"
.LC68:
	.string	"TLS_KRB5_WITH_DES_CBC_MD5"
	.align 8
.LC69:
	.string	"TLS_KRB5_WITH_3DES_EDE_CBC_MD5"
.LC70:
	.string	"TLS_KRB5_WITH_RC4_128_MD5"
.LC71:
	.string	"TLS_KRB5_WITH_IDEA_CBC_MD5"
	.align 8
.LC72:
	.string	"TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"
	.align 8
.LC73:
	.string	"TLS_KRB5_EXPORT_WITH_RC2_CBC_40_SHA"
	.align 8
.LC74:
	.string	"TLS_KRB5_EXPORT_WITH_RC4_40_SHA"
	.align 8
.LC75:
	.string	"TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"
	.align 8
.LC76:
	.string	"TLS_KRB5_EXPORT_WITH_RC2_CBC_40_MD5"
	.align 8
.LC77:
	.string	"TLS_KRB5_EXPORT_WITH_RC4_40_MD5"
.LC78:
	.string	"TLS_PSK_WITH_NULL_SHA"
.LC79:
	.string	"TLS_DHE_PSK_WITH_NULL_SHA"
.LC80:
	.string	"TLS_RSA_PSK_WITH_NULL_SHA"
.LC81:
	.string	"TLS_RSA_WITH_AES_128_CBC_SHA"
	.align 8
.LC82:
	.string	"TLS_DH_DSS_WITH_AES_128_CBC_SHA"
	.align 8
.LC83:
	.string	"TLS_DH_RSA_WITH_AES_128_CBC_SHA"
	.align 8
.LC84:
	.string	"TLS_DHE_DSS_WITH_AES_128_CBC_SHA"
	.align 8
.LC85:
	.string	"TLS_DHE_RSA_WITH_AES_128_CBC_SHA"
	.align 8
.LC86:
	.string	"TLS_DH_anon_WITH_AES_128_CBC_SHA"
.LC87:
	.string	"TLS_RSA_WITH_AES_256_CBC_SHA"
	.align 8
.LC88:
	.string	"TLS_DH_DSS_WITH_AES_256_CBC_SHA"
	.align 8
.LC89:
	.string	"TLS_DH_RSA_WITH_AES_256_CBC_SHA"
	.align 8
.LC90:
	.string	"TLS_DHE_DSS_WITH_AES_256_CBC_SHA"
	.align 8
.LC91:
	.string	"TLS_DHE_RSA_WITH_AES_256_CBC_SHA"
	.align 8
.LC92:
	.string	"TLS_DH_anon_WITH_AES_256_CBC_SHA"
.LC93:
	.string	"TLS_RSA_WITH_NULL_SHA256"
	.align 8
.LC94:
	.string	"TLS_RSA_WITH_AES_128_CBC_SHA256"
	.align 8
.LC95:
	.string	"TLS_RSA_WITH_AES_256_CBC_SHA256"
	.align 8
.LC96:
	.string	"TLS_DH_DSS_WITH_AES_128_CBC_SHA256"
	.align 8
.LC97:
	.string	"TLS_DH_RSA_WITH_AES_128_CBC_SHA256"
	.align 8
.LC98:
	.string	"TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"
	.align 8
.LC99:
	.string	"TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"
	.align 8
.LC100:
	.string	"TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA"
	.align 8
.LC101:
	.string	"TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA"
	.align 8
.LC102:
	.string	"TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"
	.align 8
.LC103:
	.string	"TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"
	.align 8
.LC104:
	.string	"TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA"
	.align 8
.LC105:
	.string	"TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"
	.align 8
.LC106:
	.string	"TLS_DH_DSS_WITH_AES_256_CBC_SHA256"
	.align 8
.LC107:
	.string	"TLS_DH_RSA_WITH_AES_256_CBC_SHA256"
	.align 8
.LC108:
	.string	"TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"
	.align 8
.LC109:
	.string	"TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"
	.align 8
.LC110:
	.string	"TLS_DH_anon_WITH_AES_128_CBC_SHA256"
	.align 8
.LC111:
	.string	"TLS_DH_anon_WITH_AES_256_CBC_SHA256"
	.align 8
.LC112:
	.string	"TLS_GOSTR341001_WITH_28147_CNT_IMIT"
	.align 8
.LC113:
	.string	"TLS_GOSTR341001_WITH_NULL_GOSTR3411"
	.align 8
.LC114:
	.string	"TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"
	.align 8
.LC115:
	.string	"TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA"
	.align 8
.LC116:
	.string	"TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA"
	.align 8
.LC117:
	.string	"TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"
	.align 8
.LC118:
	.string	"TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"
	.align 8
.LC119:
	.string	"TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA"
.LC120:
	.string	"TLS_PSK_WITH_RC4_128_SHA"
.LC121:
	.string	"TLS_PSK_WITH_3DES_EDE_CBC_SHA"
.LC122:
	.string	"TLS_PSK_WITH_AES_128_CBC_SHA"
.LC123:
	.string	"TLS_PSK_WITH_AES_256_CBC_SHA"
.LC124:
	.string	"TLS_DHE_PSK_WITH_RC4_128_SHA"
	.align 8
.LC125:
	.string	"TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC126:
	.string	"TLS_DHE_PSK_WITH_AES_128_CBC_SHA"
	.align 8
.LC127:
	.string	"TLS_DHE_PSK_WITH_AES_256_CBC_SHA"
.LC128:
	.string	"TLS_RSA_PSK_WITH_RC4_128_SHA"
	.align 8
.LC129:
	.string	"TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC130:
	.string	"TLS_RSA_PSK_WITH_AES_128_CBC_SHA"
	.align 8
.LC131:
	.string	"TLS_RSA_PSK_WITH_AES_256_CBC_SHA"
.LC132:
	.string	"TLS_RSA_WITH_SEED_CBC_SHA"
.LC133:
	.string	"TLS_DH_DSS_WITH_SEED_CBC_SHA"
.LC134:
	.string	"TLS_DH_RSA_WITH_SEED_CBC_SHA"
.LC135:
	.string	"TLS_DHE_DSS_WITH_SEED_CBC_SHA"
.LC136:
	.string	"TLS_DHE_RSA_WITH_SEED_CBC_SHA"
.LC137:
	.string	"TLS_DH_anon_WITH_SEED_CBC_SHA"
	.align 8
.LC138:
	.string	"TLS_RSA_WITH_AES_128_GCM_SHA256"
	.align 8
.LC139:
	.string	"TLS_RSA_WITH_AES_256_GCM_SHA384"
	.align 8
.LC140:
	.string	"TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"
	.align 8
.LC141:
	.string	"TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"
	.align 8
.LC142:
	.string	"TLS_DH_RSA_WITH_AES_128_GCM_SHA256"
	.align 8
.LC143:
	.string	"TLS_DH_RSA_WITH_AES_256_GCM_SHA384"
	.align 8
.LC144:
	.string	"TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"
	.align 8
.LC145:
	.string	"TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"
	.align 8
.LC146:
	.string	"TLS_DH_DSS_WITH_AES_128_GCM_SHA256"
	.align 8
.LC147:
	.string	"TLS_DH_DSS_WITH_AES_256_GCM_SHA384"
	.align 8
.LC148:
	.string	"TLS_DH_anon_WITH_AES_128_GCM_SHA256"
	.align 8
.LC149:
	.string	"TLS_DH_anon_WITH_AES_256_GCM_SHA384"
	.align 8
.LC150:
	.string	"TLS_PSK_WITH_AES_128_GCM_SHA256"
	.align 8
.LC151:
	.string	"TLS_PSK_WITH_AES_256_GCM_SHA384"
	.align 8
.LC152:
	.string	"TLS_DHE_PSK_WITH_AES_128_GCM_SHA256"
	.align 8
.LC153:
	.string	"TLS_DHE_PSK_WITH_AES_256_GCM_SHA384"
	.align 8
.LC154:
	.string	"TLS_RSA_PSK_WITH_AES_128_GCM_SHA256"
	.align 8
.LC155:
	.string	"TLS_RSA_PSK_WITH_AES_256_GCM_SHA384"
	.align 8
.LC156:
	.string	"TLS_PSK_WITH_AES_128_CBC_SHA256"
	.align 8
.LC157:
	.string	"TLS_PSK_WITH_AES_256_CBC_SHA384"
.LC158:
	.string	"TLS_PSK_WITH_NULL_SHA256"
.LC159:
	.string	"TLS_PSK_WITH_NULL_SHA384"
	.align 8
.LC160:
	.string	"TLS_DHE_PSK_WITH_AES_128_CBC_SHA256"
	.align 8
.LC161:
	.string	"TLS_DHE_PSK_WITH_AES_256_CBC_SHA384"
.LC162:
	.string	"TLS_DHE_PSK_WITH_NULL_SHA256"
.LC163:
	.string	"TLS_DHE_PSK_WITH_NULL_SHA384"
	.align 8
.LC164:
	.string	"TLS_RSA_PSK_WITH_AES_128_CBC_SHA256"
	.align 8
.LC165:
	.string	"TLS_RSA_PSK_WITH_AES_256_CBC_SHA384"
.LC166:
	.string	"TLS_RSA_PSK_WITH_NULL_SHA256"
.LC167:
	.string	"TLS_RSA_PSK_WITH_NULL_SHA384"
	.align 8
.LC168:
	.string	"TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC169:
	.string	"TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC170:
	.string	"TLS_DH_RSA_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC171:
	.string	"TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC172:
	.string	"TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC173:
	.string	"TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC174:
	.string	"TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256"
	.align 8
.LC175:
	.string	"TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256"
	.align 8
.LC176:
	.string	"TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256"
	.align 8
.LC177:
	.string	"TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256"
	.align 8
.LC178:
	.string	"TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256"
	.align 8
.LC179:
	.string	"TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256"
	.align 8
.LC180:
	.string	"TLS_EMPTY_RENEGOTIATION_INFO_SCSV"
.LC181:
	.string	"TLS_FALLBACK_SCSV"
.LC182:
	.string	"TLS_ECDH_ECDSA_WITH_NULL_SHA"
	.align 8
.LC183:
	.string	"TLS_ECDH_ECDSA_WITH_RC4_128_SHA"
	.align 8
.LC184:
	.string	"TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC185:
	.string	"TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"
	.align 8
.LC186:
	.string	"TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"
.LC187:
	.string	"TLS_ECDHE_ECDSA_WITH_NULL_SHA"
	.align 8
.LC188:
	.string	"TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"
	.align 8
.LC189:
	.string	"TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC190:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"
	.align 8
.LC191:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"
.LC192:
	.string	"TLS_ECDH_RSA_WITH_NULL_SHA"
.LC193:
	.string	"TLS_ECDH_RSA_WITH_RC4_128_SHA"
	.align 8
.LC194:
	.string	"TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC195:
	.string	"TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"
	.align 8
.LC196:
	.string	"TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"
.LC197:
	.string	"TLS_ECDHE_RSA_WITH_NULL_SHA"
	.align 8
.LC198:
	.string	"TLS_ECDHE_RSA_WITH_RC4_128_SHA"
	.align 8
.LC199:
	.string	"TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC200:
	.string	"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"
	.align 8
.LC201:
	.string	"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"
.LC202:
	.string	"TLS_ECDH_anon_WITH_NULL_SHA"
	.align 8
.LC203:
	.string	"TLS_ECDH_anon_WITH_RC4_128_SHA"
	.align 8
.LC204:
	.string	"TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC205:
	.string	"TLS_ECDH_anon_WITH_AES_128_CBC_SHA"
	.align 8
.LC206:
	.string	"TLS_ECDH_anon_WITH_AES_256_CBC_SHA"
	.align 8
.LC207:
	.string	"TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC208:
	.string	"TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC209:
	.string	"TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC210:
	.string	"TLS_SRP_SHA_WITH_AES_128_CBC_SHA"
	.align 8
.LC211:
	.string	"TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA"
	.align 8
.LC212:
	.string	"TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA"
	.align 8
.LC213:
	.string	"TLS_SRP_SHA_WITH_AES_256_CBC_SHA"
	.align 8
.LC214:
	.string	"TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA"
	.align 8
.LC215:
	.string	"TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA"
	.align 8
.LC216:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"
	.align 8
.LC217:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"
	.align 8
.LC218:
	.string	"TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"
	.align 8
.LC219:
	.string	"TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"
	.align 8
.LC220:
	.string	"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"
	.align 8
.LC221:
	.string	"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"
	.align 8
.LC222:
	.string	"TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"
	.align 8
.LC223:
	.string	"TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"
	.align 8
.LC224:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"
	.align 8
.LC225:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"
	.align 8
.LC226:
	.string	"TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"
	.align 8
.LC227:
	.string	"TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"
	.align 8
.LC228:
	.string	"TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"
	.align 8
.LC229:
	.string	"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"
	.align 8
.LC230:
	.string	"TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"
	.align 8
.LC231:
	.string	"TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"
	.align 8
.LC232:
	.string	"TLS_ECDHE_PSK_WITH_RC4_128_SHA"
	.align 8
.LC233:
	.string	"TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC234:
	.string	"TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"
	.align 8
.LC235:
	.string	"TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"
	.align 8
.LC236:
	.string	"TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256"
	.align 8
.LC237:
	.string	"TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384"
.LC238:
	.string	"TLS_ECDHE_PSK_WITH_NULL_SHA"
	.align 8
.LC239:
	.string	"TLS_ECDHE_PSK_WITH_NULL_SHA256"
	.align 8
.LC240:
	.string	"TLS_ECDHE_PSK_WITH_NULL_SHA384"
	.align 8
.LC241:
	.string	"TLS_RSA_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC242:
	.string	"TLS_RSA_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC243:
	.string	"TLS_DH_DSS_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC244:
	.string	"TLS_DH_DSS_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC245:
	.string	"TLS_DH_RSA_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC246:
	.string	"TLS_DH_RSA_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC247:
	.string	"TLS_DHE_DSS_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC248:
	.string	"TLS_DHE_DSS_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC249:
	.string	"TLS_DHE_RSA_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC250:
	.string	"TLS_DHE_RSA_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC251:
	.string	"TLS_DH_anon_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC252:
	.string	"TLS_DH_anon_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC253:
	.string	"TLS_ECDHE_ECDSA_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC254:
	.string	"TLS_ECDHE_ECDSA_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC255:
	.string	"TLS_ECDH_ECDSA_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC256:
	.string	"TLS_ECDH_ECDSA_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC257:
	.string	"TLS_ECDHE_RSA_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC258:
	.string	"TLS_ECDHE_RSA_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC259:
	.string	"TLS_ECDH_RSA_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC260:
	.string	"TLS_ECDH_RSA_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC261:
	.string	"TLS_RSA_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC262:
	.string	"TLS_RSA_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC263:
	.string	"TLS_DHE_RSA_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC264:
	.string	"TLS_DHE_RSA_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC265:
	.string	"TLS_DH_RSA_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC266:
	.string	"TLS_DH_RSA_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC267:
	.string	"TLS_DHE_DSS_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC268:
	.string	"TLS_DHE_DSS_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC269:
	.string	"TLS_DH_DSS_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC270:
	.string	"TLS_DH_DSS_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC271:
	.string	"TLS_DH_anon_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC272:
	.string	"TLS_DH_anon_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC273:
	.string	"TLS_ECDHE_ECDSA_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC274:
	.string	"TLS_ECDHE_ECDSA_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC275:
	.string	"TLS_ECDH_ECDSA_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC276:
	.string	"TLS_ECDH_ECDSA_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC277:
	.string	"TLS_ECDHE_RSA_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC278:
	.string	"TLS_ECDHE_RSA_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC279:
	.string	"TLS_ECDH_RSA_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC280:
	.string	"TLS_ECDH_RSA_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC281:
	.string	"TLS_PSK_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC282:
	.string	"TLS_PSK_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC283:
	.string	"TLS_DHE_PSK_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC284:
	.string	"TLS_DHE_PSK_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC285:
	.string	"TLS_RSA_PSK_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC286:
	.string	"TLS_RSA_PSK_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC287:
	.string	"TLS_PSK_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC288:
	.string	"TLS_PSK_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC289:
	.string	"TLS_DHE_PSK_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC290:
	.string	"TLS_DHE_PSK_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC291:
	.string	"TLS_RSA_PSK_WITH_ARIA_128_GCM_SHA256"
	.align 8
.LC292:
	.string	"TLS_RSA_PSK_WITH_ARIA_256_GCM_SHA384"
	.align 8
.LC293:
	.string	"TLS_ECDHE_PSK_WITH_ARIA_128_CBC_SHA256"
	.align 8
.LC294:
	.string	"TLS_ECDHE_PSK_WITH_ARIA_256_CBC_SHA384"
	.align 8
.LC295:
	.string	"TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC296:
	.string	"TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_CBC_SHA384"
	.align 8
.LC297:
	.string	"TLS_ECDH_ECDSA_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC298:
	.string	"TLS_ECDH_ECDSA_WITH_CAMELLIA_256_CBC_SHA384"
	.align 8
.LC299:
	.string	"TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC300:
	.string	"TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384"
	.align 8
.LC301:
	.string	"TLS_ECDH_RSA_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC302:
	.string	"TLS_ECDH_RSA_WITH_CAMELLIA_256_CBC_SHA384"
	.align 8
.LC303:
	.string	"TLS_RSA_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC304:
	.string	"TLS_RSA_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC305:
	.string	"TLS_DHE_RSA_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC306:
	.string	"TLS_DHE_RSA_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC307:
	.string	"TLS_DH_RSA_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC308:
	.string	"TLS_DH_RSA_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC309:
	.string	"TLS_DHE_DSS_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC310:
	.string	"TLS_DHE_DSS_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC311:
	.string	"TLS_DH_DSS_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC312:
	.string	"TLS_DH_DSS_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC313:
	.string	"TLS_DH_anon_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC314:
	.string	"TLS_DH_anon_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC315:
	.string	"TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC316:
	.string	"TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC317:
	.string	"TLS_ECDH_ECDSA_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC318:
	.string	"TLS_ECDH_ECDSA_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC319:
	.string	"TLS_ECDHE_RSA_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC320:
	.string	"TLS_ECDHE_RSA_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC321:
	.string	"TLS_ECDH_RSA_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC322:
	.string	"TLS_ECDH_RSA_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC323:
	.string	"TLS_PSK_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC324:
	.string	"TLS_PSK_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC325:
	.string	"TLS_DHE_PSK_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC326:
	.string	"TLS_DHE_PSK_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC327:
	.string	"TLS_RSA_PSK_WITH_CAMELLIA_128_GCM_SHA256"
	.align 8
.LC328:
	.string	"TLS_RSA_PSK_WITH_CAMELLIA_256_GCM_SHA384"
	.align 8
.LC329:
	.string	"TLS_PSK_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC330:
	.string	"TLS_PSK_WITH_CAMELLIA_256_CBC_SHA384"
	.align 8
.LC331:
	.string	"TLS_DHE_PSK_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC332:
	.string	"TLS_DHE_PSK_WITH_CAMELLIA_256_CBC_SHA384"
	.align 8
.LC333:
	.string	"TLS_RSA_PSK_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC334:
	.string	"TLS_RSA_PSK_WITH_CAMELLIA_256_CBC_SHA384"
	.align 8
.LC335:
	.string	"TLS_ECDHE_PSK_WITH_CAMELLIA_128_CBC_SHA256"
	.align 8
.LC336:
	.string	"TLS_ECDHE_PSK_WITH_CAMELLIA_256_CBC_SHA384"
.LC337:
	.string	"TLS_RSA_WITH_AES_128_CCM"
.LC338:
	.string	"TLS_RSA_WITH_AES_256_CCM"
.LC339:
	.string	"TLS_DHE_RSA_WITH_AES_128_CCM"
.LC340:
	.string	"TLS_DHE_RSA_WITH_AES_256_CCM"
.LC341:
	.string	"TLS_RSA_WITH_AES_128_CCM_8"
.LC342:
	.string	"TLS_RSA_WITH_AES_256_CCM_8"
	.align 8
.LC343:
	.string	"TLS_DHE_RSA_WITH_AES_128_CCM_8"
	.align 8
.LC344:
	.string	"TLS_DHE_RSA_WITH_AES_256_CCM_8"
.LC345:
	.string	"TLS_PSK_WITH_AES_128_CCM"
.LC346:
	.string	"TLS_PSK_WITH_AES_256_CCM"
.LC347:
	.string	"TLS_DHE_PSK_WITH_AES_128_CCM"
.LC348:
	.string	"TLS_DHE_PSK_WITH_AES_256_CCM"
.LC349:
	.string	"TLS_PSK_WITH_AES_128_CCM_8"
.LC350:
	.string	"TLS_PSK_WITH_AES_256_CCM_8"
	.align 8
.LC351:
	.string	"TLS_PSK_DHE_WITH_AES_128_CCM_8"
	.align 8
.LC352:
	.string	"TLS_PSK_DHE_WITH_AES_256_CCM_8"
	.align 8
.LC353:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_128_CCM"
	.align 8
.LC354:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_256_CCM"
	.align 8
.LC355:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8"
	.align 8
.LC356:
	.string	"TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8"
	.align 8
.LC357:
	.string	"IANA-GOST2012-GOST8912-GOST8912"
	.align 8
.LC358:
	.string	"TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"
	.align 8
.LC359:
	.string	"TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"
	.align 8
.LC360:
	.string	"TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"
	.align 8
.LC361:
	.string	"TLS_PSK_WITH_CHACHA20_POLY1305_SHA256"
	.align 8
.LC362:
	.string	"TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"
	.align 8
.LC363:
	.string	"TLS_DHE_PSK_WITH_CHACHA20_POLY1305_SHA256"
	.align 8
.LC364:
	.string	"TLS_RSA_PSK_WITH_CHACHA20_POLY1305_SHA256"
.LC365:
	.string	"TLS_AES_128_GCM_SHA256"
.LC366:
	.string	"TLS_AES_256_GCM_SHA384"
.LC367:
	.string	"TLS_CHACHA20_POLY1305_SHA256"
.LC368:
	.string	"TLS_AES_128_CCM_SHA256"
.LC369:
	.string	"TLS_AES_128_CCM_8_SHA256"
.LC370:
	.string	"SSL_RSA_FIPS_WITH_DES_CBC_SHA"
	.align 8
.LC371:
	.string	"SSL_RSA_FIPS_WITH_3DES_EDE_CBC_SHA"
	.align 8
.LC372:
	.string	"LEGACY-GOST2012-GOST8912-GOST8912"
.LC373:
	.string	"GOST2012-NULL-GOST12"
	.align 8
.LC374:
	.string	"GOST2012-KUZNYECHIK-KUZNYECHIKOMAC"
.LC375:
	.string	"GOST2012-MAGMA-MAGMAOMAC"
.LC376:
	.string	"GOST2012-GOST8912-IANA"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_ciphers_tbl, @object
	.size	ssl_ciphers_tbl, 5472
ssl_ciphers_tbl:
	.long	0
	.zero	4
	.quad	.LC35
	.long	1
	.zero	4
	.quad	.LC36
	.long	2
	.zero	4
	.quad	.LC37
	.long	3
	.zero	4
	.quad	.LC38
	.long	4
	.zero	4
	.quad	.LC39
	.long	5
	.zero	4
	.quad	.LC40
	.long	6
	.zero	4
	.quad	.LC41
	.long	7
	.zero	4
	.quad	.LC42
	.long	8
	.zero	4
	.quad	.LC43
	.long	9
	.zero	4
	.quad	.LC44
	.long	10
	.zero	4
	.quad	.LC45
	.long	11
	.zero	4
	.quad	.LC46
	.long	12
	.zero	4
	.quad	.LC47
	.long	13
	.zero	4
	.quad	.LC48
	.long	14
	.zero	4
	.quad	.LC49
	.long	15
	.zero	4
	.quad	.LC50
	.long	16
	.zero	4
	.quad	.LC51
	.long	17
	.zero	4
	.quad	.LC52
	.long	18
	.zero	4
	.quad	.LC53
	.long	19
	.zero	4
	.quad	.LC54
	.long	20
	.zero	4
	.quad	.LC55
	.long	21
	.zero	4
	.quad	.LC56
	.long	22
	.zero	4
	.quad	.LC57
	.long	23
	.zero	4
	.quad	.LC58
	.long	24
	.zero	4
	.quad	.LC59
	.long	25
	.zero	4
	.quad	.LC60
	.long	26
	.zero	4
	.quad	.LC61
	.long	27
	.zero	4
	.quad	.LC62
	.long	29
	.zero	4
	.quad	.LC63
	.long	30
	.zero	4
	.quad	.LC64
	.long	31
	.zero	4
	.quad	.LC65
	.long	32
	.zero	4
	.quad	.LC66
	.long	33
	.zero	4
	.quad	.LC67
	.long	34
	.zero	4
	.quad	.LC68
	.long	35
	.zero	4
	.quad	.LC69
	.long	36
	.zero	4
	.quad	.LC70
	.long	37
	.zero	4
	.quad	.LC71
	.long	38
	.zero	4
	.quad	.LC72
	.long	39
	.zero	4
	.quad	.LC73
	.long	40
	.zero	4
	.quad	.LC74
	.long	41
	.zero	4
	.quad	.LC75
	.long	42
	.zero	4
	.quad	.LC76
	.long	43
	.zero	4
	.quad	.LC77
	.long	44
	.zero	4
	.quad	.LC78
	.long	45
	.zero	4
	.quad	.LC79
	.long	46
	.zero	4
	.quad	.LC80
	.long	47
	.zero	4
	.quad	.LC81
	.long	48
	.zero	4
	.quad	.LC82
	.long	49
	.zero	4
	.quad	.LC83
	.long	50
	.zero	4
	.quad	.LC84
	.long	51
	.zero	4
	.quad	.LC85
	.long	52
	.zero	4
	.quad	.LC86
	.long	53
	.zero	4
	.quad	.LC87
	.long	54
	.zero	4
	.quad	.LC88
	.long	55
	.zero	4
	.quad	.LC89
	.long	56
	.zero	4
	.quad	.LC90
	.long	57
	.zero	4
	.quad	.LC91
	.long	58
	.zero	4
	.quad	.LC92
	.long	59
	.zero	4
	.quad	.LC93
	.long	60
	.zero	4
	.quad	.LC94
	.long	61
	.zero	4
	.quad	.LC95
	.long	62
	.zero	4
	.quad	.LC96
	.long	63
	.zero	4
	.quad	.LC97
	.long	64
	.zero	4
	.quad	.LC98
	.long	65
	.zero	4
	.quad	.LC99
	.long	66
	.zero	4
	.quad	.LC100
	.long	67
	.zero	4
	.quad	.LC101
	.long	68
	.zero	4
	.quad	.LC102
	.long	69
	.zero	4
	.quad	.LC103
	.long	70
	.zero	4
	.quad	.LC104
	.long	103
	.zero	4
	.quad	.LC105
	.long	104
	.zero	4
	.quad	.LC106
	.long	105
	.zero	4
	.quad	.LC107
	.long	106
	.zero	4
	.quad	.LC108
	.long	107
	.zero	4
	.quad	.LC109
	.long	108
	.zero	4
	.quad	.LC110
	.long	109
	.zero	4
	.quad	.LC111
	.long	129
	.zero	4
	.quad	.LC112
	.long	131
	.zero	4
	.quad	.LC113
	.long	132
	.zero	4
	.quad	.LC114
	.long	133
	.zero	4
	.quad	.LC115
	.long	134
	.zero	4
	.quad	.LC116
	.long	135
	.zero	4
	.quad	.LC117
	.long	136
	.zero	4
	.quad	.LC118
	.long	137
	.zero	4
	.quad	.LC119
	.long	138
	.zero	4
	.quad	.LC120
	.long	139
	.zero	4
	.quad	.LC121
	.long	140
	.zero	4
	.quad	.LC122
	.long	141
	.zero	4
	.quad	.LC123
	.long	142
	.zero	4
	.quad	.LC124
	.long	143
	.zero	4
	.quad	.LC125
	.long	144
	.zero	4
	.quad	.LC126
	.long	145
	.zero	4
	.quad	.LC127
	.long	146
	.zero	4
	.quad	.LC128
	.long	147
	.zero	4
	.quad	.LC129
	.long	148
	.zero	4
	.quad	.LC130
	.long	149
	.zero	4
	.quad	.LC131
	.long	150
	.zero	4
	.quad	.LC132
	.long	151
	.zero	4
	.quad	.LC133
	.long	152
	.zero	4
	.quad	.LC134
	.long	153
	.zero	4
	.quad	.LC135
	.long	154
	.zero	4
	.quad	.LC136
	.long	155
	.zero	4
	.quad	.LC137
	.long	156
	.zero	4
	.quad	.LC138
	.long	157
	.zero	4
	.quad	.LC139
	.long	158
	.zero	4
	.quad	.LC140
	.long	159
	.zero	4
	.quad	.LC141
	.long	160
	.zero	4
	.quad	.LC142
	.long	161
	.zero	4
	.quad	.LC143
	.long	162
	.zero	4
	.quad	.LC144
	.long	163
	.zero	4
	.quad	.LC145
	.long	164
	.zero	4
	.quad	.LC146
	.long	165
	.zero	4
	.quad	.LC147
	.long	166
	.zero	4
	.quad	.LC148
	.long	167
	.zero	4
	.quad	.LC149
	.long	168
	.zero	4
	.quad	.LC150
	.long	169
	.zero	4
	.quad	.LC151
	.long	170
	.zero	4
	.quad	.LC152
	.long	171
	.zero	4
	.quad	.LC153
	.long	172
	.zero	4
	.quad	.LC154
	.long	173
	.zero	4
	.quad	.LC155
	.long	174
	.zero	4
	.quad	.LC156
	.long	175
	.zero	4
	.quad	.LC157
	.long	176
	.zero	4
	.quad	.LC158
	.long	177
	.zero	4
	.quad	.LC159
	.long	178
	.zero	4
	.quad	.LC160
	.long	179
	.zero	4
	.quad	.LC161
	.long	180
	.zero	4
	.quad	.LC162
	.long	181
	.zero	4
	.quad	.LC163
	.long	182
	.zero	4
	.quad	.LC164
	.long	183
	.zero	4
	.quad	.LC165
	.long	184
	.zero	4
	.quad	.LC166
	.long	185
	.zero	4
	.quad	.LC167
	.long	186
	.zero	4
	.quad	.LC168
	.long	187
	.zero	4
	.quad	.LC169
	.long	188
	.zero	4
	.quad	.LC170
	.long	189
	.zero	4
	.quad	.LC171
	.long	190
	.zero	4
	.quad	.LC172
	.long	191
	.zero	4
	.quad	.LC173
	.long	192
	.zero	4
	.quad	.LC174
	.long	193
	.zero	4
	.quad	.LC175
	.long	194
	.zero	4
	.quad	.LC176
	.long	195
	.zero	4
	.quad	.LC177
	.long	196
	.zero	4
	.quad	.LC178
	.long	197
	.zero	4
	.quad	.LC179
	.long	255
	.zero	4
	.quad	.LC180
	.long	22016
	.zero	4
	.quad	.LC181
	.long	49153
	.zero	4
	.quad	.LC182
	.long	49154
	.zero	4
	.quad	.LC183
	.long	49155
	.zero	4
	.quad	.LC184
	.long	49156
	.zero	4
	.quad	.LC185
	.long	49157
	.zero	4
	.quad	.LC186
	.long	49158
	.zero	4
	.quad	.LC187
	.long	49159
	.zero	4
	.quad	.LC188
	.long	49160
	.zero	4
	.quad	.LC189
	.long	49161
	.zero	4
	.quad	.LC190
	.long	49162
	.zero	4
	.quad	.LC191
	.long	49163
	.zero	4
	.quad	.LC192
	.long	49164
	.zero	4
	.quad	.LC193
	.long	49165
	.zero	4
	.quad	.LC194
	.long	49166
	.zero	4
	.quad	.LC195
	.long	49167
	.zero	4
	.quad	.LC196
	.long	49168
	.zero	4
	.quad	.LC197
	.long	49169
	.zero	4
	.quad	.LC198
	.long	49170
	.zero	4
	.quad	.LC199
	.long	49171
	.zero	4
	.quad	.LC200
	.long	49172
	.zero	4
	.quad	.LC201
	.long	49173
	.zero	4
	.quad	.LC202
	.long	49174
	.zero	4
	.quad	.LC203
	.long	49175
	.zero	4
	.quad	.LC204
	.long	49176
	.zero	4
	.quad	.LC205
	.long	49177
	.zero	4
	.quad	.LC206
	.long	49178
	.zero	4
	.quad	.LC207
	.long	49179
	.zero	4
	.quad	.LC208
	.long	49180
	.zero	4
	.quad	.LC209
	.long	49181
	.zero	4
	.quad	.LC210
	.long	49182
	.zero	4
	.quad	.LC211
	.long	49183
	.zero	4
	.quad	.LC212
	.long	49184
	.zero	4
	.quad	.LC213
	.long	49185
	.zero	4
	.quad	.LC214
	.long	49186
	.zero	4
	.quad	.LC215
	.long	49187
	.zero	4
	.quad	.LC216
	.long	49188
	.zero	4
	.quad	.LC217
	.long	49189
	.zero	4
	.quad	.LC218
	.long	49190
	.zero	4
	.quad	.LC219
	.long	49191
	.zero	4
	.quad	.LC220
	.long	49192
	.zero	4
	.quad	.LC221
	.long	49193
	.zero	4
	.quad	.LC222
	.long	49194
	.zero	4
	.quad	.LC223
	.long	49195
	.zero	4
	.quad	.LC224
	.long	49196
	.zero	4
	.quad	.LC225
	.long	49197
	.zero	4
	.quad	.LC226
	.long	49198
	.zero	4
	.quad	.LC227
	.long	49199
	.zero	4
	.quad	.LC228
	.long	49200
	.zero	4
	.quad	.LC229
	.long	49201
	.zero	4
	.quad	.LC230
	.long	49202
	.zero	4
	.quad	.LC231
	.long	49203
	.zero	4
	.quad	.LC232
	.long	49204
	.zero	4
	.quad	.LC233
	.long	49205
	.zero	4
	.quad	.LC234
	.long	49206
	.zero	4
	.quad	.LC235
	.long	49207
	.zero	4
	.quad	.LC236
	.long	49208
	.zero	4
	.quad	.LC237
	.long	49209
	.zero	4
	.quad	.LC238
	.long	49210
	.zero	4
	.quad	.LC239
	.long	49211
	.zero	4
	.quad	.LC240
	.long	49212
	.zero	4
	.quad	.LC241
	.long	49213
	.zero	4
	.quad	.LC242
	.long	49214
	.zero	4
	.quad	.LC243
	.long	49215
	.zero	4
	.quad	.LC244
	.long	49216
	.zero	4
	.quad	.LC245
	.long	49217
	.zero	4
	.quad	.LC246
	.long	49218
	.zero	4
	.quad	.LC247
	.long	49219
	.zero	4
	.quad	.LC248
	.long	49220
	.zero	4
	.quad	.LC249
	.long	49221
	.zero	4
	.quad	.LC250
	.long	49222
	.zero	4
	.quad	.LC251
	.long	49223
	.zero	4
	.quad	.LC252
	.long	49224
	.zero	4
	.quad	.LC253
	.long	49225
	.zero	4
	.quad	.LC254
	.long	49226
	.zero	4
	.quad	.LC255
	.long	49227
	.zero	4
	.quad	.LC256
	.long	49228
	.zero	4
	.quad	.LC257
	.long	49229
	.zero	4
	.quad	.LC258
	.long	49230
	.zero	4
	.quad	.LC259
	.long	49231
	.zero	4
	.quad	.LC260
	.long	49232
	.zero	4
	.quad	.LC261
	.long	49233
	.zero	4
	.quad	.LC262
	.long	49234
	.zero	4
	.quad	.LC263
	.long	49235
	.zero	4
	.quad	.LC264
	.long	49236
	.zero	4
	.quad	.LC265
	.long	49237
	.zero	4
	.quad	.LC266
	.long	49238
	.zero	4
	.quad	.LC267
	.long	49239
	.zero	4
	.quad	.LC268
	.long	49240
	.zero	4
	.quad	.LC269
	.long	49241
	.zero	4
	.quad	.LC270
	.long	49242
	.zero	4
	.quad	.LC271
	.long	49243
	.zero	4
	.quad	.LC272
	.long	49244
	.zero	4
	.quad	.LC273
	.long	49245
	.zero	4
	.quad	.LC274
	.long	49246
	.zero	4
	.quad	.LC275
	.long	49247
	.zero	4
	.quad	.LC276
	.long	49248
	.zero	4
	.quad	.LC277
	.long	49249
	.zero	4
	.quad	.LC278
	.long	49250
	.zero	4
	.quad	.LC279
	.long	49251
	.zero	4
	.quad	.LC280
	.long	49252
	.zero	4
	.quad	.LC281
	.long	49253
	.zero	4
	.quad	.LC282
	.long	49254
	.zero	4
	.quad	.LC283
	.long	49255
	.zero	4
	.quad	.LC284
	.long	49256
	.zero	4
	.quad	.LC285
	.long	49257
	.zero	4
	.quad	.LC286
	.long	49258
	.zero	4
	.quad	.LC287
	.long	49259
	.zero	4
	.quad	.LC288
	.long	49260
	.zero	4
	.quad	.LC289
	.long	49261
	.zero	4
	.quad	.LC290
	.long	49262
	.zero	4
	.quad	.LC291
	.long	49263
	.zero	4
	.quad	.LC292
	.long	49264
	.zero	4
	.quad	.LC293
	.long	49265
	.zero	4
	.quad	.LC294
	.long	49266
	.zero	4
	.quad	.LC295
	.long	49267
	.zero	4
	.quad	.LC296
	.long	49268
	.zero	4
	.quad	.LC297
	.long	49269
	.zero	4
	.quad	.LC298
	.long	49270
	.zero	4
	.quad	.LC299
	.long	49271
	.zero	4
	.quad	.LC300
	.long	49272
	.zero	4
	.quad	.LC301
	.long	49273
	.zero	4
	.quad	.LC302
	.long	49274
	.zero	4
	.quad	.LC303
	.long	49275
	.zero	4
	.quad	.LC304
	.long	49276
	.zero	4
	.quad	.LC305
	.long	49277
	.zero	4
	.quad	.LC306
	.long	49278
	.zero	4
	.quad	.LC307
	.long	49279
	.zero	4
	.quad	.LC308
	.long	49280
	.zero	4
	.quad	.LC309
	.long	49281
	.zero	4
	.quad	.LC310
	.long	49282
	.zero	4
	.quad	.LC311
	.long	49283
	.zero	4
	.quad	.LC312
	.long	49284
	.zero	4
	.quad	.LC313
	.long	49285
	.zero	4
	.quad	.LC314
	.long	49286
	.zero	4
	.quad	.LC315
	.long	49287
	.zero	4
	.quad	.LC316
	.long	49288
	.zero	4
	.quad	.LC317
	.long	49289
	.zero	4
	.quad	.LC318
	.long	49290
	.zero	4
	.quad	.LC319
	.long	49291
	.zero	4
	.quad	.LC320
	.long	49292
	.zero	4
	.quad	.LC321
	.long	49293
	.zero	4
	.quad	.LC322
	.long	49294
	.zero	4
	.quad	.LC323
	.long	49295
	.zero	4
	.quad	.LC324
	.long	49296
	.zero	4
	.quad	.LC325
	.long	49297
	.zero	4
	.quad	.LC326
	.long	49298
	.zero	4
	.quad	.LC327
	.long	49299
	.zero	4
	.quad	.LC328
	.long	49300
	.zero	4
	.quad	.LC329
	.long	49301
	.zero	4
	.quad	.LC330
	.long	49302
	.zero	4
	.quad	.LC331
	.long	49303
	.zero	4
	.quad	.LC332
	.long	49304
	.zero	4
	.quad	.LC333
	.long	49305
	.zero	4
	.quad	.LC334
	.long	49306
	.zero	4
	.quad	.LC335
	.long	49307
	.zero	4
	.quad	.LC336
	.long	49308
	.zero	4
	.quad	.LC337
	.long	49309
	.zero	4
	.quad	.LC338
	.long	49310
	.zero	4
	.quad	.LC339
	.long	49311
	.zero	4
	.quad	.LC340
	.long	49312
	.zero	4
	.quad	.LC341
	.long	49313
	.zero	4
	.quad	.LC342
	.long	49314
	.zero	4
	.quad	.LC343
	.long	49315
	.zero	4
	.quad	.LC344
	.long	49316
	.zero	4
	.quad	.LC345
	.long	49317
	.zero	4
	.quad	.LC346
	.long	49318
	.zero	4
	.quad	.LC347
	.long	49319
	.zero	4
	.quad	.LC348
	.long	49320
	.zero	4
	.quad	.LC349
	.long	49321
	.zero	4
	.quad	.LC350
	.long	49322
	.zero	4
	.quad	.LC351
	.long	49323
	.zero	4
	.quad	.LC352
	.long	49324
	.zero	4
	.quad	.LC353
	.long	49325
	.zero	4
	.quad	.LC354
	.long	49326
	.zero	4
	.quad	.LC355
	.long	49327
	.zero	4
	.quad	.LC356
	.long	49410
	.zero	4
	.quad	.LC357
	.long	52392
	.zero	4
	.quad	.LC358
	.long	52393
	.zero	4
	.quad	.LC359
	.long	52394
	.zero	4
	.quad	.LC360
	.long	52395
	.zero	4
	.quad	.LC361
	.long	52396
	.zero	4
	.quad	.LC362
	.long	52397
	.zero	4
	.quad	.LC363
	.long	52398
	.zero	4
	.quad	.LC364
	.long	4865
	.zero	4
	.quad	.LC365
	.long	4866
	.zero	4
	.quad	.LC366
	.long	4867
	.zero	4
	.quad	.LC367
	.long	4868
	.zero	4
	.quad	.LC368
	.long	4869
	.zero	4
	.quad	.LC369
	.long	65278
	.zero	4
	.quad	.LC370
	.long	65279
	.zero	4
	.quad	.LC371
	.long	65413
	.zero	4
	.quad	.LC372
	.long	65415
	.zero	4
	.quad	.LC373
	.long	49408
	.zero	4
	.quad	.LC374
	.long	49409
	.zero	4
	.quad	.LC375
	.long	49410
	.zero	4
	.quad	.LC376
	.section	.rodata
.LC377:
	.string	"No Compression"
.LC378:
	.string	"Zlib Compression"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_comp_tbl, @object
	.size	ssl_comp_tbl, 32
ssl_comp_tbl:
	.long	0
	.zero	4
	.quad	.LC377
	.long	1
	.zero	4
	.quad	.LC378
	.section	.rodata
.LC379:
	.string	"server_name"
.LC380:
	.string	"max_fragment_length"
.LC381:
	.string	"client_certificate_url"
.LC382:
	.string	"trusted_ca_keys"
.LC383:
	.string	"truncated_hmac"
.LC384:
	.string	"status_request"
.LC385:
	.string	"user_mapping"
.LC386:
	.string	"client_authz"
.LC387:
	.string	"server_authz"
.LC388:
	.string	"cert_type"
.LC389:
	.string	"supported_groups"
.LC390:
	.string	"ec_point_formats"
.LC391:
	.string	"srp"
.LC392:
	.string	"signature_algorithms"
.LC393:
	.string	"use_srtp"
	.align 8
.LC394:
	.string	"application_layer_protocol_negotiation"
.LC395:
	.string	"signed_certificate_timestamps"
.LC396:
	.string	"client_cert_type"
.LC397:
	.string	"server_cert_type"
.LC398:
	.string	"padding"
.LC399:
	.string	"encrypt_then_mac"
.LC400:
	.string	"extended_master_secret"
.LC401:
	.string	"compress_certificate"
.LC402:
	.string	"session_ticket"
.LC403:
	.string	"psk"
.LC404:
	.string	"early_data"
.LC405:
	.string	"supported_versions"
.LC406:
	.string	"cookie_ext"
.LC407:
	.string	"psk_key_exchange_modes"
.LC408:
	.string	"certificate_authorities"
.LC409:
	.string	"post_handshake_auth"
.LC410:
	.string	"signature_algorithms_cert"
.LC411:
	.string	"key_share"
.LC412:
	.string	"renegotiate"
.LC413:
	.string	"next_proto_neg"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_exts_tbl, @object
	.size	ssl_exts_tbl, 560
ssl_exts_tbl:
	.long	0
	.zero	4
	.quad	.LC379
	.long	1
	.zero	4
	.quad	.LC380
	.long	2
	.zero	4
	.quad	.LC381
	.long	3
	.zero	4
	.quad	.LC382
	.long	4
	.zero	4
	.quad	.LC383
	.long	5
	.zero	4
	.quad	.LC384
	.long	6
	.zero	4
	.quad	.LC385
	.long	7
	.zero	4
	.quad	.LC386
	.long	8
	.zero	4
	.quad	.LC387
	.long	9
	.zero	4
	.quad	.LC388
	.long	10
	.zero	4
	.quad	.LC389
	.long	11
	.zero	4
	.quad	.LC390
	.long	12
	.zero	4
	.quad	.LC391
	.long	13
	.zero	4
	.quad	.LC392
	.long	14
	.zero	4
	.quad	.LC393
	.long	16
	.zero	4
	.quad	.LC394
	.long	18
	.zero	4
	.quad	.LC395
	.long	19
	.zero	4
	.quad	.LC396
	.long	20
	.zero	4
	.quad	.LC397
	.long	21
	.zero	4
	.quad	.LC398
	.long	22
	.zero	4
	.quad	.LC399
	.long	23
	.zero	4
	.quad	.LC400
	.long	27
	.zero	4
	.quad	.LC401
	.long	35
	.zero	4
	.quad	.LC402
	.long	41
	.zero	4
	.quad	.LC403
	.long	42
	.zero	4
	.quad	.LC404
	.long	43
	.zero	4
	.quad	.LC405
	.long	44
	.zero	4
	.quad	.LC406
	.long	45
	.zero	4
	.quad	.LC407
	.long	47
	.zero	4
	.quad	.LC408
	.long	49
	.zero	4
	.quad	.LC409
	.long	50
	.zero	4
	.quad	.LC410
	.long	51
	.zero	4
	.quad	.LC411
	.long	65281
	.zero	4
	.quad	.LC412
	.long	13172
	.zero	4
	.quad	.LC413
	.section	.rodata
.LC414:
	.string	"sect163k1 (K-163)"
.LC415:
	.string	"sect163r1"
.LC416:
	.string	"sect163r2 (B-163)"
.LC417:
	.string	"sect193r1"
.LC418:
	.string	"sect193r2"
.LC419:
	.string	"sect233k1 (K-233)"
.LC420:
	.string	"sect233r1 (B-233)"
.LC421:
	.string	"sect239k1"
.LC422:
	.string	"sect283k1 (K-283)"
.LC423:
	.string	"sect283r1 (B-283)"
.LC424:
	.string	"sect409k1 (K-409)"
.LC425:
	.string	"sect409r1 (B-409)"
.LC426:
	.string	"sect571k1 (K-571)"
.LC427:
	.string	"sect571r1 (B-571)"
.LC428:
	.string	"secp160k1"
.LC429:
	.string	"secp160r1"
.LC430:
	.string	"secp160r2"
.LC431:
	.string	"secp192k1"
.LC432:
	.string	"secp192r1 (P-192)"
.LC433:
	.string	"secp224k1"
.LC434:
	.string	"secp224r1 (P-224)"
.LC435:
	.string	"secp256k1"
.LC436:
	.string	"secp256r1 (P-256)"
.LC437:
	.string	"secp384r1 (P-384)"
.LC438:
	.string	"secp521r1 (P-521)"
.LC439:
	.string	"brainpoolP256r1"
.LC440:
	.string	"brainpoolP384r1"
.LC441:
	.string	"brainpoolP512r1"
.LC442:
	.string	"ecdh_x25519"
.LC443:
	.string	"ecdh_x448"
.LC444:
	.string	"brainpoolP256r1tls13"
.LC445:
	.string	"brainpoolP384r1tls13"
.LC446:
	.string	"brainpoolP512r1tls13"
.LC447:
	.string	"GC256A"
.LC448:
	.string	"GC256B"
.LC449:
	.string	"GC256C"
.LC450:
	.string	"GC256D"
.LC451:
	.string	"GC512A"
.LC452:
	.string	"GC512B"
.LC453:
	.string	"GC512C"
.LC454:
	.string	"ffdhe2048"
.LC455:
	.string	"ffdhe3072"
.LC456:
	.string	"ffdhe4096"
.LC457:
	.string	"ffdhe6144"
.LC458:
	.string	"ffdhe8192"
.LC459:
	.string	"X25519Kyber768Draft00"
.LC460:
	.string	"SecP256r1Kyber768Draft00"
	.align 8
.LC461:
	.string	"arbitrary_explicit_prime_curves"
	.align 8
.LC462:
	.string	"arbitrary_explicit_char2_curves"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_groups_tbl, @object
	.size	ssl_groups_tbl, 784
ssl_groups_tbl:
	.long	1
	.zero	4
	.quad	.LC414
	.long	2
	.zero	4
	.quad	.LC415
	.long	3
	.zero	4
	.quad	.LC416
	.long	4
	.zero	4
	.quad	.LC417
	.long	5
	.zero	4
	.quad	.LC418
	.long	6
	.zero	4
	.quad	.LC419
	.long	7
	.zero	4
	.quad	.LC420
	.long	8
	.zero	4
	.quad	.LC421
	.long	9
	.zero	4
	.quad	.LC422
	.long	10
	.zero	4
	.quad	.LC423
	.long	11
	.zero	4
	.quad	.LC424
	.long	12
	.zero	4
	.quad	.LC425
	.long	13
	.zero	4
	.quad	.LC426
	.long	14
	.zero	4
	.quad	.LC427
	.long	15
	.zero	4
	.quad	.LC428
	.long	16
	.zero	4
	.quad	.LC429
	.long	17
	.zero	4
	.quad	.LC430
	.long	18
	.zero	4
	.quad	.LC431
	.long	19
	.zero	4
	.quad	.LC432
	.long	20
	.zero	4
	.quad	.LC433
	.long	21
	.zero	4
	.quad	.LC434
	.long	22
	.zero	4
	.quad	.LC435
	.long	23
	.zero	4
	.quad	.LC436
	.long	24
	.zero	4
	.quad	.LC437
	.long	25
	.zero	4
	.quad	.LC438
	.long	26
	.zero	4
	.quad	.LC439
	.long	27
	.zero	4
	.quad	.LC440
	.long	28
	.zero	4
	.quad	.LC441
	.long	29
	.zero	4
	.quad	.LC442
	.long	30
	.zero	4
	.quad	.LC443
	.long	31
	.zero	4
	.quad	.LC444
	.long	32
	.zero	4
	.quad	.LC445
	.long	33
	.zero	4
	.quad	.LC446
	.long	34
	.zero	4
	.quad	.LC447
	.long	35
	.zero	4
	.quad	.LC448
	.long	36
	.zero	4
	.quad	.LC449
	.long	37
	.zero	4
	.quad	.LC450
	.long	38
	.zero	4
	.quad	.LC451
	.long	39
	.zero	4
	.quad	.LC452
	.long	40
	.zero	4
	.quad	.LC453
	.long	256
	.zero	4
	.quad	.LC454
	.long	257
	.zero	4
	.quad	.LC455
	.long	258
	.zero	4
	.quad	.LC456
	.long	259
	.zero	4
	.quad	.LC457
	.long	260
	.zero	4
	.quad	.LC458
	.long	25497
	.zero	4
	.quad	.LC459
	.long	25498
	.zero	4
	.quad	.LC460
	.long	65281
	.zero	4
	.quad	.LC461
	.long	65282
	.zero	4
	.quad	.LC462
	.section	.rodata
.LC463:
	.string	"uncompressed"
.LC464:
	.string	"ansiX962_compressed_prime"
.LC465:
	.string	"ansiX962_compressed_char2"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_point_tbl, @object
	.size	ssl_point_tbl, 48
ssl_point_tbl:
	.long	0
	.zero	4
	.quad	.LC463
	.long	1
	.zero	4
	.quad	.LC464
	.long	2
	.zero	4
	.quad	.LC465
	.section	.rodata
.LC466:
	.string	"disabled"
	.align 8
.LC467:
	.string	"max_fragment_length := 2^9 (512 bytes)"
	.align 8
.LC468:
	.string	"max_fragment_length := 2^10 (1024 bytes)"
	.align 8
.LC469:
	.string	"max_fragment_length := 2^11 (2048 bytes)"
	.align 8
.LC470:
	.string	"max_fragment_length := 2^12 (4096 bytes)"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_mfl_tbl, @object
	.size	ssl_mfl_tbl, 80
ssl_mfl_tbl:
	.long	0
	.zero	4
	.quad	.LC466
	.long	1
	.zero	4
	.quad	.LC467
	.long	2
	.zero	4
	.quad	.LC468
	.long	3
	.zero	4
	.quad	.LC469
	.long	4
	.zero	4
	.quad	.LC470
	.section	.rodata
.LC471:
	.string	"ecdsa_secp256r1_sha256"
.LC472:
	.string	"ecdsa_secp384r1_sha384"
.LC473:
	.string	"ecdsa_secp521r1_sha512"
.LC474:
	.string	"ecdsa_sha224"
.LC475:
	.string	"ed25519"
.LC476:
	.string	"ed448"
.LC477:
	.string	"ecdsa_sha1"
.LC478:
	.string	"rsa_pss_rsae_sha256"
.LC479:
	.string	"rsa_pss_rsae_sha384"
.LC480:
	.string	"rsa_pss_rsae_sha512"
.LC481:
	.string	"rsa_pss_pss_sha256"
.LC482:
	.string	"rsa_pss_pss_sha384"
.LC483:
	.string	"rsa_pss_pss_sha512"
.LC484:
	.string	"rsa_pkcs1_sha256"
.LC485:
	.string	"rsa_pkcs1_sha384"
.LC486:
	.string	"rsa_pkcs1_sha512"
.LC487:
	.string	"rsa_pkcs1_sha224"
.LC488:
	.string	"rsa_pkcs1_sha1"
.LC489:
	.string	"dsa_sha256"
.LC490:
	.string	"dsa_sha384"
.LC491:
	.string	"dsa_sha512"
.LC492:
	.string	"dsa_sha224"
.LC493:
	.string	"dsa_sha1"
.LC494:
	.string	"gost2012_256"
.LC495:
	.string	"gost2012_512"
.LC496:
	.string	"gost2001_gost94"
.LC497:
	.string	"ecdsa_brainpoolP256r1_sha256"
.LC498:
	.string	"ecdsa_brainpoolP384r1_sha384"
.LC499:
	.string	"ecdsa_brainpoolP512r1_sha512"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_sigalg_tbl, @object
	.size	ssl_sigalg_tbl, 496
ssl_sigalg_tbl:
	.long	1027
	.zero	4
	.quad	.LC471
	.long	1283
	.zero	4
	.quad	.LC472
	.long	1539
	.zero	4
	.quad	.LC473
	.long	771
	.zero	4
	.quad	.LC474
	.long	2055
	.zero	4
	.quad	.LC475
	.long	2056
	.zero	4
	.quad	.LC476
	.long	515
	.zero	4
	.quad	.LC477
	.long	2052
	.zero	4
	.quad	.LC478
	.long	2053
	.zero	4
	.quad	.LC479
	.long	2054
	.zero	4
	.quad	.LC480
	.long	2057
	.zero	4
	.quad	.LC481
	.long	2058
	.zero	4
	.quad	.LC482
	.long	2059
	.zero	4
	.quad	.LC483
	.long	1025
	.zero	4
	.quad	.LC484
	.long	1281
	.zero	4
	.quad	.LC485
	.long	1537
	.zero	4
	.quad	.LC486
	.long	769
	.zero	4
	.quad	.LC487
	.long	513
	.zero	4
	.quad	.LC488
	.long	1026
	.zero	4
	.quad	.LC489
	.long	1282
	.zero	4
	.quad	.LC490
	.long	1538
	.zero	4
	.quad	.LC491
	.long	770
	.zero	4
	.quad	.LC492
	.long	514
	.zero	4
	.quad	.LC493
	.long	2112
	.zero	4
	.quad	.LC494
	.long	2113
	.zero	4
	.quad	.LC495
	.long	61166
	.zero	4
	.quad	.LC494
	.long	61423
	.zero	4
	.quad	.LC495
	.long	60909
	.zero	4
	.quad	.LC496
	.long	2074
	.zero	4
	.quad	.LC497
	.long	2075
	.zero	4
	.quad	.LC498
	.long	2076
	.zero	4
	.quad	.LC499
	.section	.rodata
.LC500:
	.string	"rsa_sign"
.LC501:
	.string	"dss_sign"
.LC502:
	.string	"rsa_fixed_dh"
.LC503:
	.string	"dss_fixed_dh"
.LC504:
	.string	"rsa_ephemeral_dh"
.LC505:
	.string	"dss_ephemeral_dh"
.LC506:
	.string	"fortezza_dms"
.LC507:
	.string	"ecdsa_sign"
.LC508:
	.string	"rsa_fixed_ecdh"
.LC509:
	.string	"ecdsa_fixed_ecdh"
.LC510:
	.string	"gost_sign256"
.LC511:
	.string	"gost_sign512"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_ctype_tbl, @object
	.size	ssl_ctype_tbl, 192
ssl_ctype_tbl:
	.long	1
	.zero	4
	.quad	.LC500
	.long	2
	.zero	4
	.quad	.LC501
	.long	3
	.zero	4
	.quad	.LC502
	.long	4
	.zero	4
	.quad	.LC503
	.long	5
	.zero	4
	.quad	.LC504
	.long	6
	.zero	4
	.quad	.LC505
	.long	20
	.zero	4
	.quad	.LC506
	.long	64
	.zero	4
	.quad	.LC507
	.long	65
	.zero	4
	.quad	.LC508
	.long	66
	.zero	4
	.quad	.LC509
	.long	67
	.zero	4
	.quad	.LC510
	.long	68
	.zero	4
	.quad	.LC511
	.section	.rodata
.LC512:
	.string	"psk_ke"
.LC513:
	.string	"psk_dhe_ke"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_psk_kex_modes_tbl, @object
	.size	ssl_psk_kex_modes_tbl, 32
ssl_psk_kex_modes_tbl:
	.long	0
	.zero	4
	.quad	.LC512
	.long	1
	.zero	4
	.quad	.LC513
	.section	.rodata
.LC514:
	.string	"update_not_requested"
.LC515:
	.string	"update_requested"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_key_update_tbl, @object
	.size	ssl_key_update_tbl, 32
ssl_key_update_tbl:
	.long	0
	.zero	4
	.quad	.LC514
	.long	1
	.zero	4
	.quad	.LC515
	.section	.rodata
.LC516:
	.string	"none"
.LC517:
	.string	"zlib"
.LC518:
	.string	"brotli"
.LC519:
	.string	"zstd"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_comp_cert_tbl, @object
	.size	ssl_comp_cert_tbl, 64
ssl_comp_cert_tbl:
	.long	0
	.zero	4
	.quad	.LC516
	.long	1
	.zero	4
	.quad	.LC517
	.long	2
	.zero	4
	.quad	.LC518
	.long	3
	.zero	4
	.quad	.LC519
	.section	.rodata
.LC520:
	.string	"x509"
.LC521:
	.string	"pgp"
.LC522:
	.string	"rpk"
.LC523:
	.string	"1609dot2"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_cert_type_tbl, @object
	.size	ssl_cert_type_tbl, 64
ssl_cert_type_tbl:
	.long	0
	.zero	4
	.quad	.LC520
	.long	1
	.zero	4
	.quad	.LC521
	.long	2
	.zero	4
	.quad	.LC522
	.long	3
	.zero	4
	.quad	.LC523
	.section	.rodata
.LC524:
	.string	"%s (len=%d): "
.LC525:
	.string	"%02X"
.LC526:
	.string	"\n"
	.text
	.type	ssl_print_hex, @function
ssl_print_hex:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	leaq	.LC524(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	$0, -8(%rbp)
	jmp	.L25
.L26:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC525(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -8(%rbp)
.L25:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L26
	leaq	.LC526(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ssl_print_hex, .-ssl_print_hex
	.type	ssl_print_hexbuf, @function
ssl_print_hexbuf:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	cmpq	$1, -48(%rbp)
	jbe	.L30
	movq	-8(%rbp), %rax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L30:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L31
	movl	$0, %eax
	jmp	.L29
.L31:
	movq	-48(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_hex
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	subq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ssl_print_hexbuf, .-ssl_print_hexbuf
	.section	.rodata
.LC527:
	.string	"%s=0x%x (%s)\n"
	.text
	.type	ssl_print_version, @function
ssl_print_version:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	ja	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L35
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L35:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	leaq	ssl_version_tbl(%rip), %rcx
	movl	-4(%rbp), %eax
	movl	$8, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rdx
	leaq	.LC527(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-2(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ssl_print_version, .-ssl_print_version
	.section	.rodata
.LC528:
	.string	"Random:\n"
.LC529:
	.string	"gmt_unix_time=0x%08X\n"
.LC530:
	.string	"random_bytes"
	.text
	.type	ssl_print_random, @function
ssl_print_random:
.LFB734:
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
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$31, %rax
	ja	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	addq	$4, -8(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	leaq	.LC528(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	-28(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movl	-12(%rbp), %edx
	leaq	.LC529(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	movq	-8(%rbp), %rdx
	leaq	.LC530(%rip), %rdi
	movq	-24(%rbp), %rax
	movl	$28, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ssl_print_random, .-ssl_print_random
	.section	.rodata
	.align 8
.LC531:
	.string	"Signature Algorithm: %s (0x%04x)\n"
.LC532:
	.string	"Signature"
	.text
	.type	ssl_print_signature, @function
ssl_print_signature:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	ja	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L42
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movl	-12(%rbp), %eax
	leaq	ssl_sigalg_tbl(%rip), %rcx
	movl	$31, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-12(%rbp), %edx
	leaq	.LC531(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-2(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L42:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	leaq	.LC532(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ssl_print_signature, .-ssl_print_signature
	.section	.rodata
	.align 8
.LC533:
	.string	"extension_type=%s(%d), length=%d\n"
.LC534:
	.string	"%s (0x%04x)\n"
.LC535:
	.string	"client_verify_data"
.LC536:
	.string	"server_verify_data"
.LC537:
	.string	"<EMPTY>\n"
.LC538:
	.string	"ticket"
.LC539:
	.string	"NamedGroup: %s (%d)\n"
.LC540:
	.string	"key_exchange: "
.LC541:
	.string	"max_early_data=%u\n"
	.text
	.type	ssl_print_extension, @function
ssl_print_extension:
.LFB736:
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
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movl	%ecx, %eax
	movl	%r8d, -88(%rbp)
	movq	%r9, -96(%rbp)
	movb	%al, -84(%rbp)
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	16(%rbp), %rax
	movl	%eax, %ebx
	leaq	ssl_exts_tbl(%rip), %rcx
	movl	-88(%rbp), %eax
	movl	$35, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-88(%rbp), %edx
	leaq	.LC533(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$65281, -88(%rbp)
	je	.L44
	cmpl	$65281, -88(%rbp)
	jg	.L45
	cmpl	$51, -88(%rbp)
	je	.L46
	cmpl	$51, -88(%rbp)
	jg	.L45
	cmpl	$45, -88(%rbp)
	je	.L47
	cmpl	$45, -88(%rbp)
	jg	.L45
	cmpl	$43, -88(%rbp)
	je	.L48
	cmpl	$43, -88(%rbp)
	jg	.L45
	cmpl	$42, -88(%rbp)
	je	.L49
	cmpl	$42, -88(%rbp)
	jg	.L45
	cmpl	$35, -88(%rbp)
	je	.L50
	cmpl	$35, -88(%rbp)
	jg	.L45
	cmpl	$27, -88(%rbp)
	je	.L51
	cmpl	$27, -88(%rbp)
	jg	.L45
	cmpl	$20, -88(%rbp)
	jg	.L45
	cmpl	$19, -88(%rbp)
	jge	.L52
	cmpl	$16, -88(%rbp)
	je	.L53
	cmpl	$16, -88(%rbp)
	jg	.L45
	cmpl	$13, -88(%rbp)
	je	.L54
	cmpl	$13, -88(%rbp)
	jg	.L45
	cmpl	$11, -88(%rbp)
	je	.L55
	cmpl	$11, -88(%rbp)
	jg	.L45
	cmpl	$1, -88(%rbp)
	je	.L56
	cmpl	$10, -88(%rbp)
	je	.L57
	jmp	.L45
.L51:
	cmpq	$0, 16(%rbp)
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, 16(%rbp)
	je	.L60
	movl	$0, %eax
	jmp	.L59
.L60:
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdi
	movl	-76(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_comp_cert_tbl(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$4
	movq	%rcx, %r9
	movl	$2, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	jmp	.L59
.L56:
	cmpq	$0, 16(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L59
.L61:
	movq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-76(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_mfl_tbl(%rip), %rdi
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$5
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	jmp	.L59
.L55:
	cmpq	$0, 16(%rbp)
	jne	.L62
	movl	$0, %eax
	jmp	.L59
.L62:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, 16(%rbp)
	je	.L63
	movl	$0, %eax
	jmp	.L59
.L63:
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdi
	movl	-76(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_point_tbl(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$3
	movq	%rcx, %r9
	movl	$1, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	jmp	.L59
.L57:
	cmpq	$1, 16(%rbp)
	ja	.L64
	movl	$0, %eax
	jmp	.L59
.L64:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, 16(%rbp)
	je	.L65
	movl	$0, %eax
	jmp	.L59
.L65:
	movq	-96(%rbp), %rax
	leaq	2(%rax), %rdi
	movl	-76(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_groups_tbl(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$49
	movq	%rcx, %r9
	movl	$2, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	jmp	.L59
.L53:
	cmpq	$1, 16(%rbp)
	ja	.L66
	movl	$0, %eax
	jmp	.L59
.L66:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, 16(%rbp)
	je	.L67
	movl	$0, %eax
	jmp	.L59
.L67:
	addq	$2, -96(%rbp)
	jmp	.L68
.L70:
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L69
	movl	$0, %eax
	jmp	.L59
.L69:
	movl	-76(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	.LC526(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-56(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
.L68:
	cmpq	$0, -24(%rbp)
	jne	.L70
	movl	$1, %eax
	jmp	.L59
.L54:
	cmpq	$1, 16(%rbp)
	ja	.L71
	movl	$0, %eax
	jmp	.L59
.L71:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, 16(%rbp)
	je	.L72
	movl	$0, %eax
	jmp	.L59
.L72:
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L73
	movl	$0, %eax
	jmp	.L59
.L73:
	addq	$2, -96(%rbp)
	jmp	.L74
.L75:
	movl	-76(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	leaq	ssl_sigalg_tbl(%rip), %rcx
	movl	$31, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-60(%rbp), %edx
	leaq	.LC534(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	subq	$2, -24(%rbp)
	addq	$2, -96(%rbp)
.L74:
	cmpq	$0, -24(%rbp)
	jne	.L75
	jmp	.L76
.L44:
	cmpq	$0, 16(%rbp)
	jne	.L77
	movl	$0, %eax
	jmp	.L59
.L77:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, 16(%rbp)
	je	.L78
	movl	$0, %eax
	jmp	.L59
.L78:
	addq	$1, -96(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L79
	cmpl	$0, -80(%rbp)
	je	.L80
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L81
	movl	$0, %eax
	jmp	.L59
.L81:
	shrq	-24(%rbp)
.L80:
	movl	-76(%rbp), %eax
	leal	4(%rax), %esi
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC535(%rip), %rdi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	cmpl	$0, -80(%rbp)
	je	.L105
	movq	-24(%rbp), %rax
	addq	%rax, -96(%rbp)
	movl	-76(%rbp), %eax
	leal	4(%rax), %esi
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC536(%rip), %rdi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	jmp	.L105
.L79:
	movl	-76(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	leaq	.LC537(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L105
.L50:
	cmpq	$0, 16(%rbp)
	je	.L106
	movl	-76(%rbp), %eax
	leal	4(%rax), %esi
	movq	16(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC538(%rip), %rdi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	jmp	.L106
.L46:
	cmpl	$0, -80(%rbp)
	je	.L84
	cmpq	$2, 16(%rbp)
	jne	.L84
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-76(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	leaq	ssl_groups_tbl(%rip), %rcx
	movl	-28(%rbp), %eax
	movl	$49, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-28(%rbp), %edx
	leaq	.LC539(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L76
.L84:
	cmpq	$1, 16(%rbp)
	ja	.L85
	movl	$0, %eax
	jmp	.L59
.L85:
	cmpl	$0, -80(%rbp)
	je	.L86
	movq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L89
.L86:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, 16(%rbp)
	je	.L88
	movl	$0, %eax
	jmp	.L59
.L88:
	addq	$2, -96(%rbp)
	jmp	.L89
.L92:
	cmpq	$3, -24(%rbp)
	ja	.L90
	movl	$0, %eax
	jmp	.L59
.L90:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -40(%rbp)
	addq	$4, -96(%rbp)
	subq	$4, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L91
	movl	$0, %eax
	jmp	.L59
.L91:
	movl	-76(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	leaq	ssl_groups_tbl(%rip), %rcx
	movl	-32(%rbp), %eax
	movl	$49, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-32(%rbp), %edx
	leaq	.LC539(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-76(%rbp), %eax
	leal	4(%rax), %esi
	movq	-40(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC540(%rip), %rdi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	movq	-40(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	subq	%rax, -24(%rbp)
.L89:
	cmpq	$0, -24(%rbp)
	jne	.L92
	jmp	.L76
.L48:
	cmpl	$0, -80(%rbp)
	je	.L93
	cmpq	$2, 16(%rbp)
	je	.L94
	movl	$0, %eax
	jmp	.L59
.L94:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-76(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	leaq	ssl_version_tbl(%rip), %rcx
	movl	-44(%rbp), %eax
	movl	$8, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-44(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L76
.L93:
	cmpq	$0, 16(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L59
.L95:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, 16(%rbp)
	je	.L96
	movl	$0, %eax
	jmp	.L59
.L96:
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdi
	movl	-76(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_version_tbl(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$8
	movq	%rcx, %r9
	movl	$2, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	jmp	.L59
.L47:
	cmpq	$0, 16(%rbp)
	jne	.L97
	movl	$0, %eax
	jmp	.L59
.L97:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, 16(%rbp)
	je	.L98
	movl	$0, %eax
	jmp	.L59
.L98:
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdi
	movl	-76(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_psk_kex_modes_tbl(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$2
	movq	%rcx, %r9
	movl	$1, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	jmp	.L59
.L49:
	cmpb	$4, -84(%rbp)
	jne	.L107
	cmpq	$4, 16(%rbp)
	je	.L100
	movl	$0, %eax
	jmp	.L59
.L100:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-96(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-76(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movl	-48(%rbp), %edx
	leaq	.LC541(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L76
.L52:
	cmpl	$0, -80(%rbp)
	je	.L101
	cmpq	$1, 16(%rbp)
	je	.L102
	movl	$0, %eax
	jmp	.L59
.L102:
	movl	-76(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_cert_type_tbl(%rip), %rcx
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$4
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	jmp	.L59
.L101:
	cmpq	$0, 16(%rbp)
	jne	.L103
	movl	$0, %eax
	jmp	.L59
.L103:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, 16(%rbp)
	je	.L104
	movl	$0, %eax
	jmp	.L59
.L104:
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdi
	movl	-76(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_cert_type_tbl(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	$4
	movq	%rcx, %r9
	movl	$1, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	jmp	.L59
.L45:
	movl	-76(%rbp), %eax
	leal	2(%rax), %edx
	movq	16(%rbp), %rax
	movl	%eax, %edi
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	BIO_dump_indent@PLT
	jmp	.L76
.L105:
	nop
	jmp	.L76
.L106:
	nop
	jmp	.L76
.L107:
	nop
.L76:
	movl	$1, %eax
.L59:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	ssl_print_extension, .-ssl_print_extension
	.section	.rodata
.LC542:
	.string	"No extensions\n"
.LC543:
	.string	"extensions, length = %d\n"
	.align 8
.LC544:
	.string	"extensions, extype = %d, extlen = %d\n"
	.text
	.type	ssl_print_extensions, @function
ssl_print_extensions:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, %eax
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movb	%al, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	cmpq	$0, -24(%rbp)
	jne	.L109
	leaq	.LC542(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
	jmp	.L110
.L109:
	cmpq	$1, -24(%rbp)
	ja	.L111
	movl	$0, %eax
	jmp	.L110
.L111:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -8(%rbp)
	subq	$2, -24(%rbp)
	addq	$2, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L112
	leaq	.LC542(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L110
.L112:
	movq	-8(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L113
	movl	$0, %eax
	jmp	.L110
.L113:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC543(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	subq	%rax, -24(%rbp)
	jmp	.L114
.L118:
	cmpq	$3, -8(%rbp)
	ja	.L115
	movl	$0, %eax
	jmp	.L110
.L115:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L116
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	leaq	.LC544(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-60(%rbp), %eax
	leal	2(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	BIO_dump_indent@PLT
	movl	$0, %eax
	jmp	.L110
.L116:
	addq	$4, -16(%rbp)
	movzbl	-68(%rbp), %ecx
	movl	-60(%rbp), %eax
	leal	2(%rax), %esi
	movq	-16(%rbp), %r8
	movl	-28(%rbp), %edi
	movl	-64(%rbp), %edx
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ssl_print_extension
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L117
	movl	$0, %eax
	jmp	.L110
.L117:
	movq	-40(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	-40(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -8(%rbp)
.L114:
	cmpq	$0, -8(%rbp)
	jne	.L118
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ssl_print_extensions, .-ssl_print_extensions
	.section	.rodata
.LC545:
	.string	"client_version"
.LC546:
	.string	"session_id"
.LC547:
	.string	"cookie"
.LC548:
	.string	"cipher_suites (len=%d)\n"
.LC549:
	.string	"{0x%02X, 0x%02X} %s\n"
.LC550:
	.string	"compression_methods (len=%d)\n"
.LC551:
	.string	"%s (0x%02X)\n"
	.text
	.type	ssl_print_client_hello, @function
ssl_print_client_hello:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	.LC545(%rip), %rdi
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_version
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_print_random
	testl	%eax, %eax
	jne	.L122
	movl	$0, %eax
	jmp	.L121
.L122:
	leaq	-72(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	leaq	.LC546(%rip), %rdx
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L123
	movl	$0, %eax
	jmp	.L121
.L123:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L124
	leaq	-72(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	leaq	.LC547(%rip), %rdx
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L121
.L124:
	movq	-72(%rbp), %rax
	cmpq	$1, %rax
	ja	.L125
	movl	$0, %eax
	jmp	.L121
.L125:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -72(%rbp)
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC548(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L126
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L128
.L126:
	movl	$0, %eax
	jmp	.L121
.L129:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-52(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movl	-28(%rbp), %eax
	leaq	ssl_ciphers_tbl(%rip), %rcx
	movl	$342, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC549(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -72(%rbp)
	subq	$2, -24(%rbp)
.L128:
	cmpq	$0, -24(%rbp)
	jne	.L129
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L130
	movl	$0, %eax
	jmp	.L121
.L130:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L131
	movl	$0, %eax
	jmp	.L121
.L131:
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC550(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L132
.L133:
	movl	-52(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	ssl_comp_tbl(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdx
	leaq	.LC551(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	subq	$1, -24(%rbp)
.L132:
	cmpq	$0, -24(%rbp)
	jne	.L133
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ssl_print_extensions
	testl	%eax, %eax
	jne	.L134
	movl	$0, %eax
	jmp	.L121
.L134:
	movl	$1, %eax
.L121:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ssl_print_client_hello, .-ssl_print_client_hello
	.section	.rodata
.LC552:
	.string	"server_version"
	.text
	.type	dtls_print_hello_vfyrequest, @function
dtls_print_hello_vfyrequest:
.LFB739:
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
	movq	%rcx, -32(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	.LC552(%rip), %rdi
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_version
	testl	%eax, %eax
	jne	.L136
	movl	$0, %eax
	jmp	.L137
.L136:
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	leaq	.LC547(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L138
	movl	$0, %eax
	jmp	.L137
.L138:
	movl	$1, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	dtls_print_hello_vfyrequest, .-dtls_print_hello_vfyrequest
	.section	.rodata
	.align 8
.LC553:
	.string	"cipher_suite {0x%02X, 0x%02X} %s\n"
	.align 8
.LC554:
	.string	"compression_method: %s (0x%02X)\n"
	.text
	.type	ssl_print_server_hello, @function
ssl_print_server_hello:
.LFB740:
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
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	leaq	-24(%rbp), %r8
	leaq	-64(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	.LC552(%rip), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_version
	testl	%eax, %eax
	jne	.L140
	movl	$0, %eax
	jmp	.L148
.L140:
	leaq	-64(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_print_random
	testl	%eax, %eax
	jne	.L142
	movl	$0, %eax
	jmp	.L148
.L142:
	movl	-24(%rbp), %eax
	cmpl	$772, %eax
	je	.L143
	leaq	-64(%rbp), %rdi
	leaq	-56(%rbp), %rcx
	leaq	.LC546(%rip), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L143
	movl	$0, %eax
	jmp	.L148
.L143:
	movq	-64(%rbp), %rax
	cmpq	$1, %rax
	ja	.L144
	movl	$0, %eax
	jmp	.L148
.L144:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movl	-20(%rbp), %eax
	leaq	ssl_ciphers_tbl(%rip), %rcx
	movl	$342, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC553(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -64(%rbp)
	movl	-24(%rbp), %eax
	cmpl	$772, %eax
	je	.L145
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L146
	movl	$0, %eax
	jmp	.L148
.L146:
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	ssl_comp_tbl(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdx
	leaq	.LC554(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
.L145:
	leaq	-64(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ssl_print_extensions
	testl	%eax, %eax
	jne	.L147
	movl	$0, %eax
	jmp	.L148
.L147:
	movl	$1, %eax
.L148:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	ssl_print_server_hello, .-ssl_print_server_hello
	.section	.rodata
.LC555:
	.string	"rsa"
.LC556:
	.string	"DHE"
.LC557:
	.string	"ECDHE"
.LC558:
	.string	"PSK"
.LC559:
	.string	"RSAPSK"
.LC560:
	.string	"DHEPSK"
.LC561:
	.string	"ECDHEPSK"
.LC562:
	.string	"SRP"
.LC563:
	.string	"GOST"
.LC564:
	.string	"GOST18"
	.text
	.type	ssl_get_keyex, @function
ssl_get_keyex:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L150
	movq	-24(%rbp), %rax
	leaq	.LC555(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L151
.L150:
	movq	-8(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L152
	movq	-24(%rbp), %rax
	leaq	.LC556(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$2, %eax
	jmp	.L151
.L152:
	movq	-8(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L153
	movq	-24(%rbp), %rax
	leaq	.LC557(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$4, %eax
	jmp	.L151
.L153:
	movq	-8(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L154
	movq	-24(%rbp), %rax
	leaq	.LC558(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$8, %eax
	jmp	.L151
.L154:
	movq	-8(%rbp), %rax
	andl	$64, %eax
	testq	%rax, %rax
	je	.L155
	movq	-24(%rbp), %rax
	leaq	.LC559(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$64, %eax
	jmp	.L151
.L155:
	movq	-8(%rbp), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L156
	movq	-24(%rbp), %rax
	leaq	.LC560(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$256, %eax
	jmp	.L151
.L156:
	movq	-8(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L157
	movq	-24(%rbp), %rax
	leaq	.LC561(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$128, %eax
	jmp	.L151
.L157:
	movq	-8(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L158
	movq	-24(%rbp), %rax
	leaq	.LC562(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$32, %eax
	jmp	.L151
.L158:
	movq	-8(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L159
	movq	-24(%rbp), %rax
	leaq	.LC563(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$16, %eax
	jmp	.L151
.L159:
	movq	-8(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L160
	movq	-24(%rbp), %rax
	leaq	.LC564(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$512, %eax
	jmp	.L151
.L160:
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
.L151:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	ssl_get_keyex, .-ssl_get_keyex
	.section	.rodata
.LC565:
	.string	"KeyExchangeAlgorithm=%s\n"
.LC566:
	.string	"psk_identity"
.LC567:
	.string	"EncryptedPreMasterSecret"
.LC568:
	.string	"dh_Yc"
.LC569:
	.string	"ecdh_Yc"
.LC570:
	.string	"GostKeyTransportBlob"
.LC571:
	.string	"GOST-wrapped PreMasterSecret"
	.text
	.type	ssl_print_client_keyex, @function
ssl_print_client_keyex:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_get_keyex
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-16(%rbp), %rdx
	leaq	.LC565(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-4(%rbp), %eax
	andl	$456, %eax
	testl	%eax, %eax
	je	.L162
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC566(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L162
	movl	$0, %eax
	jmp	.L174
.L162:
	cmpl	$512, -4(%rbp)
	je	.L164
	cmpl	$512, -4(%rbp)
	jg	.L165
	cmpl	$256, -4(%rbp)
	je	.L166
	cmpl	$256, -4(%rbp)
	jg	.L165
	cmpl	$128, -4(%rbp)
	je	.L167
	cmpl	$128, -4(%rbp)
	jg	.L165
	cmpl	$64, -4(%rbp)
	je	.L168
	cmpl	$64, -4(%rbp)
	jg	.L165
	cmpl	$16, -4(%rbp)
	je	.L169
	cmpl	$16, -4(%rbp)
	jg	.L165
	cmpl	$4, -4(%rbp)
	je	.L167
	cmpl	$4, -4(%rbp)
	jg	.L165
	cmpl	$1, -4(%rbp)
	je	.L168
	cmpl	$2, -4(%rbp)
	je	.L166
	jmp	.L165
.L168:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L170
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$768, %eax
	jne	.L170
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	.LC567(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	jmp	.L175
.L170:
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC567(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L175
	movl	$0, %eax
	jmp	.L174
.L166:
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC568(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L176
	movl	$0, %eax
	jmp	.L174
.L167:
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC569(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L177
	movl	$0, %eax
	jmp	.L174
.L169:
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	.LC570(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	movq	$0, -56(%rbp)
	jmp	.L165
.L164:
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	.LC571(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	movq	$0, -56(%rbp)
	jmp	.L165
.L175:
	nop
	jmp	.L165
.L176:
	nop
	jmp	.L165
.L177:
	nop
.L165:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	ssl_print_client_keyex, .-ssl_print_client_keyex
	.section	.rodata
.LC572:
	.string	"psk_identity_hint"
.LC573:
	.string	"rsa_modulus"
.LC574:
	.string	"rsa_exponent"
.LC575:
	.string	"dh_p"
.LC576:
	.string	"dh_g"
.LC577:
	.string	"dh_Ys"
.LC578:
	.string	"explicit_prime\n"
.LC579:
	.string	"explicit_char2\n"
.LC580:
	.string	"named_curve: %s (%d)\n"
.LC581:
	.string	"point"
	.align 8
.LC582:
	.string	"UNKNOWN CURVE PARAMETER TYPE %d\n"
	.text
	.type	ssl_print_server_keyex, @function
ssl_print_server_keyex:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_get_keyex
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-16(%rbp), %rdx
	leaq	.LC565(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-4(%rbp), %eax
	andl	$456, %eax
	testl	%eax, %eax
	je	.L179
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC572(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L179
	movl	$0, %eax
	jmp	.L198
.L179:
	cmpl	$256, -4(%rbp)
	je	.L181
	cmpl	$256, -4(%rbp)
	jg	.L182
	cmpl	$128, -4(%rbp)
	je	.L183
	cmpl	$128, -4(%rbp)
	jg	.L182
	cmpl	$64, -4(%rbp)
	je	.L199
	cmpl	$64, -4(%rbp)
	jg	.L182
	cmpl	$8, -4(%rbp)
	je	.L199
	cmpl	$8, -4(%rbp)
	jg	.L182
	cmpl	$4, -4(%rbp)
	je	.L183
	cmpl	$4, -4(%rbp)
	jg	.L182
	cmpl	$1, -4(%rbp)
	je	.L185
	cmpl	$2, -4(%rbp)
	je	.L181
	jmp	.L182
.L185:
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC573(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L186
	movl	$0, %eax
	jmp	.L198
.L186:
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC574(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L200
	movl	$0, %eax
	jmp	.L198
.L181:
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC575(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L188
	movl	$0, %eax
	jmp	.L198
.L188:
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC576(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L189
	movl	$0, %eax
	jmp	.L198
.L189:
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC577(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L201
	movl	$0, %eax
	jmp	.L198
.L183:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L191
	movl	$0, %eax
	jmp	.L198
.L191:
	movl	-28(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L192
	leaq	.LC578(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L202
.L192:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L194
	leaq	.LC579(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L202
.L194:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L195
	movq	-56(%rbp), %rax
	cmpq	$2, %rax
	ja	.L196
	movl	$0, %eax
	jmp	.L198
.L196:
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	leaq	ssl_groups_tbl(%rip), %rcx
	movl	-8(%rbp), %eax
	movl	$49, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-8(%rbp), %edx
	leaq	.LC580(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	%rax, -56(%rbp)
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC581(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L202
	movl	$0, %eax
	jmp	.L198
.L195:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC582(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L198
.L199:
	nop
	jmp	.L182
.L200:
	nop
	jmp	.L182
.L201:
	nop
	jmp	.L182
.L202:
	nop
.L182:
	movl	-4(%rbp), %eax
	andl	$456, %eax
	testl	%eax, %eax
	jne	.L197
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_signature
.L197:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
.L198:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	ssl_print_server_keyex, .-ssl_print_server_keyex
	.section	.rodata
.LC583:
	.string	"ASN.1Cert, length=%d"
.LC584:
	.string	"<UNPARSEABLE CERTIFICATE>\n"
.LC585:
	.string	"\n------details-----\n"
.LC586:
	.string	"------------------\n"
	.align 8
.LC587:
	.string	"<TRAILING GARBAGE AFTER CERTIFICATE>\n"
	.text
	.type	ssl_print_certificate, @function
ssl_print_certificate:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$2, -8(%rbp)
	ja	.L204
	movl	$0, %eax
	jmp	.L211
.L204:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$3, %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L206
	movl	$0, %eax
	jmp	.L211
.L206:
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC583(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L207
	movq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509@PLT
	testq	%rax, %rax
	jne	.L207
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, -40(%rbp)
.L207:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L208
	leaq	.LC584(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L209
.L208:
	leaq	.LC585(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$8520479, %edx
	movq	%rax, %rdi
	call	X509_print_ex@PLT
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	leaq	.LC586(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
.L209:
	movq	-32(%rbp), %rax
	leaq	3(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L210
	leaq	.LC587(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L210:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$3, %rdx
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	subq	-32(%rbp), %rax
	leaq	-3(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	ssl_print_certificate, .-ssl_print_certificate
	.section	.rodata
.LC588:
	.string	"raw_public_key, length=%d\n"
	.text
	.type	ssl_print_raw_public_key, @function
ssl_print_raw_public_key:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$2, -8(%rbp)
	ja	.L213
	movl	$0, %eax
	jmp	.L217
.L213:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$3, %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L215
	movl	$0, %eax
	jmp	.L217
.L215:
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -32(%rbp)
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC588(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PUBKEY_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L216
	movl	$0, %eax
	jmp	.L217
.L216:
	movl	-56(%rbp), %eax
	leal	2(%rax), %edx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$3, %rdx
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	subq	-16(%rbp), %rax
	leaq	-3(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ssl_print_raw_public_key, .-ssl_print_raw_public_key
	.section	.rodata
.LC589:
	.string	"context"
.LC590:
	.string	"certificate_list, length=%d\n"
	.text
	.type	ssl_print_certificates, @function
ssl_print_certificates:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L219
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L219
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L219
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC589(%rip), %rdx
	movl	-40(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L219
	movl	$0, %eax
	jmp	.L231
.L219:
	movq	-56(%rbp), %rax
	cmpq	$2, %rax
	ja	.L221
	movl	$0, %eax
	jmp	.L231
.L221:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	3(%rax), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L222
	movl	$0, %eax
	jmp	.L231
.L222:
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L223
	movq	-32(%rbp), %rax
	movzbl	2746(%rax), %eax
	cmpb	$2, %al
	je	.L224
.L223:
	cmpl	$0, -36(%rbp)
	jne	.L225
	movq	-32(%rbp), %rax
	movzbl	2744(%rax), %eax
	cmpb	$2, %al
	jne	.L225
.L224:
	movq	-32(%rbp), %rsi
	leaq	-8(%rbp), %r8
	leaq	-48(%rbp), %rdi
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_raw_public_key
	testl	%eax, %eax
	jne	.L226
	movl	$0, %eax
	jmp	.L231
.L226:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L227
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L227
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L227
	movl	-40(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-8(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$11, %ecx
	movq	%rax, %rdi
	call	ssl_print_extensions
	testl	%eax, %eax
	jne	.L227
	movl	$0, %eax
	jmp	.L231
.L227:
	movl	$1, %eax
	jmp	.L231
.L225:
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC590(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L228
.L230:
	movl	-40(%rbp), %eax
	leal	2(%rax), %edi
	leaq	-8(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ssl_print_certificate
	testl	%eax, %eax
	jne	.L229
	movl	$0, %eax
	jmp	.L231
.L229:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L228
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L228
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L228
	movl	-40(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-8(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$11, %ecx
	movq	%rax, %rdi
	call	ssl_print_extensions
	testl	%eax, %eax
	jne	.L228
	movl	$0, %eax
	jmp	.L231
.L228:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L230
	movl	$1, %eax
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ssl_print_certificates, .-ssl_print_certificates
	.section	.rodata
.LC591:
	.string	"Compression type=%s (0x%04x)\n"
.LC592:
	.string	"Uncompressed length=%d\n"
	.align 8
.LC593:
	.string	"Compressed length=%d, Ratio=%f:1\n"
	.align 8
.LC594:
	.string	"Compressed length=%d, Ratio=unknown\n"
	.text
	.type	ssl_print_compressed_certificates, @function
ssl_print_compressed_certificates:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$7, -72(%rbp)
	ja	.L233
	movl	$0, %eax
	jmp	.L234
.L233:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -72(%rbp)
	je	.L235
	movl	$0, %eax
	jmp	.L234
.L235:
	addq	$8, -64(%rbp)
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movl	-8(%rbp), %eax
	leaq	ssl_comp_cert_tbl(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-8(%rbp), %edx
	leaq	.LC591(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC592(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	cmpq	$0, -24(%rbp)
	je	.L236
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	js	.L237
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L238
.L237:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L238:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	js	.L239
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	jmp	.L240
.L239:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2ssq	%rdx, %xmm1
	addss	%xmm1, %xmm1
.L240:
	divss	%xmm1, %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC593(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rdx, %xmm0
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	BIO_printf@PLT
	jmp	.L241
.L236:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC594(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L241:
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	movl	-56(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	BIO_dump_indent@PLT
	movl	-4(%rbp), %eax
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ssl_print_compressed_certificates, .-ssl_print_compressed_certificates
	.section	.rodata
.LC595:
	.string	"request_context"
.LC596:
	.string	"certificate_types (len=%d)\n"
	.align 8
.LC597:
	.string	"signature_algorithms (len=%d)\n"
	.align 8
.LC598:
	.string	"certificate_authorities (len=%d)\n"
.LC599:
	.string	"DistinguishedName (len=%d): "
.LC600:
	.string	"<UNPARSEABLE DN>\n"
.LC601:
	.string	"request_extensions"
	.text
	.type	ssl_print_cert_request, @function
ssl_print_cert_request:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L243
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L243
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L243
	leaq	-88(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	leaq	.LC595(%rip), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L244
	movl	$0, %eax
	jmp	.L245
.L244:
	leaq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$13, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ssl_print_extensions
	testl	%eax, %eax
	jne	.L246
	movl	$0, %eax
	jmp	.L245
.L246:
	movl	$1, %eax
	jmp	.L245
.L243:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L247
	movl	$0, %eax
	jmp	.L245
.L247:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	-88(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L248
	movl	$0, %eax
	jmp	.L245
.L248:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC596(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-80(%rbp), %rdx
	movl	-60(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_ctype_tbl(%rip), %rdi
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	$12
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L249
	movl	$0, %eax
	jmp	.L245
.L249:
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L250
	movq	-88(%rbp), %rax
	cmpq	$1, %rax
	ja	.L251
	movl	$0, %eax
	jmp	.L245
.L251:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	-88(%rbp), %rdx
	cmpq	%rax, %rdx
	jb	.L252
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L253
.L252:
	movl	$0, %eax
	jmp	.L245
.L253:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC597(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L254
.L255:
	movl	-60(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	leaq	ssl_sigalg_tbl(%rip), %rcx
	movl	$31, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-12(%rbp), %edx
	leaq	.LC534(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	subq	$2, -8(%rbp)
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
.L254:
	cmpq	$0, -8(%rbp)
	jne	.L255
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
.L250:
	movq	-88(%rbp), %rax
	cmpq	$1, %rax
	ja	.L256
	movl	$0, %eax
	jmp	.L245
.L256:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -8(%rbp)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	-88(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L257
	movl	$0, %eax
	jmp	.L245
.L257:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC598(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L258
.L264:
	cmpq	$1, -8(%rbp)
	ja	.L259
	movl	$0, %eax
	jmp	.L245
.L259:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L261
	movl	$0, %eax
	jmp	.L245
.L261:
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movl	-60(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	leaq	.LC599(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_NAME@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L262
	leaq	.LC600(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L263
.L262:
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$8520479, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	leaq	.LC526(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
.L263:
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
.L258:
	cmpq	$0, -8(%rbp)
	jne	.L264
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L265
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L265
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L265
	leaq	-88(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	leaq	.LC601(%rip), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L265
	movl	$0, %eax
	jmp	.L245
.L265:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	ssl_print_cert_request, .-ssl_print_cert_request
	.section	.rodata
.LC602:
	.string	"No Ticket\n"
.LC603:
	.string	"ticket_lifetime_hint=%u\n"
.LC604:
	.string	"ticket_age_add=%u\n"
.LC605:
	.string	"ticket_nonce"
	.text
	.type	ssl_print_ticket, @function
ssl_print_ticket:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L267
	movl	-28(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	leaq	.LC602(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
	jmp	.L268
.L267:
	movq	-56(%rbp), %rax
	cmpq	$3, %rax
	ja	.L269
	movl	$0, %eax
	jmp	.L268
.L269:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movl	-4(%rbp), %edx
	leaq	.LC603(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L270
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L270
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L270
	movq	-56(%rbp), %rax
	cmpq	$3, %rax
	ja	.L271
	movl	$0, %eax
	jmp	.L268
.L271:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movl	-8(%rbp), %edx
	leaq	.LC604(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC605(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L270
	movl	$0, %eax
	jmp	.L268
.L270:
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	.LC538(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$2, %ecx
	movq	%rax, %rdi
	call	ssl_print_hexbuf
	testl	%eax, %eax
	jne	.L272
	movl	$0, %eax
	jmp	.L268
.L272:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L273
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L273
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L273
	movl	-28(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$4, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ssl_print_extensions
	testl	%eax, %eax
	jne	.L273
	movl	$0, %eax
	jmp	.L268
.L273:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L274
	movl	$0, %eax
	jmp	.L268
.L274:
	movl	$1, %eax
.L268:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	ssl_print_ticket, .-ssl_print_ticket
	.section	.rodata
.LC606:
	.string	"%s, Length=%d\n"
	.align 8
.LC607:
	.string	"message_seq=%d, fragment_offset=%d, fragment_length=%d\n"
.LC608:
	.string	"verify_data"
.LC609:
	.string	"unexpected value"
	.align 8
.LC610:
	.string	"Unsupported, hex dump follows:\n"
	.text
	.type	ssl_print_handshake, @function
ssl_print_handshake:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -56(%rbp)
	movq	-72(%rbp), %rax
	cmpq	$3, %rax
	ja	.L276
	movl	$0, %eax
	jmp	.L277
.L276:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	movq	%rax, -32(%rbp)
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-32(%rbp), %rax
	movl	%eax, %ebx
	movzbl	-17(%rbp), %eax
	leaq	ssl_handshake_tbl(%rip), %rcx
	movl	$21, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdx
	leaq	.LC606(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L278
	movq	-72(%rbp), %rax
	cmpq	$7, %rax
	ja	.L279
	movl	$0, %eax
	jmp	.L277
.L279:
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %edi
	orl	%eax, %edi
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	leaq	.LC607(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -72(%rbp)
.L278:
	movq	-72(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L280
	movl	$0, %eax
	jmp	.L277
.L280:
	movzbl	-17(%rbp), %eax
	cmpl	$25, %eax
	je	.L281
	cmpl	$25, %eax
	jg	.L282
	cmpl	$24, %eax
	je	.L283
	cmpl	$24, %eax
	jg	.L282
	cmpl	$20, %eax
	je	.L284
	cmpl	$20, %eax
	jg	.L282
	cmpl	$16, %eax
	je	.L285
	cmpl	$16, %eax
	jg	.L282
	cmpl	$15, %eax
	je	.L286
	cmpl	$15, %eax
	jg	.L282
	cmpl	$14, %eax
	je	.L287
	cmpl	$14, %eax
	jg	.L282
	cmpl	$13, %eax
	je	.L288
	cmpl	$13, %eax
	jg	.L282
	cmpl	$12, %eax
	je	.L289
	cmpl	$12, %eax
	jg	.L282
	cmpl	$11, %eax
	je	.L290
	cmpl	$11, %eax
	jg	.L282
	cmpl	$8, %eax
	je	.L291
	cmpl	$8, %eax
	jg	.L282
	cmpl	$4, %eax
	je	.L292
	cmpl	$4, %eax
	jg	.L282
	cmpl	$3, %eax
	je	.L293
	cmpl	$3, %eax
	jg	.L282
	cmpl	$1, %eax
	je	.L294
	cmpl	$2, %eax
	je	.L295
	jmp	.L282
.L294:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %eax
	leal	2(%rax), %edi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ssl_print_client_hello
	testl	%eax, %eax
	jne	.L311
	movl	$0, %eax
	jmp	.L277
.L293:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dtls_print_hello_vfyrequest
	testl	%eax, %eax
	jne	.L312
	movl	$0, %eax
	jmp	.L277
.L295:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_print_server_hello
	testl	%eax, %eax
	jne	.L313
	movl	$0, %eax
	jmp	.L277
.L289:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_server_keyex
	testl	%eax, %eax
	jne	.L314
	movl	$0, %eax
	jmp	.L277
.L285:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_client_keyex
	testl	%eax, %eax
	jne	.L315
	movl	$0, %eax
	jmp	.L277
.L290:
	movq	-72(%rbp), %r8
	movq	-64(%rbp), %rdi
	movl	-56(%rbp), %eax
	leal	2(%rax), %ecx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_certificates
	testl	%eax, %eax
	jne	.L316
	movl	$0, %eax
	jmp	.L277
.L281:
	movq	-72(%rbp), %r8
	movq	-64(%rbp), %rdi
	movl	-56(%rbp), %eax
	leal	2(%rax), %ecx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_compressed_certificates
	testl	%eax, %eax
	jne	.L317
	movl	$0, %eax
	jmp	.L277
.L286:
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-72(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_signature
	testl	%eax, %eax
	jne	.L318
	movl	$0, %eax
	jmp	.L277
.L288:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_cert_request
	testl	%eax, %eax
	jne	.L319
	movl	$0, %eax
	jmp	.L277
.L284:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	leaq	.LC608(%rip), %rdi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	jmp	.L297
.L287:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L320
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	leaq	.LC609(%rip), %rdi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	jmp	.L320
.L292:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_print_ticket
	testl	%eax, %eax
	jne	.L321
	movl	$0, %eax
	jmp	.L277
.L291:
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$8, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ssl_print_extensions
	testl	%eax, %eax
	jne	.L322
	movl	$0, %eax
	jmp	.L277
.L283:
	movq	-72(%rbp), %rax
	cmpq	$1, %rax
	je	.L309
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	leaq	.LC609(%rip), %rdi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_print_hex
	movl	$0, %eax
	jmp	.L277
.L309:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %eax
	leal	2(%rax), %esi
	leaq	ssl_key_update_tbl(%rip), %rdi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$2
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	do_ssl_trace_list
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L323
	movl	$0, %eax
	jmp	.L277
.L282:
	movl	-56(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	$80, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	leaq	.LC610(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	-56(%rbp), %eax
	leal	4(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	BIO_dump_indent@PLT
	jmp	.L297
.L311:
	nop
	jmp	.L297
.L312:
	nop
	jmp	.L297
.L313:
	nop
	jmp	.L297
.L314:
	nop
	jmp	.L297
.L315:
	nop
	jmp	.L297
.L316:
	nop
	jmp	.L297
.L317:
	nop
	jmp	.L297
.L318:
	nop
	jmp	.L297
.L319:
	nop
	jmp	.L297
.L320:
	nop
	jmp	.L297
.L321:
	nop
	jmp	.L297
.L322:
	nop
	jmp	.L297
.L323:
	nop
.L297:
	movl	$1, %eax
.L277:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	ssl_print_handshake, .-ssl_print_handshake
	.section	.rodata
.LC611:
	.string	"Sent"
.LC612:
	.string	"Received"
.LC613:
	.string	" too short message"
	.align 8
.LC614:
	.string	" TLS Record\nHeader:\n  Version = %s (0x%x)\n"
	.align 8
.LC615:
	.string	"  epoch=%d, sequence_number=%04x%04x%04x\n"
	.align 8
.LC616:
	.string	"  Content Type = %s (%d)\n  Length = %d"
	.align 8
.LC617:
	.string	"  Inner Content Type = %s (%d)"
.LC618:
	.string	"Message length parse error!\n"
.LC619:
	.string	"    change_cipher_spec (1)\n"
.LC620:
	.string	"unknown value"
.LC621:
	.string	"    Illegal Alert Length\n"
	.align 8
.LC622:
	.string	"    Level=%s(%d), description=%s(%d)\n"
	.text
	.globl	SSL_trace
	.type	SSL_trace, @function
SSL_trace:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movl	%edx, -92(%rbp)
	movq	%rcx, -104(%rbp)
	movq	%r8, -112(%rbp)
	movq	%r9, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L325
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L326
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L327
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L328
.L327:
	movq	$0, -40(%rbp)
	jmp	.L328
.L326:
	movq	-120(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L328
.L325:
	movq	$0, -40(%rbp)
.L328:
	cmpq	$0, -120(%rbp)
	je	.L329
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L330
	movq	-120(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L331
.L330:
	movq	$0, -48(%rbp)
	jmp	.L331
.L329:
	movq	$0, -48(%rbp)
.L331:
	cmpq	$0, -48(%rbp)
	je	.L332
	movq	-120(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movl	-92(%rbp), %edx
	movl	-88(%rbp), %esi
	movl	-84(%rbp), %eax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	ossl_quic_trace@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L355
.L332:
	cmpq	$0, -40(%rbp)
	je	.L356
	cmpl	$257, -92(%rbp)
	je	.L335
	cmpl	$257, -92(%rbp)
	jg	.L336
	cmpl	$256, -92(%rbp)
	je	.L337
	cmpl	$256, -92(%rbp)
	jg	.L336
	cmpl	$22, -92(%rbp)
	je	.L338
	cmpl	$22, -92(%rbp)
	jg	.L336
	cmpl	$20, -92(%rbp)
	je	.L339
	cmpl	$21, -92(%rbp)
	je	.L340
	jmp	.L336
.L337:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L341
	movl	$13, %eax
	jmp	.L342
.L341:
	movl	$5, %eax
.L342:
	cmpq	%rax, -112(%rbp)
	jnb	.L343
	cmpl	$0, -84(%rbp)
	je	.L344
	leaq	.LC611(%rip), %rax
	jmp	.L345
.L344:
	leaq	.LC612(%rip), %rax
.L345:
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_puts@PLT
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	.LC613(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_print_hex
	jmp	.L336
.L343:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L346
	leaq	.LC611(%rip), %rax
	jmp	.L347
.L346:
	leaq	.LC612(%rip), %rax
.L347:
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_puts@PLT
	leaq	ssl_version_tbl(%rip), %rcx
	movl	-68(%rbp), %eax
	movl	$8, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdi
	movl	-68(%rbp), %edx
	leaq	.LC614(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L348
	movq	-56(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	%edx, %r8d
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %edi
	orl	%eax, %edi
	movq	-56(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	leaq	.LC615(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L348:
	movq	-112(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	%edx, %r12d
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	ssl_content_tbl(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdx
	leaq	.LC616(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	%r12d, %r8d
	movl	%ebx, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L336
.L335:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	ssl_content_tbl(%rip), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	do_ssl_trace_str
	movq	%rax, %rdx
	leaq	.LC617(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L336
.L338:
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L349
	cmpl	$0, -84(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L350
.L349:
	movl	-84(%rbp), %eax
.L350:
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movl	$4, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	call	ssl_print_handshake
	testl	%eax, %eax
	jne	.L357
	leaq	.LC618(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L357
.L339:
	cmpq	$1, -112(%rbp)
	jne	.L352
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L352
	leaq	.LC619(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L336
.L352:
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	.LC620(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ssl_print_hex
	jmp	.L336
.L340:
	cmpq	$2, -112(%rbp)
	je	.L354
	leaq	.LC621(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L336
.L354:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r13d
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	SSL_alert_desc_string_long@PLT
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edi
	call	SSL_alert_type_string_long@PLT
	movq	%rax, %rdx
	leaq	.LC622(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	%r13d, %r9d
	movq	%r12, %r8
	movl	%ebx, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L336
.L357:
	nop
.L336:
	leaq	.LC526(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L324
.L355:
	nop
	jmp	.L324
.L356:
	nop
.L324:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	SSL_trace, .-SSL_trace
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
