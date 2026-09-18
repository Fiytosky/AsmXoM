	.file	"provider_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"additional input too long"
.LC1:
	.string	"algorithm mismatch"
.LC2:
	.string	"already instantiated"
.LC3:
	.string	"bad decrypt"
.LC4:
	.string	"bad encoding"
.LC5:
	.string	"bad length"
.LC6:
	.string	"bad tls client version"
.LC7:
	.string	"bn error"
.LC8:
	.string	"cipher operation failed"
	.align 8
.LC9:
	.string	"derivation function init failed"
.LC10:
	.string	"digest not allowed"
.LC11:
	.string	"ems not enabled"
	.align 8
.LC12:
	.string	"entropy source strength too weak"
.LC13:
	.string	"error instantiating drbg"
.LC14:
	.string	"error retrieving entropy"
.LC15:
	.string	"error retrieving nonce"
.LC16:
	.string	"failed during derivation"
.LC17:
	.string	"failed to create lock"
.LC18:
	.string	"failed to decrypt"
.LC19:
	.string	"failed to generate key"
.LC20:
	.string	"failed to get parameter"
.LC21:
	.string	"failed to set parameter"
.LC22:
	.string	"failed to sign"
.LC23:
	.string	"fips module conditional error"
	.align 8
.LC24:
	.string	"fips module entering error state"
.LC25:
	.string	"fips module in error state"
.LC26:
	.string	"generate error"
	.align 8
.LC27:
	.string	"illegal or unsupported padding mode"
.LC28:
	.string	"indicator integrity failure"
.LC29:
	.string	"insufficient drbg strength"
.LC30:
	.string	"invalid aad"
.LC31:
	.string	"invalid aead"
.LC32:
	.string	"invalid config data"
.LC33:
	.string	"invalid constant length"
.LC34:
	.string	"invalid curve"
.LC35:
	.string	"invalid custom length"
.LC36:
	.string	"invalid data"
.LC37:
	.string	"invalid digest"
.LC38:
	.string	"invalid digest length"
.LC39:
	.string	"invalid digest size"
.LC40:
	.string	"invalid input length"
.LC41:
	.string	"invalid iteration count"
.LC42:
	.string	"invalid iv length"
.LC43:
	.string	"invalid kdf"
.LC44:
	.string	"invalid key"
.LC45:
	.string	"invalid key length"
.LC46:
	.string	"invalid mac"
.LC47:
	.string	"invalid memory size"
.LC48:
	.string	"invalid mgf1 md"
.LC49:
	.string	"invalid mode"
.LC50:
	.string	"invalid output length"
.LC51:
	.string	"invalid padding mode"
.LC52:
	.string	"invalid pubinfo"
.LC53:
	.string	"invalid salt length"
.LC54:
	.string	"invalid seed length"
.LC55:
	.string	"invalid signature size"
.LC56:
	.string	"invalid state"
.LC57:
	.string	"invalid tag"
.LC58:
	.string	"invalid tag length"
.LC59:
	.string	"invalid thread pool size"
.LC60:
	.string	"invalid ukm length"
.LC61:
	.string	"invalid x931 digest"
.LC62:
	.string	"in error state"
.LC63:
	.string	"key setup failed"
.LC64:
	.string	"key size too small"
.LC65:
	.string	"length too large"
.LC66:
	.string	"mismatching domain parameters"
.LC67:
	.string	"missing cek alg"
.LC68:
	.string	"missing cipher"
.LC69:
	.string	"missing config data"
.LC70:
	.string	"missing constant"
.LC71:
	.string	"missing key"
.LC72:
	.string	"missing mac"
.LC73:
	.string	"missing message digest"
.LC74:
	.string	"missing OID"
.LC75:
	.string	"missing pass"
.LC76:
	.string	"missing salt"
.LC77:
	.string	"missing secret"
.LC78:
	.string	"missing seed"
.LC79:
	.string	"missing session id"
.LC80:
	.string	"missing type"
.LC81:
	.string	"missing xcghash"
.LC82:
	.string	"module integrity failure"
.LC83:
	.string	"not a private key"
.LC84:
	.string	"not a public key"
.LC85:
	.string	"not instantiated"
.LC86:
	.string	"not parameters"
.LC87:
	.string	"not supported"
