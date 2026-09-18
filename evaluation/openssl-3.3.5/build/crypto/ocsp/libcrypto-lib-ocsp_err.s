	.file	"ocsp_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"certificate verify error"
.LC1:
	.string	"digest err"
.LC2:
	.string	"digest name err"
.LC3:
	.string	"digest size err"
.LC4:
	.string	"error in nextupdate field"
.LC5:
	.string	"error in thisupdate field"
.LC6:
	.string	"missing ocspsigning usage"
.LC7:
	.string	"nextupdate before thisupdate"
.LC8:
	.string	"not basic response"
.LC9:
	.string	"no certificates in chain"
.LC10:
	.string	"no response data"
.LC11:
	.string	"no revoked time"
.LC12:
	.string	"no signer key"
	.align 8
.LC13:
	.string	"private key does not match certificate"
.LC14:
	.string	"request not signed"
	.align 8
.LC15:
	.string	"response contains no revocation data"
.LC16:
	.string	"root ca not trusted"
.LC17:
	.string	"signature failure"
.LC18:
	.string	"signer certificate not found"
.LC19:
	.string	"status expired"
.LC20:
	.string	"status not yet valid"
.LC21:
	.string	"status too old"
.LC22:
	.string	"unknown message digest"
.LC23:
	.string	"unknown nid"
	.align 8
.LC24:
	.string	"unsupported requestorname type"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	OCSP_str_reasons, @object
	.size	OCSP_str_reasons, 416
OCSP_str_reasons:
	.quad	327155813
	.quad	.LC0
	.quad	327155814
	.quad	.LC1
	.quad	327155818
	.quad	.LC2
	.quad	327155819
	.quad	.LC3
	.quad	327155834
	.quad	.LC4
	.quad	327155835
	.quad	.LC5
	.quad	327155815
	.quad	.LC6
	.quad	327155836
	.quad	.LC7
	.quad	327155816
	.quad	.LC8
	.quad	327155817
	.quad	.LC9
	.quad	327155820
	.quad	.LC10
	.quad	327155821
	.quad	.LC11
	.quad	327155842
	.quad	.LC12
	.quad	327155822
	.quad	.LC13
	.quad	327155840
	.quad	.LC14
	.quad	327155823
	.quad	.LC15
	.quad	327155824
	.quad	.LC16
	.quad	327155829
	.quad	.LC17
	.quad	327155830
	.quad	.LC18
	.quad	327155837
	.quad	.LC19
	.quad	327155838
	.quad	.LC20
	.quad	327155839
	.quad	.LC21
	.quad	327155831
	.quad	.LC22
	.quad	327155832
	.quad	.LC23
	.quad	327155841
	.quad	.LC24
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_OCSP_strings
	.type	ossl_err_load_OCSP_strings, @function
ossl_err_load_OCSP_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$327155813, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	OCSP_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_OCSP_strings, .-ossl_err_load_OCSP_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
