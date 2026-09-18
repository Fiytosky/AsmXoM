	.file	"rand_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"additional input too long"
.LC1:
	.string	"already instantiated"
.LC2:
	.string	"argument out of range"
.LC3:
	.string	"Cannot open file"
.LC4:
	.string	"drbg already initialized"
.LC5:
	.string	"drbg not initialised"
.LC6:
	.string	"entropy input too long"
.LC7:
	.string	"entropy out of range"
	.align 8
.LC8:
	.string	"error entropy pool was ignored"
.LC9:
	.string	"error initialising drbg"
.LC10:
	.string	"error instantiating drbg"
	.align 8
.LC11:
	.string	"error retrieving additional input"
.LC12:
	.string	"error retrieving entropy"
.LC13:
	.string	"error retrieving nonce"
.LC14:
	.string	"failed to create lock"
.LC15:
	.string	"Function not implemented"
.LC16:
	.string	"Error writing file"
.LC17:
	.string	"generate error"
.LC18:
	.string	"insufficient drbg strength"
.LC19:
	.string	"internal error"
.LC20:
	.string	"invalid property query"
.LC21:
	.string	"in error state"
.LC22:
	.string	"Not a regular file"
.LC23:
	.string	"not instantiated"
	.align 8
.LC24:
	.string	"no drbg implementation selected"
.LC25:
	.string	"parent locking not enabled"
.LC26:
	.string	"parent strength too weak"
	.align 8
.LC27:
	.string	"personalisation string too long"
	.align 8
.LC28:
	.string	"prediction resistance not supported"
.LC29:
	.string	"PRNG not seeded"
.LC30:
	.string	"random pool overflow"
.LC31:
	.string	"random pool underflow"
.LC32:
	.string	"request too large for drbg"
.LC33:
	.string	"reseed error"
.LC34:
	.string	"selftest failure"
.LC35:
	.string	"too little nonce requested"
.LC36:
	.string	"too much nonce requested"
.LC37:
	.string	"unable to create drbg"
.LC38:
	.string	"unable to fetch drbg"
	.align 8
.LC39:
	.string	"unable to get parent reseed prop counter"
.LC40:
	.string	"unable to get parent strength"
.LC41:
	.string	"unable to lock parent"
.LC42:
	.string	"unsupported drbg flags"
.LC43:
	.string	"unsupported drbg type"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	RAND_str_reasons, @object
	.size	RAND_str_reasons, 720
RAND_str_reasons:
	.quad	301989990
	.quad	.LC0
	.quad	301989991
	.quad	.LC1
	.quad	301989993
	.quad	.LC2
	.quad	301990009
	.quad	.LC3
	.quad	301990017
	.quad	.LC4
	.quad	301989992
	.quad	.LC5
	.quad	301989994
	.quad	.LC6
	.quad	301990012
	.quad	.LC7
	.quad	301990015
	.quad	.LC8
	.quad	301989995
	.quad	.LC9
	.quad	301989996
	.quad	.LC10
	.quad	301989997
	.quad	.LC11
	.quad	301989998
	.quad	.LC12
	.quad	301989999
	.quad	.LC13
	.quad	301990014
	.quad	.LC14
	.quad	301989989
	.quad	.LC15
	.quad	301990011
	.quad	.LC16
	.quad	301990000
	.quad	.LC17
	.quad	301990027
	.quad	.LC18
	.quad	301990001
	.quad	.LC19
	.quad	301990025
	.quad	.LC20
	.quad	301990002
	.quad	.LC21
	.quad	301990010
	.quad	.LC22
	.quad	301990003
	.quad	.LC23
	.quad	301990016
	.quad	.LC24
	.quad	301990018
	.quad	.LC25
	.quad	301990019
	.quad	.LC26
	.quad	301990004
	.quad	.LC27
	.quad	301990021
	.quad	.LC28
	.quad	301989988
	.quad	.LC29
	.quad	301990013
	.quad	.LC30
	.quad	301990022
	.quad	.LC31
	.quad	301990005
	.quad	.LC32
	.quad	301990006
	.quad	.LC33
	.quad	301990007
	.quad	.LC34
	.quad	301990023
	.quad	.LC35
	.quad	301990024
	.quad	.LC36
	.quad	301990031
	.quad	.LC37
	.quad	301990032
	.quad	.LC38
	.quad	301990029
	.quad	.LC39
	.quad	301990026
	.quad	.LC40
	.quad	301990028
	.quad	.LC41
	.quad	301990020
	.quad	.LC42
	.quad	301990008
	.quad	.LC43
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_RAND_strings
	.type	ossl_err_load_RAND_strings, @function
ossl_err_load_RAND_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$301989990, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	RAND_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_RAND_strings, .-ossl_err_load_RAND_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
