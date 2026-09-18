	.file	"cmp_err.c"
	.text
	.section	.rodata
.LC0:
	.string	"algorithm not supported"
.LC1:
	.string	"bad checkafter in pollrep"
.LC2:
	.string	"bad request id"
.LC3:
	.string	"certhash unmatched"
.LC4:
	.string	"certid not found"
.LC5:
	.string	"certificate not accepted"
.LC6:
	.string	"certificate not found"
.LC7:
	.string	"certreqmsg not found"
.LC8:
	.string	"certresponse not found"
.LC9:
	.string	"cert and key do not match"
.LC10:
	.string	"checkafter out of range"
.LC11:
	.string	"encountered keyupdatewarning"
.LC12:
	.string	"encountered waiting"
.LC13:
	.string	"error calculating protection"
.LC14:
	.string	"error creating certconf"
.LC15:
	.string	"error creating certrep"
.LC16:
	.string	"error creating certreq"
.LC17:
	.string	"error creating error"
.LC18:
	.string	"error creating genm"
.LC19:
	.string	"error creating genp"
.LC20:
	.string	"error creating pkiconf"
.LC21:
	.string	"error creating pollrep"
.LC22:
	.string	"error creating pollreq"
.LC23:
	.string	"error creating rp"
.LC24:
	.string	"error creating rr"
.LC25:
	.string	"error parsing pkistatus"
.LC26:
	.string	"error processing message"
.LC27:
	.string	"error protecting message"
.LC28:
	.string	"error setting certhash"
.LC29:
	.string	"error unexpected certconf"
.LC30:
	.string	"error validating protection"
.LC31:
	.string	"error validating signature"
.LC32:
	.string	"expected pollreq"
.LC33:
	.string	"failed building own chain"
.LC34:
	.string	"failed extracting pubkey"
.LC35:
	.string	"failure obtaining random"
.LC36:
	.string	"fail info out of range"
.LC37:
	.string	"getting genp"
.LC38:
	.string	"invalid args"
.LC39:
	.string	"invalid genp"
.LC40:
	.string	"invalid option"
.LC41:
	.string	"invalid rootcakeyupdate"
.LC42:
	.string	"missing certid"
	.align 8
.LC43:
	.string	"missing key input for creating protection"
	.align 8
.LC44:
	.string	"missing key usage digitalsignature"
.LC45:
	.string	"missing p10csr"
.LC46:
	.string	"missing pbm secret"
.LC47:
	.string	"missing private key"
.LC48:
	.string	"missing private key for popo"
.LC49:
	.string	"missing protection"
.LC50:
	.string	"missing public key"
.LC51:
	.string	"missing reference cert"
.LC52:
	.string	"missing secret"
.LC53:
	.string	"missing sender identification"
.LC54:
	.string	"missing trust anchor"
.LC55:
	.string	"missing trust store"
	.align 8
.LC56:
	.string	"multiple requests not supported"
	.align 8
.LC57:
	.string	"multiple responses not supported"
.LC58:
	.string	"multiple san sources"
.LC59:
	.string	"no stdio"
.LC60:
	.string	"no suitable sender cert"
.LC61:
	.string	"null argument"
.LC62:
	.string	"pkibody error"
.LC63:
	.string	"pkistatusinfo not found"
.LC64:
	.string	"polling failed"
	.align 8
.LC65:
	.string	"potentially invalid certificate"
.LC66:
	.string	"received error"
.LC67:
	.string	"recipnonce unmatched"
.LC68:
	.string	"request not accepted"
.LC69:
	.string	"request rejected by server"
	.align 8
.LC70:
	.string	"sender generalname type not supported"
.LC71:
	.string	"srvcert does not validate msg"
.LC72:
	.string	"total timeout"
.LC73:
	.string	"transactionid unmatched"
.LC74:
	.string	"transfer error"
.LC75:
	.string	"unclean ctx"
.LC76:
	.string	"unexpected certprofile"
.LC77:
	.string	"unexpected pkibody"
.LC78:
	.string	"unexpected pkistatus"
.LC79:
	.string	"unexpected pollreq"
.LC80:
	.string	"unexpected pvno"
.LC81:
	.string	"unexpected sender"
.LC82:
	.string	"unknown algorithm id"
.LC83:
	.string	"unknown cert type"
.LC84:
	.string	"unknown pkistatus"
.LC85:
	.string	"unsupported algorithm"
.LC86:
	.string	"unsupported key type"
.LC87:
	.string	"unsupported pkibody"
	.align 8
.LC88:
	.string	"unsupported protection alg dhbasedmac"
.LC89:
	.string	"value too large"
.LC90:
	.string	"value too small"
.LC91:
	.string	"wrong algorithm oid"
.LC92:
	.string	"wrong certid"
.LC93:
	.string	"wrong certid in rp"
.LC94:
	.string	"wrong pbm value"
.LC95:
	.string	"wrong rp component count"
