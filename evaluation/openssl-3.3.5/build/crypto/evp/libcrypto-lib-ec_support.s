	.file	"ec_support.c"
	.text
	.section	.rodata
.LC0:
	.string	"secp112r1"
.LC1:
	.string	"secp112r2"
.LC2:
	.string	"secp128r1"
.LC3:
	.string	"secp128r2"
.LC4:
	.string	"secp160k1"
.LC5:
	.string	"secp160r1"
.LC6:
	.string	"secp160r2"
.LC7:
	.string	"secp192k1"
.LC8:
	.string	"secp224k1"
.LC9:
	.string	"secp224r1"
.LC10:
	.string	"secp256k1"
.LC11:
	.string	"secp384r1"
.LC12:
	.string	"secp521r1"
.LC13:
	.string	"prime192v1"
.LC14:
	.string	"prime192v2"
.LC15:
	.string	"prime192v3"
.LC16:
	.string	"prime239v1"
.LC17:
	.string	"prime239v2"
.LC18:
	.string	"prime239v3"
.LC19:
	.string	"prime256v1"
.LC20:
	.string	"sect113r1"
.LC21:
	.string	"sect113r2"
.LC22:
	.string	"sect131r1"
.LC23:
	.string	"sect131r2"
.LC24:
	.string	"sect163k1"
.LC25:
	.string	"sect163r1"
.LC26:
	.string	"sect163r2"
.LC27:
	.string	"sect193r1"
.LC28:
	.string	"sect193r2"
.LC29:
	.string	"sect233k1"
.LC30:
	.string	"sect233r1"
.LC31:
	.string	"sect239k1"
.LC32:
	.string	"sect283k1"
.LC33:
	.string	"sect283r1"
.LC34:
	.string	"sect409k1"
.LC35:
	.string	"sect409r1"
.LC36:
	.string	"sect571k1"
.LC37:
	.string	"sect571r1"
.LC38:
	.string	"c2pnb163v1"
.LC39:
	.string	"c2pnb163v2"
.LC40:
	.string	"c2pnb163v3"
.LC41:
	.string	"c2pnb176v1"
.LC42:
	.string	"c2tnb191v1"
.LC43:
	.string	"c2tnb191v2"
.LC44:
	.string	"c2tnb191v3"
.LC45:
	.string	"c2pnb208w1"
.LC46:
	.string	"c2tnb239v1"
.LC47:
	.string	"c2tnb239v2"
.LC48:
	.string	"c2tnb239v3"
.LC49:
	.string	"c2pnb272w1"
.LC50:
	.string	"c2pnb304w1"
.LC51:
	.string	"c2tnb359v1"
.LC52:
	.string	"c2pnb368w1"
.LC53:
	.string	"c2tnb431r1"
.LC54:
	.string	"wap-wsg-idm-ecid-wtls1"
.LC55:
	.string	"wap-wsg-idm-ecid-wtls3"
.LC56:
	.string	"wap-wsg-idm-ecid-wtls4"
.LC57:
	.string	"wap-wsg-idm-ecid-wtls5"
.LC58:
	.string	"wap-wsg-idm-ecid-wtls6"
.LC59:
	.string	"wap-wsg-idm-ecid-wtls7"
.LC60:
	.string	"wap-wsg-idm-ecid-wtls8"
.LC61:
	.string	"wap-wsg-idm-ecid-wtls9"
.LC62:
	.string	"wap-wsg-idm-ecid-wtls10"
.LC63:
	.string	"wap-wsg-idm-ecid-wtls11"
.LC64:
	.string	"wap-wsg-idm-ecid-wtls12"
.LC65:
	.string	"Oakley-EC2N-3"
.LC66:
	.string	"Oakley-EC2N-4"
.LC67:
	.string	"brainpoolP160r1"
.LC68:
	.string	"brainpoolP160t1"
.LC69:
	.string	"brainpoolP192r1"
.LC70:
	.string	"brainpoolP192t1"
.LC71:
	.string	"brainpoolP224r1"
.LC72:
	.string	"brainpoolP224t1"
.LC73:
	.string	"brainpoolP256r1"
.LC74:
	.string	"brainpoolP256t1"
.LC75:
	.string	"brainpoolP320r1"
.LC76:
	.string	"brainpoolP320t1"
.LC77:
	.string	"brainpoolP384r1"
.LC78:
	.string	"brainpoolP384t1"
