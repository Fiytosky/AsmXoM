	.file	"crmf_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"bad pbm iterationcount"
.LC1:
	.string	"crmferror"
.LC2:
	.string	"error"
.LC3:
	.string	"error decoding certificate"
.LC4:
	.string	"error decrypting certificate"
	.align 8
.LC5:
	.string	"error decrypting symmetric key"
.LC6:
	.string	"failure obtaining random"
.LC7:
	.string	"iterationcount below 100"
.LC8:
	.string	"malformed iv"
.LC9:
	.string	"null argument"
.LC10:
	.string	"poposkinput not supported"
.LC11:
	.string	"popo inconsistent public key"
.LC12:
	.string	"popo missing"
.LC13:
	.string	"popo missing public key"
.LC14:
	.string	"popo missing subject"
.LC15:
	.string	"popo raverified not accepted"
.LC16:
	.string	"setting mac algor failure"
.LC17:
	.string	"setting owf algor failure"
.LC18:
	.string	"unsupported algorithm"
.LC19:
	.string	"unsupported cipher"
	.align 8
.LC20:
	.string	"unsupported method for creating popo"
.LC21:
	.string	"unsupported popo method"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	CRMF_str_reasons, @object
	.size	CRMF_str_reasons, 368
CRMF_str_reasons:
	.quad	469762148
	.quad	.LC0
	.quad	469762150
	.quad	.LC1
	.quad	469762151
	.quad	.LC2
	.quad	469762152
	.quad	.LC3
	.quad	469762153
	.quad	.LC4
	.quad	469762154
	.quad	.LC5
	.quad	469762155
	.quad	.LC6
	.quad	469762156
	.quad	.LC7
	.quad	469762149
	.quad	.LC8
	.quad	469762157
	.quad	.LC9
	.quad	469762161
	.quad	.LC10
	.quad	469762165
	.quad	.LC11
	.quad	469762169
	.quad	.LC12
	.quad	469762166
	.quad	.LC13
	.quad	469762167
	.quad	.LC14
	.quad	469762168
	.quad	.LC15
	.quad	469762158
	.quad	.LC16
	.quad	469762159
	.quad	.LC17
	.quad	469762160
	.quad	.LC18
	.quad	469762162
	.quad	.LC19
	.quad	469762163
	.quad	.LC20
	.quad	469762164
	.quad	.LC21
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_CRMF_strings
	.type	ossl_err_load_CRMF_strings, @function
ossl_err_load_CRMF_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$469762148, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	CRMF_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_CRMF_strings, .-ossl_err_load_CRMF_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
