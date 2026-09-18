	.file	"cms_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"add signer error"
.LC1:
	.string	"attribute error"
.LC2:
	.string	"certificate already present"
.LC3:
	.string	"certificate has no keyid"
.LC4:
	.string	"certificate verify error"
.LC5:
	.string	"cipher aead set tag error"
.LC6:
	.string	"cipher get tag"
.LC7:
	.string	"cipher initialisation error"
	.align 8
.LC8:
	.string	"cipher parameter initialisation error"
.LC9:
	.string	"cms datafinal error"
.LC10:
	.string	"cms lib"
.LC11:
	.string	"contentidentifier mismatch"
.LC12:
	.string	"content not found"
.LC13:
	.string	"content type mismatch"
	.align 8
.LC14:
	.string	"content type not compressed data"
	.align 8
.LC15:
	.string	"content type not enveloped data"
.LC16:
	.string	"content type not signed data"
.LC17:
	.string	"content verify error"
.LC18:
	.string	"ctrl error"
.LC19:
	.string	"ctrl failure"
.LC20:
	.string	"decode error"
.LC21:
	.string	"decrypt error"
.LC22:
	.string	"error getting public key"
	.align 8
.LC23:
	.string	"error reading messagedigest attribute"
.LC24:
	.string	"error setting key"
.LC25:
	.string	"error setting recipientinfo"
	.align 8
.LC26:
	.string	"error unsupported static key agreement"
	.align 8
.LC27:
	.string	"ess signing certid mismatch error"
.LC28:
	.string	"invalid encrypted key length"
	.align 8
.LC29:
	.string	"invalid key encryption parameter"
.LC30:
	.string	"invalid key length"
.LC31:
	.string	"invalid label"
.LC32:
	.string	"invalid oaep parameters"
.LC33:
	.string	"kdf parameter error"
.LC34:
	.string	"md bio init error"
	.align 8
.LC35:
	.string	"messagedigest attribute wrong length"
.LC36:
	.string	"messagedigest wrong length"
.LC37:
	.string	"msgsigdigest error"
	.align 8
.LC38:
	.string	"msgsigdigest verification failure"
.LC39:
	.string	"msgsigdigest wrong length"
.LC40:
	.string	"need one signer"
.LC41:
	.string	"not a signed receipt"
.LC42:
	.string	"not encrypted data"
.LC43:
	.string	"not kek"
.LC44:
	.string	"not key agreement"
.LC45:
	.string	"not key transport"
.LC46:
	.string	"not pwri"
	.align 8
.LC47:
	.string	"not supported for this key type"
.LC48:
	.string	"no cipher"
.LC49:
	.string	"no content"
.LC50:
	.string	"no content type"
.LC51:
	.string	"no default digest"
.LC52:
	.string	"no digest set"
.LC53:
	.string	"no key"
.LC54:
	.string	"no key or cert"
.LC55:
	.string	"no matching digest"
.LC56:
	.string	"no matching recipient"
.LC57:
	.string	"no matching signature"
.LC58:
	.string	"no msgsigdigest"
.LC59:
	.string	"no password"
.LC60:
	.string	"no private key"
.LC61:
	.string	"no public key"
.LC62:
	.string	"no receipt request"
.LC63:
	.string	"no signers"
.LC64:
	.string	"operation unsupported"
.LC65:
	.string	"peer key error"
	.align 8
.LC66:
	.string	"private key does not match certificate"
.LC67:
	.string	"receipt decode error"
.LC68:
	.string	"recipient error"
.LC69:
	.string	"shared info error"
.LC70:
	.string	"signer certificate not found"
.LC71:
	.string	"signfinal error"
.LC72:
	.string	"smime text error"
.LC73:
	.string	"store init error"
.LC74:
	.string	"type not compressed data"
.LC75:
	.string	"type not data"
.LC76:
	.string	"type not digested data"
.LC77:
	.string	"type not encrypted data"
.LC78:
	.string	"type not enveloped data"
.LC79:
	.string	"unable to finalize context"
.LC80:
	.string	"unknown cipher"
.LC81:
	.string	"unknown digest algorithm"
.LC82:
	.string	"unknown id"
	.align 8
.LC83:
	.string	"unsupported compression algorithm"
	.align 8
.LC84:
	.string	"unsupported content encryption algorithm"
.LC85:
	.string	"unsupported content type"
.LC86:
	.string	"unsupported encryption type"
.LC87:
	.string	"unsupported kek algorithm"
	.align 8
.LC88:
	.string	"unsupported key encryption algorithm"
.LC89:
	.string	"unsupported label source"
	.align 8
.LC90:
	.string	"unsupported recipientinfo type"
.LC91:
	.string	"unsupported recipient type"
	.align 8
.LC92:
	.string	"unsupported signature algorithm"
.LC93:
	.string	"unsupported type"
.LC94:
	.string	"unwrap error"
.LC95:
	.string	"unwrap failure"
.LC96:
	.string	"verification failure"
