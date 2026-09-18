	.file	"rsa_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"algorithm mismatch"
.LC1:
	.string	"bad e value"
.LC2:
	.string	"bad fixed header decrypt"
.LC3:
	.string	"bad pad byte count"
.LC4:
	.string	"bad signature"
.LC5:
	.string	"block type is not 01"
.LC6:
	.string	"block type is not 02"
.LC7:
	.string	"data greater than mod len"
.LC8:
	.string	"data too large"
.LC9:
	.string	"data too large for key size"
.LC10:
	.string	"data too large for modulus"
.LC11:
	.string	"data too small"
.LC12:
	.string	"data too small for key size"
.LC13:
	.string	"digest does not match"
.LC14:
	.string	"digest not allowed"
.LC15:
	.string	"digest too big for rsa key"
.LC16:
	.string	"dmp1 not congruent to d"
.LC17:
	.string	"dmq1 not congruent to d"
.LC18:
	.string	"d e not congruent to 1"
.LC19:
	.string	"first octet invalid"
	.align 8
.LC20:
	.string	"illegal or unsupported padding mode"
.LC21:
	.string	"invalid digest"
.LC22:
	.string	"invalid digest length"
.LC23:
	.string	"invalid header"
.LC24:
	.string	"invalid keypair"
.LC25:
	.string	"invalid key length"
.LC26:
	.string	"invalid label"
.LC27:
	.string	"invalid length"
.LC28:
	.string	"invalid message length"
.LC29:
	.string	"invalid mgf1 md"
.LC30:
	.string	"invalid modulus"
.LC31:
	.string	"invalid multi prime key"
.LC32:
	.string	"invalid oaep parameters"
.LC33:
	.string	"invalid padding"
.LC34:
	.string	"invalid padding mode"
.LC35:
	.string	"invalid pss parameters"
.LC36:
	.string	"invalid pss saltlen"
.LC37:
	.string	"invalid request"
.LC38:
	.string	"invalid salt length"
.LC39:
	.string	"invalid strength"
.LC40:
	.string	"invalid trailer"
.LC41:
	.string	"invalid x931 digest"
.LC42:
	.string	"iqmp not inverse of q"
.LC43:
	.string	"key prime num invalid"
.LC44:
	.string	"key size too small"
.LC45:
	.string	"last octet invalid"
.LC46:
	.string	"mgf1 digest not allowed"
.LC47:
	.string	"missing private key"
.LC48:
	.string	"modulus too large"
	.align 8
.LC49:
	.string	"mp coefficient not inverse of r"
	.align 8
.LC50:
	.string	"mp exponent not congruent to d"
.LC51:
	.string	"mp r not prime"
.LC52:
	.string	"no public exponent"
.LC53:
	.string	"null before block missing"
	.align 8
.LC54:
	.string	"n does not equal product of primes"
.LC55:
	.string	"n does not equal p q"
.LC56:
	.string	"oaep decoding error"
	.align 8
.LC57:
	.string	"operation not supported for this keytype"
.LC58:
	.string	"padding check failed"
.LC59:
	.string	"pairwise test failure"
.LC60:
	.string	"pkcs decoding error"
.LC61:
	.string	"pss saltlen too small"
.LC62:
	.string	"pub exponent out of range"
.LC63:
	.string	"p not prime"
.LC64:
	.string	"q not prime"
	.align 8
.LC65:
	.string	"randomness source strength insufficient"
.LC66:
	.string	"rsa operations not supported"
.LC67:
	.string	"salt length check failed"
.LC68:
	.string	"salt length recovery failed"
.LC69:
	.string	"sslv3 rollback attack"
	.align 8
.LC70:
	.string	"the asn1 object identifier is not known for this md"
.LC71:
	.string	"unknown algorithm type"
.LC72:
	.string	"unknown digest"
.LC73:
	.string	"unknown mask digest"
.LC74:
	.string	"unknown padding type"
.LC75:
	.string	"unsupported encryption type"
.LC76:
	.string	"unsupported label source"
.LC77:
	.string	"unsupported mask algorithm"
.LC78:
	.string	"unsupported mask parameter"
.LC79:
	.string	"unsupported signature type"
.LC80:
	.string	"value missing"
