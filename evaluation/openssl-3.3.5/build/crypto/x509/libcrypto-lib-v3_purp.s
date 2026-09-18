	.file	"v3_purp.c"
	.text
	.type	ossl_check_const_ASN1_OBJECT_sk_type, @function
ossl_check_const_ASN1_OBJECT_sk_type:
.LFB58:
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
.LFE58:
	.size	ossl_check_const_ASN1_OBJECT_sk_type, .-ossl_check_const_ASN1_OBJECT_sk_type
	.type	ossl_check_ASN1_OBJECT_sk_type, @function
ossl_check_ASN1_OBJECT_sk_type:
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
	.size	ossl_check_ASN1_OBJECT_sk_type, .-ossl_check_ASN1_OBJECT_sk_type
	.type	ossl_check_ASN1_OBJECT_freefunc_type, @function
ossl_check_ASN1_OBJECT_freefunc_type:
.LFB62:
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
.LFE62:
	.size	ossl_check_ASN1_OBJECT_freefunc_type, .-ossl_check_ASN1_OBJECT_freefunc_type
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
	.type	ossl_check_const_GENERAL_NAME_sk_type, @function
ossl_check_const_GENERAL_NAME_sk_type:
.LFB522:
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
.LFE522:
	.size	ossl_check_const_GENERAL_NAME_sk_type, .-ossl_check_const_GENERAL_NAME_sk_type
	.type	ossl_check_const_DIST_POINT_sk_type, @function
ossl_check_const_DIST_POINT_sk_type:
.LFB534:
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
.LFE534:
	.size	ossl_check_const_DIST_POINT_sk_type, .-ossl_check_const_DIST_POINT_sk_type
	.type	ossl_check_X509_PURPOSE_type, @function
ossl_check_X509_PURPOSE_type:
.LFB569:
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
.LFE569:
	.size	ossl_check_X509_PURPOSE_type, .-ossl_check_X509_PURPOSE_type
	.type	ossl_check_const_X509_PURPOSE_sk_type, @function
ossl_check_const_X509_PURPOSE_sk_type:
.LFB570:
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
.LFE570:
	.size	ossl_check_const_X509_PURPOSE_sk_type, .-ossl_check_const_X509_PURPOSE_sk_type
	.type	ossl_check_X509_PURPOSE_sk_type, @function
ossl_check_X509_PURPOSE_sk_type:
.LFB571:
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
.LFE571:
	.size	ossl_check_X509_PURPOSE_sk_type, .-ossl_check_X509_PURPOSE_sk_type
	.type	ossl_check_X509_PURPOSE_compfunc_type, @function
ossl_check_X509_PURPOSE_compfunc_type:
.LFB572:
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
.LFE572:
	.size	ossl_check_X509_PURPOSE_compfunc_type, .-ossl_check_X509_PURPOSE_compfunc_type
	.type	ossl_check_X509_PURPOSE_freefunc_type, @function
ossl_check_X509_PURPOSE_freefunc_type:
.LFB574:
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
.LFE574:
	.size	ossl_check_X509_PURPOSE_freefunc_type, .-ossl_check_X509_PURPOSE_freefunc_type
	.section	.rodata
.LC0:
	.string	"SSL client"
.LC1:
	.string	"sslclient"
.LC2:
	.string	"SSL server"
.LC3:
	.string	"sslserver"
.LC4:
	.string	"Netscape SSL server"
.LC5:
	.string	"nssslserver"
.LC6:
	.string	"S/MIME signing"
.LC7:
	.string	"smimesign"
.LC8:
	.string	"S/MIME encryption"
.LC9:
	.string	"smimeencrypt"
.LC10:
	.string	"CRL signing"
.LC11:
	.string	"crlsign"
.LC12:
	.string	"Any Purpose"
.LC13:
	.string	"any"
.LC14:
	.string	"OCSP helper"
.LC15:
	.string	"ocsphelper"
.LC16:
	.string	"Time Stamp signing"
.LC17:
	.string	"timestampsign"
.LC18:
	.string	"Code signing"
.LC19:
	.string	"codesign"
	.section	.data.rel.local,"aw"
	.align 32
	.type	xstandard, @object
	.size	xstandard, 480