.LC79:
	.string	"brainpoolP512r1"
.LC80:
	.string	"brainpoolP512t1"
.LC81:
	.string	"SM2"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	curve_list, @object
	.size	curve_list, 1312
curve_list:
	.quad	.LC0
	.long	704
	.zero	4
	.quad	.LC1
	.long	705
	.zero	4
	.quad	.LC2
	.long	706
	.zero	4
	.quad	.LC3
	.long	707
	.zero	4
	.quad	.LC4
	.long	708
	.zero	4
	.quad	.LC5
	.long	709
	.zero	4
	.quad	.LC6
	.long	710
	.zero	4
	.quad	.LC7
	.long	711
	.zero	4
	.quad	.LC8
	.long	712
	.zero	4
	.quad	.LC9
	.long	713
	.zero	4
	.quad	.LC10
	.long	714
	.zero	4
	.quad	.LC11
	.long	715
	.zero	4
	.quad	.LC12
	.long	716
	.zero	4
	.quad	.LC13
	.long	409
	.zero	4
	.quad	.LC14
	.long	410
	.zero	4
	.quad	.LC15
	.long	411
	.zero	4
	.quad	.LC16
	.long	412
	.zero	4
	.quad	.LC17
	.long	413
	.zero	4
	.quad	.LC18
	.long	414
	.zero	4
	.quad	.LC19
	.long	415
	.zero	4
	.quad	.LC20
	.long	717
	.zero	4
	.quad	.LC21
	.long	718
	.zero	4
	.quad	.LC22
	.long	719
	.zero	4
	.quad	.LC23
	.long	720
	.zero	4
	.quad	.LC24
	.long	721
	.zero	4
	.quad	.LC25
	.long	722
	.zero	4
	.quad	.LC26
	.long	723
	.zero	4
	.quad	.LC27
	.long	724
	.zero	4
	.quad	.LC28
	.long	725
	.zero	4
	.quad	.LC29
	.long	726
	.zero	4
	.quad	.LC30
	.long	727
	.zero	4
	.quad	.LC31
	.long	728
	.zero	4
	.quad	.LC32
	.long	729
	.zero	4
	.quad	.LC33
	.long	730
	.zero	4
	.quad	.LC34
	.long	731
	.zero	4
	.quad	.LC35
	.long	732
	.zero	4
	.quad	.LC36
	.long	733
	.zero	4
	.quad	.LC37
	.long	734
	.zero	4
	.quad	.LC38
	.long	684
	.zero	4
	.quad	.LC39
	.long	685
	.zero	4
	.quad	.LC40
	.long	686
	.zero	4
	.quad	.LC41
	.long	687
	.zero	4
	.quad	.LC42
	.long	688
	.zero	4
	.quad	.LC43
	.long	689
	.zero	4
	.quad	.LC44
	.long	690
	.zero	4
	.quad	.LC45
	.long	693
	.zero	4
	.quad	.LC46
	.long	694
	.zero	4
	.quad	.LC47
	.long	695
	.zero	4
	.quad	.LC48
	.long	696
	.zero	4
	.quad	.LC49
	.long	699
	.zero	4
	.quad	.LC50
	.long	700
	.zero	4
	.quad	.LC51
	.long	701
	.zero	4
	.quad	.LC52
	.long	702
	.zero	4
	.quad	.LC53
	.long	703
	.zero	4
	.quad	.LC54
	.long	735
	.zero	4
	.quad	.LC55
	.long	736
	.zero	4
	.quad	.LC56
	.long	737
	.zero	4
	.quad	.LC57
	.long	738
	.zero	4
	.quad	.LC58
	.long	739
	.zero	4
	.quad	.LC59
	.long	740
	.zero	4
	.quad	.LC60
	.long	741
	.zero	4
	.quad	.LC61
	.long	742
	.zero	4
	.quad	.LC62
	.long	743
	.zero	4
	.quad	.LC63
	.long	744
	.zero	4
	.quad	.LC64
	.long	745
	.zero	4
	.quad	.LC65
	.long	749
	.zero	4
	.quad	.LC66
	.long	750
	.zero	4
	.quad	.LC67
	.long	921
	.zero	4
	.quad	.LC68
	.long	922
	.zero	4
	.quad	.LC69
	.long	923
	.zero	4
	.quad	.LC70
	.long	924
	.zero	4
	.quad	.LC71
	.long	925
	.zero	4
	.quad	.LC72
	.long	926
	.zero	4
	.quad	.LC73
	.long	927
	.zero	4
	.quad	.LC74
	.long	928
	.zero	4
	.quad	.LC75
	.long	929
	.zero	4
	.quad	.LC76
	.long	930
	.zero	4
	.quad	.LC77
	.long	931
	.zero	4
	.quad	.LC78
	.long	932
	.zero	4
	.quad	.LC79
	.long	933
	.zero	4
	.quad	.LC80
	.long	934
	.zero	4
	.quad	.LC81
	.long	1172
	.zero	4
	.text
	.globl	OSSL_EC_curve_nid2name
	.type	OSSL_EC_curve_nid2name, @function