.LC81:
	.string	"wrong signature length"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	RSA_str_reasons, @object
	.size	RSA_str_reasons, 1328
RSA_str_reasons:
	.quad	33554532
	.quad	.LC0
	.quad	33554533
	.quad	.LC1
	.quad	33554534
	.quad	.LC2
	.quad	33554535
	.quad	.LC3
	.quad	33554536
	.quad	.LC4
	.quad	33554538
	.quad	.LC5
	.quad	33554539
	.quad	.LC6
	.quad	33554540
	.quad	.LC7
	.quad	33554541
	.quad	.LC8
	.quad	33554542
	.quad	.LC9
	.quad	33554564
	.quad	.LC10
	.quad	33554543
	.quad	.LC11
	.quad	33554554
	.quad	.LC12
	.quad	33554590
	.quad	.LC13
	.quad	33554577
	.quad	.LC14
	.quad	33554544
	.quad	.LC15
	.quad	33554556
	.quad	.LC16
	.quad	33554557
	.quad	.LC17
	.quad	33554555
	.quad	.LC18
	.quad	33554565
	.quad	.LC19
	.quad	33554576
	.quad	.LC20
	.quad	33554589
	.quad	.LC21
	.quad	33554575
	.quad	.LC22
	.quad	33554569
	.quad	.LC23
	.quad	33554603
	.quad	.LC24
	.quad	33554605
	.quad	.LC25
	.quad	33554592
	.quad	.LC26
	.quad	33554613
	.quad	.LC27
	.quad	33554563
	.quad	.LC28
	.quad	33554588
	.quad	.LC29
	.quad	33554606
	.quad	.LC30
	.quad	33554599
	.quad	.LC31
	.quad	33554593
	.quad	.LC32
	.quad	33554570
	.quad	.LC33
	.quad	33554573
	.quad	.LC34
	.quad	33554581
	.quad	.LC35
	.quad	33554578
	.quad	.LC36
	.quad	33554607
	.quad	.LC37
	.quad	33554582
	.quad	.LC38
	.quad	33554608
	.quad	.LC39
	.quad	33554571
	.quad	.LC40
	.quad	33554574
	.quad	.LC41
	.quad	33554558
	.quad	.LC42
	.quad	33554597
	.quad	.LC43
	.quad	33554552
	.quad	.LC44
	.quad	33554566
	.quad	.LC45
	.quad	33554584
	.quad	.LC46
	.quad	33554611
	.quad	.LC47
	.quad	33554537
	.quad	.LC48
	.quad	33554600
	.quad	.LC49
	.quad	33554601
	.quad	.LC50
	.quad	33554602
	.quad	.LC51
	.quad	33554572
	.quad	.LC52
	.quad	33554545
	.quad	.LC53
	.quad	33554604
	.quad	.LC54
	.quad	33554559
	.quad	.LC55
	.quad	33554553
	.quad	.LC56
	.quad	33554580
	.quad	.LC57
	.quad	33554546
	.quad	.LC58
	.quad	33554609
	.quad	.LC59
	.quad	33554591
	.quad	.LC60
	.quad	33554596
	.quad	.LC61
	.quad	33554610
	.quad	.LC62
	.quad	33554560
	.quad	.LC63
	.quad	33554561
	.quad	.LC64
	.quad	33554612
	.quad	.LC65
	.quad	33554562
	.quad	.LC66
	.quad	33554568
	.quad	.LC67
	.quad	33554567
	.quad	.LC68
	.quad	33554547
	.quad	.LC69
	.quad	33554548
	.quad	.LC70
	.quad	33554549
	.quad	.LC71
	.quad	33554598
	.quad	.LC72
	.quad	33554583
	.quad	.LC73
	.quad	33554550
	.quad	.LC74
	.quad	33554594
	.quad	.LC75
	.quad	33554595
	.quad	.LC76
	.quad	33554585
	.quad	.LC77
	.quad	33554586
	.quad	.LC78
	.quad	33554587
	.quad	.LC79
	.quad	33554579
	.quad	.LC80
	.quad	33554551
	.quad	.LC81
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_RSA_strings
	.type	ossl_err_load_RSA_strings, @function
ossl_err_load_RSA_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$33554532, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	RSA_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_RSA_strings, .-ossl_err_load_RSA_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
