	.file	"evp_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"aes key setup failed"
.LC1:
	.string	"aria key setup failed"
.LC2:
	.string	"bad algorithm name"
.LC3:
	.string	"bad decrypt"
.LC4:
	.string	"bad key length"
.LC5:
	.string	"buffer too small"
.LC6:
	.string	"cache constants failed"
.LC7:
	.string	"camellia key setup failed"
.LC8:
	.string	"cannot get parameters"
.LC9:
	.string	"cannot set parameters"
.LC10:
	.string	"cipher not gcm mode"
.LC11:
	.string	"cipher parameter error"
.LC12:
	.string	"command not supported"
.LC13:
	.string	"conflicting algorithm name"
.LC14:
	.string	"copy error"
.LC15:
	.string	"ctrl not implemented"
	.align 8
.LC16:
	.string	"ctrl operation not implemented"
	.align 8
.LC17:
	.string	"data not multiple of block length"
.LC18:
	.string	"decode error"
.LC19:
	.string	"default query parse error"
.LC20:
	.string	"different key types"
.LC21:
	.string	"different parameters"
.LC22:
	.string	"error loading section"
.LC23:
	.string	"expecting an hmac key"
.LC24:
	.string	"expecting an rsa key"
.LC25:
	.string	"expecting a dh key"
.LC26:
	.string	"expecting a dsa key"
.LC27:
	.string	"expecting an ecx key"
.LC28:
	.string	"expecting an ec key"
.LC29:
	.string	"expecting a poly1305 key"
.LC30:
	.string	"expecting a siphash key"
.LC31:
	.string	"final error"
.LC32:
	.string	"generate error"
.LC33:
	.string	"get raw key failed"
.LC34:
	.string	"illegal scrypt parameters"
	.align 8
.LC35:
	.string	"inaccessible domain parameters"
.LC36:
	.string	"inaccessible key"
.LC37:
	.string	"initialization error"
.LC38:
	.string	"input not initialized"
.LC39:
	.string	"invalid custom length"
.LC40:
	.string	"invalid digest"
.LC41:
	.string	"invalid iv length"
.LC42:
	.string	"invalid key"
.LC43:
	.string	"invalid key length"
.LC44:
	.string	"invalid length"
.LC45:
	.string	"invalid null algorithm"
.LC46:
	.string	"invalid operation"
.LC47:
	.string	"invalid provider functions"
.LC48:
	.string	"invalid salt length"
.LC49:
	.string	"invalid secret length"
.LC50:
	.string	"invalid seed length"
.LC51:
	.string	"invalid value"
.LC52:
	.string	"keymgmt export failure"
.LC53:
	.string	"key setup failed"
.LC54:
	.string	"locking not supported"
.LC55:
	.string	"memory limit exceeded"
.LC56:
	.string	"message digest is null"
.LC57:
	.string	"method not supported"
.LC58:
	.string	"missing parameters"
.LC59:
	.string	"not able to copy ctx"
.LC60:
	.string	"not XOF or invalid length"
.LC61:
	.string	"no cipher set"
.LC62:
	.string	"no default digest"
.LC63:
	.string	"no digest set"
.LC64:
	.string	"no import function"
.LC65:
	.string	"no keymgmt available"
.LC66:
	.string	"no keymgmt present"
.LC67:
	.string	"no key set"
.LC68:
	.string	"no operation set"
.LC69:
	.string	"null mac pkey ctx"
.LC70:
	.string	"only oneshot supported"
.LC71:
	.string	"operation not initialized"
	.align 8
.LC72:
	.string	"operation not supported for this keytype"
.LC73:
	.string	"output would overflow"
.LC74:
	.string	"parameter too large"
.LC75:
	.string	"partially overlapping buffers"
.LC76:
	.string	"pbkdf2 error"
	.align 8
.LC77:
	.string	"pkey application asn1 method already registered"
.LC78:
	.string	"private key decode error"
.LC79:
	.string	"private key encode error"
.LC80:
	.string	"public key not rsa"
.LC81:
	.string	"setting xof failed"
.LC82:
	.string	"set default property failure"
.LC83:
	.string	"too many records"
.LC84:
	.string	"unable to enable locking"
	.align 8
.LC85:
	.string	"unable to get maximum request size"
.LC86:
	.string	"unable to get random strength"
.LC87:
	.string	"unable to lock context"
.LC88:
	.string	"unable to set callbacks"
.LC89:
	.string	"unknown bits"
.LC90:
	.string	"unknown cipher"
.LC91:
	.string	"unknown digest"
.LC92:
	.string	"unknown key type"
.LC93:
	.string	"unknown max size"
.LC94:
	.string	"unknown option"
.LC95:
	.string	"unknown pbe algorithm"
.LC96:
	.string	"unknown security bits"
.LC97:
	.string	"unsupported algorithm"
.LC98:
	.string	"unsupported cipher"
.LC99:
	.string	"unsupported keylength"
	.align 8
.LC100:
	.string	"unsupported key derivation function"
.LC101:
	.string	"unsupported key size"
.LC102:
	.string	"unsupported key type"
.LC103:
	.string	"unsupported number of rounds"
.LC104:
	.string	"unsupported prf"
	.align 8
.LC105:
	.string	"unsupported private key algorithm"
.LC106:
	.string	"unsupported salt type"
.LC107:
	.string	"update error"
.LC108:
	.string	"wrap mode not allowed"
.LC109:
	.string	"wrong final block length"
.LC110:
	.string	"xts data unit is too large"
.LC111:
	.string	"xts duplicated keys"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	EVP_str_reasons, @object
	.size	EVP_str_reasons, 1808