OSSL_EC_curve_nid2name:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	$0, -8(%rbp)
	jmp	.L4
.L6:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+curve_list(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L5
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	curve_list(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L3
.L5:
	addq	$1, -8(%rbp)
.L4:
	cmpq	$81, -8(%rbp)
	jbe	.L6
	movl	$0, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	OSSL_EC_curve_nid2name, .-OSSL_EC_curve_nid2name
	.globl	ossl_ec_curve_name2nid
	.type	ossl_ec_curve_name2nid, @function
ossl_ec_curve_name2nid:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_curve_nist2nid_int@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L9
	movl	-12(%rbp), %eax
	jmp	.L10
.L9:
	movq	$0, -8(%rbp)
	jmp	.L11
.L13:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	curve_list(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L12
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+curve_list(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L10
.L12:
	addq	$1, -8(%rbp)
.L11:
	cmpq	$81, -8(%rbp)
	jbe	.L13
.L8:
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	ossl_ec_curve_name2nid, .-ossl_ec_curve_name2nid
	.section	.rodata
.LC82:
	.string	"B-163"
.LC83:
	.string	"B-233"
.LC84:
	.string	"B-283"
.LC85:
	.string	"B-409"
.LC86:
	.string	"B-571"
.LC87:
	.string	"K-163"
.LC88:
	.string	"K-233"
.LC89:
	.string	"K-283"
.LC90:
	.string	"K-409"
.LC91:
	.string	"K-571"
.LC92:
	.string	"P-192"
.LC93:
	.string	"P-224"
.LC94:
	.string	"P-256"
.LC95:
	.string	"P-384"
.LC96:
	.string	"P-521"
	.section	.data.rel.ro.local
	.align 32
	.type	nist_curves, @object
	.size	nist_curves, 240
nist_curves:
	.quad	.LC82
	.long	723
	.zero	4
	.quad	.LC83
	.long	727
	.zero	4
	.quad	.LC84
	.long	730
	.zero	4
	.quad	.LC85
	.long	732
	.zero	4
	.quad	.LC86
	.long	734
	.zero	4
	.quad	.LC87
	.long	721
	.zero	4
	.quad	.LC88
	.long	726
	.zero	4
	.quad	.LC89
	.long	729
	.zero	4
	.quad	.LC90
	.long	731
	.zero	4
	.quad	.LC91
	.long	733
	.zero	4
	.quad	.LC92
	.long	409
	.zero	4
	.quad	.LC93
	.long	713
	.zero	4
	.quad	.LC94
	.long	415
	.zero	4
	.quad	.LC95
	.long	715
	.zero	4
	.quad	.LC96
	.long	716
	.zero	4
	.text
	.globl	ossl_ec_curve_nid2nist_int
	.type	ossl_ec_curve_nid2nist_int, @function
ossl_ec_curve_nid2nist_int:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L15
.L18:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+nist_curves(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L16
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	nist_curves(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L17
.L16:
	addq	$1, -8(%rbp)
.L15:
	cmpq	$14, -8(%rbp)
	jbe	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	ossl_ec_curve_nid2nist_int, .-ossl_ec_curve_nid2nist_int
	.globl	ossl_ec_curve_nist2nid_int
	.type	ossl_ec_curve_nist2nid_int, @function
ossl_ec_curve_nist2nid_int:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L20
.L23:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	nist_curves(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L21
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+nist_curves(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L22
.L21:
	addq	$1, -8(%rbp)
.L20:
	cmpq	$14, -8(%rbp)
	jbe	.L23
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	ossl_ec_curve_nist2nid_int, .-ossl_ec_curve_nist2nid_int
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
