	.file	"x509_txt.c"
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
	.section	.rodata
.LC0:
	.string	"ok"
	.align 8
.LC1:
	.string	"unspecified certificate verification error"
	.align 8
.LC2:
	.string	"unable to get issuer certificate"
.LC3:
	.string	"unable to get certificate CRL"
	.align 8
.LC4:
	.string	"unable to decrypt certificate's signature"
	.align 8
.LC5:
	.string	"unable to decrypt CRL's signature"
	.align 8
.LC6:
	.string	"unable to decode issuer public key"
.LC7:
	.string	"certificate signature failure"
.LC8:
	.string	"CRL signature failure"
.LC9:
	.string	"certificate is not yet valid"
.LC10:
	.string	"certificate has expired"
.LC11:
	.string	"CRL is not yet valid"
.LC12:
	.string	"CRL has expired"
	.align 8
.LC13:
	.string	"format error in certificate's notBefore field"
	.align 8
.LC14:
	.string	"format error in certificate's notAfter field"
	.align 8
.LC15:
	.string	"format error in CRL's lastUpdate field"
	.align 8
.LC16:
	.string	"format error in CRL's nextUpdate field"
.LC17:
	.string	"out of memory"
.LC18:
	.string	"self-signed certificate"
	.align 8
.LC19:
	.string	"self-signed certificate in certificate chain"
	.align 8
.LC20:
	.string	"unable to get local issuer certificate"
	.align 8
.LC21:
	.string	"unable to verify the first certificate"
.LC22:
	.string	"certificate chain too long"
.LC23:
	.string	"certificate revoked"
	.align 8
.LC24:
	.string	"issuer certificate doesn't have a public key"
	.align 8
.LC25:
	.string	"path length constraint exceeded"
	.align 8
.LC26:
	.string	"unsuitable certificate purpose"
.LC27:
	.string	"certificate not trusted"
.LC28:
	.string	"certificate rejected"
.LC29:
	.string	"subject issuer mismatch"
	.align 8
.LC30:
	.string	"authority and subject key identifier mismatch"
	.align 8
.LC31:
	.string	"authority and issuer serial number mismatch"
	.align 8
.LC32:
	.string	"key usage does not include certificate signing"
	.align 8
.LC33:
	.string	"unable to get CRL issuer certificate"
.LC34:
	.string	"unhandled critical extension"
	.align 8
.LC35:
	.string	"key usage does not include CRL signing"
	.align 8
.LC36:
	.string	"unhandled critical CRL extension"
	.align 8
.LC37:
	.string	"invalid non-CA certificate (has CA markings)"
	.align 8
.LC38:
	.string	"proxy path length constraint exceeded"
	.align 8
.LC39:
	.string	"key usage does not include digital signature"
	.align 8
.LC40:
	.string	"proxy certificates not allowed, please set the appropriate flag"
	.align 8
.LC41:
	.string	"invalid or inconsistent certificate extension"
	.align 8
.LC42:
	.string	"invalid or inconsistent certificate policy extension"
.LC43:
	.string	"no explicit policy"
.LC44:
	.string	"different CRL scope"
.LC45:
	.string	"unsupported extension feature"
	.align 8
.LC46:
	.string	"RFC 3779 resource not subset of parent's resources"
.LC47:
	.string	"permitted subtree violation"
.LC48:
	.string	"excluded subtree violation"
	.align 8
.LC49:
	.string	"name constraints minimum and maximum not supported"
	.align 8
.LC50:
	.string	"application verification failure"
	.align 8
.LC51:
	.string	"unsupported name constraint type"
	.align 8
.LC52:
	.string	"unsupported or invalid name constraint syntax"
	.align 8
.LC53:
	.string	"unsupported or invalid name syntax"
.LC54:
	.string	"CRL path validation error"
.LC55:
	.string	"path loop"
	.align 8
.LC56:
	.string	"Suite B: certificate version invalid"
	.align 8
.LC57:
	.string	"Suite B: invalid public key algorithm"
.LC58:
	.string	"Suite B: invalid ECC curve"
	.align 8
.LC59:
	.string	"Suite B: invalid signature algorithm"
	.align 8
