	.file	"ec_asn1.c"
	.text
	.section	.rodata
.LC0:
	.string	"k1"
.LC1:
	.string	"k2"
.LC2:
	.string	"k3"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X9_62_PENTANOMIAL_seq_tt, @object
	.size	X9_62_PENTANOMIAL_seq_tt, 120
X9_62_PENTANOMIAL_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	INT32_it
	.quad	4096
	.quad	0
	.quad	4
	.quad	.LC1
	.quad	INT32_it
	.quad	4096
	.quad	0
	.quad	8
	.quad	.LC2
	.quad	INT32_it
	.text
	.type	X9_62_PENTANOMIAL_it, @function
X9_62_PENTANOMIAL_it:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.21(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	X9_62_PENTANOMIAL_it, .-X9_62_PENTANOMIAL_it
	.globl	X9_62_PENTANOMIAL_new
	.type	X9_62_PENTANOMIAL_new, @function
X9_62_PENTANOMIAL_new:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X9_62_PENTANOMIAL_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	X9_62_PENTANOMIAL_new, .-X9_62_PENTANOMIAL_new
	.globl	X9_62_PENTANOMIAL_free
	.type	X9_62_PENTANOMIAL_free, @function
X9_62_PENTANOMIAL_free:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X9_62_PENTANOMIAL_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	X9_62_PENTANOMIAL_free, .-X9_62_PENTANOMIAL_free
	.section	.rodata
.LC3:
	.string	"p.other"
	.section	.data.rel.ro
	.align 32
	.type	char_two_def_tt, @object
	.size	char_two_def_tt, 40
char_two_def_tt:
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC3
	.quad	ASN1_ANY_it
	.section	.rodata
.LC4:
	.string	"p.onBasis"
.LC5:
	.string	"p.tpBasis"
.LC6:
	.string	"p.ppBasis"
	.section	.data.rel.ro
	.align 32
	.type	X9_62_CHARACTERISTIC_TWO_adbtbl, @object
	.size	X9_62_CHARACTERISTIC_TWO_adbtbl, 144
X9_62_CHARACTERISTIC_TWO_adbtbl:
	.quad	681
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC4
	.quad	ASN1_NULL_it
	.quad	682
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC5
	.quad	ASN1_INTEGER_it
	.quad	683
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC6
	.quad	X9_62_PENTANOMIAL_it
	.text
	.type	X9_62_CHARACTERISTIC_TWO_adb, @function
X9_62_CHARACTERISTIC_TWO_adb:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_adb.20(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	X9_62_CHARACTERISTIC_TWO_adb, .-X9_62_CHARACTERISTIC_TWO_adb
	.section	.rodata
.LC7:
	.string	"m"
.LC8:
	.string	"type"
.LC9:
	.string	"X9_62_CHARACTERISTIC_TWO"
	.section	.data.rel.ro
	.align 32
	.type	X9_62_CHARACTERISTIC_TWO_seq_tt, @object
	.size	X9_62_CHARACTERISTIC_TWO_seq_tt, 120
X9_62_CHARACTERISTIC_TWO_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC7
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC8
	.quad	ASN1_OBJECT_it
	.quad	256
	.quad	-1
	.quad	0
	.quad	.LC9
	.quad	X9_62_CHARACTERISTIC_TWO_adb
	.text
	.type	X9_62_CHARACTERISTIC_TWO_it, @function
X9_62_CHARACTERISTIC_TWO_it:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.19(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	X9_62_CHARACTERISTIC_TWO_it, .-X9_62_CHARACTERISTIC_TWO_it
	.globl	X9_62_CHARACTERISTIC_TWO_new
	.type	X9_62_CHARACTERISTIC_TWO_new, @function
X9_62_CHARACTERISTIC_TWO_new:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X9_62_CHARACTERISTIC_TWO_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	X9_62_CHARACTERISTIC_TWO_new, .-X9_62_CHARACTERISTIC_TWO_new
	.globl	X9_62_CHARACTERISTIC_TWO_free
	.type	X9_62_CHARACTERISTIC_TWO_free, @function
X9_62_CHARACTERISTIC_TWO_free:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X9_62_CHARACTERISTIC_TWO_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	X9_62_CHARACTERISTIC_TWO_free, .-X9_62_CHARACTERISTIC_TWO_free
	.section	.data.rel.ro
	.align 32
	.type	fieldID_def_tt, @object
	.size	fieldID_def_tt, 40
fieldID_def_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	ASN1_ANY_it
	.section	.rodata
.LC10:
	.string	"p.prime"
.LC11:
	.string	"p.char_two"
	.section	.data.rel.ro
	.align 32
	.type	X9_62_FIELDID_adbtbl, @object
	.size	X9_62_FIELDID_adbtbl, 96
X9_62_FIELDID_adbtbl:
	.quad	406
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC10
	.quad	ASN1_INTEGER_it
	.quad	407
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC11
	.quad	X9_62_CHARACTERISTIC_TWO_it
	.text
	.type	X9_62_FIELDID_adb, @function
X9_62_FIELDID_adb:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_adb.18(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	X9_62_FIELDID_adb, .-X9_62_FIELDID_adb
	.section	.rodata
.LC12:
	.string	"fieldType"
.LC13:
	.string	"X9_62_FIELDID"
	.section	.data.rel.ro
	.align 32
	.type	X9_62_FIELDID_seq_tt, @object
	.size	X9_62_FIELDID_seq_tt, 80
X9_62_FIELDID_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	ASN1_OBJECT_it
	.quad	256
	.quad	-1
	.quad	0
	.quad	.LC13
	.quad	X9_62_FIELDID_adb
	.text
	.type	X9_62_FIELDID_it, @function
X9_62_FIELDID_it:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.17(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	X9_62_FIELDID_it, .-X9_62_FIELDID_it
	.section	.rodata
.LC14:
	.string	"a"
.LC15:
	.string	"b"
.LC16:
	.string	"seed"
	.section	.data.rel.ro
	.align 32
	.type	X9_62_CURVE_seq_tt, @object
	.size	X9_62_CURVE_seq_tt, 120
X9_62_CURVE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC14
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC15
	.quad	ASN1_OCTET_STRING_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC16
	.quad	ASN1_BIT_STRING_it
	.text
	.type	X9_62_CURVE_it, @function
X9_62_CURVE_it:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.16(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	X9_62_CURVE_it, .-X9_62_CURVE_it
	.section	.rodata
.LC17:
	.string	"version"
.LC18:
	.string	"fieldID"
.LC19:
	.string	"curve"
.LC20:
	.string	"base"
.LC21:
	.string	"order"
.LC22:
	.string	"cofactor"
	.section	.data.rel.ro
	.align 32
	.type	ECPARAMETERS_seq_tt, @object
	.size	ECPARAMETERS_seq_tt, 240
ECPARAMETERS_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC18
	.quad	X9_62_FIELDID_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC19
	.quad	X9_62_CURVE_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC20
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	32
	.quad	.LC21
	.quad	ASN1_INTEGER_it
	.quad	1
	.quad	0
	.quad	40
	.quad	.LC22
	.quad	ASN1_INTEGER_it
	.text
	.globl	ECPARAMETERS_it
	.type	ECPARAMETERS_it, @function
ECPARAMETERS_it:
.LFB447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.15(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	ECPARAMETERS_it, .-ECPARAMETERS_it
	.globl	ECPARAMETERS_new
	.type	ECPARAMETERS_new, @function
ECPARAMETERS_new:
.LFB448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ECPARAMETERS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	ECPARAMETERS_new, .-ECPARAMETERS_new
	.globl	ECPARAMETERS_free
	.type	ECPARAMETERS_free, @function
ECPARAMETERS_free:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ECPARAMETERS_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ECPARAMETERS_free, .-ECPARAMETERS_free
	.section	.rodata
.LC23:
	.string	"value.named_curve"
.LC24:
	.string	"value.parameters"
.LC25:
	.string	"value.implicitlyCA"
	.section	.data.rel.ro
	.align 32
	.type	ECPKPARAMETERS_ch_tt, @object
	.size	ECPKPARAMETERS_ch_tt, 120
ECPKPARAMETERS_ch_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC23
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC24
	.quad	ECPARAMETERS_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC25
	.quad	ASN1_NULL_it
	.text
	.globl	ECPKPARAMETERS_it
	.type	ECPKPARAMETERS_it, @function
ECPKPARAMETERS_it:
.LFB450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.14(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	ECPKPARAMETERS_it, .-ECPKPARAMETERS_it
	.globl	d2i_ECPKPARAMETERS
	.type	d2i_ECPKPARAMETERS, @function
d2i_ECPKPARAMETERS:
.LFB451:
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
	call	ECPKPARAMETERS_it@PLT
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
.LFE451:
	.size	d2i_ECPKPARAMETERS, .-d2i_ECPKPARAMETERS
	.globl	i2d_ECPKPARAMETERS
	.type	i2d_ECPKPARAMETERS, @function
i2d_ECPKPARAMETERS:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ECPKPARAMETERS_it@PLT
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
.LFE452:
	.size	i2d_ECPKPARAMETERS, .-i2d_ECPKPARAMETERS
	.globl	ECPKPARAMETERS_new
	.type	ECPKPARAMETERS_new, @function
ECPKPARAMETERS_new:
.LFB453:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ECPKPARAMETERS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	ECPKPARAMETERS_new, .-ECPKPARAMETERS_new
	.globl	ECPKPARAMETERS_free
	.type	ECPKPARAMETERS_free, @function
ECPKPARAMETERS_free:
.LFB454:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ECPKPARAMETERS_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	ECPKPARAMETERS_free, .-ECPKPARAMETERS_free
	.section	.rodata
.LC26:
	.string	"privateKey"
.LC27:
	.string	"parameters"
.LC28:
	.string	"publicKey"
	.section	.data.rel.ro
	.align 32
	.type	EC_PRIVATEKEY_seq_tt, @object
	.size	EC_PRIVATEKEY_seq_tt, 160
EC_PRIVATEKEY_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC17
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC26
	.quad	ASN1_OCTET_STRING_it
	.quad	145
	.quad	0
	.quad	16
	.quad	.LC27
	.quad	ECPKPARAMETERS_it
	.quad	145
	.quad	1
	.quad	24
	.quad	.LC28
	.quad	ASN1_BIT_STRING_it
	.text
	.type	EC_PRIVATEKEY_it, @function
EC_PRIVATEKEY_it:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.13(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	EC_PRIVATEKEY_it, .-EC_PRIVATEKEY_it
	.globl	d2i_EC_PRIVATEKEY
	.type	d2i_EC_PRIVATEKEY, @function
d2i_EC_PRIVATEKEY:
.LFB456:
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
	call	EC_PRIVATEKEY_it
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
.LFE456:
	.size	d2i_EC_PRIVATEKEY, .-d2i_EC_PRIVATEKEY
	.globl	i2d_EC_PRIVATEKEY
	.type	i2d_EC_PRIVATEKEY, @function
i2d_EC_PRIVATEKEY:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	EC_PRIVATEKEY_it
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
.LFE457:
	.size	i2d_EC_PRIVATEKEY, .-i2d_EC_PRIVATEKEY
	.globl	EC_PRIVATEKEY_new
	.type	EC_PRIVATEKEY_new, @function
EC_PRIVATEKEY_new:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	EC_PRIVATEKEY_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	EC_PRIVATEKEY_new, .-EC_PRIVATEKEY_new
	.globl	EC_PRIVATEKEY_free
	.type	EC_PRIVATEKEY_free, @function
EC_PRIVATEKEY_free:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	EC_PRIVATEKEY_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	EC_PRIVATEKEY_free, .-EC_PRIVATEKEY_free
	.section	.rodata
.LC29:
	.string	"../crypto/ec/ec_asn1.c"
	.text
	.type	ec_asn1_group2fieldid, @function
ec_asn1_group2fieldid:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L43
	cmpq	$0, -80(%rbp)
	jne	.L44
.L43:
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524296, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L46:
	cmpl	$406, -20(%rbp)
	jne	.L48
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L49:
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$214, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L50:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$220, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L48:
	cmpl	$407, -20(%rbp)
	jne	.L52
	call	X9_62_CHARACTERISTIC_TWO_new@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$238, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L53:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_basis_type@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L54:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524296, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L55:
	cmpl	$682, -36(%rbp)
	jne	.L56
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_trinomial_basis@PLT
	testl	%eax, %eax
	je	.L65
	call	ASN1_INTEGER_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$264, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L59:
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$268, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L56:
	cmpl	$683, -36(%rbp)
	jne	.L61
	leaq	-52(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-44(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_pentanomial_basis@PLT
	testl	%eax, %eax
	je	.L66
	call	X9_62_PENTANOMIAL_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L64:
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, (%rax)
	movl	-48(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, 4(%rax)
	movl	-52(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, 8(%rax)
	jmp	.L51
.L61:
	call	ASN1_NULL_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L52:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$299, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L51:
	movl	$1, -4(%rbp)
	jmp	.L47
.L65:
	nop
	jmp	.L47
.L66:
	nop
.L47:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	ec_asn1_group2fieldid, .-ec_asn1_group2fieldid
	.type	ec_asn1_group2curve, @function
ec_asn1_group2curve:
.LFB461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L68
	cmpq	$0, -64(%rbp)
	je	.L68
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L69
.L68:
	movl	$0, %eax
	jmp	.L70
.L69:
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L71
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L72
.L71:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$321, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L72:
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L74:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	cltq
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, -48(%rbp)
	leaq	.LC29(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$337, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L84
	leaq	.LC29(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$338, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L84
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L77
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	jns	.L78
.L77:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$342, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L78:
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L79
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L80
.L79:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L80:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	call	ASN1_BIT_STRING_new@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L82:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set@PLT
	testl	%eax, %eax
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$363, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L81:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
.L83:
	movl	$1, -4(%rbp)
	jmp	.L73
.L84:
	nop
.L73:
	leaq	.LC29(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$374, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC29(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$375, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	ec_asn1_group2curve, .-ec_asn1_group2curve
	.globl	EC_GROUP_get_ecparameters
	.type	EC_GROUP_get_ecparameters, @function
EC_GROUP_get_ecparameters:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L86
	call	ECPARAMETERS_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$394, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L86:
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.L87:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_asn1_group2fieldid
	testl	%eax, %eax
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$405, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L89:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_asn1_group2curve
	testl	%eax, %eax
	jne	.L90
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L90:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$417, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L91:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_point_conversion_form@PLT
	movl	%eax, -28(%rbp)
	leaq	-56(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_POINT_point2buf@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L92:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	call	ASN1_OCTET_STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movq	-56(%rbp), %rax
	leaq	.LC29(%rip), %rcx
	movl	$429, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$430, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L93:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L94
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$438, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L94:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L95
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$444, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L95:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L96
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_to_ASN1_INTEGER@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L96
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L88
.L96:
	movq	-8(%rbp), %rax
	jmp	.L99
.L88:
	cmpq	$0, -80(%rbp)
	jne	.L98
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ECPARAMETERS_free@PLT
.L98:
	movl	$0, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	EC_GROUP_get_ecparameters, .-EC_GROUP_get_ecparameters
	.globl	EC_GROUP_get_ecpkparameters
	.type	EC_GROUP_get_ecpkparameters, @function
EC_GROUP_get_ecpkparameters:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L101
	call	ECPKPARAMETERS_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L102
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L103
.L101:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L104
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	jmp	.L102
.L104:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L102
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ECPARAMETERS_free@PLT
.L102:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	cmpl	$1, %eax
	jne	.L105
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L106
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L107
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_length@PLT
	testq	%rax, %rax
	jne	.L108
.L107:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$496, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L110
.L108:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L110
.L106:
	movl	$0, -4(%rbp)
	jmp	.L110
.L105:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecparameters@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L110
	movl	$0, -4(%rbp)
.L110:
	cmpl	$0, -4(%rbp)
	jne	.L111
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECPKPARAMETERS_free@PLT
	movl	$0, %eax
	jmp	.L103
.L111:
	movq	-16(%rbp), %rax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	EC_GROUP_get_ecpkparameters, .-EC_GROUP_get_ecpkparameters
	.globl	EC_GROUP_new_from_ecparameters
	.type	EC_GROUP_new_from_ecparameters, @function
EC_GROUP_new_from_ecparameters:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L114
.L113:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$533, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L114:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L117
.L116:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$546, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L117:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L118
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$551, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L118:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L119
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L119:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -80(%rbp)
	cmpl	$407, -80(%rbp)
	jne	.L120
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	cmpq	$661, -64(%rbp)
	jle	.L121
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$576, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L121:
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$581, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L122:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -80(%rbp)
	cmpl	$682, -80(%rbp)
	jne	.L123
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$592, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L124:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	cmpq	%rax, -104(%rbp)
	jge	.L125
	cmpq	$0, -104(%rbp)
	jg	.L126
.L125:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$599, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L126:
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L168
	movq	-104(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L169
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	jne	.L129
	jmp	.L115
.L123:
	cmpl	$683, -80(%rbp)
	jne	.L130
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L131
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$615, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L131:
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jle	.L132
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-96(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jle	.L132
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L132
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L133
.L132:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$622, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L133:
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L170
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L171
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L172
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L173
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	jne	.L129
	jmp	.L115
.L130:
	cmpl	$681, -80(%rbp)
	jne	.L138
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$638, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L138:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$642, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L129:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GF2m@PLT
	movq	%rax, -16(%rbp)
	jmp	.L139
.L120:
	cmpl	$406, -80(%rbp)
	jne	.L140
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L141
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$654, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L141:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L142
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$659, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L142:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L143
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L144
.L143:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$664, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L144:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -64(%rbp)
	cmpq	$661, -64(%rbp)
	jle	.L145
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$670, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L145:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GFp@PLT
	movq	%rax, -16(%rbp)
	jmp	.L139
.L140:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$677, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L139:
	cmpq	$0, -16(%rbp)
	jne	.L146
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$682, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L146:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L147
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L148
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$695, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L148:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC29(%rip), %rcx
	movl	$698, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	cltq
	leaq	.LC29(%rip), %rcx
	movl	$699, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L174
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
.L147:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L151
.L150:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$710, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L151:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L175
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_point_conversion_form@PLT
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	jne	.L153
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$724, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L153:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	testq	%rax, %rax
	jne	.L154
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$730, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L154:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L155
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L156
.L155:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$734, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L156:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movq	-64(%rbp), %rdx
	addl	$1, %edx
	cmpl	%edx, %eax
	jle	.L157
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$738, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L157:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L158
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -48(%rbp)
	jmp	.L159
.L158:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	testq	%rax, %rax
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$747, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L159:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	jne	.L160
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L160:
	call	BN_CTX_new@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L161
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L161:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L162
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	cmpq	$1, %rax
	jne	.L162
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	jne	.L163
.L162:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$775, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L163:
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_curve_nid_from_params@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L164
	movq	$0, -112(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L165
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$800, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L115
.L165:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L164
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	cmpq	$1, %rax
	jne	.L176
.L164:
	movl	$1, -4(%rbp)
	jmp	.L115
.L168:
	nop
	jmp	.L115
.L169:
	nop
	jmp	.L115
.L170:
	nop
	jmp	.L115
.L171:
	nop
	jmp	.L115
.L172:
	nop
	jmp	.L115
.L173:
	nop
	jmp	.L115
.L174:
	nop
	jmp	.L115
.L175:
	nop
	jmp	.L115
.L176:
	nop
.L115:
	cmpl	$0, -4(%rbp)
	jne	.L166
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	$0, -16(%rbp)
.L166:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	EC_GROUP_new_from_ecparameters, .-EC_GROUP_new_from_ecparameters
	.globl	EC_GROUP_new_from_ecpkparameters
	.type	EC_GROUP_new_from_ecpkparameters, @function
EC_GROUP_new_from_ecpkparameters:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L178
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$852, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L179
.L178:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L180
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L181
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$860, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L179
.L181:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
	jmp	.L182
.L180:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L183
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecparameters@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L184
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$868, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L179
.L184:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
	jmp	.L182
.L183:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L185
	movl	$0, %eax
	jmp	.L179
.L185:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$876, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L179
.L182:
	movq	-8(%rbp), %rax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	EC_GROUP_new_from_ecpkparameters, .-EC_GROUP_new_from_ecpkparameters
	.globl	d2i_ECPKParameters
	.type	d2i_ECPKParameters, @function
d2i_ECPKParameters:
.LFB466:
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
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ECPKPARAMETERS@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L187
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECPKPARAMETERS_free@PLT
	movl	$0, %eax
	jmp	.L192
.L187:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecpkparameters@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L189
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECPKPARAMETERS_free@PLT
	movl	$0, %eax
	jmp	.L192
.L189:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L190
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
.L190:
	cmpq	$0, -40(%rbp)
	je	.L191
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L191:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECPKPARAMETERS_free@PLT
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	d2i_ECPKParameters, .-d2i_ECPKParameters
	.globl	i2d_ECPKParameters
	.type	i2d_ECPKParameters, @function
i2d_ECPKParameters:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecpkparameters@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L194
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$919, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L195
.L194:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPKPARAMETERS@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L196
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$923, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECPKPARAMETERS_free@PLT
	movl	$0, %eax
	jmp	.L195
.L196:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECPKPARAMETERS_free@PLT
	movl	-4(%rbp), %eax
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	i2d_ECPKParameters, .-i2d_ECPKParameters
	.globl	d2i_ECPrivateKey
	.type	d2i_ECPrivateKey, @function
d2i_ECPrivateKey:
.LFB468:
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_EC_PRIVATEKEY@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L198
	movl	$0, %eax
	jmp	.L218
.L198:
	cmpq	$0, -72(%rbp)
	je	.L200
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L201
.L200:
	call	EC_KEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L204
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$944, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L201:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L204:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L205
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_new_from_ecpkparameters@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L205
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L205
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$1, 40(%rax)
.L205:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L206
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$959, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L206:
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L207
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_oct2priv@PLT
	testl	%eax, %eax
	jne	.L208
	jmp	.L203
.L207:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$971, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L208:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	cmpl	$1172, %eax
	jne	.L209
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_flags@PLT
.L209:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L210
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$981, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L210:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_KEY_oct2key@PLT
	testl	%eax, %eax
	jne	.L212
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$992, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L203
.L211:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	344(%rax), %rax
	testq	%rax, %rax
	je	.L219
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	344(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L219
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
.L212:
	cmpq	$0, -72(%rbp)
	je	.L215
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L215:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_PRIVATEKEY_free@PLT
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-24(%rbp), %rax
	jmp	.L218
.L219:
	nop
.L203:
	cmpq	$0, -72(%rbp)
	je	.L216
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L217
.L216:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
.L217:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_PRIVATEKEY_free@PLT
	movl	$0, %eax
.L218:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	d2i_ECPrivateKey, .-d2i_ECPrivateKey
	.globl	i2d_ECPrivateKey
	.type	i2d_ECPrivateKey, @function
i2d_ECPrivateKey:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L221
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L221
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L222
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L222
.L221:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1027, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L223
.L222:
	call	EC_PRIVATEKEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L224
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1032, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L223
.L224:
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_priv2buf@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L225
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1041, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L223
.L225:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L226
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_get_ecpkparameters@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L226
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1052, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L223
.L226:
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L227
	call	ASN1_BIT_STRING_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L228
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1060, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L223
.L228:
	movq	-56(%rbp), %rax
	movl	52(%rax), %esi
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_KEY_key2buf@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L229
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1067, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L223
.L229:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	$0, -48(%rbp)
.L227:
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_EC_PRIVATEKEY@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L230
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1077, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L223
.L230:
	movl	$1, -8(%rbp)
.L223:
	movq	-40(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	-16(%rbp), %rsi
	movl	$1082, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-48(%rbp), %rax
	leaq	.LC29(%rip), %rcx
	movl	$1083, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_PRIVATEKEY_free@PLT
	cmpl	$0, -8(%rbp)
	je	.L231
	movl	-4(%rbp), %eax
	jmp	.L233
.L231:
	movl	$0, %eax
.L233:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	i2d_ECPrivateKey, .-i2d_ECPrivateKey
	.globl	i2d_ECParameters
	.type	i2d_ECParameters, @function
i2d_ECParameters:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L235
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1091, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L236
.L235:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ECPKParameters@PLT
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	i2d_ECParameters, .-i2d_ECParameters
	.globl	d2i_ECParameters
	.type	d2i_ECParameters, @function
d2i_ECParameters:
.LFB471:
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
	cmpq	$0, -32(%rbp)
	je	.L238
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L239
.L238:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L240
.L239:
	cmpq	$0, -24(%rbp)
	je	.L241
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L242
.L241:
	call	EC_KEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L244
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L240
.L242:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L244:
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	d2i_ECPKParameters@PLT
	testq	%rax, %rax
	jne	.L245
	cmpq	$0, -24(%rbp)
	je	.L246
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L247
.L246:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	jmp	.L248
.L247:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
.L248:
	movl	$0, %eax
	jmp	.L240
.L245:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	cmpl	$1172, %eax
	jne	.L249
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_flags@PLT
.L249:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	cmpq	$0, -24(%rbp)
	je	.L250
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L250:
	movq	-8(%rbp), %rax
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	d2i_ECParameters, .-d2i_ECParameters
	.globl	o2i_ECPublicKey
	.type	o2i_ECPublicKey, @function
o2i_ECPublicKey:
.LFB472:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L252
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L252
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L253
.L252:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L253:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_KEY_oct2key@PLT
	testl	%eax, %eax
	jne	.L255
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L255:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	o2i_ECPublicKey, .-o2i_ECPublicKey
	.globl	i2o_ECPublicKey
	.type	i2o_ECPublicKey, @function
i2o_ECPublicKey:
.LFB473:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L257
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L258
.L257:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L259
.L258:
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L260
	cmpq	$0, -16(%rbp)
	jne	.L261
.L260:
	movq	-16(%rbp), %rax
	jmp	.L259
.L261:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L262
	leaq	.LC29(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L263
	movl	$0, %eax
	jmp	.L259
.L263:
	movl	$1, -4(%rbp)
.L262:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_point2oct@PLT
	testq	%rax, %rax
	jne	.L264
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movl	$1178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpl	$0, -4(%rbp)
	je	.L265
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC29(%rip), %rcx
	movl	$1180, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.L265:
	movl	$0, %eax
	jmp	.L259
.L264:
	cmpl	$0, -4(%rbp)
	jne	.L266
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L266:
	movq	-16(%rbp), %rax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	i2o_ECPublicKey, .-i2o_ECPublicKey
	.globl	ECDSA_SIG_new
	.type	ECDSA_SIG_new, @function
ECDSA_SIG_new:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC29(%rip), %rax
	movl	$1197, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	ECDSA_SIG_new, .-ECDSA_SIG_new
	.globl	ECDSA_SIG_free
	.type	ECDSA_SIG_free, @function
ECDSA_SIG_free:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L272
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	leaq	.LC29(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1208, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L269
.L272:
	nop
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	ECDSA_SIG_free, .-ECDSA_SIG_free
	.globl	d2i_ECDSA_SIG
	.type	d2i_ECDSA_SIG, @function
d2i_ECDSA_SIG:
.LFB476:
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
	cmpq	$0, -40(%rbp)
	jns	.L274
	movl	$0, %eax
	jmp	.L275
.L274:
	cmpq	$0, -24(%rbp)
	je	.L276
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L276
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L277
.L276:
	call	ECDSA_SIG_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L277
	movl	$0, %eax
	jmp	.L275
.L277:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L278
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L278:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L279
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L279:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L280
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L280
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	ossl_decode_der_dsa_sig@PLT
	testq	%rax, %rax
	jne	.L281
.L280:
	cmpq	$0, -24(%rbp)
	je	.L282
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L283
.L282:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
.L283:
	movl	$0, %eax
	jmp	.L275
.L281:
	cmpq	$0, -24(%rbp)
	je	.L284
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L284
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L284:
	movq	-8(%rbp), %rax
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	d2i_ECDSA_SIG, .-d2i_ECDSA_SIG
	.globl	i2d_ECDSA_SIG
	.type	i2d_ECDSA_SIG, @function
i2d_ECDSA_SIG:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L286
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_init_null@PLT
	testl	%eax, %eax
	jne	.L287
	movl	$-1, %eax
	jmp	.L295
.L286:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L289
	call	BUF_MEM_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L290
	movq	-8(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	jne	.L287
.L290:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	$-1, %eax
	jmp	.L295
.L289:
	movq	-96(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-80(%rbp), %rax
	movl	$0, %ecx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L287
	movl	$-1, %eax
	jmp	.L295
.L287:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_encode_der_dsa_sig@PLT
	testl	%eax, %eax
	je	.L291
	leaq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L291
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L292
.L291:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$-1, %eax
	jmp	.L295
.L292:
	cmpq	$0, -96(%rbp)
	je	.L293
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L294
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	jmp	.L293
.L294:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
.L293:
	movq	-16(%rbp), %rax
.L295:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	i2d_ECDSA_SIG, .-i2d_ECDSA_SIG
	.globl	ECDSA_SIG_get0
	.type	ECDSA_SIG_get0, @function
ECDSA_SIG_get0:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L297
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L297:
	cmpq	$0, -24(%rbp)
	je	.L299
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L299:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	ECDSA_SIG_get0, .-ECDSA_SIG_get0
	.globl	ECDSA_SIG_get0_r
	.type	ECDSA_SIG_get0_r, @function
ECDSA_SIG_get0_r:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	ECDSA_SIG_get0_r, .-ECDSA_SIG_get0_r
	.globl	ECDSA_SIG_get0_s
	.type	ECDSA_SIG_get0_s, @function
ECDSA_SIG_get0_s:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	ECDSA_SIG_get0_s, .-ECDSA_SIG_get0_s
	.globl	ECDSA_SIG_set0
	.type	ECDSA_SIG_set0, @function
ECDSA_SIG_set0:
.LFB481:
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
	cmpq	$0, -16(%rbp)
	je	.L305
	cmpq	$0, -24(%rbp)
	jne	.L306
.L305:
	movl	$0, %eax
	jmp	.L307
.L306:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	ECDSA_SIG_set0, .-ECDSA_SIG_set0
	.globl	ECDSA_size
	.type	ECDSA_size, @function
ECDSA_size:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L309
	movl	$0, %eax
	jmp	.L314
.L309:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L311
	movl	$0, %eax
	jmp	.L314
.L311:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L312
	movl	$0, %eax
	jmp	.L314
.L312:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_ECDSA_SIG@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L313
	movl	$0, -4(%rbp)
.L313:
	movl	-4(%rbp), %eax
.L314:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	ECDSA_size, .-ECDSA_size
	.section	.rodata
.LC30:
	.string	"X9_62_PENTANOMIAL"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.21, @object
	.size	local_it.21, 56
local_it.21:
	.byte	1
	.zero	7
	.quad	16
	.quad	X9_62_PENTANOMIAL_seq_tt
	.quad	3
	.quad	0
	.quad	12
	.quad	.LC30
	.align 32
	.type	internal_adb.20, @object
	.size	internal_adb.20, 56
internal_adb.20:
	.quad	0
	.quad	8
	.quad	0
	.quad	X9_62_CHARACTERISTIC_TWO_adbtbl
	.quad	3
	.quad	char_two_def_tt
	.quad	0
	.align 32
	.type	local_it.19, @object
	.size	local_it.19, 56
local_it.19:
	.byte	1
	.zero	7
	.quad	16
	.quad	X9_62_CHARACTERISTIC_TWO_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC9
	.align 32
	.type	internal_adb.18, @object
	.size	internal_adb.18, 56
internal_adb.18:
	.quad	0
	.quad	0
	.quad	0
	.quad	X9_62_FIELDID_adbtbl
	.quad	2
	.quad	fieldID_def_tt
	.quad	0
	.align 32
	.type	local_it.17, @object
	.size	local_it.17, 56
local_it.17:
	.byte	1
	.zero	7
	.quad	16
	.quad	X9_62_FIELDID_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC13
	.section	.rodata
.LC31:
	.string	"X9_62_CURVE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.16, @object
	.size	local_it.16, 56
local_it.16:
	.byte	1
	.zero	7
	.quad	16
	.quad	X9_62_CURVE_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC31
	.section	.rodata
.LC32:
	.string	"ECPARAMETERS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.15, @object
	.size	local_it.15, 56
local_it.15:
	.byte	1
	.zero	7
	.quad	16
	.quad	ECPARAMETERS_seq_tt
	.quad	6
	.quad	0
	.quad	48
	.quad	.LC32
	.section	.rodata
.LC33:
	.string	"ECPKPARAMETERS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.14, @object
	.size	local_it.14, 56
local_it.14:
	.byte	2
	.zero	7
	.quad	0
	.quad	ECPKPARAMETERS_ch_tt
	.quad	3
	.quad	0
	.quad	16
	.quad	.LC33
	.section	.rodata
.LC34:
	.string	"EC_PRIVATEKEY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.13, @object
	.size	local_it.13, 56
local_it.13:
	.byte	1
	.zero	7
	.quad	16
	.quad	EC_PRIVATEKEY_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC34
	.section	.rodata
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 22
__func__.12:
	.string	"ec_asn1_group2fieldid"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 20
__func__.11:
	.string	"ec_asn1_group2curve"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 26
__func__.10:
	.string	"EC_GROUP_get_ecparameters"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 28
__func__.9:
	.string	"EC_GROUP_get_ecpkparameters"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 31
__func__.8:
	.string	"EC_GROUP_new_from_ecparameters"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 33
__func__.7:
	.string	"EC_GROUP_new_from_ecpkparameters"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 19
__func__.6:
	.string	"i2d_ECPKParameters"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 17
__func__.5:
	.string	"d2i_ECPrivateKey"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 17
__func__.4:
	.string	"i2d_ECPrivateKey"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"i2d_ECParameters"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"d2i_ECParameters"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"o2i_ECPublicKey"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"i2o_ECPublicKey"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