EVP_str_reasons:
	.quad	50331791
	.quad	.LC0
	.quad	50331824
	.quad	.LC1
	.quad	50331848
	.quad	.LC2
	.quad	50331748
	.quad	.LC3
	.quad	50331843
	.quad	.LC4
	.quad	50331803
	.quad	.LC5
	.quad	50331873
	.quad	.LC6
	.quad	50331805
	.quad	.LC7
	.quad	50331845
	.quad	.LC8
	.quad	50331846
	.quad	.LC9
	.quad	50331832
	.quad	.LC10
	.quad	50331770
	.quad	.LC11
	.quad	50331795
	.quad	.LC12
	.quad	50331849
	.quad	.LC13
	.quad	50331821
	.quad	.LC14
	.quad	50331780
	.quad	.LC15
	.quad	50331781
	.quad	.LC16
	.quad	50331786
	.quad	.LC17
	.quad	50331762
	.quad	.LC18
	.quad	50331858
	.quad	.LC19
	.quad	50331749
	.quad	.LC20
	.quad	50331801
	.quad	.LC21
	.quad	50331813
	.quad	.LC22
	.quad	50331822
	.quad	.LC23
	.quad	50331775
	.quad	.LC24
	.quad	50331776
	.quad	.LC25
	.quad	50331777
	.quad	.LC26
	.quad	50331867
	.quad	.LC27
	.quad	50331790
	.quad	.LC28
	.quad	50331812
	.quad	.LC29
	.quad	50331823
	.quad	.LC30
	.quad	50331836
	.quad	.LC31
	.quad	50331862
	.quad	.LC32
	.quad	50331830
	.quad	.LC33
	.quad	50331819
	.quad	.LC34
	.quad	50331852
	.quad	.LC35
	.quad	50331851
	.quad	.LC36
	.quad	50331782
	.quad	.LC37
	.quad	50331759
	.quad	.LC38
	.quad	50331833
	.quad	.LC39
	.quad	50331800
	.quad	.LC40
	.quad	50331842
	.quad	.LC41
	.quad	50331811
	.quad	.LC42
	.quad	50331778
	.quad	.LC43
	.quad	50331869
	.quad	.LC44
	.quad	50331866
	.quad	.LC45
	.quad	50331796
	.quad	.LC46
	.quad	50331841
	.quad	.LC47
	.quad	50331834
	.quad	.LC48
	.quad	50331871
	.quad	.LC49
	.quad	50331868
	.quad	.LC50
	.quad	50331870
	.quad	.LC51
	.quad	50331853
	.quad	.LC52
	.quad	50331828
	.quad	.LC53
	.quad	50331861
	.quad	.LC54
	.quad	50331820
	.quad	.LC55
	.quad	50331807
	.quad	.LC56
	.quad	50331792
	.quad	.LC57
	.quad	50331751
	.quad	.LC58
	.quad	50331838
	.quad	.LC59
	.quad	50331826
	.quad	.LC60
	.quad	50331779
	.quad	.LC61
	.quad	50331806
	.quad	.LC62
	.quad	50331787
	.quad	.LC63
	.quad	50331854
	.quad	.LC64
	.quad	50331847
	.quad	.LC65
	.quad	50331844
	.quad	.LC66
	.quad	50331802
	.quad	.LC67
	.quad	50331797
	.quad	.LC68
	.quad	50331856
	.quad	.LC69
	.quad	50331825
	.quad	.LC70
	.quad	50331799
	.quad	.LC71
	.quad	50331798
	.quad	.LC72
	.quad	50331850
	.quad	.LC73
	.quad	50331835
	.quad	.LC74
	.quad	50331810
	.quad	.LC75
	.quad	50331829
	.quad	.LC76
	.quad	50331827
	.quad	.LC77
	.quad	50331793
	.quad	.LC78
	.quad	50331794
	.quad	.LC79
	.quad	50331754
	.quad	.LC80
	.quad	50331875
	.quad	.LC81
	.quad	50331857
	.quad	.LC82
	.quad	50331831
	.quad	.LC83
	.quad	50331860
	.quad	.LC84
	.quad	50331863
	.quad	.LC85
	.quad	50331864
	.quad	.LC86
	.quad	50331859
	.quad	.LC87
	.quad	50331865
	.quad	.LC88
	.quad	50331814
	.quad	.LC89
	.quad	50331808
	.quad	.LC90
	.quad	50331809
	.quad	.LC91
	.quad	50331855
	.quad	.LC92
	.quad	50331815
	.quad	.LC93
	.quad	50331817
	.quad	.LC94
	.quad	50331769
	.quad	.LC95
	.quad	50331816
	.quad	.LC96
	.quad	50331804
	.quad	.LC97
	.quad	50331755
	.quad	.LC98
	.quad	50331771
	.quad	.LC99
	.quad	50331772
	.quad	.LC100
	.quad	50331756
	.quad	.LC101
	.quad	50331872
	.quad	.LC102
	.quad	50331783
	.quad	.LC103
	.quad	50331773
	.quad	.LC104
	.quad	50331766
	.quad	.LC105
	.quad	50331774
	.quad	.LC106
	.quad	50331837
	.quad	.LC107
	.quad	50331818
	.quad	.LC108
	.quad	50331757
	.quad	.LC109
	.quad	50331839
	.quad	.LC110
	.quad	50331840
	.quad	.LC111
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_EVP_strings
	.type	ossl_err_load_EVP_strings, @function
ossl_err_load_EVP_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$50331791, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	EVP_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_EVP_strings, .-ossl_err_load_EVP_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