.LC60:
	.string	"Suite B: curve not allowed for this LOS"
	.align 8
.LC61:
	.string	"Suite B: cannot sign P-384 with P-256"
.LC62:
	.string	"hostname mismatch"
.LC63:
	.string	"email address mismatch"
.LC64:
	.string	"IP address mismatch"
.LC65:
	.string	"no matching DANE TLSA records"
.LC66:
	.string	"EE certificate key too weak"
.LC67:
	.string	"CA certificate key too weak"
	.align 8
.LC68:
	.string	"CA signature digest algorithm too weak"
	.align 8
.LC69:
	.string	"invalid certificate verification context"
	.align 8
.LC70:
	.string	"issuer certificate lookup error"
	.align 8
.LC71:
	.string	"Certificate Transparency required, but no valid SCTs found"
.LC72:
	.string	"proxy subject name violation"
.LC73:
	.string	"OCSP verification needed"
.LC74:
	.string	"OCSP verification failed"
.LC75:
	.string	"OCSP unknown cert"
	.align 8
.LC76:
	.string	"Cannot find certificate signature algorithm"
	.align 8
.LC77:
	.string	"subject signature algorithm and issuer public key algorithm mismatch"
	.align 8
.LC78:
	.string	"cert info signature and signature algorithm mismatch"
.LC79:
	.string	"invalid CA certificate"
	.align 8
.LC80:
	.string	"Path length invalid for non-CA cert"
	.align 8
.LC81:
	.string	"Path length given without key usage keyCertSign"
	.align 8
.LC82:
	.string	"Key usage keyCertSign invalid for non-CA cert"
.LC83:
	.string	"Issuer name empty"
.LC84:
	.string	"Subject name empty"
	.align 8
.LC85:
	.string	"Missing Authority Key Identifier"
	.align 8
.LC86:
	.string	"Missing Subject Key Identifier"
	.align 8
.LC87:
	.string	"Empty Subject Alternative Name extension"
	.align 8
.LC88:
	.string	"Basic Constraints of CA cert not marked critical"
	.align 8
.LC89:
	.string	"Subject empty and Subject Alt Name extension not critical"
	.align 8
.LC90:
	.string	"Authority Key Identifier marked critical"
	.align 8
.LC91:
	.string	"Subject Key Identifier marked critical"
	.align 8
.LC92:
	.string	"CA cert does not include key usage extension"
	.align 8
.LC93:
	.string	"Using cert extension requires at least X509v3"
	.align 8
.LC94:
	.string	"Certificate public key has explicit ECC parameters"
	.align 8
.LC95:
	.string	"Raw public key untrusted, no trusted keys configured"
	.align 8
.LC96:
	.string	"unknown certificate verification error"
	.text
	.globl	X509_verify_cert_error_string
	.type	X509_verify_cert_error_string, @function
