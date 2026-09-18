	.file	"ts_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"bad pkcs7 type"
.LC1:
	.string	"bad type"
.LC2:
	.string	"cannot load certificate"
.LC3:
	.string	"cannot load private key"
.LC4:
	.string	"certificate verify error"
.LC5:
	.string	"could not set engine"
.LC6:
	.string	"could not set time"
.LC7:
	.string	"detached content"
.LC8:
	.string	"ess add signing cert error"
.LC9:
	.string	"ess add signing cert v2 error"
.LC10:
	.string	"ess signing certificate error"
.LC11:
	.string	"invalid null pointer"
	.align 8
.LC12:
	.string	"invalid signer certificate purpose"
.LC13:
	.string	"message imprint mismatch"
.LC14:
	.string	"nonce mismatch"
.LC15:
	.string	"nonce not returned"
.LC16:
	.string	"no content"
.LC17:
	.string	"no time stamp token"
.LC18:
	.string	"pkcs7 add signature error"
.LC19:
	.string	"pkcs7 add signed attr error"
.LC20:
	.string	"pkcs7 to ts tst info failed"
.LC21:
	.string	"policy mismatch"
	.align 8
.LC22:
	.string	"private key does not match certificate"
.LC23:
	.string	"response setup error"
.LC24:
	.string	"signature failure"
.LC25:
	.string	"there must be one signer"
.LC26:
	.string	"time syscall error"
.LC27:
	.string	"token not present"
.LC28:
	.string	"token present"
.LC29:
	.string	"tsa name mismatch"
.LC30:
	.string	"tsa untrusted"
.LC31:
	.string	"tst info setup error"
.LC32:
	.string	"ts datasign"
.LC33:
	.string	"unacceptable policy"
.LC34:
	.string	"unsupported md algorithm"
.LC35:
	.string	"unsupported version"
.LC36:
	.string	"var bad value"
.LC37:
	.string	"cannot find config variable"
.LC38:
	.string	"wrong content type"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	TS_str_reasons, @object
	.size	TS_str_reasons, 640
TS_str_reasons:
	.quad	394264708
	.quad	.LC0
	.quad	394264709
	.quad	.LC1
	.quad	394264713
	.quad	.LC2
	.quad	394264714
	.quad	.LC3
	.quad	394264676
	.quad	.LC4
	.quad	394264703
	.quad	.LC5
	.quad	394264691
	.quad	.LC6
	.quad	394264710
	.quad	.LC7
	.quad	394264692
	.quad	.LC8
	.quad	394264715
	.quad	.LC9
	.quad	394264677
	.quad	.LC10
	.quad	394264678
	.quad	.LC11
	.quad	394264693
	.quad	.LC12
	.quad	394264679
	.quad	.LC13
	.quad	394264680
	.quad	.LC14
	.quad	394264681
	.quad	.LC15
	.quad	394264682
	.quad	.LC16
	.quad	394264683
	.quad	.LC17
	.quad	394264694
	.quad	.LC18
	.quad	394264695
	.quad	.LC19
	.quad	394264705
	.quad	.LC20
	.quad	394264684
	.quad	.LC21
	.quad	394264696
	.quad	.LC22
	.quad	394264697
	.quad	.LC23
	.quad	394264685
	.quad	.LC24
	.quad	394264686
	.quad	.LC25
	.quad	394264698
	.quad	.LC26
	.quad	394264706
	.quad	.LC27
	.quad	394264707
	.quad	.LC28
	.quad	394264687
	.quad	.LC29
	.quad	394264688
	.quad	.LC30
	.quad	394264699
	.quad	.LC31
	.quad	394264700
	.quad	.LC32
	.quad	394264701
	.quad	.LC33
	.quad	394264702
	.quad	.LC34
	.quad	394264689
	.quad	.LC35
	.quad	394264711
	.quad	.LC36
	.quad	394264712
	.quad	.LC37
	.quad	394264690
	.quad	.LC38
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_TS_strings
	.type	ossl_err_load_TS_strings, @function
ossl_err_load_TS_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$394264708, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	TS_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_TS_strings, .-ossl_err_load_TS_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
