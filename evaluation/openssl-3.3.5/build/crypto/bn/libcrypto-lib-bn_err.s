	.file	"bn_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"arg2 lt arg3"
.LC1:
	.string	"bad reciprocal"
.LC2:
	.string	"bignum too long"
.LC3:
	.string	"bits too small"
.LC4:
	.string	"called with even modulus"
.LC5:
	.string	"div by zero"
.LC6:
	.string	"encoding error"
.LC7:
	.string	"expand on static bignum data"
.LC8:
	.string	"input not reduced"
.LC9:
	.string	"invalid length"
.LC10:
	.string	"invalid range"
.LC11:
	.string	"invalid shift"
.LC12:
	.string	"not a square"
.LC13:
	.string	"not initialized"
.LC14:
	.string	"no inverse"
.LC15:
	.string	"no prime candidate"
.LC16:
	.string	"no solution"
.LC17:
	.string	"no suitable digest"
.LC18:
	.string	"private key too large"
.LC19:
	.string	"p is not prime"
.LC20:
	.string	"too many iterations"
.LC21:
	.string	"too many temporary variables"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	BN_str_reasons, @object
	.size	BN_str_reasons, 368
BN_str_reasons:
	.quad	25165924
	.quad	.LC0
	.quad	25165925
	.quad	.LC1
	.quad	25165938
	.quad	.LC2
	.quad	25165942
	.quad	.LC3
	.quad	25165926
	.quad	.LC4
	.quad	25165927
	.quad	.LC5
	.quad	25165928
	.quad	.LC6
	.quad	25165929
	.quad	.LC7
	.quad	25165934
	.quad	.LC8
	.quad	25165930
	.quad	.LC9
	.quad	25165939
	.quad	.LC10
	.quad	25165943
	.quad	.LC11
	.quad	25165935
	.quad	.LC12
	.quad	25165931
	.quad	.LC13
	.quad	25165932
	.quad	.LC14
	.quad	25165945
	.quad	.LC15
	.quad	25165940
	.quad	.LC16
	.quad	25165944
	.quad	.LC17
	.quad	25165941
	.quad	.LC18
	.quad	25165936
	.quad	.LC19
	.quad	25165937
	.quad	.LC20
	.quad	25165933
	.quad	.LC21
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_BN_strings
	.type	ossl_err_load_BN_strings, @function
ossl_err_load_BN_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$25165924, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	BN_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_BN_strings, .-ossl_err_load_BN_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