X509_verify_cert_error_string:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$95, %eax
	je	.L6
	cmpl	$95, %eax
	jg	.L7
	cmpl	$94, %eax
	je	.L8
	cmpl	$94, %eax
	jg	.L7
	cmpl	$93, %eax
	je	.L9
	cmpl	$93, %eax
	jg	.L7
	cmpl	$92, %eax
	je	.L10
	cmpl	$92, %eax
	jg	.L7
	cmpl	$91, %eax
	je	.L11
	cmpl	$91, %eax
	jg	.L7
	cmpl	$90, %eax
	je	.L12
	cmpl	$90, %eax
	jg	.L7
	cmpl	$89, %eax
	je	.L13
	cmpl	$89, %eax
	jg	.L7
	cmpl	$88, %eax
	je	.L14
	cmpl	$88, %eax
	jg	.L7
	cmpl	$87, %eax
	je	.L15
	cmpl	$87, %eax
	jg	.L7
	cmpl	$86, %eax
	je	.L16
	cmpl	$86, %eax
	jg	.L7
	cmpl	$85, %eax
	je	.L17
	cmpl	$85, %eax
	jg	.L7
	cmpl	$84, %eax
	je	.L18
	cmpl	$84, %eax
	jg	.L7
	cmpl	$83, %eax
	je	.L19
	cmpl	$83, %eax
	jg	.L7
	cmpl	$82, %eax
	je	.L20
	cmpl	$82, %eax
	jg	.L7
	cmpl	$81, %eax
	je	.L21
	cmpl	$81, %eax
	jg	.L7
	cmpl	$80, %eax
	je	.L22
	cmpl	$80, %eax
	jg	.L7
	cmpl	$79, %eax
	je	.L23
	cmpl	$79, %eax
	jg	.L7
	cmpl	$78, %eax
	je	.L24
	cmpl	$78, %eax
	jg	.L7
	cmpl	$77, %eax
	je	.L25
	cmpl	$77, %eax
	jg	.L7
	cmpl	$76, %eax
	je	.L26
	cmpl	$76, %eax
	jg	.L7
	cmpl	$75, %eax
	je	.L27
	cmpl	$75, %eax
	jg	.L7
	cmpl	$74, %eax
	je	.L28
	cmpl	$74, %eax
	jg	.L7
	cmpl	$73, %eax
	je	.L29
	cmpl	$73, %eax
	jg	.L7
	cmpl	$72, %eax
	je	.L30
	cmpl	$72, %eax
	jg	.L7
	cmpl	$71, %eax
	je	.L31
	cmpl	$71, %eax
	jg	.L7
	cmpl	$70, %eax
	je	.L32
	cmpl	$70, %eax
	jg	.L7
	cmpl	$69, %eax
	je	.L33
	cmpl	$69, %eax
	jg	.L7
	cmpl	$68, %eax
	je	.L34
	cmpl	$68, %eax
	jg	.L7
	cmpl	$67, %eax
	je	.L35
	cmpl	$67, %eax
	jg	.L7
	cmpl	$66, %eax
	je	.L36
	cmpl	$66, %eax
	jg	.L7
	cmpl	$65, %eax
	je	.L37
	cmpl	$65, %eax
	jg	.L7
	cmpl	$64, %eax
	je	.L38
	cmpl	$64, %eax
	jg	.L7
	cmpl	$63, %eax
	je	.L39
	cmpl	$63, %eax
	jg	.L7
	cmpl	$62, %eax
	je	.L40
	cmpl	$62, %eax
	jg	.L7
	cmpl	$61, %eax
	je	.L41
	cmpl	$61, %eax
	jg	.L7
	cmpl	$60, %eax
	je	.L42
	cmpl	$60, %eax
	jg	.L7
	cmpl	$59, %eax
	je	.L43
	cmpl	$59, %eax
	jg	.L7
	cmpl	$58, %eax
	je	.L44
	cmpl	$58, %eax
	jg	.L7
	cmpl	$57, %eax
	je	.L45
	cmpl	$57, %eax
	jg	.L7
	cmpl	$56, %eax
	je	.L46
	cmpl	$56, %eax
	jg	.L7
	cmpl	$55, %eax
	je	.L47
	cmpl	$55, %eax
	jg	.L7
	cmpl	$54, %eax
	je	.L48
	cmpl	$54, %eax
	jg	.L7
	cmpl	$53, %eax
	je	.L49
	cmpl	$53, %eax
	jg	.L7
	cmpl	$52, %eax
	je	.L50
	cmpl	$52, %eax
	jg	.L7
	cmpl	$51, %eax
	je	.L51
	cmpl	$51, %eax
	jg	.L7
	cmpl	$50, %eax
	je	.L52
	cmpl	$50, %eax
	jg	.L7
	cmpl	$49, %eax
	je	.L53
	cmpl	$49, %eax
	jg	.L7
	cmpl	$48, %eax
	je	.L54
	cmpl	$48, %eax
	jg	.L7
	cmpl	$47, %eax
	je	.L55
	cmpl	$47, %eax
	jg	.L7
	cmpl	$46, %eax
	je	.L56
	cmpl	$46, %eax
	jg	.L7
	cmpl	$45, %eax
	je	.L57
	cmpl	$45, %eax
	jg	.L7
	cmpl	$44, %eax
	je	.L58
	cmpl	$44, %eax
	jg	.L7
	cmpl	$43, %eax
	je	.L59
	cmpl	$43, %eax
	jg	.L7
	cmpl	$42, %eax
	je	.L60
	cmpl	$42, %eax
	jg	.L7
	cmpl	$41, %eax
	je	.L61
	cmpl	$41, %eax
	jg	.L7
	cmpl	$40, %eax
	je	.L62
	cmpl	$40, %eax
	jg	.L7
	cmpl	$39, %eax
	je	.L63
	cmpl	$39, %eax
	jg	.L7
	cmpl	$38, %eax
	je	.L64
	cmpl	$38, %eax
	jg	.L7
	cmpl	$37, %eax
	je	.L65
	cmpl	$37, %eax
	jg	.L7
	cmpl	$36, %eax
	je	.L66
	cmpl	$36, %eax
	jg	.L7
	cmpl	$35, %eax
	je	.L67
	cmpl	$35, %eax
	jg	.L7
	cmpl	$34, %eax
	je	.L68
	cmpl	$34, %eax
	jg	.L7
	cmpl	$33, %eax
	je	.L69
	cmpl	$33, %eax
	jg	.L7
	cmpl	$32, %eax
	je	.L70
	cmpl	$32, %eax
	jg	.L7
	cmpl	$31, %eax
	je	.L71
	cmpl	$31, %eax
	jg	.L7
	cmpl	$30, %eax
	je	.L72
	cmpl	$30, %eax
	jg	.L7
	cmpl	$29, %eax
	je	.L73
	cmpl	$29, %eax
	jg	.L7
	cmpl	$28, %eax
	je	.L74
	cmpl	$28, %eax
	jg	.L7
	cmpl	$27, %eax
	je	.L75
	cmpl	$27, %eax
	jg	.L7
	cmpl	$26, %eax
	je	.L76
	cmpl	$26, %eax
	jg	.L7
	cmpl	$25, %eax
	je	.L77
	cmpl	$25, %eax
	jg	.L7
	cmpl	$24, %eax
	je	.L78
	cmpl	$24, %eax
	jg	.L7
	cmpl	$23, %eax
	je	.L79
	cmpl	$23, %eax
	jg	.L7
	cmpl	$22, %eax
	je	.L80
	cmpl	$22, %eax
	jg	.L7
	cmpl	$21, %eax
	je	.L81
	cmpl	$21, %eax
	jg	.L7
	cmpl	$20, %eax
	je	.L82
	cmpl	$20, %eax
	jg	.L7
	cmpl	$19, %eax
	je	.L83
	cmpl	$19, %eax
	jg	.L7
	cmpl	$18, %eax
	je	.L84
	cmpl	$18, %eax
	jg	.L7
	cmpl	$17, %eax
	je	.L85
	cmpl	$17, %eax
	jg	.L7
	cmpl	$16, %eax
	je	.L86
	cmpl	$16, %eax
	jg	.L7
	cmpl	$15, %eax
	je	.L87
	cmpl	$15, %eax
	jg	.L7
	cmpl	$14, %eax
	je	.L88
	cmpl	$14, %eax
	jg	.L7
	cmpl	$13, %eax
	je	.L89
	cmpl	$13, %eax
	jg	.L7
	cmpl	$12, %eax
	je	.L90
	cmpl	$12, %eax
	jg	.L7
	cmpl	$11, %eax
	je	.L91
	cmpl	$11, %eax
	jg	.L7
	cmpl	$10, %eax
	je	.L92
	cmpl	$10, %eax
	jg	.L7
	cmpl	$9, %eax
	je	.L93
	cmpl	$9, %eax
	jg	.L7
	cmpl	$8, %eax
	je	.L94
	cmpl	$8, %eax
	jg	.L7
	cmpl	$7, %eax
	je	.L95
	cmpl	$7, %eax
	jg	.L7
	cmpl	$6, %eax
	je	.L96
	cmpl	$6, %eax
	jg	.L7
	cmpl	$5, %eax
	je	.L97
	cmpl	$5, %eax
	jg	.L7
	cmpl	$4, %eax
	je	.L98
	cmpl	$4, %eax
	jg	.L7
	cmpl	$3, %eax
	je	.L99
	cmpl	$3, %eax
	jg	.L7
	cmpl	$2, %eax
	je	.L100
	cmpl	$2, %eax
	jg	.L7
	testl	%eax, %eax
	je	.L101
	cmpl	$1, %eax
	je	.L102
	jmp	.L7