xstandard:
	.long	1
	.long	2
	.long	0
	.zero	4
	.quad	check_purpose_ssl_client
	.quad	.LC0
	.quad	.LC1
	.quad	0
	.long	2
	.long	3
	.long	0
	.zero	4
	.quad	check_purpose_ssl_server
	.quad	.LC2
	.quad	.LC3
	.quad	0
	.long	3
	.long	3
	.long	0
	.zero	4
	.quad	check_purpose_ns_ssl_server
	.quad	.LC4
	.quad	.LC5
	.quad	0
	.long	4
	.long	4
	.long	0
	.zero	4
	.quad	check_purpose_smime_sign
	.quad	.LC6
	.quad	.LC7
	.quad	0
	.long	5
	.long	4
	.long	0
	.zero	4
	.quad	check_purpose_smime_encrypt
	.quad	.LC8
	.quad	.LC9
	.quad	0
	.long	6
	.long	1
	.long	0
	.zero	4
	.quad	check_purpose_crl_sign
	.quad	.LC10
	.quad	.LC11
	.quad	0
	.long	7
	.long	0
	.long	0
	.zero	4
	.quad	no_check_purpose
	.quad	.LC12
	.quad	.LC13
	.quad	0
	.long	8
	.long	1
	.long	0
	.zero	4
	.quad	check_purpose_ocsp_helper
	.quad	.LC14
	.quad	.LC15
	.quad	0
	.long	9
	.long	8
	.long	0
	.zero	4
	.quad	check_purpose_timestamp_sign
	.quad	.LC16
	.quad	.LC17
	.quad	0
	.long	10
	.long	5
	.long	0
	.zero	4
	.quad	check_purpose_code_sign
	.quad	.LC18
	.quad	.LC19
	.quad	0
	.local	xptable
	.comm	xptable,8,8
	.text
	.type	xp_cmp, @function
xp_cmp:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	xp_cmp, .-xp_cmp
	.globl	X509_check_purpose
	.type	X509_check_purpose, @function
X509_check_purpose:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509v3_cache_extensions@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$-1, %eax
	jmp	.L29
.L28:
	cmpl	$-1, -28(%rbp)
	jne	.L30
	movl	$1, %eax
	jmp	.L29
.L30:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get_by_id@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L31
	movl	$-1, %eax
	jmp	.L29
.L31:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get0@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %r8
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	X509_check_purpose, .-X509_check_purpose
	.section	.rodata
.LC20:
	.string	"../crypto/x509/v3_purp.c"
	.text
	.globl	X509_PURPOSE_set
	.type	X509_PURPOSE_set, @function
X509_PURPOSE_set:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get_by_id@PLT
	cmpl	$-1, %eax
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	X509_PURPOSE_set, .-X509_PURPOSE_set
	.globl	X509_PURPOSE_get_count
	.type	X509_PURPOSE_get_count, @function
X509_PURPOSE_get_count:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	xptable(%rip), %rax
	testq	%rax, %rax
	jne	.L36
	movl	$10, %eax
	jmp	.L37
.L36:
	movq	xptable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_PURPOSE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	$10, %eax
.L37:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	X509_PURPOSE_get_count, .-X509_PURPOSE_get_count
	.globl	X509_PURPOSE_get0
	.type	X509_PURPOSE_get0, @function
X509_PURPOSE_get0:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	cmpl	$9, -20(%rbp)
	jg	.L41
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	xstandard(%rip), %rax
	addq	%rdx, %rax
	jmp	.L40
.L41:
	movl	-20(%rbp), %eax
	subl	$10, %eax
	movl	%eax, %ebx
	movq	xptable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_PURPOSE_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	nop
.L40:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	X509_PURPOSE_get0, .-X509_PURPOSE_get0
	.globl	X509_PURPOSE_get_by_sname
	.type	X509_PURPOSE_get_by_sname, @function
X509_PURPOSE_get_by_sname:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L43
.L46:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get0@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L44
	movl	-4(%rbp), %eax
	jmp	.L45
.L44:
	addl	$1, -4(%rbp)
.L43:
	call	X509_PURPOSE_get_count@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L46
	movl	$-1, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	X509_PURPOSE_get_by_sname, .-X509_PURPOSE_get_by_sname
	.globl	X509_PURPOSE_get_by_id
	.type	X509_PURPOSE_get_by_id, @function
X509_PURPOSE_get_by_id:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jle	.L48
	cmpl	$10, -84(%rbp)
	jg	.L48
	movl	-84(%rbp), %eax
	subl	$1, %eax
	jmp	.L52
.L48:
	movq	xptable(%rip), %rax
	testq	%rax, %rax
	jne	.L50
	movl	$-1, %eax
	jmp	.L52
.L50:
	movl	-84(%rbp), %eax
	movl	%eax, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_PURPOSE_type
	movq	%rax, %rbx
	movq	xptable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_PURPOSE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L51
	movl	$-1, %eax
	jmp	.L52
.L51:
	movl	-20(%rbp), %eax
	addl	$10, %eax
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	X509_PURPOSE_get_by_id, .-X509_PURPOSE_get_by_id
	.globl	X509_PURPOSE_add
	.type	X509_PURPOSE_add, @function
