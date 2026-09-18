	.file	"ec_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"asn1 error"
.LC1:
	.string	"bad signature"
.LC2:
	.string	"bignum out of range"
.LC3:
	.string	"buffer too small"
.LC4:
	.string	"cannot invert"
.LC5:
	.string	"coordinates out of range"
.LC6:
	.string	"curve does not support ecdh"
.LC7:
	.string	"curve does not support ecdsa"
	.align 8
.LC8:
	.string	"curve does not support signing"
.LC9:
	.string	"decode error"
.LC10:
	.string	"discriminant is zero"
.LC11:
	.string	"ec group new by name failure"
.LC12:
	.string	"explicit params not supported"
.LC13:
	.string	"failed making public key"
.LC14:
	.string	"field too large"
.LC15:
	.string	"gf2m not supported"
.LC16:
	.string	"group2pkparameters failure"
.LC17:
	.string	"i2d ecpkparameters failure"
.LC18:
	.string	"incompatible objects"
.LC19:
	.string	"invalid a"
.LC20:
	.string	"invalid argument"
.LC21:
	.string	"invalid b"
.LC22:
	.string	"invalid cofactor"
.LC23:
	.string	"invalid compressed point"
.LC24:
	.string	"invalid compression bit"
.LC25:
	.string	"invalid curve"
.LC26:
	.string	"invalid digest"
.LC27:
	.string	"invalid digest type"
.LC28:
	.string	"invalid encoding"
.LC29:
	.string	"invalid field"
.LC30:
	.string	"invalid form"
.LC31:
	.string	"invalid generator"
.LC32:
	.string	"invalid group order"
.LC33:
	.string	"invalid key"
.LC34:
	.string	"invalid length"
	.align 8
.LC35:
	.string	"invalid named group conversion"
.LC36:
	.string	"invalid output length"
.LC37:
	.string	"invalid p"
.LC38:
	.string	"invalid peer key"
.LC39:
	.string	"invalid pentanomial basis"
.LC40:
	.string	"invalid private key"
.LC41:
	.string	"invalid seed"
.LC42:
	.string	"invalid trinomial basis"
.LC43:
	.string	"kdf parameter error"
.LC44:
	.string	"keys not set"
.LC45:
	.string	"ladder post failure"
.LC46:
	.string	"ladder pre failure"
.LC47:
	.string	"ladder step failure"
.LC48:
	.string	"missing OID"
.LC49:
	.string	"missing parameters"
.LC50:
	.string	"missing private key"
.LC51:
	.string	"need new setup values"
.LC52:
	.string	"not a NIST prime"
.LC53:
	.string	"not implemented"
.LC54:
	.string	"not initialized"
.LC55:
	.string	"no parameters set"
.LC56:
	.string	"no private value"
.LC57:
	.string	"operation not supported"
.LC58:
	.string	"passed null parameter"
.LC59:
	.string	"peer key error"
.LC60:
	.string	"point arithmetic failure"
.LC61:
	.string	"point at infinity"
	.align 8
.LC62:
	.string	"point coordinates blind failure"
.LC63:
	.string	"point is not on curve"
	.align 8
.LC64:
	.string	"random number generation failed"
.LC65:
	.string	"shared info error"
.LC66:
	.string	"slot full"
.LC67:
	.string	"too many retries"
.LC68:
	.string	"undefined generator"
.LC69:
	.string	"undefined order"
.LC70:
	.string	"unknown cofactor"
.LC71:
	.string	"unknown group"
.LC72:
	.string	"unknown order"
.LC73:
	.string	"unsupported field"
.LC74:
	.string	"wrong curve parameters"
.LC75:
	.string	"wrong order"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	EC_str_reasons, @object
	.size	EC_str_reasons, 1232
EC_str_reasons:
	.quad	134217843
	.quad	.LC0
	.quad	134217884
	.quad	.LC1
	.quad	134217872
	.quad	.LC2
	.quad	134217828
	.quad	.LC3
	.quad	134217893
	.quad	.LC4
	.quad	134217874
	.quad	.LC5
	.quad	134217888
	.quad	.LC6
	.quad	134217898
	.quad	.LC7
	.quad	134217887
	.quad	.LC8
	.quad	134217870
	.quad	.LC9
	.quad	134217846
	.quad	.LC10
	.quad	134217847
	.quad	.LC11
	.quad	134217855
	.quad	.LC12
	.quad	134217894
	.quad	.LC13
	.quad	134217871
	.quad	.LC14
	.quad	134217875
	.quad	.LC15
	.quad	134217848
	.quad	.LC16
	.quad	134217849
	.quad	.LC17
	.quad	134217829
	.quad	.LC18
	.quad	134217896
	.quad	.LC19
	.quad	134217840
	.quad	.LC20
	.quad	134217897
	.quad	.LC21
	.quad	134217899
	.quad	.LC22
	.quad	134217838
	.quad	.LC23
	.quad	134217837
	.quad	.LC24
	.quad	134217869
	.quad	.LC25
	.quad	134217879
	.quad	.LC26
	.quad	134217866
	.quad	.LC27
	.quad	134217830
	.quad	.LC28
	.quad	134217831
	.quad	.LC29
	.quad	134217832
	.quad	.LC30
	.quad	134217901
	.quad	.LC31
	.quad	134217850
	.quad	.LC32
	.quad	134217844
	.quad	.LC33
	.quad	134217845
	.quad	.LC34
	.quad	134217902
	.quad	.LC35
	.quad	134217889
	.quad	.LC36
	.quad	134217900
	.quad	.LC37
	.quad	134217861
	.quad	.LC38
	.quad	134217860
	.quad	.LC39
	.quad	134217851
	.quad	.LC40
	.quad	134217903
	.quad	.LC41
	.quad	134217865
	.quad	.LC42
	.quad	134217876
	.quad	.LC43
	.quad	134217868
	.quad	.LC44
	.quad	134217864
	.quad	.LC45
	.quad	134217881
	.quad	.LC46
	.quad	134217890
	.quad	.LC47
	.quad	134217895
	.quad	.LC48
	.quad	134217852
	.quad	.LC49
	.quad	134217853
	.quad	.LC50
	.quad	134217885
	.quad	.LC51
	.quad	134217863
	.quad	.LC52
	.quad	134217854
	.quad	.LC53
	.quad	134217839
	.quad	.LC54
	.quad	134217867
	.quad	.LC55
	.quad	134217882
	.quad	.LC56
	.quad	134217880
	.quad	.LC57
	.quad	134217862
	.quad	.LC58
	.quad	134217877
	.quad	.LC59
	.quad	134217883
	.quad	.LC60
	.quad	134217834
	.quad	.LC61
	.quad	134217891
	.quad	.LC62
	.quad	134217835
	.quad	.LC63
	.quad	134217886
	.quad	.LC64
	.quad	134217878
	.quad	.LC65
	.quad	134217836
	.quad	.LC66
	.quad	134217904
	.quad	.LC67
	.quad	134217841
	.quad	.LC68
	.quad	134217856
	.quad	.LC69
	.quad	134217892
	.quad	.LC70
	.quad	134217857
	.quad	.LC71
	.quad	134217842
	.quad	.LC72
	.quad	134217859
	.quad	.LC73
	.quad	134217873
	.quad	.LC74
	.quad	134217858
	.quad	.LC75
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_EC_strings
	.type	ossl_err_load_EC_strings, @function
ossl_err_load_EC_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$134217843, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	EC_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_EC_strings, .-ossl_err_load_EC_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