.L101:
	leaq	.LC0(%rip), %rax
	jmp	.L103
.L102:
	leaq	.LC1(%rip), %rax
	jmp	.L103
.L100:
	leaq	.LC2(%rip), %rax
	jmp	.L103
.L99:
	leaq	.LC3(%rip), %rax
	jmp	.L103
.L98:
	leaq	.LC4(%rip), %rax
	jmp	.L103
.L97:
	leaq	.LC5(%rip), %rax
	jmp	.L103
.L96:
	leaq	.LC6(%rip), %rax
	jmp	.L103
.L95:
	leaq	.LC7(%rip), %rax
	jmp	.L103
.L94:
	leaq	.LC8(%rip), %rax
	jmp	.L103
.L93:
	leaq	.LC9(%rip), %rax
	jmp	.L103
.L92:
	leaq	.LC10(%rip), %rax
	jmp	.L103
.L91:
	leaq	.LC11(%rip), %rax
	jmp	.L103
.L90:
	leaq	.LC12(%rip), %rax
	jmp	.L103
.L89:
	leaq	.LC13(%rip), %rax
	jmp	.L103
.L88:
	leaq	.LC14(%rip), %rax
	jmp	.L103
.L87:
	leaq	.LC15(%rip), %rax
	jmp	.L103
