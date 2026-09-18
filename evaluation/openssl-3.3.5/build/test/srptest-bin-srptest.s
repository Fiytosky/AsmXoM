	.file	"srptest.c"
	.text
	.section	.rodata
.LC0:
	.string	"1024"
	.align 8
.LC1:
	.string	"GN = SRP_get_default_gN(\"1024\")"
.LC2:
	.string	"../test/srptest.c"
	.align 8
.LC3:
	.string	"SRP_create_verifier_BN(username, server_pass, &s, &v, GN->N, GN->g)"
.LC4:
	.string	"N"
.LC5:
	.string	"g"
.LC6:
	.string	"Salt"
.LC7:
	.string	"Verifier"
.LC8:
	.string	"b"
.LC9:
	.string	"B"
	.align 8
.LC10:
	.string	"SRP_Verify_B_mod_N(Bpub, GN->N)"
.LC11:
	.string	"a"
.LC12:
	.string	"A"
	.align 8
.LC13:
	.string	"SRP_Verify_A_mod_N(Apub, GN->N)"
.LC14:
	.string	"Client's key"
.LC15:
	.string	"Server's key"
.LC16:
	.string	"Kserver"
.LC17:
	.string	"Kclient"
	.text
	.type	run_srp, @function
run_srp:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	SRP_get_default_gN@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$47, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L11
.L2:
	movq	-80(%rbp), %rax
	movq	8(%rax), %r8
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	-96(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_create_verifier_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$51, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L12
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-96(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	leaq	-128(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	-128(%rbp), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_Calc_B@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_Verify_B_mod_N@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L14
	leaq	-128(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	-128(%rbp), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$77, %esi
	call	test_BN_ne_zero@PLT
	testl	%eax, %eax
	je	.L15
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_Calc_A@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_Verify_A_mod_N@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$85, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_Calc_u@PLT
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_Calc_x@PLT
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_client_key@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-96(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_server_key@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	test_output_bignum@PLT
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L17
	movl	$1, -4(%rbp)
	jmp	.L5
.L12:
	nop
	jmp	.L5
.L13:
	nop
	jmp	.L5
.L14:
	nop
	jmp	.L5
.L15:
	nop
	jmp	.L5
.L16:
	nop
	jmp	.L5
.L17:
	nop
.L5:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-4(%rbp), %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	run_srp, .-run_srp
	.section	.rodata
.LC18:
	.string	"BN_hex2bn(&tmp, hexbn)"
.LC19:
	.string	"unexpected %s value"
.LC20:
	.string	"tmp"
.LC21:
	.string	"bn"
	.text
	.type	check_bn, @function
check_bn:
.LFB487:
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
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$125, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L22
.L19:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$129, %esi
	movl	$0, %eax
	call	test_error@PLT
.L21:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	check_bn, .-check_bn
	.section	.rodata
	.align 8
.LC22:
	.string	"BEB25379D1A8581EB5A727673A2441EE"
.LC23:
	.string	"password123"
.LC24:
	.string	"alice"
	.align 8
.LC25:
	.string	"SRP_create_verifier_BN(\"alice\", \"password123\", &s, &v, GN->N, GN->g)"
.LC26:
	.string	"checking v"
	.align 8
.LC27:
	.string	"7E273DE8696FFC4F4E337D05B4B375BEB0DDE1569E8FA00A9886D8129BADA1F1822223CA1A605B530E379BA4729FDC59F105B4787E5186F5C671085A1447B52A48CF1970B4FB6F8400BBF4CEBFBB168152E08AB5EA53D15C1AFF87B2B9DA6E04E058AD51CC72BFC9033B564E26480D78E955A5E29E7AB245DB2BE315E2099AFB"
.LC28:
	.string	"v"
	.align 8
.LC29:
	.ascii	"check_bn(\"v\", v, \"7E273DE8696FFC"
	.string	"4F4E337D05B4B375BEB0DDE1569E8FA00A9886D812\" \"9BADA1F1822223CA1A605B530E379BA4729FDC59F105B4787E5186F5\" \"C671085A1447B52A48CF1970B4FB6F8400BBF4CEBFBB168152E08AB5\" \"EA53D15C1AFF87B2B9DA6E04E058AD51CC72BFC9033B564E26480D78\" \"E955A5E29E7AB245DB2BE315E2099AFB\")"
.LC30:
	.string	"    okay"
	.align 8
.LC31:
	.string	"E487CB59D31AC550471E81F00F6928E01DDA08E974A004F49E61F5D105284D20"
.LC32:
	.string	"checking B"
	.align 8
.LC33:
	.string	"BD0C61512C692C0CB6D041FA01BB152D4916A1E77AF46AE105393011BAF38964DC46A0670DD125B95A981652236F99D9B681CBF87837EC996C6DA04453728610D0C6DDB58B318885D7D82C7F8DEB75CE7BD4FBAA37089E6F9C6059F388838E7A00030B331EB76840910440B1B27AAEAEEB4012B7D7665238A8E3FB004B117B58"
	.align 8
.LC34:
	.ascii	"check_bn(\"B\", Bpub, \"BD0C61512C692C"
	.string	"0CB6D041FA01BB152D4916A1E77AF46AE105393011\" \"BAF38964DC46A0670DD125B95A981652236F99D9B681CBF87837EC99\" \"6C6DA04453728610D0C6DDB58B318885D7D82C7F8DEB75CE7BD4FBAA\" \"37089E6F9C6059F388838E7A00030B331EB76840910440B1B27AAEAE\" \"EB4012B7D7665238A8E3FB004B117B58\")"
	.align 8
.LC35:
	.string	"60975527035CF2AD1989806F0407210BC81EDC04E2762A56AFD529DDDA2D4393"
.LC36:
	.string	"checking A"
	.align 8
.LC37:
	.string	"61D5E490F6F1B79547B0704C436F523DD0E560F0C64115BB72557EC44352E8903211C04692272D8B2D1A5358A2CF1B6E0BFCF99F921530EC8E39356179EAE45E42BA92AEACED825171E1E8B9AF6D9C03E1327F44BE087EF06530E69F66615261EEF54073CA11CF5858F0EDFDFE15EFEAB349EF5D76988A3672FAC47B0769447B"
	.align 8
.LC38:
	.ascii	"check_bn(\"A\", Apub, \"61D5E490F6F1B7"
	.string	"9547B0704C436F523DD0E560F0C64115BB72557EC4\" \"4352E8903211C04692272D8B2D1A5358A2CF1B6E0BFCF99F921530EC\" \"8E39356179EAE45E42BA92AEACED825171E1E8B9AF6D9C03E1327F44\" \"BE087EF06530E69F66615261EEF54073CA11CF5858F0EDFDFE15EFEA\" \"B349EF5D76988A3672FAC47B0769447B\")"
	.align 8
.LC39:
	.string	"CE38B9593487DA98554ED47D70A7AE5F462EF019"
.LC40:
	.string	"u"
	.align 8
.LC41:
	.string	"check_bn(\"u\", u, \"CE38B9593487DA98554ED47D70A7AE5F462EF019\")"
.LC42:
	.string	"checking client's key"
	.align 8
.LC43:
	.string	"B0DC82BABCF30674AE450C0287745E7990A3381F63B387AAF271A10D233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C41BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F3499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212DC346D7E474B29EDE8A469FFECA686E5A"
	.align 8
.LC44:
	.ascii	"check_bn(\"Client's key\", Kclient, \"B0DC82BABCF306"
	.string	"74AE450C0287745E7990A3381F63B387AAF271A10D\" \"233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C\" \"41BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F\" \"3499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212D\" \"C346D7E474B29EDE8A469FFECA686E5A\")"
.LC45:
	.string	"checking server's key"
	.align 8
.LC46:
	.ascii	"check_bn(\"Server's key\", Kserver, \"B0DC82BABCF306"
	.string	"74AE450C0287745E7990A3381F63B387AAF271A10D\" \"233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C\" \"41BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F\" \"3499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212D\" \"C346D7E474B29EDE8A469FFECA686E5A\")"
	.text
	.type	run_srp_kat, @function
run_srp_kat:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	SRP_get_default_gN@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$152, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	leaq	.LC22(%rip), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movq	-64(%rbp), %rax
	movq	8(%rax), %r8
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rax
	leaq	.LC23(%rip), %rsi
	leaq	.LC24(%rip), %rdi
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	SRP_create_verifier_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$156, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movq	-80(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC28(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	check_bn
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$161, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	leaq	.LC31(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_Calc_B@PLT
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_Verify_B_mod_N@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$176, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC33(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	check_bn
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$180, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	leaq	.LC35(%rip), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_Calc_A@PLT
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_Verify_A_mod_N@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$195, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$198, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC37(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC12(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	check_bn
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_Calc_u@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC39(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC40(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	check_bn
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	movq	-72(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC24(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SRP_Calc_x@PLT
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %r8
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_client_key@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$218, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC43(%rip), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	check_bn
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$219, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_server_key@PLT
	movq	%rax, -56(%rbp)
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC43(%rip), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC15(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	check_bn
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$231, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$1, -4(%rbp)
	jmp	.L25
.L36:
	nop
	jmp	.L25
.L37:
	nop
	jmp	.L25
.L38:
	nop
	jmp	.L25
.L39:
	nop
	jmp	.L25
.L40:
	nop
	jmp	.L25
.L41:
	nop
	jmp	.L25
.L42:
	nop
	jmp	.L25
.L43:
	nop
	jmp	.L25
.L44:
	nop
	jmp	.L25
.L45:
	nop
.L25:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	run_srp_kat, .-run_srp_kat
	.section	.rodata
.LC47:
	.string	"run_srp: expecting a mismatch"
.LC48:
	.string	"password2"
.LC49:
	.string	"password1"
	.align 8
.LC50:
	.string	"run_srp(\"alice\", \"password1\", \"password2\")"
.LC51:
	.string	"run_srp: expecting a match"
.LC52:
	.string	"password"
	.align 8
.LC53:
	.string	"run_srp(\"alice\", \"password\", \"password\")"
	.text
	.type	run_srp_tests, @function
run_srp_tests:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$260, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC48(%rip), %rdx
	leaq	.LC49(%rip), %rcx
	leaq	.LC24(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	run_srp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$261, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC52(%rip), %rdx
	leaq	.LC52(%rip), %rcx
	leaq	.LC24(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	run_srp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$266, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L48
.L49:
	movl	$1, %eax
.L48:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	run_srp_tests, .-run_srp_tests
	.section	.rodata
.LC54:
	.string	"run_srp_tests"
.LC55:
	.string	"run_srp_kat"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	run_srp_tests(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	run_srp_kat(%rip), %rdx
	leaq	.LC55(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
