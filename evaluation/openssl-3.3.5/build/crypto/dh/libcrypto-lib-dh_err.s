	.file	"dh_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"bad ffc parameters"
.LC1:
	.string	"bad generator"
.LC2:
	.string	"bn decode error"
.LC3:
	.string	"bn error"
.LC4:
	.string	"check invalid j value"
.LC5:
	.string	"check invalid q value"
.LC6:
	.string	"check pubkey invalid"
.LC7:
	.string	"check pubkey too large"
.LC8:
	.string	"check pubkey too small"
.LC9:
	.string	"check p not prime"
.LC10:
	.string	"check p not safe prime"
.LC11:
	.string	"check q not prime"
.LC12:
	.string	"decode error"
.LC13:
	.string	"invalid parameter name"
.LC14:
	.string	"invalid parameter nid"
.LC15:
	.string	"invalid public key"
.LC16:
	.string	"invalid secret"
.LC17:
	.string	"invalid size"
.LC18:
	.string	"kdf parameter error"
.LC19:
	.string	"keys not set"
.LC20:
	.string	"missing pubkey"
.LC21:
	.string	"modulus too large"
.LC22:
	.string	"modulus too small"
.LC23:
	.string	"not suitable generator"
.LC24:
	.string	"no parameters set"
.LC25:
	.string	"no private value"
.LC26:
	.string	"parameter encoding error"
.LC27:
	.string	"peer key error"
.LC28:
	.string	"q too large"
.LC29:
	.string	"shared info error"
.LC30:
	.string	"unable to check generator"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	DH_str_reasons, @object
	.size	DH_str_reasons, 512
DH_str_reasons:
	.quad	41943167
	.quad	.LC0
	.quad	41943141
	.quad	.LC1
	.quad	41943149
	.quad	.LC2
	.quad	41943146
	.quad	.LC3
	.quad	41943155
	.quad	.LC4
	.quad	41943156
	.quad	.LC5
	.quad	41943162
	.quad	.LC6
	.quad	41943163
	.quad	.LC7
	.quad	41943164
	.quad	.LC8
	.quad	41943157
	.quad	.LC9
	.quad	41943158
	.quad	.LC10
	.quad	41943159
	.quad	.LC11
	.quad	41943144
	.quad	.LC12
	.quad	41943150
	.quad	.LC13
	.quad	41943154
	.quad	.LC14
	.quad	41943142
	.quad	.LC15
	.quad	41943168
	.quad	.LC16
	.quad	41943169
	.quad	.LC17
	.quad	41943152
	.quad	.LC18
	.quad	41943148
	.quad	.LC19
	.quad	41943165
	.quad	.LC20
	.quad	41943143
	.quad	.LC21
	.quad	41943166
	.quad	.LC22
	.quad	41943160
	.quad	.LC23
	.quad	41943147
	.quad	.LC24
	.quad	41943140
	.quad	.LC25
	.quad	41943145
	.quad	.LC26
	.quad	41943151
	.quad	.LC27
	.quad	41943170
	.quad	.LC28
	.quad	41943153
	.quad	.LC29
	.quad	41943161
	.quad	.LC30
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_DH_strings
	.type	ossl_err_load_DH_strings, @function
ossl_err_load_DH_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$41943167, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	DH_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_DH_strings, .-ossl_err_load_DH_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
