	.file	"store_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"ambiguous content type"
.LC1:
	.string	"bad password read"
.LC2:
	.string	"error verifying pkcs12 mac"
	.align 8
.LC3:
	.string	"fingerprint size does not match digest"
.LC4:
	.string	"invalid scheme"
.LC5:
	.string	"is not a"
.LC6:
	.string	"loader incomplete"
.LC7:
	.string	"loading started"
.LC8:
	.string	"not a certificate"
.LC9:
	.string	"not a crl"
.LC10:
	.string	"not a name"
.LC11:
	.string	"not a private key"
.LC12:
	.string	"not a public key"
.LC13:
	.string	"not parameters"
.LC14:
	.string	"no loaders found"
.LC15:
	.string	"passphrase callback error"
.LC16:
	.string	"path must be absolute"
	.align 8
.LC17:
	.string	"search only supported for directories"
	.align 8
.LC18:
	.string	"ui process interrupted or cancelled"
.LC19:
	.string	"unregistered scheme"
.LC20:
	.string	"unsupported content type"
.LC21:
	.string	"unsupported operation"
.LC22:
	.string	"unsupported search type"
.LC23:
	.string	"uri authority unsupported"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	OSSL_STORE_str_reasons, @object
	.size	OSSL_STORE_str_reasons, 400
OSSL_STORE_str_reasons:
	.quad	369098859
	.quad	.LC0
	.quad	369098867
	.quad	.LC1
	.quad	369098865
	.quad	.LC2
	.quad	369098873
	.quad	.LC3
	.quad	369098858
	.quad	.LC4
	.quad	369098864
	.quad	.LC5
	.quad	369098868
	.quad	.LC6
	.quad	369098869
	.quad	.LC7
	.quad	369098852
	.quad	.LC8
	.quad	369098853
	.quad	.LC9
	.quad	369098855
	.quad	.LC10
	.quad	369098854
	.quad	.LC11
	.quad	369098874
	.quad	.LC12
	.quad	369098856
	.quad	.LC13
	.quad	369098875
	.quad	.LC14
	.quad	369098866
	.quad	.LC15
	.quad	369098860
	.quad	.LC16
	.quad	369098871
	.quad	.LC17
	.quad	369098861
	.quad	.LC18
	.quad	369098857
	.quad	.LC19
	.quad	369098862
	.quad	.LC20
	.quad	369098870
	.quad	.LC21
	.quad	369098872
	.quad	.LC22
	.quad	369098863
	.quad	.LC23
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_OSSL_STORE_strings
	.type	ossl_err_load_OSSL_STORE_strings, @function
ossl_err_load_OSSL_STORE_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$369098859, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	OSSL_STORE_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_OSSL_STORE_strings, .-ossl_err_load_OSSL_STORE_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