.LC88:
	.string	"not xof or invalid length"
.LC89:
	.string	"no key set"
.LC90:
	.string	"no parameters set"
	.align 8
.LC91:
	.string	"operation not supported for this keytype"
.LC92:
	.string	"output buffer too small"
	.align 8
.LC93:
	.string	"parent cannot generate random numbers"
	.align 8
.LC94:
	.string	"parent cannot supply entropy seed"
.LC95:
	.string	"parent locking not enabled"
.LC96:
	.string	"parent strength too weak"
.LC97:
	.string	"path must be absolute"
	.align 8
.LC98:
	.string	"personalisation string too long"
.LC99:
	.string	"pss saltlen too small"
.LC100:
	.string	"request too large for drbg"
.LC101:
	.string	"require ctr mode cipher"
.LC102:
	.string	"reseed error"
	.align 8
.LC103:
	.string	"search only supported for directories"
	.align 8
.LC104:
	.string	"seed sources must not have a parent"
.LC105:
	.string	"self test kat failure"
.LC106:
	.string	"self test post failure"
.LC107:
	.string	"tag not needed"
.LC108:
	.string	"tag not set"
.LC109:
	.string	"too many records"
.LC110:
	.string	"unable to find ciphers"
.LC111:
	.string	"unable to get parent strength"
.LC112:
	.string	"unable to get passphrase"
.LC113:
	.string	"unable to initialise ciphers"
.LC114:
	.string	"unable to load sha256"
.LC115:
	.string	"unable to lock parent"
.LC116:
	.string	"unable to reseed"
.LC117:
	.string	"unsupported cek alg"
.LC118:
	.string	"unsupported key size"
.LC119:
	.string	"unsupported mac type"
.LC120:
	.string	"unsupported number of rounds"
.LC121:
	.string	"uri authority unsupported"
.LC122:
	.string	"value error"
.LC123:
	.string	"wrong final block length"
.LC124:
	.string	"wrong output buffer size"
.LC125:
	.string	"xof digests not allowed"
.LC126:
	.string	"xts data unit is too large"
.LC127:
	.string	"xts duplicated keys"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	PROV_str_reasons, @object
	.size	PROV_str_reasons, 2064
