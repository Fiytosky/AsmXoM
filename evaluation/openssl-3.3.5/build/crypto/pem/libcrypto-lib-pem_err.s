	.file	"pem_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"bad base64 decode"
.LC1:
	.string	"bad decrypt"
.LC2:
	.string	"bad end line"
.LC3:
	.string	"bad iv chars"
.LC4:
	.string	"bad magic number"
.LC5:
	.string	"bad password read"
.LC6:
	.string	"bad version number"
.LC7:
	.string	"bio write failure"
.LC8:
	.string	"cipher is null"
.LC9:
	.string	"error converting private key"
.LC10:
	.string	"expecting dss key blob"
.LC11:
	.string	"expecting private key blob"
.LC12:
	.string	"expecting public key blob"
.LC13:
	.string	"expecting rsa key blob"
.LC14:
	.string	"header too long"
.LC15:
	.string	"inconsistent header"
.LC16:
	.string	"keyblob header parse error"
.LC17:
	.string	"keyblob too short"
.LC18:
	.string	"missing dek iv"
.LC19:
	.string	"not dek info"
.LC20:
	.string	"not encrypted"
.LC21:
	.string	"not proc type"
.LC22:
	.string	"no start line"
.LC23:
	.string	"problems getting password"
.LC24:
	.string	"pvk data too short"
.LC25:
	.string	"pvk too short"
.LC26:
	.string	"read key"
.LC27:
	.string	"short header"
.LC28:
	.string	"unexpected dek iv"
.LC29:
	.string	"unsupported cipher"
.LC30:
	.string	"unsupported encryption"
.LC31:
	.string	"unsupported key components"
.LC32:
	.string	"unsupported public key type"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	PEM_str_reasons, @object
	.size	PEM_str_reasons, 544
PEM_str_reasons:
	.quad	75497572
	.quad	.LC0
	.quad	75497573
	.quad	.LC1
	.quad	75497574
	.quad	.LC2
	.quad	75497575
	.quad	.LC3
	.quad	75497588
	.quad	.LC4
	.quad	75497576
	.quad	.LC5
	.quad	75497589
	.quad	.LC6
	.quad	75497590
	.quad	.LC7
	.quad	75497599
	.quad	.LC8
	.quad	75497587
	.quad	.LC9
	.quad	75497603
	.quad	.LC10
	.quad	75497591
	.quad	.LC11
	.quad	75497592
	.quad	.LC12
	.quad	75497604
	.quad	.LC13
	.quad	75497600
	.quad	.LC14
	.quad	75497593
	.quad	.LC15
	.quad	75497594
	.quad	.LC16
	.quad	75497595
	.quad	.LC17
	.quad	75497601
	.quad	.LC18
	.quad	75497577
	.quad	.LC19
	.quad	75497578
	.quad	.LC20
	.quad	75497579
	.quad	.LC21
	.quad	75497580
	.quad	.LC22
	.quad	75497581
	.quad	.LC23
	.quad	75497596
	.quad	.LC24
	.quad	75497597
	.quad	.LC25
	.quad	75497583
	.quad	.LC26
	.quad	75497584
	.quad	.LC27
	.quad	75497602
	.quad	.LC28
	.quad	75497585
	.quad	.LC29
	.quad	75497586
	.quad	.LC30
	.quad	75497598
	.quad	.LC31
	.quad	75497582
	.quad	.LC32
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_PEM_strings
	.type	ossl_err_load_PEM_strings, @function
ossl_err_load_PEM_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$75497572, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	PEM_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_PEM_strings, .-ossl_err_load_PEM_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
