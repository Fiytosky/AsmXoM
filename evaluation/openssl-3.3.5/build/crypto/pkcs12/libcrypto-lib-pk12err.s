	.file	"pk12err.c"
	.text
	.section	.rodata
.LC0:
	.string	"callback failed"
.LC1:
	.string	"can't pack structure"
.LC2:
	.string	"content type not data"
.LC3:
	.string	"decode error"
.LC4:
	.string	"encode error"
.LC5:
	.string	"encrypt error"
	.align 8
.LC6:
	.string	"error setting encrypted data type"
.LC7:
	.string	"invalid null argument"
.LC8:
	.string	"invalid null pkcs12 pointer"
.LC9:
	.string	"invalid type"
.LC10:
	.string	"iv gen error"
.LC11:
	.string	"key gen error"
.LC12:
	.string	"mac absent"
.LC13:
	.string	"mac generation error"
.LC14:
	.string	"mac setup error"
.LC15:
	.string	"mac string set error"
.LC16:
	.string	"mac verify failure"
.LC17:
	.string	"parse error"
.LC18:
	.string	"pkcs12 cipherfinal error"
.LC19:
	.string	"unknown digest algorithm"
.LC20:
	.string	"unsupported pkcs12 mode"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	PKCS12_str_reasons, @object
	.size	PKCS12_str_reasons, 352
PKCS12_str_reasons:
	.quad	293601395
	.quad	.LC0
	.quad	293601380
	.quad	.LC1
	.quad	293601401
	.quad	.LC2
	.quad	293601381
	.quad	.LC3
	.quad	293601382
	.quad	.LC4
	.quad	293601383
	.quad	.LC5
	.quad	293601400
	.quad	.LC6
	.quad	293601384
	.quad	.LC7
	.quad	293601385
	.quad	.LC8
	.quad	293601392
	.quad	.LC9
	.quad	293601386
	.quad	.LC10
	.quad	293601387
	.quad	.LC11
	.quad	293601388
	.quad	.LC12
	.quad	293601389
	.quad	.LC13
	.quad	293601390
	.quad	.LC14
	.quad	293601391
	.quad	.LC15
	.quad	293601393
	.quad	.LC16
	.quad	293601394
	.quad	.LC17
	.quad	293601396
	.quad	.LC18
	.quad	293601398
	.quad	.LC19
	.quad	293601399
	.quad	.LC20
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_PKCS12_strings
	.type	ossl_err_load_PKCS12_strings, @function
ossl_err_load_PKCS12_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$293601395, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	PKCS12_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_PKCS12_strings, .-ossl_err_load_PKCS12_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