.LC97:
	.string	"wrap error"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	CMS_str_reasons, @object
	.size	CMS_str_reasons, 1584
CMS_str_reasons:
	.quad	385876067
	.quad	.LC0
	.quad	385876129
	.quad	.LC1
	.quad	385876143
	.quad	.LC2
	.quad	385876128
	.quad	.LC3
	.quad	385876068
	.quad	.LC4
	.quad	385876152
	.quad	.LC5
	.quad	385876153
	.quad	.LC6
	.quad	385876069
	.quad	.LC7
	.quad	385876070
	.quad	.LC8
	.quad	385876071
	.quad	.LC9
	.quad	385876072
	.quad	.LC10
	.quad	385876138
	.quad	.LC11
	.quad	385876073
	.quad	.LC12
	.quad	385876139
	.quad	.LC13
	.quad	385876074
	.quad	.LC14
	.quad	385876075
	.quad	.LC15
	.quad	385876076
	.quad	.LC16
	.quad	385876077
	.quad	.LC17
	.quad	385876078
	.quad	.LC18
	.quad	385876079
	.quad	.LC19
	.quad	385876155
	.quad	.LC20
	.quad	385876080
	.quad	.LC21
	.quad	385876081
	.quad	.LC22
	.quad	385876082
	.quad	.LC23
	.quad	385876083
	.quad	.LC24
	.quad	385876084
	.quad	.LC25
	.quad	385876164
	.quad	.LC26
	.quad	385876151
	.quad	.LC27
	.quad	385876085
	.quad	.LC28
	.quad	385876144
	.quad	.LC29
	.quad	385876086
	.quad	.LC30
	.quad	385876158
	.quad	.LC31
	.quad	385876159
	.quad	.LC32
	.quad	385876154
	.quad	.LC33
	.quad	385876087
	.quad	.LC34
	.quad	385876088
	.quad	.LC35
	.quad	385876089
	.quad	.LC36
	.quad	385876140
	.quad	.LC37
	.quad	385876130
	.quad	.LC38
	.quad	385876131
	.quad	.LC39
	.quad	385876132
	.quad	.LC40
	.quad	385876133
	.quad	.LC41
	.quad	385876090
	.quad	.LC42
	.quad	385876091
	.quad	.LC43
	.quad	385876149
	.quad	.LC44
	.quad	385876092
	.quad	.LC45
	.quad	385876145
	.quad	.LC46
	.quad	385876093
	.quad	.LC47
	.quad	385876094
	.quad	.LC48
	.quad	385876095
	.quad	.LC49
	.quad	385876141
	.quad	.LC50
	.quad	385876096
	.quad	.LC51
	.quad	385876097
	.quad	.LC52
	.quad	385876098
	.quad	.LC53
	.quad	385876142
	.quad	.LC54
	.quad	385876099
	.quad	.LC55
	.quad	385876100
	.quad	.LC56
	.quad	385876134
	.quad	.LC57
	.quad	385876135
	.quad	.LC58
	.quad	385876146
	.quad	.LC59
	.quad	385876101
	.quad	.LC60
	.quad	385876102
	.quad	.LC61
	.quad	385876136
	.quad	.LC62
	.quad	385876103
	.quad	.LC63
	.quad	385876150
	.quad	.LC64
	.quad	385876156
	.quad	.LC65
	.quad	385876104
	.quad	.LC66
	.quad	385876137
	.quad	.LC67
	.quad	385876105
	.quad	.LC68
	.quad	385876157
	.quad	.LC69
	.quad	385876106
	.quad	.LC70
	.quad	385876107
	.quad	.LC71
	.quad	385876108
	.quad	.LC72
	.quad	385876109
	.quad	.LC73
	.quad	385876110
	.quad	.LC74
	.quad	385876111
	.quad	.LC75
	.quad	385876112
	.quad	.LC76
	.quad	385876113
	.quad	.LC77
	.quad	385876114
	.quad	.LC78
	.quad	385876115
	.quad	.LC79
	.quad	385876116
	.quad	.LC80
	.quad	385876117
	.quad	.LC81
	.quad	385876118
	.quad	.LC82
	.quad	385876119
	.quad	.LC83
	.quad	385876162
	.quad	.LC84
	.quad	385876120
	.quad	.LC85
	.quad	385876160
	.quad	.LC86
	.quad	385876121
	.quad	.LC87
	.quad	385876147
	.quad	.LC88
	.quad	385876161
	.quad	.LC89
	.quad	385876123
	.quad	.LC90
	.quad	385876122
	.quad	.LC91
	.quad	385876163
	.quad	.LC92
	.quad	385876124
	.quad	.LC93
	.quad	385876125
	.quad	.LC94
	.quad	385876148
	.quad	.LC95
	.quad	385876126
	.quad	.LC96
	.quad	385876127
	.quad	.LC97
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_CMS_strings
	.type	ossl_err_load_CMS_strings, @function
ossl_err_load_CMS_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$385876067, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	CMS_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_CMS_strings, .-ossl_err_load_CMS_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
