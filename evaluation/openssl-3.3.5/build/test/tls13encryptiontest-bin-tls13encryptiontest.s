	.file	"tls13encryptiontest.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 8
.LC0:
	.ascii	"080000240022000a00140012001d00170018001901000101010201030104"
	.ascii	"001c00024001000000000b0001b9000001b50001b0308201ac30820115a0"
	.ascii	"03020102020102300d06092a864886f70d01010b0500300e310c300a0603"
	.ascii	"550403130372"
	.string	"7361301e170d3136303733303031323335395a170d3236303733303031323335395a300e310c300a0603550403130372736130819f300d06092a864886f70d010101050003818d0030818902818100b4bb498f8279303d980836399b36c6988c0c68de55e1bdb826d3901a2461eafd2de49a91d015abbc9a95137ace6c1af19e"
	.align 8
.LC1:
	.ascii	"aa6af98c7ced43120998e187a80ee0ccb0524b1b018c3e0b63264d449a6d"
	.ascii	"38e22a5fda430846748030530ef0461c8ca9d9efbfae8ea6d1d03e2bd193"
	.ascii	"eff0ab9a8002c47428a6d35a8d88d79f7f1e3f0203010001a31a30183009"
	.ascii	"0603551d1304"
	.string	"023000300b0603551d0f0404030205a0300d06092a864886f70d01010b05000381810085aad2a0e5b9276b908c65f73a7267170618a54c5f8a7b337d2df7a594365417f2eae8f8a58c8f8172f9319cf36b7fd6c55b80f21a03015156726096fd335e5e67f2dbf102702e608ccae6bec1fc63a42a99be5c3eb7107c3c54e9b9eb"
	.align 8
.LC2:
	.ascii	"2bd5203b1c3b84e0a8b2f759409ba3eac9d91d402dcc0cc8f8961229ac91"
	.ascii	"87b42b4de100000f00008408040080754040d0ddab8cf0e2da2bc4995b86"
	.ascii	"8ad745c8e1564e33cde17880a42392cc624aeef6b67b"
	.string	"b3f0ae71d9d54a2309731d87dc59f642d733be2eb27484ad8a8c8eb3516a7ac57f2625e2b5c0888a8541f4e734f73d054761df1dd02f0e3e9a33cfa10b6e3eb4ebf7ac053b01fdabbddfc54133bcd24c8bbdceb223b2aa03452a2914000020ac86acbc9cd25a45b57ad5b64db15d4405cf8c80e314583ebf3283ef9a99310c16"
	.align 8
.LC3:
	.ascii	"f10b26d8fcaf67b5b828f712122216a1cd14187465b77637cbcd78539128"
	.ascii	"bb93246dcca1af56f1eaa271666077455bc54965d85f05f9bd36d6996171"
	.ascii	"eb536aff613eeddc42bad5a2d2227c4606f1215f980e7afaf56bd3b85a51"
	.ascii	"be130003101a"
	.string	"758d077b1c891d8e7a22947e5a229851fd42a9dd422608f868272abf92b3d43fb46ac420259346067f66322fd708885680f4b4433c29116f2dfa529e09bba53c7cd920121724809eaddcc84307ef46fc51a0b33d99d39db337fcd761ce0f2b02dc73dedb6fddb77c4f8099bde93d5bee08bcf2131f29a2a37ff07949e8f8bcdd"
	.align 8
.LC4:
	.ascii	"3e8310b8bf8b3444c85aaf0d2aeb2d4f36fd14d5cb51fcebff418b382713"
	.ascii	"6ab9529e9a3d3f35e4c0ae749ea2dbc94982a1281d3e6daab719aa446088"
	.ascii	"9321a008bf10fa06ac0c61cc122cc90d5e22c0030c986ae84a33a0c47df1"
	.ascii	"74bcfbd50bf7"
	.string	"8ffdf24051ab423db63d5815db2f830040f30521131c98c66f16c362addce2fba0602cf0a7dddf22e8def7516cdfee95b4056cc9ad38c95352335421b5b1ffbadf75e5212fdad7a75f52a2801486a1eec3539580bee0e4b337cda6085ac9eccd1a0f1a46cebfbb5cdfa3251ac28c3bc826148c6d8c1eb6a06f77f6ff632c6a83"
	.align 8
.LC5:
	.ascii	"e283e8f9df7c6dbabf1c6ea40629a85b43ab0c73d34f9d5072832a104eda"
	.ascii	"3f75f5d83da6e14822a18e14099d749eafd823ca2ac7542086501eca206c"
	.ascii	"e7887920008573757ce2f230a890782b99cc682377beee812756d04f9025"
	.ascii	"135fb599d746fefe"
	.string	"7316c922ac265ca0d29021375adb63c1509c3e242dfb92b8dee891f7368c4058399b8db9075f2dcc8216194e503b6652d87d2cb41f99adfdcc5be5ec7e1e6326ac22d70bd3ba652827532d669aff005173597f8039c3ea4922d3ec757670222f6ac29b93e90d7ad3f6dd96328e429cfcfd5cca22707fe2d86ad1dcb0be756e8e"
	.align 8