.L86:
	leaq	.LC16(%rip), %rax
	jmp	.L103
.L85:
	leaq	.LC17(%rip), %rax
	jmp	.L103
.L84:
	leaq	.LC18(%rip), %rax
	jmp	.L103
.L83:
	leaq	.LC19(%rip), %rax
	jmp	.L103
.L82:
	leaq	.LC20(%rip), %rax
	jmp	.L103
.L81:
	leaq	.LC21(%rip), %rax
	jmp	.L103
.L80:
	leaq	.LC22(%rip), %rax
	jmp	.L103
.L79:
	leaq	.LC23(%rip), %rax
	jmp	.L103
.L78:
	leaq	.LC24(%rip), %rax
	jmp	.L103
.L77:
	leaq	.LC25(%rip), %rax
	jmp	.L103
.L76:
	leaq	.LC26(%rip), %rax
	jmp	.L103
.L75:
	leaq	.LC27(%rip), %rax
	jmp	.L103
.L74:
	leaq	.LC28(%rip), %rax
	jmp	.L103
.L73:
	leaq	.LC29(%rip), %rax
	jmp	.L103
.L72:
	leaq	.LC30(%rip), %rax
	jmp	.L103
.L71:
	leaq	.LC31(%rip), %rax
	jmp	.L103
.L70:
	leaq	.LC32(%rip), %rax
	jmp	.L103
.L69:
	leaq	.LC33(%rip), %rax
	jmp	.L103
.L68:
	leaq	.LC34(%rip), %rax
	jmp	.L103
.L67:
	leaq	.LC35(%rip), %rax
	jmp	.L103
.L66:
	leaq	.LC36(%rip), %rax
	jmp	.L103
.L65:
	leaq	.LC37(%rip), %rax
	jmp	.L103
.L64:
	leaq	.LC38(%rip), %rax
	jmp	.L103
.L63:
	leaq	.LC39(%rip), %rax
	jmp	.L103
.L62:
	leaq	.LC40(%rip), %rax
	jmp	.L103
.L61:
	leaq	.LC41(%rip), %rax
	jmp	.L103
.L60:
	leaq	.LC42(%rip), %rax
	jmp	.L103
.L59:
	leaq	.LC43(%rip), %rax
	jmp	.L103
.L58:
	leaq	.LC44(%rip), %rax
	jmp	.L103
.L57:
	leaq	.LC45(%rip), %rax
	jmp	.L103
.L56:
	leaq	.LC46(%rip), %rax
	jmp	.L103
