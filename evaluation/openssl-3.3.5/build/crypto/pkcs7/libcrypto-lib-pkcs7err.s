	.file	"pkcs7err.c"
	.text
	.section	.rodata
.LC0:
	.string	"certificate verify error"
	.align 8
.LC1:
	.string	"cipher has no object identifier"
.LC2:
	.string	"cipher not initialized"
.LC3:
	.string	"content and data present"
.LC4:
	.string	"ctrl error"
.LC5:
	.string	"decrypt error"
.LC6:
	.string	"digest failure"
.LC7:
	.string	"encryption ctrl failure"
	.align 8
.LC8:
	.string	"encryption not supported for this key type"
.LC9:
	.string	"error adding recipient"
.LC10:
	.string	"error setting cipher"
.LC11:
	.string	"invalid null pointer"
.LC12:
	.string	"invalid signed data type"
.LC13:
	.string	"no content"
.LC14:
	.string	"no default digest"
.LC15:
	.string	"no matching digest type found"
	.align 8
.LC16:
	.string	"no recipient matches certificate"
.LC17:
	.string	"no signatures on data"
.LC18:
	.string	"no signers"
	.align 8
.LC19:
	.string	"operation not supported on this type"
.LC20:
	.string	"pkcs7 add signature error"
.LC21:
	.string	"pkcs7 add signer error"
.LC22:
	.string	"pkcs7 datasign"
	.align 8
.LC23:
	.string	"private key does not match certificate"
.LC24:
	.string	"signature failure"
.LC25:
	.string	"signer certificate not found"
.LC26:
	.string	"signing ctrl failure"
	.align 8
.LC27:
	.string	"signing not supported for this key type"
.LC28:
	.string	"smime text error"
.LC29:
	.string	"unable to find certificate"
.LC30:
	.string	"unable to find mem bio"
.LC31:
	.string	"unable to find message digest"
.LC32:
	.string	"unknown digest type"
.LC33:
	.string	"unknown operation"
.LC34:
	.string	"unsupported cipher type"
.LC35:
	.string	"unsupported content type"
.LC36:
	.string	"wrong content type"
.LC37:
	.string	"wrong pkcs7 type"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	PKCS7_str_reasons, @object
	.size	PKCS7_str_reasons, 624
PKCS7_str_reasons:
	.quad	276824181
	.quad	.LC0
	.quad	276824208
	.quad	.LC1
	.quad	276824180
	.quad	.LC2
	.quad	276824182
	.quad	.LC3
	.quad	276824216
	.quad	.LC4
	.quad	276824183
	.quad	.LC5
	.quad	276824165
	.quad	.LC6
	.quad	276824213
	.quad	.LC7
	.quad	276824214
	.quad	.LC8
	.quad	276824184
	.quad	.LC9
	.quad	276824185
	.quad	.LC10
	.quad	276824207
	.quad	.LC11
	.quad	276824219
	.quad	.LC12
	.quad	276824186
	.quad	.LC13
	.quad	276824215
	.quad	.LC14
	.quad	276824218
	.quad	.LC15
	.quad	276824179
	.quad	.LC16
	.quad	276824187
	.quad	.LC17
	.quad	276824206
	.quad	.LC18
	.quad	276824168
	.quad	.LC19
	.quad	276824188
	.quad	.LC20
	.quad	276824217
	.quad	.LC21
	.quad	276824209
	.quad	.LC22
	.quad	276824191
	.quad	.LC23
	.quad	276824169
	.quad	.LC24
	.quad	276824192
	.quad	.LC25
	.quad	276824211
	.quad	.LC26
	.quad	276824212
	.quad	.LC27
	.quad	276824193
	.quad	.LC28
	.quad	276824170
	.quad	.LC29
	.quad	276824171
	.quad	.LC30
	.quad	276824172
	.quad	.LC31
	.quad	276824173
	.quad	.LC32
	.quad	276824174
	.quad	.LC33
	.quad	276824175
	.quad	.LC34
	.quad	276824176
	.quad	.LC35
	.quad	276824177
	.quad	.LC36
	.quad	276824178
	.quad	.LC37
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_PKCS7_strings
	.type	ossl_err_load_PKCS7_strings, @function
ossl_err_load_PKCS7_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$276824181, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	PKCS7_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_PKCS7_strings, .-ossl_err_load_PKCS7_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