.LC6:
	.string	"c66cb1aec519df44c91e10995511ac8b"
.LC7:
	.string	"f7f6884c4981716c2d0d29a4"
.LC8:
	.string	"0000000000000000"
	.align 8
.LC9:
	.string	"14000020b9027a0204b972b52cdefa58950fa1580d68c9cb124dbe691a7178f25c554b2316"
.LC10:
	.string	""
	.align 8
.LC11:
	.string	"9539b4ae2f87fd8e616b295628ea953d9e3858db274970d19813ec136cae7d96e0417775fcabd3d8858fdc60240912d218f5afb21c"
	.align 8
.LC12:
	.string	"2679a43e1d76784034ea1797d5ad2649"
.LC13:
	.string	"5482405290dd0d2f81c0d942"
	.align 8
.LC14:
	.ascii	"040000c90000001e2fd3992f02000000b2ff099f9676cdff8b0bf8825d00"
	.ascii	"0000007905a9d28efeef4a47c6f9b06a0cecdb0070d920b898997c75b796"
	.ascii	"36943ed42046a96142bd084a04acfa0c490f"
	.string	"452d756dea02c0f927259f1f3231ac0d541a769129b740ce38090842b828c27fd729f59737ba98aa7b42e043c5da28f8dca8590b2df410d5134fd6c4cacad8b30370602afa35d265bf4d127976bb36dbda6a626f0270e20eebc73d6fcae2b1a0da122ee9042f76be56ebf41aa469c3d2c9da9197d80008002a00040000040016"
	.align 8
.LC15:
	.ascii	"3680c2b2109d25caa26c3b06eea9fdc5cb31613ba702176596da2e886bf6"
	.ascii	"af93507bd68161ad9cb4780653842e1041ecbf0088a65ac4ef438419dd1d"
	.ascii	"95ddd9bd2ad4484e7e167d0e6c008448ae58a0418713b6fc6c51e4bb23a5"
	.ascii	"37fb75a7"
	.string	"4f73de31fe6aa0bc522515f8b25f8955428b5de5ac06762cec22b0aa78c94385ef8e70fa24945b7c1f268510871689bbbbfaf2e7f4a19277024f95f1143ab12a31ec63adb128cb390711fd6d06a498df3e98615d8eb102e23353b480efcca5e8e0267a6d0fe2441f14c8c9664aefb2cfff6ae9e0442728b6a0940c1e824fda06"
	.align 8
.LC16:
	.string	"a688ebb5ac826d6f42d45c0cc44b9b7d"
.LC17:
	.string	"c1cad4425a438b5de714830a"
	.align 8
.LC18:
	.string	"000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303117"
	.align 8
.LC19:
	.string	"8c3497da00ae023e53c01b4324b665404c1b49e78fe2bf4d17f6348ae8340551e363a0cd05f2179c4fef5ad689b5cae0bae94adc63632e571fb79aa91544c6394d28a1"
	.align 8
.LC20:
	.string	"88b96ad686c84be55ace18a59cce5c87"
.LC21:
	.string	"b99dc58cd5ff5ab082fdad19"
	.align 8
.LC22:
	.string	"f65f49fd2df6cd2347c3d30166e3cfddb6308a5906c076112c6a37ff1dbd406b5813c0abd734883017a6b2833186b13c14da5d75f33d8760789994e27d82043ab88d65"
.LC23:
	.string	"0000000000000001"
.LC24:
	.string	"010015"
	.align 8
.LC25:
	.string	"2c2148163d7938a35f6acf2a6606f8cbd1d9f2"
	.align 8
.LC26:
	.string	"f8141ebdb5eda511e0bce639a56ff9ea825a21"
.LC27:
	.string	"0000000000000002"
	.section	.data.rel.local,"aw"
	.align 32
	.type	refdata, @object
	.size	refdata, 504