PROV_str_reasons:
	.quad	478150840
	.quad	.LC0
	.quad	478150829
	.quad	.LC1
	.quad	478150841
	.quad	.LC2
	.quad	478150756
	.quad	.LC3
	.quad	478150797
	.quad	.LC4
	.quad	478150798
	.quad	.LC5
	.quad	478150817
	.quad	.LC6
	.quad	478150816
	.quad	.LC7
	.quad	478150758
	.quad	.LC8
	.quad	478150861
	.quad	.LC9
	.quad	478150830
	.quad	.LC10
	.quad	478150889
	.quad	.LC11
	.quad	478150842
	.quad	.LC12
	.quad	478150844
	.quad	.LC13
	.quad	478150845
	.quad	.LC14
	.quad	478150846
	.quad	.LC15
	.quad	478150820
	.quad	.LC16
	.quad	478150836
	.quad	.LC17
	.quad	478150818
	.quad	.LC18
	.quad	478150777
	.quad	.LC19
	.quad	478150759
	.quad	.LC20
	.quad	478150760
	.quad	.LC21
	.quad	478150831
	.quad	.LC22
	.quad	478150883
	.quad	.LC23
	.quad	478150880
	.quad	.LC24
	.quad	478150881
	.quad	.LC25
	.quad	478150847
	.quad	.LC26
	.quad	478150821
	.quad	.LC27
	.quad	478150866
	.quad	.LC28
	.quad	478150837
	.quad	.LC29
	.quad	478150764
	.quad	.LC30
	.quad	478150887
	.quad	.LC31
	.quad	478150867
	.quad	.LC32
	.quad	478150813
	.quad	.LC33
	.quad	478150832
	.quad	.LC34
	.quad	478150767
	.quad	.LC35
	.quad	478150771
	.quad	.LC36
	.quad	478150778
	.quad	.LC37
	.quad	478150822
	.quad	.LC38
	.quad	478150874
	.quad	.LC39
	.quad	478150886
	.quad	.LC40
	.quad	478150779
	.quad	.LC41
	.quad	478150765
	.quad	.LC42
	.quad	478150888
	.quad	.LC43
	.quad	478150814
	.quad	.LC44
	.quad	478150761
	.quad	.LC45
	.quad	478150807
	.quad	.LC46
	.quad	478150891
	.quad	.LC47
	.quad	478150823
	.quad	.LC48
	.quad	478150781
	.quad	.LC49
	.quad	478150873
	.quad	.LC50
	.quad	478150824
	.quad	.LC51
	.quad	478150854
	.quad	.LC52
	.quad	478150768
	.quad	.LC53
	.quad	478150810
	.quad	.LC54
	.quad	478150835
	.quad	.LC55
	.quad	478150868
	.quad	.LC56
	.quad	478150766
	.quad	.LC57
	.quad	478150774
	.quad	.LC58
	.quad	478150890
	.quad	.LC59
	.quad	478150856
	.quad	.LC60
	.quad	478150826
	.quad	.LC61
	.quad	478150848
	.quad	.LC62
	.quad	478150757
	.quad	.LC63
	.quad	478150827
	.quad	.LC64
	.quad	478150858
	.quad	.LC65
	.quad	478150859
	.quad	.LC66
	.quad	478150800
	.quad	.LC67
	.quad	478150811
	.quad	.LC68
	.quad	478150869
	.quad	.LC69
	.quad	478150812
	.quad	.LC70
	.quad	478150784
	.quad	.LC71
	.quad	478150806
	.quad	.LC72
	.quad	478150785
	.quad	.LC73
	.quad	478150865
	.quad	.LC74
	.quad	478150786
	.quad	.LC75
	.quad	478150787
	.quad	.LC76
	.quad	478150788
	.quad	.LC77
	.quad	478150796
	.quad	.LC78
	.quad	478150789
	.quad	.LC79
	.quad	478150790
	.quad	.LC80
	.quad	478150791
	.quad	.LC81
	.quad	478150870
	.quad	.LC82
	.quad	478150877
	.quad	.LC83
	.quad	478150876
	.quad	.LC84
	.quad	478150849
	.quad	.LC85
	.quad	478150882
	.quad	.LC86
	.quad	478150792
	.quad	.LC87
	.quad	478150769
	.quad	.LC88
	.quad	478150770
	.quad	.LC89
	.quad	478150833
	.quad	.LC90
	.quad	478150834
	.quad	.LC91
	.quad	478150762
	.quad	.LC92
	.quad	478150884
	.quad	.LC93
	.quad	478150843
	.quad	.LC94
	.quad	478150838
	.quad	.LC95
	.quad	478150850
	.quad	.LC96
	.quad	478150875
	.quad	.LC97
	.quad	478150851
	.quad	.LC98
	.quad	478150828
	.quad	.LC99
	.quad	478150852
	.quad	.LC100
	.quad	478150862
	.quad	.LC101
	.quad	478150853
	.quad	.LC102
	.quad	478150878
	.quad	.LC103
	.quad	478150885
	.quad	.LC104
	.quad	478150871
	.quad	.LC105
	.quad	478150872
	.quad	.LC106
	.quad	478150776
	.quad	.LC107
	.quad	478150775
	.quad	.LC108
	.quad	478150782
	.quad	.LC109
	.quad	478150863
	.quad	.LC110
	.quad	478150855
	.quad	.LC111
	.quad	478150815
	.quad	.LC112
	.quad	478150864
	.quad	.LC113
	.quad	478150803
	.quad	.LC114
	.quad	478150857
	.quad	.LC115
	.quad	478150860
	.quad	.LC116
	.quad	478150801
	.quad	.LC117
	.quad	478150809
	.quad	.LC118
	.quad	478150793
	.quad	.LC119
	.quad	478150808
	.quad	.LC120
	.quad	478150879
	.quad	.LC121
	.quad	478150794
	.quad	.LC122
	.quad	478150763
	.quad	.LC123
	.quad	478150795
	.quad	.LC124
	.quad	478150839
	.quad	.LC125
	.quad	478150804
	.quad	.LC126
	.quad	478150805
	.quad	.LC127
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_PROV_strings
	.type	ossl_err_load_PROV_strings, @function
ossl_err_load_PROV_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$478150840, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	PROV_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_PROV_strings, .-ossl_err_load_PROV_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
