	.file	"asn1_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"adding object"
.LC1:
	.string	"asn1 parse error"
.LC2:
	.string	"asn1 sig parse error"
.LC3:
	.string	"aux error"
.LC4:
	.string	"bad object header"
.LC5:
	.string	"bad template"
.LC6:
	.string	"bmpstring is wrong length"
.LC7:
	.string	"bn lib"
.LC8:
	.string	"boolean is wrong length"
.LC9:
	.string	"buffer too small"
	.align 8
.LC10:
	.string	"cipher has no object identifier"
.LC11:
	.string	"context not initialised"
.LC12:
	.string	"data is wrong"
.LC13:
	.string	"decode error"
.LC14:
	.string	"depth exceeded"
	.align 8
.LC15:
	.string	"digest and key type not supported"
.LC16:
	.string	"encode error"
.LC17:
	.string	"error getting time"
.LC18:
	.string	"error loading section"
.LC19:
	.string	"error setting cipher params"
.LC20:
	.string	"expecting an integer"
.LC21:
	.string	"expecting an object"
.LC22:
	.string	"explicit length mismatch"
.LC23:
	.string	"explicit tag not constructed"
.LC24:
	.string	"field missing"
.LC25:
	.string	"first num too large"
.LC26:
	.string	"generalizedtime is too short"
.LC27:
	.string	"header too long"
.LC28:
	.string	"illegal bitstring format"
.LC29:
	.string	"illegal boolean"
.LC30:
	.string	"illegal characters"
.LC31:
	.string	"illegal format"
.LC32:
	.string	"illegal hex"
.LC33:
	.string	"illegal implicit tag"
.LC34:
	.string	"illegal integer"
.LC35:
	.string	"illegal negative value"
.LC36:
	.string	"illegal nested tagging"
.LC37:
	.string	"illegal null"
.LC38:
	.string	"illegal null value"
.LC39:
	.string	"illegal object"
.LC40:
	.string	"illegal optional any"
	.align 8
.LC41:
	.string	"illegal options on item template"
.LC42:
	.string	"illegal padding"
.LC43:
	.string	"illegal tagged any"
.LC44:
	.string	"illegal time value"
.LC45:
	.string	"illegal zero content"
.LC46:
	.string	"integer not ascii format"
.LC47:
	.string	"integer too large for long"
.LC48:
	.string	"invalid bit string bits left"
.LC49:
	.string	"invalid bmpstring length"
.LC50:
	.string	"invalid digit"
.LC51:
	.string	"invalid mime type"
.LC52:
	.string	"invalid modifier"
.LC53:
	.string	"invalid number"
.LC54:
	.string	"invalid object encoding"
.LC55:
	.string	"invalid scrypt parameters"
.LC56:
	.string	"invalid separator"
.LC57:
	.string	"invalid string table value"
	.align 8
.LC58:
	.string	"invalid universalstring length"
.LC59:
	.string	"invalid utf8string"
.LC60:
	.string	"invalid value"
.LC61:
	.string	"length too long"
.LC62:
	.string	"list error"
.LC63:
	.string	"mime no content type"
.LC64:
	.string	"mime parse error"
.LC65:
	.string	"mime sig parse error"
.LC66:
	.string	"missing eoc"
.LC67:
	.string	"missing second number"
.LC68:
	.string	"missing value"
.LC69:
	.string	"mstring not universal"
.LC70:
	.string	"mstring wrong tag"
.LC71:
	.string	"nested asn1 string"
.LC72:
	.string	"nested too deep"
.LC73:
	.string	"non hex characters"
.LC74:
	.string	"not ascii format"
.LC75:
	.string	"not enough data"
.LC76:
	.string	"no content type"
.LC77:
	.string	"no matching choice type"
.LC78:
	.string	"no multipart body failure"
.LC79:
	.string	"no multipart boundary"
.LC80:
	.string	"no sig content type"
.LC81:
	.string	"null is wrong length"
.LC82:
	.string	"object not ascii format"
.LC83:
	.string	"odd number of chars"
.LC84:
	.string	"second number too large"
.LC85:
	.string	"sequence length mismatch"
.LC86:
	.string	"sequence not constructed"
.LC87:
	.string	"sequence or set needs config"
.LC88:
	.string	"short line"
.LC89:
	.string	"sig invalid mime type"
.LC90:
	.string	"streaming not supported"
.LC91:
	.string	"string too long"
.LC92:
	.string	"string too short"
	.align 8
.LC93:
	.string	"the asn1 object identifier is not known for this md"
.LC94:
	.string	"time not ascii format"
.LC95:
	.string	"too large"
.LC96:
	.string	"too long"
.LC97:
	.string	"too small"
.LC98:
	.string	"type not constructed"
.LC99:
	.string	"type not primitive"
.LC100:
	.string	"unexpected eoc"
	.align 8
.LC101:
	.string	"universalstring is wrong length"
.LC102:
	.string	"unknown digest"
.LC103:
	.string	"unknown format"
	.align 8
.LC104:
	.string	"unknown message digest algorithm"
.LC105:
	.string	"unknown object type"
.LC106:
	.string	"unknown public key type"
.LC107:
	.string	"unknown signature algorithm"
.LC108:
	.string	"unknown tag"
	.align 8
.LC109:
	.string	"unsupported any defined by type"
.LC110:
	.string	"unsupported cipher"
.LC111:
	.string	"unsupported public key type"
.LC112:
	.string	"unsupported type"
.LC113:
	.string	"utctime is too short"
.LC114:
	.string	"wrong integer type"
.LC115:
	.string	"wrong public key type"
.LC116:
	.string	"wrong tag"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ASN1_str_reasons, @object
	.size	ASN1_str_reasons, 1888