refdata:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC10
	.quad	.LC11
	.quad	.LC10
	.quad	.LC10
	.quad	.LC12
	.quad	.LC13
	.quad	.LC8
	.quad	.LC14
	.quad	.LC10
	.quad	.LC10
	.quad	.LC15
	.quad	.LC10
	.quad	.LC10
	.quad	.LC16
	.quad	.LC17
	.quad	.LC8
	.quad	.LC18
	.quad	.LC10
	.quad	.LC10
	.quad	.LC19
	.quad	.LC10
	.quad	.LC10
	.quad	.LC20
	.quad	.LC21
	.quad	.LC8
	.quad	.LC18
	.quad	.LC10
	.quad	.LC10
	.quad	.LC22
	.quad	.LC10
	.quad	.LC10
	.quad	.LC16
	.quad	.LC17
	.quad	.LC23
	.quad	.LC24
	.quad	.LC10
	.quad	.LC10
	.quad	.LC25
	.quad	.LC10
	.quad	.LC10
	.quad	.LC20
	.quad	.LC21
	.quad	.LC23
	.quad	.LC24
	.quad	.LC10
	.quad	.LC10
	.quad	.LC26
	.quad	.LC10
	.quad	.LC10
	.quad	.LC16
	.quad	.LC17
	.quad	.LC27
	.section	.rodata
.LC28:
	.string	"../test/tls13encryptiontest.c"
	.text
	.type	multihexstr2buf, @function