.LC96:
	.string	"wrong serial in rp"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	CMP_str_reasons, @object
	.size	CMP_str_reasons, 1568
CMP_str_reasons:
	.quad	486539403
	.quad	.LC0
	.quad	486539431
	.quad	.LC1
	.quad	486539372
	.quad	.LC2
	.quad	486539420
	.quad	.LC3
	.quad	486539373
	.quad	.LC4
	.quad	486539433
	.quad	.LC5
	.quad	486539376
	.quad	.LC6
	.quad	486539421
	.quad	.LC7
	.quad	486539377
	.quad	.LC8
	.quad	486539378
	.quad	.LC9
	.quad	486539445
	.quad	.LC10
	.quad	486539440
	.quad	.LC11
	.quad	486539426
	.quad	.LC12
	.quad	486539379
	.quad	.LC13
	.quad	486539380
	.quad	.LC14
	.quad	486539381
	.quad	.LC15
	.quad	486539427
	.quad	.LC16
	.quad	486539382
	.quad	.LC17
	.quad	486539383
	.quad	.LC18
	.quad	486539384
	.quad	.LC19
	.quad	486539386
	.quad	.LC20
	.quad	486539387
	.quad	.LC21
	.quad	486539388
	.quad	.LC22
	.quad	486539389
	.quad	.LC23
	.quad	486539390
	.quad	.LC24
	.quad	486539371
	.quad	.LC25
	.quad	486539422
	.quad	.LC26
	.quad	486539391
	.quad	.LC27
	.quad	486539392
	.quad	.LC28
	.quad	486539424
	.quad	.LC29
	.quad	486539404
	.quad	.LC30
	.quad	486539435
	.quad	.LC31
	.quad	486539368
	.quad	.LC32
	.quad	486539428
	.quad	.LC33
	.quad	486539405
	.quad	.LC34
	.quad	486539374
	.quad	.LC35
	.quad	486539393
	.quad	.LC36
	.quad	486539456
	.quad	.LC37
	.quad	486539364
	.quad	.LC38
	.quad	486539457
	.quad	.LC39
	.quad	486539438
	.quad	.LC40
	.quad	486539459
	.quad	.LC41
	.quad	486539429
	.quad	.LC42
	.quad	486539394
	.quad	.LC43
	.quad	486539406
	.quad	.LC44
	.quad	486539385
	.quad	.LC45
	.quad	486539430
	.quad	.LC46
	.quad	486539395
	.quad	.LC47
	.quad	486539454
	.quad	.LC48
	.quad	486539407
	.quad	.LC49
	.quad	486539447
	.quad	.LC50
	.quad	486539432
	.quad	.LC51
	.quad	486539442
	.quad	.LC52
	.quad	486539375
	.quad	.LC53
	.quad	486539443
	.quad	.LC54
	.quad	486539408
	.quad	.LC55
	.quad	486539425
	.quad	.LC56
	.quad	486539434
	.quad	.LC57
	.quad	486539366
	.quad	.LC58
	.quad	486539458
	.quad	.LC59
	.quad	486539409
	.quad	.LC60
	.quad	486539367
	.quad	.LC61
	.quad	486539410
	.quad	.LC62
	.quad	486539396
	.quad	.LC63
	.quad	486539436
	.quad	.LC64
	.quad	486539411
	.quad	.LC65
	.quad	486539444
	.quad	.LC66
	.quad	486539412
	.quad	.LC67
	.quad	486539413
	.quad	.LC68
	.quad	486539446
	.quad	.LC69
	.quad	486539414
	.quad	.LC70
	.quad	486539415
	.quad	.LC71
	.quad	486539448
	.quad	.LC72
	.quad	486539416
	.quad	.LC73
	.quad	486539423
	.quad	.LC74
	.quad	486539455
	.quad	.LC75
	.quad	486539460
	.quad	.LC76
	.quad	486539397
	.quad	.LC77
	.quad	486539449
	.quad	.LC78
	.quad	486539369
	.quad	.LC79
	.quad	486539417
	.quad	.LC80
	.quad	486539370
	.quad	.LC81
	.quad	486539398
	.quad	.LC82
	.quad	486539399
	.quad	.LC83
	.quad	486539450
	.quad	.LC84
	.quad	486539400
	.quad	.LC85
	.quad	486539401
	.quad	.LC86
	.quad	486539365
	.quad	.LC87
	.quad	486539418
	.quad	.LC88
	.quad	486539439
	.quad	.LC89
	.quad	486539441
	.quad	.LC90
	.quad	486539402
	.quad	.LC91
	.quad	486539453
	.quad	.LC92
	.quad	486539451
	.quad	.LC93
	.quad	486539419
	.quad	.LC94
	.quad	486539452
	.quad	.LC95
	.quad	486539437
	.quad	.LC96
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_CMP_strings
	.type	ossl_err_load_CMP_strings, @function
ossl_err_load_CMP_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$486539403, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	CMP_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_CMP_strings, .-ossl_err_load_CMP_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