.L55:
	leaq	.LC47(%rip), %rax
	jmp	.L103
.L54:
	leaq	.LC48(%rip), %rax
	jmp	.L103
.L53:
	leaq	.LC49(%rip), %rax
	jmp	.L103
.L52:
	leaq	.LC50(%rip), %rax
	jmp	.L103
.L51:
	leaq	.LC51(%rip), %rax
	jmp	.L103
.L50:
	leaq	.LC52(%rip), %rax
	jmp	.L103
.L49:
	leaq	.LC53(%rip), %rax
	jmp	.L103
.L48:
	leaq	.LC54(%rip), %rax
	jmp	.L103
.L47:
	leaq	.LC55(%rip), %rax
	jmp	.L103
.L46:
	leaq	.LC56(%rip), %rax
	jmp	.L103
.L45:
	leaq	.LC57(%rip), %rax
	jmp	.L103
.L44:
	leaq	.LC58(%rip), %rax
	jmp	.L103
.L43:
	leaq	.LC59(%rip), %rax
	jmp	.L103
.L42:
	leaq	.LC60(%rip), %rax
	jmp	.L103
.L41:
	leaq	.LC61(%rip), %rax
	jmp	.L103
.L40:
	leaq	.LC62(%rip), %rax
	jmp	.L103
.L39:
	leaq	.LC63(%rip), %rax
	jmp	.L103
.L38:
	leaq	.LC64(%rip), %rax
	jmp	.L103
.L37:
	leaq	.LC65(%rip), %rax
	jmp	.L103
.L36:
	leaq	.LC66(%rip), %rax
	jmp	.L103
.L35:
	leaq	.LC67(%rip), %rax
	jmp	.L103
.L34:
	leaq	.LC68(%rip), %rax
	jmp	.L103
.L33:
	leaq	.LC69(%rip), %rax
	jmp	.L103
.L32:
	leaq	.LC70(%rip), %rax
	jmp	.L103
.L31:
	leaq	.LC71(%rip), %rax
	jmp	.L103
.L30:
	leaq	.LC72(%rip), %rax
	jmp	.L103
.L29:
	leaq	.LC73(%rip), %rax
	jmp	.L103
.L28:
	leaq	.LC74(%rip), %rax
	jmp	.L103
.L27:
	leaq	.LC75(%rip), %rax
	jmp	.L103
.L26:
	leaq	.LC76(%rip), %rax
	jmp	.L103
.L25:
	leaq	.LC77(%rip), %rax
	jmp	.L103
.L24:
	leaq	.LC78(%rip), %rax
	jmp	.L103
.L23:
	leaq	.LC79(%rip), %rax
	jmp	.L103
.L22:
	leaq	.LC80(%rip), %rax
	jmp	.L103
.L21:
	leaq	.LC81(%rip), %rax
	jmp	.L103
.L20:
	leaq	.LC82(%rip), %rax
	jmp	.L103
.L19:
	leaq	.LC83(%rip), %rax
	jmp	.L103
.L18:
	leaq	.LC84(%rip), %rax
	jmp	.L103
.L17:
	leaq	.LC85(%rip), %rax
	jmp	.L103
.L16:
	leaq	.LC86(%rip), %rax
	jmp	.L103
.L15:
	leaq	.LC87(%rip), %rax
	jmp	.L103
.L13:
	leaq	.LC88(%rip), %rax
	jmp	.L103
.L14:
	leaq	.LC89(%rip), %rax
	jmp	.L103
.L12:
	leaq	.LC90(%rip), %rax
	jmp	.L103
.L11:
	leaq	.LC91(%rip), %rax
	jmp	.L103
.L10:
	leaq	.LC92(%rip), %rax
	jmp	.L103
.L9:
	leaq	.LC93(%rip), %rax
	jmp	.L103
.L8:
	leaq	.LC94(%rip), %rax
	jmp	.L103
.L6:
	leaq	.LC95(%rip), %rax
	jmp	.L103
.L7:
	leaq	.LC96(%rip), %rax
.L103:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	X509_verify_cert_error_string, .-X509_verify_cert_error_string
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