multihexstr2buf:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L14
.L17:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	addq	$1, -8(%rbp)
.L14:
	cmpq	$2, -8(%rbp)
	jbe	.L17
	shrq	-32(%rbp)
	leaq	.LC28(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L16
.L18:
	movq	$0, -8(%rbp)
	jmp	.L19
.L24:
	movq	$0, -16(%rbp)
	jmp	.L20
.L23:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -48(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L21
	cmpl	$0, -48(%rbp)
	jns	.L22
.L21:
	leaq	.LC28(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$230, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L16
.L22:
	movl	-44(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$2, -16(%rbp)
.L20:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L23
	addq	$1, -8(%rbp)
.L19:
	cmpq	$2, -8(%rbp)
	jbe	.L24
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	multihexstr2buf, .-multihexstr2buf
	.type	load_record, @function
load_record:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	multihexstr2buf
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L32
	cmpq	$0, -24(%rbp)
	je	.L32
	cmpq	$0, -16(%rbp)
	je	.L32
	cmpq	$0, -8(%rbp)
	je	.L32
	movq	-32(%rbp), %rax
	addq	$16, %rax
	leaq	.LC28(%rip), %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	.LC28(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$263, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	.LC28(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$265, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	.LC28(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$267, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L31
.L32:
	nop
	jmp	.L28
.L33:
	nop
.L28:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rcx
	movl	$271, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	leaq	.LC28(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$273, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC28(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC28(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$275, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	load_record, .-load_record
	.section	.rodata
.LC29:
	.string	"refd"
.LC30:
	.string	"Failed to get reference data"
.LC31:
	.string	"rec->data"
	.text
	.type	test_record, @function
test_record:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L35
	movq	-48(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	multihexstr2buf
	movq	%rax, -16(%rbp)
	jmp	.L36
.L35:
	movq	-48(%rbp), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	multihexstr2buf
	movq	%rax, -16(%rbp)
.L36:
	movq	-16(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC28(%rip), %rdi
	movq	%rax, %rcx
	movl	$290, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L37
	leaq	.LC30(%rip), %rdx
	leaq	.LC28(%rip), %rax
	movl	$291, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L38
.L37:
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %r8
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	leaq	.LC29(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC28(%rip), %rax
	pushq	%rsi
	pushq	-16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$295, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L41
	movl	$1, -4(%rbp)
	jmp	.L38
.L41:
	nop
.L38:
	leaq	.LC28(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$301, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	test_record, .-test_record
	.section	.rodata
	.align 8
.LC32:
	.string	"Failed loading key into EVP_CIPHER_CTX"
	.align 8
.LC33:
	.ascii	"ossl_tls_record_method.new_record_layer( NULL, NULL, TLS1_3_"
	.ascii	"VERSION, OSSL_RE"
	.string	"CORD_ROLE_SERVER, OSSL_RECORD_DIRECTION_WRITE, OSSL_RECORD_PROTECTION_LEVEL_APPLICATION, 0, NULL, 0, key, 16, iv, ivlen, NULL, 0, EVP_aes_128_gcm(), EVP_GCM_TLS_TAG_LEN, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, &wrl)"
.LC34:
	.string	"1"
	.align 8
.LC35:
	.string	"wrl->funcs->cipher(wrl, &rec, 1, 1, NULL, 0)"
.LC36:
	.string	"Failed to encrypt record %zu"
	.align 8
.LC37:
	.string	"test_record(&rec, &refdata[ctr], 1)"
	.align 8
.LC38:
	.string	"Record %zu encryption test failed"
	.align 8
.LC39:
	.ascii	"ossl_tls_record_method.new_record_layer( NULL, NULL, TLS1_3_"
	.ascii	"VERSION, OSSL_R"
	.string	"ECORD_ROLE_SERVER, OSSL_RECORD_DIRECTION_READ, OSSL_RECORD_PROTECTION_LEVEL_APPLICATION, 0, NULL, 0, key, 16, iv, ivlen, NULL, 0, EVP_aes_128_gcm(), EVP_GCM_TLS_TAG_LEN, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, &rrl)"
	.align 8
.LC40:
	.string	"rrl->funcs->cipher(rrl, &rec, 1, 0, NULL, 0)"
.LC41:
	.string	"Failed to decrypt record %zu"
	.align 8
.LC42:
	.string	"test_record(&rec, &refdata[ctr], 0)"
	.align 8
.LC43:
	.string	"Record %zu decryption test failed"
.LC44:
	.string	"PASS: %zu records tested"
	.text
	.type	test_tls13_encryption, @function
test_tls13_encryption:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	$0, -136(%rbp)
	call	EVP_aes_128_gcm@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -96(%rbp)
	movl	$23, -124(%rbp)
	movl	$771, -128(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L43
.L52:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	cltq
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	refdata(%rip), %rdx
	leaq	(%rax,%rdx), %rsi
	leaq	-144(%rbp), %r8
	movq	-48(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	load_record
	testl	%eax, %eax
	jne	.L44
	leaq	.LC32(%rip), %rdx
	leaq	.LC28(%rip), %rax
	movl	$330, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L45
.L44:
	movq	ossl_tls_record_method@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	call	EVP_aes_128_gcm@PLT
	movq	-136(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$16
	pushq	%rax
	pushq	$0
	pushq	$0
	pushq	-48(%rbp)
	leaq	-160(%rbp), %rax
	pushq	%rax
	pushq	$16
	pushq	%rdx
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$3, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$772, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	*%rbx
	addq	$208, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC28(%rip), %rdi
	movl	%eax, %ecx
	movl	$335, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	movq	-176(%rbp), %rax
	leaq	4096(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-176(%rbp), %rax
	movq	4408(%rax), %rax
	movq	8(%rax), %r10
	movq	-176(%rbp), %rax
	leaq	-128(%rbp), %rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%r10
	movslq	%eax, %rsi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC28(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$347, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-32(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC28(%rip), %rdi
	movq	%rax, %rcx
	movl	$348, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L45
.L47:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	refdata(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-128(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_record
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC28(%rip), %rdi
	movl	%eax, %ecx
	movl	$352, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L48
	movq	-32(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC28(%rip), %rdi
	movq	%rax, %rcx
	movl	$353, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L45
.L48:
	movq	ossl_tls_record_method@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	call	EVP_aes_128_gcm@PLT
	movq	-136(%rbp), %rdx
	leaq	-168(%rbp), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$16
	pushq	%rax
	pushq	$0
	pushq	$0
	pushq	-48(%rbp)
	leaq	-160(%rbp), %rax
	pushq	%rax
	pushq	$16
	pushq	%rdx
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$3, %r9d
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$772, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	*%rbx
	addq	$208, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC28(%rip), %rdi
	movl	%eax, %ecx
	movl	$358, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	-168(%rbp), %rax
	leaq	4096(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-168(%rbp), %rax
	movq	4408(%rax), %rax
	movq	8(%rax), %r10
	movq	-168(%rbp), %rax
	leaq	-128(%rbp), %rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC28(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$370, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L50
	movq	-32(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC28(%rip), %rdi
	movq	%rax, %rcx
	movl	$371, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L45
.L50:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	refdata(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-128(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_record
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC28(%rip), %rdi
	movl	%eax, %ecx
	movl	$375, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L51
	movq	-32(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC28(%rip), %rdi
	movq	%rax, %rcx
	movl	$376, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L45
.L51:
	movq	ossl_tls_record_method@GOTPCREL(%rip), %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	ossl_tls_record_method@GOTPCREL(%rip), %rax
	movq	8(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC28(%rip), %rcx
	movl	$383, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-136(%rbp), %rax
	leaq	.LC28(%rip), %rcx
	movl	$384, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -96(%rbp)
	movq	$0, -136(%rbp)
	addq	$1, -32(%rbp)
.L43:
	cmpq	$6, -32(%rbp)
	jbe	.L52
	movq	-32(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$1, -20(%rbp)
	jmp	.L45
.L54:
	nop
	jmp	.L45
.L55:
	nop
.L45:
	movq	ossl_tls_record_method@GOTPCREL(%rip), %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	ossl_tls_record_method@GOTPCREL(%rip), %rax
	movq	8(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-96(%rbp), %rax
	leaq	.LC28(%rip), %rcx
	movl	$395, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-136(%rbp), %rax
	leaq	.LC28(%rip), %rcx
	movl	$396, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	test_tls13_encryption, .-test_tls13_encryption
	.section	.rodata
.LC45:
	.string	"test_tls13_encryption"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_tls13_encryption(%rip), %rdx
	leaq	.LC45(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