ASN1_str_reasons:
	.quad	109052075
	.quad	.LC0
	.quad	109052107
	.quad	.LC1
	.quad	109052108
	.quad	.LC2
	.quad	109052004
	.quad	.LC3
	.quad	109052006
	.quad	.LC4
	.quad	109052134
	.quad	.LC5
	.quad	109052118
	.quad	.LC6
	.quad	109052009
	.quad	.LC7
	.quad	109052010
	.quad	.LC8
	.quad	109052011
	.quad	.LC9
	.quad	109052012
	.quad	.LC10
	.quad	109052121
	.quad	.LC11
	.quad	109052013
	.quad	.LC12
	.quad	109052014
	.quad	.LC13
	.quad	109052078
	.quad	.LC14
	.quad	109052102
	.quad	.LC15
	.quad	109052016
	.quad	.LC16
	.quad	109052077
	.quad	.LC17
	.quad	109052076
	.quad	.LC18
	.quad	109052018
	.quad	.LC19
	.quad	109052019
	.quad	.LC20
	.quad	109052020
	.quad	.LC21
	.quad	109052023
	.quad	.LC22
	.quad	109052024
	.quad	.LC23
	.quad	109052025
	.quad	.LC24
	.quad	109052026
	.quad	.LC25
	.quad	109052136
	.quad	.LC26
	.quad	109052027
	.quad	.LC27
	.quad	109052079
	.quad	.LC28
	.quad	109052080
	.quad	.LC29
	.quad	109052028
	.quad	.LC30
	.quad	109052081
	.quad	.LC31
	.quad	109052082
	.quad	.LC32
	.quad	109052083
	.quad	.LC33
	.quad	109052084
	.quad	.LC34
	.quad	109052130
	.quad	.LC35
	.quad	109052085
	.quad	.LC36
	.quad	109052029
	.quad	.LC37
	.quad	109052086
	.quad	.LC38
	.quad	109052087
	.quad	.LC39
	.quad	109052030
	.quad	.LC40
	.quad	109052074
	.quad	.LC41
	.quad	109052125
	.quad	.LC42
	.quad	109052031
	.quad	.LC43
	.quad	109052088
	.quad	.LC44
	.quad	109052126
	.quad	.LC45
	.quad	109052089
	.quad	.LC46
	.quad	109052032
	.quad	.LC47
	.quad	109052124
	.quad	.LC48
	.quad	109052033
	.quad	.LC49
	.quad	109052034
	.quad	.LC50
	.quad	109052109
	.quad	.LC51
	.quad	109052090
	.quad	.LC52
	.quad	109052091
	.quad	.LC53
	.quad	109052120
	.quad	.LC54
	.quad	109052131
	.quad	.LC55
	.quad	109052035
	.quad	.LC56
	.quad	109052122
	.quad	.LC57
	.quad	109052037
	.quad	.LC58
	.quad	109052038
	.quad	.LC59
	.quad	109052123
	.quad	.LC60
	.quad	109052135
	.quad	.LC61
	.quad	109052092
	.quad	.LC62
	.quad	109052110
	.quad	.LC63
	.quad	109052111
	.quad	.LC64
	.quad	109052112
	.quad	.LC65
	.quad	109052041
	.quad	.LC66
	.quad	109052042
	.quad	.LC67
	.quad	109052093
	.quad	.LC68
	.quad	109052043
	.quad	.LC69
	.quad	109052044
	.quad	.LC70
	.quad	109052101
	.quad	.LC71
	.quad	109052105
	.quad	.LC72
	.quad	109052045
	.quad	.LC73
	.quad	109052094
	.quad	.LC74
	.quad	109052046
	.quad	.LC75
	.quad	109052113
	.quad	.LC76
	.quad	109052047
	.quad	.LC77
	.quad	109052114
	.quad	.LC78
	.quad	109052115
	.quad	.LC79
	.quad	109052116
	.quad	.LC80
	.quad	109052048
	.quad	.LC81
	.quad	109052095
	.quad	.LC82
	.quad	109052049
	.quad	.LC83
	.quad	109052051
	.quad	.LC84
	.quad	109052052
	.quad	.LC85
	.quad	109052053
	.quad	.LC86
	.quad	109052096
	.quad	.LC87
	.quad	109052054
	.quad	.LC88
	.quad	109052117
	.quad	.LC89
	.quad	109052106
	.quad	.LC90
	.quad	109052055
	.quad	.LC91
	.quad	109052056
	.quad	.LC92
	.quad	109052058
	.quad	.LC93
	.quad	109052097
	.quad	.LC94
	.quad	109052127
	.quad	.LC95
	.quad	109052059
	.quad	.LC96
	.quad	109052128
	.quad	.LC97
	.quad	109052060
	.quad	.LC98
	.quad	109052099
	.quad	.LC99
	.quad	109052063
	.quad	.LC100
	.quad	109052119
	.quad	.LC101
	.quad	109052133
	.quad	.LC102
	.quad	109052064
	.quad	.LC103
	.quad	109052065
	.quad	.LC104
	.quad	109052066
	.quad	.LC105
	.quad	109052067
	.quad	.LC106
	.quad	109052103
	.quad	.LC107
	.quad	109052098
	.quad	.LC108
	.quad	109052068
	.quad	.LC109
	.quad	109052132
	.quad	.LC110
	.quad	109052071
	.quad	.LC111
	.quad	109052100
	.quad	.LC112
	.quad	109052137
	.quad	.LC113
	.quad	109052129
	.quad	.LC114
	.quad	109052104
	.quad	.LC115
	.quad	109052072
	.quad	.LC116
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_ASN1_strings
	.type	ossl_err_load_ASN1_strings, @function
ossl_err_load_ASN1_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$109052075, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	ASN1_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_ASN1_strings, .-ossl_err_load_ASN1_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
