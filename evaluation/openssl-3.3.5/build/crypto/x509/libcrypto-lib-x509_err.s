	.file	"x509_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"akid mismatch"
.LC1:
	.string	"bad selector"
.LC2:
	.string	"bad x509 filetype"
.LC3:
	.string	"base64 decode error"
.LC4:
	.string	"can't check dh key"
	.align 8
.LC5:
	.string	"certificate verification failed"
.LC6:
	.string	"cert already in hash table"
.LC7:
	.string	"crl already delta"
.LC8:
	.string	"crl verify failure"
.LC9:
	.string	"duplicate attribute"
.LC10:
	.string	"error getting md by nid"
.LC11:
	.string	"error using siginf set"
.LC12:
	.string	"idp mismatch"
.LC13:
	.string	"invalid attributes"
.LC14:
	.string	"invalid directory"
.LC15:
	.string	"invalid distpoint"
.LC16:
	.string	"invalid field name"
.LC17:
	.string	"invalid trust"
.LC18:
	.string	"issuer mismatch"
.LC19:
	.string	"key type mismatch"
.LC20:
	.string	"key values mismatch"
.LC21:
	.string	"loading cert dir"
.LC22:
	.string	"loading defaults"
.LC23:
	.string	"method not supported"
.LC24:
	.string	"name too long"
.LC25:
	.string	"newer crl not newer"
.LC26:
	.string	"no certificate found"
.LC27:
	.string	"no certificate or crl found"
.LC28:
	.string	"no cert set for us to verify"
.LC29:
	.string	"no crl found"
.LC30:
	.string	"no crl number"
.LC31:
	.string	"public key decode error"
.LC32:
	.string	"public key encode error"
.LC33:
	.string	"should retry"
	.align 8
.LC34:
	.string	"unable to find parameters in chain"
	.align 8
.LC35:
	.string	"unable to get certs public key"
.LC36:
	.string	"unknown key type"
.LC37:
	.string	"unknown nid"
.LC38:
	.string	"unknown purpose id"
.LC39:
	.string	"unknown sigid algs"
.LC40:
	.string	"unknown trust id"
.LC41:
	.string	"unsupported algorithm"
.LC42:
	.string	"wrong lookup type"
.LC43:
	.string	"wrong type"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	X509_str_reasons, @object
	.size	X509_str_reasons, 720
X509_str_reasons:
	.quad	92274798
	.quad	.LC0
	.quad	92274821
	.quad	.LC1
	.quad	92274788
	.quad	.LC2
	.quad	92274806
	.quad	.LC3
	.quad	92274802
	.quad	.LC4
	.quad	92274827
	.quad	.LC5
	.quad	92274789
	.quad	.LC6
	.quad	92274815
	.quad	.LC7
	.quad	92274819
	.quad	.LC8
	.quad	92274828
	.quad	.LC9
	.quad	92274829
	.quad	.LC10
	.quad	92274830
	.quad	.LC11
	.quad	92274816
	.quad	.LC12
	.quad	92274826
	.quad	.LC13
	.quad	92274801
	.quad	.LC14
	.quad	92274831
	.quad	.LC15
	.quad	92274807
	.quad	.LC16
	.quad	92274811
	.quad	.LC17
	.quad	92274817
	.quad	.LC18
	.quad	92274803
	.quad	.LC19
	.quad	92274804
	.quad	.LC20
	.quad	92274791
	.quad	.LC21
	.quad	92274792
	.quad	.LC22
	.quad	92274812
	.quad	.LC23
	.quad	92274822
	.quad	.LC24
	.quad	92274820
	.quad	.LC25
	.quad	92274823
	.quad	.LC26
	.quad	92274824
	.quad	.LC27
	.quad	92274793
	.quad	.LC28
	.quad	92274825
	.quad	.LC29
	.quad	92274818
	.quad	.LC30
	.quad	92274813
	.quad	.LC31
	.quad	92274814
	.quad	.LC32
	.quad	92274794
	.quad	.LC33
	.quad	92274795
	.quad	.LC34
	.quad	92274796
	.quad	.LC35
	.quad	92274805
	.quad	.LC36
	.quad	92274797
	.quad	.LC37
	.quad	92274809
	.quad	.LC38
	.quad	92274832
	.quad	.LC39
	.quad	92274808
	.quad	.LC40
	.quad	92274799
	.quad	.LC41
	.quad	92274800
	.quad	.LC42
	.quad	92274810
	.quad	.LC43
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_X509_strings
	.type	ossl_err_load_X509_strings, @function
ossl_err_load_X509_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$92274798, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	X509_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_X509_strings, .-ossl_err_load_X509_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