X509_PURPOSE_add:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	andl	$-2, -44(%rbp)
	orl	$2, -44(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get_by_id@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L54
	leaq	.LC20(%rip), %rax
	movl	$174, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-24(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.L57
.L54:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	X509_PURPOSE_get0@PLT
	movq	%rax, -24(%rbp)
.L57:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L58
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC20(%rip), %rcx
	movl	$183, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC20(%rip), %rcx
	movl	$184, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L58:
	leaq	.LC20(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$187, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	leaq	.LC20(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$188, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	orl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	cmpl	$-1, -28(%rbp)
	jne	.L62
	movq	xptable(%rip), %rax
	testq	%rax, %rax
	jne	.L63
	leaq	xp_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_PURPOSE_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, xptable(%rip)
	movq	xptable(%rip), %rax
	testq	%rax, %rax
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$205, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L63:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_PURPOSE_type
	movq	%rax, %rbx
	movq	xptable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_PURPOSE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L62:
	movl	$1, %eax
	jmp	.L56
.L65:
	nop
.L61:
	cmpl	$-1, -28(%rbp)
	jne	.L64
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC20(%rip), %rcx
	movl	$216, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC20(%rip), %rcx
	movl	$217, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC20(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L64:
	movl	$0, %eax
.L56:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	X509_PURPOSE_add, .-X509_PURPOSE_add
	.type	xptable_free, @function
xptable_free:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L70
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L66
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L69
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC20(%rip), %rcx
	movl	$229, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC20(%rip), %rcx
	movl	$230, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L69:
	leaq	.LC20(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$232, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L66
.L70:
	nop
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	xptable_free, .-xptable_free
	.globl	X509_PURPOSE_cleanup
	.type	X509_PURPOSE_cleanup, @function
X509_PURPOSE_cleanup:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	leaq	xptable_free(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_PURPOSE_freefunc_type
	movq	%rax, %rbx
	movq	xptable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_PURPOSE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, xptable(%rip)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	X509_PURPOSE_cleanup, .-X509_PURPOSE_cleanup
	.globl	X509_PURPOSE_get_id
	.type	X509_PURPOSE_get_id, @function
X509_PURPOSE_get_id:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	X509_PURPOSE_get_id, .-X509_PURPOSE_get_id
	.globl	X509_PURPOSE_get0_name
	.type	X509_PURPOSE_get0_name, @function
X509_PURPOSE_get0_name:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	X509_PURPOSE_get0_name, .-X509_PURPOSE_get0_name
	.globl	X509_PURPOSE_get0_sname
	.type	X509_PURPOSE_get0_sname, @function
X509_PURPOSE_get0_sname:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	X509_PURPOSE_get0_sname, .-X509_PURPOSE_get0_sname
	.globl	X509_PURPOSE_get_trust
	.type	X509_PURPOSE_get_trust, @function
X509_PURPOSE_get_trust:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	X509_PURPOSE_get_trust, .-X509_PURPOSE_get_trust
	.type	nid_cmp, @function
nid_cmp:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	nid_cmp, .-nid_cmp
	.type	nid_cmp_BSEARCH_CMP_FN, @function
nid_cmp_BSEARCH_CMP_FN:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nid_cmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	nid_cmp_BSEARCH_CMP_FN, .-nid_cmp_BSEARCH_CMP_FN
	.type	OBJ_bsearch_nid, @function
OBJ_bsearch_nid:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	leaq	nid_cmp_BSEARCH_CMP_FN(%rip), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$4, %ecx
	movq	%rax, %rdi
	call	OBJ_bsearch_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	OBJ_bsearch_nid, .-OBJ_bsearch_nid
	.globl	X509_supported_extension
	.type	X509_supported_extension, @function
X509_supported_extension:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jne	.L87
	movl	$0, %eax
	jmp	.L90
.L87:
	leaq	supported_nids.2(%rip), %rcx
	leaq	-4(%rbp), %rax
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_bsearch_nid
	testq	%rax, %rax
	je	.L89
	movl	$1, %eax
	jmp	.L90
.L89:
	movl	$0, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	X509_supported_extension, .-X509_supported_extension
	.type	setup_dp, @function
setup_dp:
.LFB715:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L92
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L92:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L95
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 24(%rax)
.L95:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L96
	movq	-48(%rbp), %rax
	movl	24(%rax), %edx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 24(%rax)
.L96:
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	andl	$32895, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L97
.L94:
	movq	-48(%rbp), %rax
	movl	$32895, 24(%rax)
.L97:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L99
.L98:
	movl	$1, %eax
	jmp	.L93
.L99:
	movl	$0, -12(%rbp)
	jmp	.L100
.L103:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L101
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L102
.L101:
	addl	$1, -12(%rbp)
.L100:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L103
.L102:
	cmpq	$0, -8(%rbp)
	jne	.L104
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -8(%rbp)
.L104:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DIST_POINT_set_dpname@PLT
	testl	%eax, %eax
	je	.L105
	movl	$1, %eax
	jmp	.L93
.L105:
	movl	$-1, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	setup_dp, .-setup_dp
	.type	setup_crldp, @function
setup_crldp:
.LFB716:
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
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$103, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 272(%rdx)
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	jne	.L108
	movl	-24(%rbp), %eax
	cmpl	$-1, %eax
	je	.L108
	movl	$0, %eax
	jmp	.L113
.L108:
	movl	$0, -24(%rbp)
	jmp	.L110
.L112:
	movl	-24(%rbp), %ebx
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_DIST_POINT_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setup_dp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L111
	movl	-20(%rbp), %eax
	jmp	.L113
.L111:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.L110:
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_DIST_POINT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L112
	movl	$1, %eax
.L113:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	setup_crldp, .-setup_crldp
	.section	.rodata
.LC21:
	.string	"RSA"
	.text
	.type	check_sig_alg_match, @function
check_sig_alg_match:
.LFB717:
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
	jne	.L115
	movl	$24, %eax
	jmp	.L120
.L115:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %ecx
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	%ecx, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	jne	.L117
	movl	$76, %eax
	jmp	.L120
.L117:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L118
	leaq	.LC21(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L119
	movl	-4(%rbp), %eax
	cmpl	$912, %eax
	jne	.L119
.L118:
	movl	$0, %eax
	jmp	.L120
.L119:
	movl	$77, %eax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	check_sig_alg_match, .-check_sig_alg_match
	.globl	ossl_x509v3_cache_extensions
	.type	ossl_x509v3_cache_extensions, @function
ossl_x509v3_cache_extensions:
.LFB718:
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
	movq	-120(%rbp), %rax
	addq	$352, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	testl	%eax, %eax
	je	.L122
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	andl	$128, %eax
	shrl	$7, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	jmp	.L182
.L122:
	movq	-120(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L182
.L124:
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L125
	movq	-120(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	andl	$128, %eax
	shrl	$7, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	jmp	.L182
.L125:
	call	ERR_set_mark@PLT
	movq	-120(%rbp), %rax
	leaq	312(%rax), %rbx
	call	EVP_sha1@PLT
	movq	%rax, %rsi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	X509_digest@PLT
	testl	%eax, %eax
	jne	.L126
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$1048576, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L126:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_version@PLT
	testq	%rax, %rax
	jne	.L127
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L127:
	movq	-120(%rbp), %rax
	movq	$-1, 216(%rax)
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$87, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L128
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L129
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L129:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$258, %eax
	jne	.L131
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$444, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L130
.L131:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 216(%rdx)
.L130:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BASIC_CONSTRAINTS_free@PLT
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L132
.L128:
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L132
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L132:
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$663, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L133
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L134
	movq	-120(%rbp), %rax
	movl	$-1, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	testl	%eax, %eax
	jns	.L134
	movq	-120(%rbp), %rax
	movl	$-1, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	testl	%eax, %eax
	js	.L135
.L134:
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L135:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 224(%rdx)
	jmp	.L137
.L136:
	movq	-120(%rbp), %rax
	movq	$-1, 224(%rax)
.L137:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PROXY_CERT_INFO_EXTENSION_free@PLT
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$4, %ah
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L138
.L133:
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L138
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L138:
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$83, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L139
	movq	-120(%rbp), %rax
	movl	$0, 236(%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L140
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 236(%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L140
	movq	-120(%rbp), %rax
	movl	236(%rax), %edx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 236(%rax)
.L140:
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movq	-120(%rbp), %rax
	movl	236(%rax), %eax
	testl	%eax, %eax
	jne	.L141
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$485, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$169, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L141
.L139:
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L141
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L141:
	movq	-120(%rbp), %rax
	movl	$0, 240(%rax)
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$126, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L142
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	movl	$0, -100(%rbp)
	jmp	.L143
.L155:
	movl	-100(%rbp), %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$910, %eax
	je	.L144
	cmpl	$910, %eax
	jg	.L183
	cmpl	$297, %eax
	je	.L146
	cmpl	$297, %eax
	jg	.L183
	cmpl	$180, %eax
	je	.L147
	cmpl	$180, %eax
	jg	.L183
	cmpl	$139, %eax
	je	.L148
	cmpl	$139, %eax
	jg	.L183
	cmpl	$137, %eax
	je	.L148
	cmpl	$137, %eax
	jg	.L183
	cmpl	$133, %eax
	je	.L149
	cmpl	$133, %eax
	jg	.L183
	cmpl	$132, %eax
	je	.L150
	cmpl	$132, %eax
	jg	.L183
	cmpl	$131, %eax
	je	.L151
	cmpl	$131, %eax
	jg	.L183
	cmpl	$129, %eax
	je	.L152
	cmpl	$130, %eax
	je	.L153
	jmp	.L183
.L152:
	movq	-120(%rbp), %rax
	movl	240(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 240(%rax)
	jmp	.L154
.L153:
	movq	-120(%rbp), %rax
	movl	240(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 240(%rax)
	jmp	.L154
.L150:
	movq	-120(%rbp), %rax
	movl	240(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 240(%rax)
	jmp	.L154
.L151:
	movq	-120(%rbp), %rax
	movl	240(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 240(%rax)
	jmp	.L154
.L148:
	movq	-120(%rbp), %rax
	movl	240(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 240(%rax)
	jmp	.L154
.L147:
	movq	-120(%rbp), %rax
	movl	240(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 240(%rax)
	jmp	.L154
.L149:
	movq	-120(%rbp), %rax
	movl	240(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 240(%rax)
	jmp	.L154
.L146:
	movq	-120(%rbp), %rax
	movl	240(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 240(%rax)
	jmp	.L154
.L144:
	movq	-120(%rbp), %rax
	movl	240(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 240(%rax)
	jmp	.L154
.L183:
	nop
.L154:
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
.L143:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L155
	movq	ASN1_OBJECT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_freefunc_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	jmp	.L156
.L142:
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L156
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L156:
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$71, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L157
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L158
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 244(%rax)
	jmp	.L159
.L158:
	movq	-120(%rbp), %rax
	movl	$0, 244(%rax)
.L159:
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	jmp	.L160
.L157:
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L160
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L160:
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$82, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 248(%rdx)
	movq	-120(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L161
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L161
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L161:
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$90, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 256(%rdx)
	movq	-120(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	jne	.L162
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L162
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L162:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L163
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-120(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_akid@PLT
	testl	%eax, %eax
	jne	.L163
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_sig_alg_match
	testl	%eax, %eax
	jne	.L163
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$32, %ah
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L163:
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movq	-120(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L164
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L164
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L164:
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$666, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 288(%rdx)
	movq	-120(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	jne	.L165
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L165
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L165:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	setup_crldp
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L166
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L166:
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$290, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 296(%rdx)
	movq	-120(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	jne	.L167
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L167
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L167:
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$291, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-120(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	jne	.L168
	movl	-100(%rbp), %eax
	cmpl	$-1, %eax
	je	.L168
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L168:
	movl	$0, -100(%rbp)
	jmp	.L169
.L180:
	movl	-100(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_get_ext@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -84(%rbp)
	cmpl	$857, -84(%rbp)
	jne	.L170
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$16, %ah
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
.L170:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_critical@PLT
	testl	%eax, %eax
	je	.L184
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_supported_extension@PLT
	testl	%eax, %eax
	jne	.L173
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L174
.L173:
	cmpl	$90, -84(%rbp)
	je	.L175
	cmpl	$90, -84(%rbp)
	jg	.L185
	cmpl	$87, -84(%rbp)
	je	.L177
	cmpl	$87, -84(%rbp)
	jg	.L185
	cmpl	$82, -84(%rbp)
	je	.L178
	cmpl	$85, -84(%rbp)
	je	.L179
	jmp	.L185
.L177:
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$65536, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L172
.L175:
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$131072, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L172
.L178:
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$262144, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L172
.L179:
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orl	$524288, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	jmp	.L172
.L184:
	nop
	jmp	.L172
.L185:
	nop
.L172:
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
.L169:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_ext_count@PLT
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L180
.L174:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509_init_sig_info@PLT
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-120(%rbp), %rax
	addq	$352, %rax
	movq	%rax, -96(%rbp)
	movl	$1, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	call	ERR_pop_to_mark@PLT
	movq	-120(%rbp), %rax
	movl	232(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L181
	movq	-120(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
	jmp	.L182
.L181:
	movq	-120(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$637, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L182:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	ossl_x509v3_cache_extensions, .-ossl_x509v3_cache_extensions
	.type	check_ca, @function
check_ca:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L187
	movq	-8(%rbp), %rax
	movl	236(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L187
	movl	$0, %eax
	jmp	.L188
.L187:
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L189
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$16, %eax
	shrl	$4, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	jmp	.L188
.L189:
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$8256, %eax
	cmpl	$8256, %eax
	jne	.L190
	movl	$3, %eax
	jmp	.L188
.L190:
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L191
	movl	$4, %eax
	jmp	.L188
.L191:
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L192
	movq	-8(%rbp), %rax
	movl	244(%rax), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L192
	movl	$5, %eax
	jmp	.L188
.L192:
	movl	$0, %eax
.L188:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	check_ca, .-check_ca
	.globl	X509_set_proxy_flag
	.type	X509_set_proxy_flag, @function
X509_set_proxy_flag:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L195
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	orb	$4, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L195:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	X509_set_proxy_flag, .-X509_set_proxy_flag
	.globl	X509_set_proxy_pathlen
	.type	X509_set_proxy_pathlen, @function
X509_set_proxy_pathlen:
.LFB721:
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
	movq	%rdx, 224(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	X509_set_proxy_pathlen, .-X509_set_proxy_pathlen
	.globl	X509_check_ca
	.type	X509_check_ca, @function
X509_check_ca:
.LFB722:
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
	call	ossl_x509v3_cache_extensions@PLT
	testl	%eax, %eax
	jne	.L198
	movl	$0, %eax
	jmp	.L199
.L198:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_ca
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	X509_check_ca, .-X509_check_ca
	.type	check_ssl_ca, @function
check_ssl_ca:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_ca
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L201
	movl	$0, %eax
	jmp	.L202
.L201:
	cmpl	$5, -4(%rbp)
	jne	.L203
	movq	-24(%rbp), %rax
	movl	244(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L204
.L203:
	movl	$1, %eax
	jmp	.L202
.L204:
	movl	$0, %eax
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	check_ssl_ca, .-check_ssl_ca
	.type	check_purpose_ssl_client, @function
check_purpose_ssl_client:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L207
	movq	-16(%rbp), %rax
	movl	240(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L207
	movl	$0, %eax
	jmp	.L208
.L207:
	cmpl	$0, -20(%rbp)
	je	.L209
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	check_ssl_ca
	jmp	.L208
.L209:
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L210
	movq	-16(%rbp), %rax
	movl	236(%rax), %eax
	andl	$136, %eax
	testl	%eax, %eax
	jne	.L210
	movl	$0, %eax
	jmp	.L208
.L210:
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L211
	movq	-16(%rbp), %rax
	movl	244(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L211
	movl	$0, %eax
	jmp	.L208
.L211:
	movl	$1, %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	check_purpose_ssl_client, .-check_purpose_ssl_client
	.type	check_purpose_ssl_server, @function
check_purpose_ssl_server:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L213
	movq	-16(%rbp), %rax
	movl	240(%rax), %eax
	andl	$17, %eax
	testl	%eax, %eax
	jne	.L213
	movl	$0, %eax
	jmp	.L214
.L213:
	cmpl	$0, -20(%rbp)
	je	.L215
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	check_ssl_ca
	jmp	.L214
.L215:
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L216
	movq	-16(%rbp), %rax
	movl	244(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L216
	movl	$0, %eax
	jmp	.L214
.L216:
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L217
	movq	-16(%rbp), %rax
	movl	236(%rax), %eax
	andl	$168, %eax
	testl	%eax, %eax
	jne	.L217
	movl	$0, %eax
	jmp	.L214
.L217:
	movl	$1, %eax
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	check_purpose_ssl_server, .-check_purpose_ssl_server
	.type	check_purpose_ns_ssl_server, @function
check_purpose_ns_ssl_server:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_purpose_ssl_server
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L219
	cmpl	$0, -36(%rbp)
	je	.L220
.L219:
	movl	-4(%rbp), %eax
	jmp	.L221
.L220:
	movq	-32(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L222
	movq	-32(%rbp), %rax
	movl	236(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L223
.L222:
	movl	-4(%rbp), %eax
	jmp	.L221
.L223:
	movl	$0, %eax
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	check_purpose_ns_ssl_server, .-check_purpose_ns_ssl_server
	.type	purpose_smime, @function
purpose_smime:
.LFB727:
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
	movl	232(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L226
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L226
	movl	$0, %eax
	jmp	.L227
.L226:
	cmpl	$0, -28(%rbp)
	je	.L228
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_ca
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L229
	movl	$0, %eax
	jmp	.L227
.L229:
	cmpl	$5, -4(%rbp)
	jne	.L230
	movq	-24(%rbp), %rax
	movl	244(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L231
.L230:
	movl	-4(%rbp), %eax
	jmp	.L227
.L231:
	movl	$0, %eax
	jmp	.L227
.L228:
	movq	-24(%rbp), %rax
	movl	232(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L232
	movq	-24(%rbp), %rax
	movl	244(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L233
	movl	$1, %eax
	jmp	.L227
.L233:
	movq	-24(%rbp), %rax
	movl	244(%rax), %eax
	shrl	$6, %eax
	andl	$2, %eax
	jmp	.L227
.L232:
	movl	$1, %eax
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	purpose_smime, .-purpose_smime
	.type	check_purpose_smime_sign, @function
check_purpose_smime_sign:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	purpose_smime
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L235
	cmpl	$0, -36(%rbp)
	je	.L236
.L235:
	movl	-4(%rbp), %eax
	jmp	.L237
.L236:
	movq	-32(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L238
	movq	-32(%rbp), %rax
	movl	236(%rax), %eax
	andl	$192, %eax
	testl	%eax, %eax
	je	.L239
.L238:
	movl	-4(%rbp), %eax
	jmp	.L237
.L239:
	movl	$0, %eax
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	check_purpose_smime_sign, .-check_purpose_smime_sign
	.type	check_purpose_smime_encrypt, @function
check_purpose_smime_encrypt:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	purpose_smime
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L242
	cmpl	$0, -36(%rbp)
	je	.L243
.L242:
	movl	-4(%rbp), %eax
	jmp	.L244
.L243:
	movq	-32(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L245
	movq	-32(%rbp), %rax
	movl	236(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L246
.L245:
	movl	-4(%rbp), %eax
	jmp	.L244
.L246:
	movl	$0, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	check_purpose_smime_encrypt, .-check_purpose_smime_encrypt
	.type	check_purpose_crl_sign, @function
check_purpose_crl_sign:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L249
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	check_ca
	movl	%eax, -4(%rbp)
	cmpl	$2, -4(%rbp)
	je	.L250
	movl	-4(%rbp), %eax
	jmp	.L252
.L250:
	movl	$0, %eax
	jmp	.L252
.L249:
	movq	-32(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L253
	movq	-32(%rbp), %rax
	movl	236(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L254
.L253:
	movl	$1, %eax
	jmp	.L252
.L254:
	movl	$0, %eax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	check_purpose_crl_sign, .-check_purpose_crl_sign
	.type	check_purpose_ocsp_helper, @function
check_purpose_ocsp_helper:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L257
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	check_ca
	jmp	.L258
.L257:
	movl	$1, %eax
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	check_purpose_ocsp_helper, .-check_purpose_ocsp_helper
	.type	check_purpose_timestamp_sign, @function
check_purpose_timestamp_sign:
.LFB732:
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
	cmpl	$0, -36(%rbp)
	je	.L260
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	check_ca
	jmp	.L261
.L260:
	movq	-32(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L262
	movq	-32(%rbp), %rax
	movl	236(%rax), %eax
	andb	$63, %al
	testl	%eax, %eax
	jne	.L263
	movq	-32(%rbp), %rax
	movl	236(%rax), %eax
	andl	$192, %eax
	testl	%eax, %eax
	jne	.L262
.L263:
	movl	$0, %eax
	jmp	.L261
.L262:
	movq	-32(%rbp), %rax
	movl	232(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L264
	movq	-32(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$64, %eax
	je	.L265
.L264:
	movl	$0, %eax
	jmp	.L261
.L265:
	movq	-32(%rbp), %rax
	movl	$-1, %edx
	movl	$126, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L266
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_get_ext@PLT
	movq	%rax, %rdi
	call	X509_EXTENSION_get_critical@PLT
	testl	%eax, %eax
	jne	.L266
	movl	$0, %eax
	jmp	.L261
.L266:
	movl	$1, %eax
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	check_purpose_timestamp_sign, .-check_purpose_timestamp_sign
	.type	check_purpose_code_sign, @function
check_purpose_code_sign:
.LFB733:
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
	cmpl	$0, -36(%rbp)
	je	.L268
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	check_ca
	jmp	.L269
.L268:
	movq	-32(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L270
	movl	$0, %eax
	jmp	.L269
.L270:
	movq	-32(%rbp), %rax
	movl	236(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L271
	movl	$0, %eax
	jmp	.L269
.L271:
	movq	-32(%rbp), %rax
	movl	236(%rax), %eax
	andl	$6, %eax
	testl	%eax, %eax
	je	.L272
	movl	$0, %eax
	jmp	.L269
.L272:
	movq	-32(%rbp), %rax
	movl	$-1, %edx
	movl	$83, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L273
	movl	$0, %eax
	jmp	.L269
.L273:
	cmpl	$0, -4(%rbp)
	js	.L274
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_get_ext@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_critical@PLT
	testl	%eax, %eax
	jne	.L274
	movl	$0, %eax
	jmp	.L269
.L274:
	movq	-32(%rbp), %rax
	movl	232(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L275
	movl	$0, %eax
	jmp	.L269
.L275:
	movq	-32(%rbp), %rax
	movl	240(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L276
	movl	$0, %eax
	jmp	.L269
.L276:
	movq	-32(%rbp), %rax
	movl	240(%rax), %eax
	andl	$257, %eax
	testl	%eax, %eax
	je	.L277
	movl	$0, %eax
	jmp	.L269
.L277:
	movl	$1, %eax
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	check_purpose_code_sign, .-check_purpose_code_sign
	.type	no_check_purpose, @function
no_check_purpose:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	no_check_purpose, .-no_check_purpose
	.globl	X509_check_issued
	.type	X509_check_issued, @function
X509_check_issued:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_likely_issued@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L281
	movl	-4(%rbp), %eax
	jmp	.L282
.L281:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_signing_allowed@PLT
.L282:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	X509_check_issued, .-X509_check_issued
	.globl	ossl_x509_likely_issued
	.type	ossl_x509_likely_issued, @function
ossl_x509_likely_issued:
.LFB736:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	je	.L284
	movl	$29, %eax
	jmp	.L285
.L284:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509v3_cache_extensions@PLT
	testl	%eax, %eax
	je	.L286
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509v3_cache_extensions@PLT
	testl	%eax, %eax
	jne	.L287
.L286:
	movl	$1, %eax
	jmp	.L285
.L287:
	movq	-48(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_akid@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L288
	movl	-20(%rbp), %eax
	jmp	.L285
.L288:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_sig_alg_match
.L285:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	ossl_x509_likely_issued, .-ossl_x509_likely_issued
	.globl	ossl_x509_signing_allowed
	.type	ossl_x509_signing_allowed, @function
ossl_x509_signing_allowed:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L290
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L291
	movq	-8(%rbp), %rax
	movl	236(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L291
	movl	$39, %eax
	jmp	.L292
.L290:
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L291
	movq	-8(%rbp), %rax
	movl	236(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L291
	movl	$32, %eax
	jmp	.L292
.L291:
	movl	$0, %eax
.L292:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ossl_x509_signing_allowed, .-ossl_x509_signing_allowed
	.globl	X509_check_akid
	.type	X509_check_akid, @function
X509_check_akid:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L294
	movl	$0, %eax
	jmp	.L295
.L294:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L296
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	je	.L296
	movq	-56(%rbp), %rax
	movq	248(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	testl	%eax, %eax
	je	.L296
	movl	$30, %eax
	jmp	.L295
.L296:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L297
	movq	-64(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_cmp@PLT
	testl	%eax, %eax
	je	.L297
	movl	$31, %eax
	jmp	.L295
.L297:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L298
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L299
.L302:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L300
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L301
.L300:
	addl	$1, -28(%rbp)
.L299:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L302
.L301:
	cmpq	$0, -24(%rbp)
	je	.L298
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	je	.L298
	movl	$31, %eax
	jmp	.L295
.L298:
	movl	$0, %eax
.L295:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	X509_check_akid, .-X509_check_akid
	.globl	X509_get_extension_flags
	.type	X509_get_extension_flags, @function
X509_get_extension_flags:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	X509_get_extension_flags, .-X509_get_extension_flags
	.globl	X509_get_key_usage
	.type	X509_get_key_usage, @function
X509_get_key_usage:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	je	.L306
	movl	$0, %eax
	jmp	.L307
.L306:
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L308
	movq	-8(%rbp), %rax
	movl	236(%rax), %eax
	jmp	.L307
.L308:
	movl	$-1, %eax
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	X509_get_key_usage, .-X509_get_key_usage
	.globl	X509_get_extended_key_usage
	.type	X509_get_extended_key_usage, @function
X509_get_extended_key_usage:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	je	.L311
	movl	$0, %eax
	jmp	.L312
.L311:
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L313
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	jmp	.L312
.L313:
	movl	$-1, %eax
.L312:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	X509_get_extended_key_usage, .-X509_get_extended_key_usage
	.globl	X509_get0_subject_key_id
	.type	X509_get0_subject_key_id, @function
X509_get0_subject_key_id:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	je	.L316
	movl	$0, %eax
	jmp	.L317
.L316:
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
.L317:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	X509_get0_subject_key_id, .-X509_get0_subject_key_id
	.globl	X509_get0_authority_key_id
	.type	X509_get0_authority_key_id, @function
X509_get0_authority_key_id:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	je	.L319
	movl	$0, %eax
	jmp	.L320
.L319:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L321
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	(%rax), %rax
	jmp	.L320
.L321:
	movl	$0, %eax
.L320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	X509_get0_authority_key_id, .-X509_get0_authority_key_id
	.globl	X509_get0_authority_issuer
	.type	X509_get0_authority_issuer, @function
X509_get0_authority_issuer:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	je	.L324
	movl	$0, %eax
	jmp	.L325
.L324:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L326
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L325
.L326:
	movl	$0, %eax
.L325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	X509_get0_authority_issuer, .-X509_get0_authority_issuer
	.globl	X509_get0_authority_serial
	.type	X509_get0_authority_serial, @function
X509_get0_authority_serial:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	je	.L329
	movl	$0, %eax
	jmp	.L330
.L329:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	je	.L331
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	16(%rax), %rax
	jmp	.L330
.L331:
	movl	$0, %eax
.L330:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	X509_get0_authority_serial, .-X509_get0_authority_serial
	.globl	X509_get_pathlen
	.type	X509_get_pathlen, @function
X509_get_pathlen:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	jne	.L334
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L335
.L334:
	movq	$-1, %rax
	jmp	.L336
.L335:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
.L336:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	X509_get_pathlen, .-X509_get_pathlen
	.globl	X509_get_proxy_pathlen
	.type	X509_get_proxy_pathlen, @function
X509_get_proxy_pathlen:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	jne	.L338
	movq	-8(%rbp), %rax
	movl	232(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L339
.L338:
	movq	$-1, %rax
	jmp	.L340
.L339:
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
.L340:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	X509_get_proxy_pathlen, .-X509_get_proxy_pathlen
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 17
__func__.4:
	.string	"X509_PURPOSE_set"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"X509_PURPOSE_add"
	.align 32
	.type	supported_nids.2, @object
	.size	supported_nids.2, 60
supported_nids.2:
	.long	71
	.long	83
	.long	85
	.long	87
	.long	89
	.long	103
	.long	126
	.long	290
	.long	291
	.long	369
	.long	401
	.long	663
	.long	666
	.long	747
	.long	748
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 9
__func__.1:
	.string	"setup_dp"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"ossl_x509v3_cache_extensions"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
