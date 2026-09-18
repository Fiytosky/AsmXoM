	.file	"http_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"asn1 len exceeds max resp len"
.LC1:
	.string	"connect failure"
.LC2:
	.string	"error parsing asn1 length"
.LC3:
	.string	"error parsing content length"
.LC4:
	.string	"error parsing url"
.LC5:
	.string	"error receiving"
.LC6:
	.string	"error sending"
.LC7:
	.string	"failed reading data"
.LC8:
	.string	"header parse error"
.LC9:
	.string	"inconsistent content length"
.LC10:
	.string	"invalid port number"
.LC11:
	.string	"invalid url path"
.LC12:
	.string	"invalid url scheme"
.LC13:
	.string	"max resp len exceeded"
.LC14:
	.string	"missing asn1 encoding"
.LC15:
	.string	"missing content type"
.LC16:
	.string	"missing redirect location"
.LC17:
	.string	"received error"
.LC18:
	.string	"received wrong http version"
	.align 8
.LC19:
	.string	"redirection from https to http"
.LC20:
	.string	"redirection not enabled"
.LC21:
	.string	"response line too long"
.LC22:
	.string	"response parse error"
.LC23:
	.string	"response too many hdrlines"
.LC24:
	.string	"retry timeout"
.LC25:
	.string	"server canceled connection"
.LC26:
	.string	"sock not supported"
.LC27:
	.string	"status code unsupported"
.LC28:
	.string	"tls not enabled"
.LC29:
	.string	"too many redirections"
.LC30:
	.string	"unexpected content type"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	HTTP_str_reasons, @object
	.size	HTTP_str_reasons, 512
HTTP_str_reasons:
	.quad	511705196
	.quad	.LC0
	.quad	511705188
	.quad	.LC1
	.quad	511705197
	.quad	.LC2
	.quad	511705207
	.quad	.LC3
	.quad	511705189
	.quad	.LC4
	.quad	511705191
	.quad	.LC5
	.quad	511705190
	.quad	.LC6
	.quad	511705216
	.quad	.LC7
	.quad	511705214
	.quad	.LC8
	.quad	511705208
	.quad	.LC9
	.quad	511705211
	.quad	.LC10
	.quad	511705213
	.quad	.LC11
	.quad	511705212
	.quad	.LC12
	.quad	511705205
	.quad	.LC13
	.quad	511705198
	.quad	.LC14
	.quad	511705209
	.quad	.LC15
	.quad	511705199
	.quad	.LC16
	.quad	511705193
	.quad	.LC17
	.quad	511705194
	.quad	.LC18
	.quad	511705200
	.quad	.LC19
	.quad	511705204
	.quad	.LC20
	.quad	511705201
	.quad	.LC21
	.quad	511705192
	.quad	.LC22
	.quad	511705218
	.quad	.LC23
	.quad	511705217
	.quad	.LC24
	.quad	511705215
	.quad	.LC25
	.quad	511705210
	.quad	.LC26
	.quad	511705202
	.quad	.LC27
	.quad	511705195
	.quad	.LC28
	.quad	511705203
	.quad	.LC29
	.quad	511705206
	.quad	.LC30
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_HTTP_strings
	.type	ossl_err_load_HTTP_strings, @function
ossl_err_load_HTTP_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$511705196, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	HTTP_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_HTTP_strings, .-ossl_err_load_HTTP_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
