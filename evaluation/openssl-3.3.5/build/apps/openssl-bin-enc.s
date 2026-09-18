	.file	"enc.c"
	.text
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB631:
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
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
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
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.globl	enc_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"list"
.LC4:
	.string	"List ciphers"
.LC5:
	.string	"ciphers"
.LC6:
	.string	"Alias for -list"
.LC7:
	.string	"e"
.LC8:
	.string	"Encrypt"
.LC9:
	.string	"d"
.LC10:
	.string	"Decrypt"
.LC11:
	.string	"p"
.LC12:
	.string	"Print the iv/key"
.LC13:
	.string	"P"
.LC14:
	.string	"Print the iv/key and exit"
.LC15:
	.string	"engine"
	.align 8
.LC16:
	.string	"Use engine, possibly a hardware device"
.LC17:
	.string	"Input options:\n"
.LC18:
	.string	"in"
.LC19:
	.string	"Input file"
.LC20:
	.string	"k"
.LC21:
	.string	"Passphrase"
.LC22:
	.string	"kfile"
.LC23:
	.string	"Read passphrase from file"
.LC24:
	.string	"Output options:\n"
.LC25:
	.string	"out"
.LC26:
	.string	"Output file"
.LC27:
	.string	"pass"
.LC28:
	.string	"Passphrase source"
.LC29:
	.string	"v"
.LC30:
	.string	"Verbose output"
.LC31:
	.string	"a"
	.align 8
.LC32:
	.string	"Base64 encode/decode, depending on encryption flag"
.LC33:
	.string	"base64"
.LC34:
	.string	"Same as option -a"
.LC35:
	.string	"A"
	.align 8
.LC36:
	.string	"Used with -[base64|a] to specify base64 buffer as a single line"
.LC37:
	.string	"Encryption options:\n"
.LC38:
	.string	"nopad"
	.align 8
.LC39:
	.string	"Disable standard block padding"
.LC40:
	.string	"salt"
.LC41:
	.string	"Use salt in the KDF (default)"
.LC42:
	.string	"nosalt"
.LC43:
	.string	"Do not use salt in the KDF"
.LC44:
	.string	"debug"
.LC45:
	.string	"Print debug info"
.LC46:
	.string	"bufsize"
.LC47:
	.string	"Buffer size"
.LC48:
	.string	"K"
.LC49:
	.string	"Raw key, in hex"
.LC50:
	.string	"S"
.LC51:
	.string	"Salt, in hex"
.LC52:
	.string	"iv"
.LC53:
	.string	"IV in hex"
.LC54:
	.string	"md"
	.align 8
.LC55:
	.string	"Use specified digest to create a key from the passphrase"
.LC56:
	.string	"iter"
	.align 8
.LC57:
	.string	"Specify the iteration count and force the use of PBKDF2"
.LC58:
	.string	"Default: 10000"
.LC59:
	.string	"pbkdf2"
	.align 8
.LC60:
	.string	"Use password-based key derivation function 2 (PBKDF2)"
	.align 8
.LC61:
	.string	"Use -iter to change the iteration count from 10000"
.LC62:
	.string	"none"
.LC63:
	.string	"Don't encrypt"
.LC64:
	.string	"saltlen"
	.align 8
.LC65:
	.string	"Specify the PBKDF2 salt length (in bytes)"
.LC66:
	.string	"Default: 16"
.LC67:
	.string	""
.LC68:
	.string	"Any supported cipher"
.LC69:
	.string	"Random state options:\n"
.LC70:
	.string	"rand"
	.align 8
.LC71:
	.string	"Load the given file(s) into the random number generator"
.LC72:
	.string	"writerand"
	.align 8
.LC73:
	.string	"Write random data to the specified file"
.LC74:
	.string	"Provider options:\n"
.LC75:
	.string	"provider-path"
	.align 8
.LC76:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC77:
	.string	"provider"
	.align 8
.LC78:
	.string	"Provider to load (can be specified multiple times)"
.LC79:
	.string	"propquery"
	.align 8
.LC80:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	enc_options, @object
	.size	enc_options, 1104
enc_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	2
	.long	45
	.quad	.LC4
	.quad	.LC5
	.long	2
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	3
	.long	45
	.quad	.LC8
	.quad	.LC9
	.long	8
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	9
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	15
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	7
	.long	115
	.quad	.LC16
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	4
	.long	60
	.quad	.LC19
	.quad	.LC20
	.long	20
	.long	115
	.quad	.LC21
	.quad	.LC22
	.long	21
	.long	60
	.quad	.LC23
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC24
	.quad	.LC25
	.long	5
	.long	62
	.quad	.LC26
	.quad	.LC27
	.long	6
	.long	115
	.quad	.LC28
	.quad	.LC29
	.long	10
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	17
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	17
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	16
	.long	45
	.quad	.LC36
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	11
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	12
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	13
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	14
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	19
	.long	115
	.quad	.LC47
	.quad	.LC48
	.long	22
	.long	115
	.quad	.LC49
	.quad	.LC50
	.long	24
	.long	115
	.quad	.LC51
	.quad	.LC52
	.long	25
	.long	115
	.quad	.LC53
	.quad	.LC54
	.long	26
	.long	115
	.quad	.LC55
	.quad	.LC56
	.long	27
	.long	112
	.quad	.LC57
	.quad	OPT_MORE_STR
	.long	0
	.long	0
	.quad	.LC58
	.quad	.LC59
	.long	28
	.long	45
	.quad	.LC60
	.quad	OPT_MORE_STR
	.long	0
	.long	0
	.quad	.LC61
	.quad	.LC62
	.long	23
	.long	45
	.quad	.LC63
	.quad	.LC64
	.long	30
	.long	112
	.quad	.LC65
	.quad	OPT_MORE_STR
	.long	0
	.long	0
	.quad	.LC66
	.quad	.LC67
	.long	29
	.long	45
	.quad	.LC68
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC69
	.quad	.LC70
	.long	1501
	.long	115
	.quad	.LC71
	.quad	.LC72
	.long	1502
	.long	62
	.quad	.LC73
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC74
	.quad	.LC75
	.long	1602
	.long	115
	.quad	.LC76
	.quad	.LC77
	.long	1601
	.long	115
	.quad	.LC78
	.quad	.LC79
	.long	1603
	.long	115
	.quad	.LC80
	.quad	0
	.zero	16
	.section	.rodata
.LC81:
	.string	"enc"
.LC82:
	.string	"cipher"
.LC83:
	.string	"%s: Use -help for summary.\n"
.LC84:
	.string	"Supported ciphers:\n"
.LC85:
	.string	"\n"
.LC86:
	.string	"%s Can't read key from %s\n"
.LC87:
	.string	"%s: zero length password\n"
.LC88:
	.string	"bufsize=%d\n"
.LC89:
	.string	"strbuf"
.LC90:
	.string	"evp buffer"
.LC91:
	.string	"Unstreamable cipher mode\n"
.LC92:
	.string	"Error getting password\n"
.LC93:
	.string	"encryption"
.LC94:
	.string	"decryption"
.LC95:
	.string	"enter %s %s password:"
.LC96:
	.string	"bad password read\n"
.LC97:
	.string	"invalid hex salt value\n"
.LC98:
	.string	"RAND_bytes failed\n"
.LC99:
	.string	"error writing output file\n"
.LC100:
	.string	"error reading input file\n"
.LC101:
	.string	"bad magic number\n"
.LC102:
	.string	"PKCS5_PBKDF2_HMAC failed\n"
	.align 8
.LC103:
	.string	"*** WARNING : deprecated key derivation used.\nUsing -iter or -pbkdf2 would be better.\n"
.LC104:
	.string	"EVP_BytesToKey failed\n"
	.align 8
.LC105:
	.string	"warning: iv not used by this cipher\n"
.LC106:
	.string	"invalid hex iv value\n"
.LC107:
	.string	"iv undefined\n"
.LC108:
	.string	"invalid hex key value\n"
.LC109:
	.string	"Error setting cipher %s\n"
.LC110:
	.string	"salt="
.LC111:
	.string	"%02X"
.LC112:
	.string	"key="
.LC113:
	.string	"iv ="
.LC114:
	.string	"bad encrypt\n"
.LC115:
	.string	"bad decrypt\n"
.LC116:
	.string	"bytes read   : %8ju\n"
.LC117:
	.string	"bytes written: %8ju\n"
.LC118:
	.string	"../apps/enc.c"
	.text
	.globl	enc_main
	.type	enc_main, @function
enc_main:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$712, %rsp
	.cfi_offset 3, -24
	movl	%edi, -708(%rbp)
	movq	%rsi, -720(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movl	$8192, -156(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movl	$0, -172(%rbp)
	movl	$1, -176(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -188(%rbp)
	movl	$2, -192(%rbp)
	movl	$2, -196(%rbp)
	movl	$1, -200(%rbp)
	movl	$0, -204(%rbp)
	movq	$0, -216(%rbp)
	movl	$0, -468(%rbp)
	movl	$0, -220(%rbp)
	movl	$0, -224(%rbp)
	movl	$1, -228(%rbp)
	movl	$0, -232(%rbp)
	movl	$0, -264(%rbp)
	movq	$0, -240(%rbp)
	movl	$0, -268(%rbp)
	movq	$0, -248(%rbp)
	movq	-720(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$1, -188(%rbp)
	jmp	.L7
.L6:
	movq	-720(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L7
	movq	-720(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
.L7:
	leaq	.LC82(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	enc_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-720(%rbp), %rcx
	movl	-708(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -280(%rbp)
	jmp	.L8
.L64:
	cmpl	$1604, -284(%rbp)
	je	.L8
	cmpl	$1604, -284(%rbp)
	jg	.L8
	cmpl	$1603, -284(%rbp)
	jg	.L8
	cmpl	$1601, -284(%rbp)
	jge	.L10
	cmpl	$1600, -284(%rbp)
	je	.L8
	cmpl	$1600, -284(%rbp)
	jg	.L8
	cmpl	$1503, -284(%rbp)
	je	.L8
	cmpl	$1503, -284(%rbp)
	jg	.L8
	cmpl	$1502, -284(%rbp)
	jg	.L8
	cmpl	$1501, -284(%rbp)
	jge	.L12
	cmpl	$1500, -284(%rbp)
	je	.L8
	cmpl	$1500, -284(%rbp)
	jg	.L8
	cmpl	$30, -284(%rbp)
	je	.L13
	cmpl	$30, -284(%rbp)
	jg	.L8
	cmpl	$29, -284(%rbp)
	je	.L14
	cmpl	$29, -284(%rbp)
	jg	.L8
	cmpl	$28, -284(%rbp)
	je	.L15
	cmpl	$28, -284(%rbp)
	jg	.L8
	cmpl	$27, -284(%rbp)
	je	.L16
	cmpl	$27, -284(%rbp)
	jg	.L8
	cmpl	$26, -284(%rbp)
	je	.L17
	cmpl	$26, -284(%rbp)
	jg	.L8
	cmpl	$25, -284(%rbp)
	je	.L18
	cmpl	$25, -284(%rbp)
	jg	.L8
	cmpl	$24, -284(%rbp)
	je	.L19
	cmpl	$24, -284(%rbp)
	jg	.L8
	cmpl	$23, -284(%rbp)
	je	.L20
	cmpl	$23, -284(%rbp)
	jg	.L8
	cmpl	$22, -284(%rbp)
	je	.L21
	cmpl	$22, -284(%rbp)
	jg	.L8
	cmpl	$21, -284(%rbp)
	je	.L22
	cmpl	$21, -284(%rbp)
	jg	.L8
	cmpl	$20, -284(%rbp)
	je	.L23
	cmpl	$20, -284(%rbp)
	jg	.L8
	cmpl	$19, -284(%rbp)
	je	.L24
	cmpl	$19, -284(%rbp)
	jg	.L8
	cmpl	$18, -284(%rbp)
	je	.L8
	cmpl	$18, -284(%rbp)
	jg	.L8
	cmpl	$17, -284(%rbp)
	je	.L26
	cmpl	$17, -284(%rbp)
	jg	.L8
	cmpl	$16, -284(%rbp)
	je	.L27
	cmpl	$16, -284(%rbp)
	jg	.L8
	cmpl	$15, -284(%rbp)
	je	.L28
	cmpl	$15, -284(%rbp)
	jg	.L8
	cmpl	$14, -284(%rbp)
	je	.L29
	cmpl	$14, -284(%rbp)
	jg	.L8
	cmpl	$13, -284(%rbp)
	je	.L30
	cmpl	$13, -284(%rbp)
	jg	.L8
	cmpl	$12, -284(%rbp)
	je	.L31
	cmpl	$12, -284(%rbp)
	jg	.L8
	cmpl	$11, -284(%rbp)
	je	.L32
	cmpl	$11, -284(%rbp)
	jg	.L8
	cmpl	$10, -284(%rbp)
	je	.L33
	cmpl	$10, -284(%rbp)
	jg	.L8
	cmpl	$9, -284(%rbp)
	je	.L34
	cmpl	$9, -284(%rbp)
	jg	.L8
	cmpl	$8, -284(%rbp)
	je	.L35
	cmpl	$8, -284(%rbp)
	jg	.L8
	cmpl	$7, -284(%rbp)
	je	.L36
	cmpl	$7, -284(%rbp)
	jg	.L8
	cmpl	$6, -284(%rbp)
	je	.L37
	cmpl	$6, -284(%rbp)
	jg	.L8
	cmpl	$5, -284(%rbp)
	je	.L38
	cmpl	$5, -284(%rbp)
	jg	.L8
	cmpl	$4, -284(%rbp)
	je	.L39
	cmpl	$4, -284(%rbp)
	jg	.L8
	cmpl	$3, -284(%rbp)
	je	.L40
	cmpl	$3, -284(%rbp)
	jg	.L8
	cmpl	$2, -284(%rbp)
	je	.L41
	cmpl	$2, -284(%rbp)
	jg	.L8
	cmpl	$0, -284(%rbp)
	jg	.L42
	cmpl	$-1, -284(%rbp)
	jge	.L43
	jmp	.L8
.L42:
	cmpl	$1, -284(%rbp)
	je	.L44
	jmp	.L8
.L160:
	nop
	jmp	.L43
.L161:
	nop
	jmp	.L43
.L162:
	nop
	jmp	.L43
.L163:
	nop
	jmp	.L43
.L166:
	nop
	jmp	.L43
.L168:
	nop
	jmp	.L43
.L169:
	nop
.L43:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-280(%rbp), %rdx
	leaq	.LC83(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L44:
	movq	enc_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -200(%rbp)
	jmp	.L45
.L41:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movl	$0, -488(%rbp)
	leaq	-496(%rbp), %rax
	leaq	show_ciphers(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	call	OBJ_NAME_do_all_sorted@PLT
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC85(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -200(%rbp)
	jmp	.L45
.L40:
	movl	$1, -176(%rbp)
	jmp	.L8
.L39:
	call	opt_arg@PLT
	movq	%rax, -112(%rbp)
	jmp	.L8
.L38:
	call	opt_arg@PLT
	movq	%rax, -120(%rbp)
	jmp	.L8
.L37:
	call	opt_arg@PLT
	movq	%rax, -136(%rbp)
	jmp	.L8
.L36:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	jmp	.L8
.L35:
	movl	$0, -176(%rbp)
	jmp	.L8
.L34:
	movl	$1, -180(%rbp)
	jmp	.L8
.L33:
	movl	$1, -160(%rbp)
	jmp	.L8
.L32:
	movl	$1, -204(%rbp)
	jmp	.L8
.L31:
	movl	$0, -172(%rbp)
	jmp	.L8
.L30:
	movl	$1, -172(%rbp)
	jmp	.L8
.L29:
	movl	$1, -164(%rbp)
	jmp	.L8
.L28:
	movl	$2, -180(%rbp)
	jmp	.L8
.L27:
	movl	$1, -168(%rbp)
	jmp	.L8
.L26:
	movl	$1, -188(%rbp)
	jmp	.L8
.L24:
	call	opt_arg@PLT
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subl	$1, %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	jle	.L46
	movl	-184(%rbp), %eax
	movslq	%eax, %rdx
	movq	-320(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$107, %al
	jne	.L46
	movl	$1, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	movl	%eax, -324(%rbp)
	cmpl	$0, -324(%rbp)
	je	.L48
	movl	-184(%rbp), %eax
	movslq	%eax, %rdx
	movq	-320(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L48:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-480(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_long@PLT
	testl	%eax, %eax
	je	.L160
	movq	-480(%rbp), %rax
	testq	%rax, %rax
	js	.L160
	cmpl	$0, -324(%rbp)
	je	.L50
	movq	-480(%rbp), %rdx
	movabsq	$9007199254740990, %rax
	cmpq	%rax, %rdx
	jg	.L160
.L50:
	cmpl	$0, -324(%rbp)
	je	.L51
	movq	-480(%rbp), %rax
	salq	$10, %rax
	movq	%rax, -480(%rbp)
.L51:
	movq	-480(%rbp), %rax
	cmpq	$2147483647, %rax
	jg	.L161
	movq	-480(%rbp), %rax
	movl	%eax, -156(%rbp)
	jmp	.L8
.L23:
	call	opt_arg@PLT
	movq	%rax, -128(%rbp)
	jmp	.L8
.L22:
	call	opt_arg@PLT
	movl	$32769, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L162
	leaq	buf.1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -184(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -32(%rbp)
	cmpl	$0, -184(%rbp)
	jg	.L55
	call	opt_arg@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-280(%rbp), %rdx
	leaq	.LC86(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L57:
	movl	-184(%rbp), %eax
	cltq
	leaq	buf.1(%rip), %rdx
	movb	$0, (%rax,%rdx)
.L55:
	subl	$1, -184(%rbp)
	cmpl	$0, -184(%rbp)
	jle	.L56
	movl	-184(%rbp), %eax
	cltq
	leaq	buf.1(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	cmpb	$13, %al
	je	.L57
	movl	-184(%rbp), %eax
	cltq
	leaq	buf.1(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	cmpb	$10, %al
	je	.L57
.L56:
	cmpl	$0, -184(%rbp)
	jg	.L58
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-280(%rbp), %rdx
	leaq	.LC87(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L58:
	leaq	buf.1(%rip), %rax
	movq	%rax, -128(%rbp)
	jmp	.L8
.L21:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L8
.L19:
	call	opt_arg@PLT
	movq	%rax, -104(%rbp)
	jmp	.L8
.L18:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L8
.L17:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L8
.L14:
	call	opt_unknown@PLT
	movq	%rax, -152(%rbp)
	jmp	.L8
.L16:
	call	opt_int_arg@PLT
	movl	%eax, -224(%rbp)
	movl	$1, -220(%rbp)
	jmp	.L8
.L13:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-468(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L163
	movl	-468(%rbp), %eax
	cmpl	$16, %eax
	jle	.L8
	movl	$16, -468(%rbp)
	jmp	.L8
.L15:
	movl	$1, -220(%rbp)
	cmpl	$0, -224(%rbp)
	jne	.L8
	movl	$10000, -224(%rbp)
	jmp	.L8
.L20:
	movq	$0, -344(%rbp)
	jmp	.L8
.L12:
	movl	-284(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L164
	jmp	.L8
.L10:
	movl	-284(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L165
	nop
.L8:
	call	opt_next@PLT
	movl	%eax, -284(%rbp)
	cmpl	$0, -284(%rbp)
	jne	.L64
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L166
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L167
	movl	-468(%rbp), %eax
	testl	%eax, %eax
	je	.L67
	cmpl	$0, -220(%rbp)
	jne	.L68
.L67:
	movl	$8, -468(%rbp)
.L68:
	leaq	-344(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L168
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	je	.L70
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65538, %eax
	jne	.L70
	movl	$1, -232(%rbp)
	movl	$0, -228(%rbp)
.L70:
	cmpq	$0, -80(%rbp)
	je	.L71
	leaq	-352(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md@PLT
	testl	%eax, %eax
	je	.L169
.L71:
	movq	-352(%rbp), %rax
	testq	%rax, %rax
	jne	.L72
	call	EVP_sha256@PLT
	movq	%rax, -352(%rbp)
.L72:
	cmpl	$0, -224(%rbp)
	jne	.L73
	movl	$1, -224(%rbp)
.L73:
	cmpl	$0, -188(%rbp)
	je	.L74
	cmpl	$79, -156(%rbp)
	jg	.L74
	movl	$80, -156(%rbp)
.L74:
	cmpl	$0, -160(%rbp)
	je	.L75
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	leaq	.LC88(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L75:
	cmpl	$0, -264(%rbp)
	je	.L76
	movl	$0, -188(%rbp)
.L76:
	cmpl	$0, -268(%rbp)
	je	.L77
	movl	$0, -188(%rbp)
.L77:
	cmpl	$0, -188(%rbp)
	je	.L78
	cmpl	$0, -176(%rbp)
	je	.L79
	movl	$32771, -196(%rbp)
	jmp	.L78
.L79:
	movl	$32771, -192(%rbp)
.L78:
	leaq	.LC89(%rip), %rax
	movq	%rax, %rsi
	movl	$512, %edi
	call	app_malloc@PLT
	movq	%rax, -144(%rbp)
	movl	-156(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx), %ecx
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$715827883, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$3, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	addl	%ecx, %eax
	addl	$40, %eax
	addl	%eax, %eax
	cltq
	leaq	.LC90(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -216(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L80
	cmpl	$0, -228(%rbp)
	jne	.L81
	cmpl	$2, -180(%rbp)
	je	.L81
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC91(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L81:
	movl	-192(%rbp), %eax
	movl	%eax, %edi
	call	dup_bio_in@PLT
	movq	%rax, -32(%rbp)
	jmp	.L82
.L80:
	movl	-192(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -32(%rbp)
.L82:
	cmpq	$0, -32(%rbp)
	je	.L170
	cmpq	$0, -128(%rbp)
	jne	.L84
	cmpq	$0, -136(%rbp)
	je	.L84
	leaq	-360(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L85
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC92(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L85:
	movq	-360(%rbp), %rax
	movq	%rax, -128(%rbp)
.L84:
	cmpq	$0, -128(%rbp)
	jne	.L86
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	je	.L86
	cmpq	$0, -88(%rbp)
	jne	.L86
.L93:
	cmpl	$0, -176(%rbp)
	je	.L87
	leaq	.LC93(%rip), %rbx
	jmp	.L88
.L87:
	leaq	.LC94(%rip), %rbx
.L88:
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	leaq	.LC95(%rip), %rdx
	leaq	-704(%rbp), %rax
	movq	%rbx, %r8
	movl	$200, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-144(%rbp), %rax
	movb	$0, (%rax)
	movl	-176(%rbp), %ecx
	leaq	-704(%rbp), %rdx
	movq	-144(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	EVP_read_pw_string@PLT
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	jne	.L89
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L90
	movl	$1, -200(%rbp)
	jmp	.L45
.L90:
	movq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L86
.L89:
	cmpl	$0, -184(%rbp)
	jns	.L93
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC96(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L86:
	movl	-196(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L171
	cmpl	$0, -164(%rbp)
	je	.L95
	movq	BIO_debug_callback_ex@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	movq	BIO_debug_callback_ex@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
.L95:
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, -264(%rbp)
	je	.L96
	call	BIO_f_brotli@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	je	.L172
	cmpl	$0, -164(%rbp)
	je	.L98
	movq	BIO_debug_callback_ex@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
.L98:
	cmpl	$0, -176(%rbp)
	je	.L99
	movq	-72(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -72(%rbp)
	jmp	.L96
.L99:
	movq	-64(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -64(%rbp)
.L96:
	cmpl	$0, -268(%rbp)
	je	.L100
	call	BIO_f_zstd@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	je	.L173
	cmpl	$0, -164(%rbp)
	je	.L102
	movq	BIO_debug_callback_ex@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
.L102:
	cmpl	$0, -176(%rbp)
	je	.L103
	movq	-72(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -72(%rbp)
	jmp	.L100
.L103:
	movq	-64(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -64(%rbp)
.L100:
	cmpl	$0, -188(%rbp)
	je	.L104
	call	BIO_f_base64@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L174
	cmpl	$0, -164(%rbp)
	je	.L106
	movq	BIO_debug_callback_ex@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
.L106:
	cmpl	$0, -168(%rbp)
	je	.L107
	movq	-48(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L107:
	cmpl	$0, -176(%rbp)
	je	.L108
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -72(%rbp)
	jmp	.L104
.L108:
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -64(%rbp)
.L104:
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	je	.L109
	cmpq	$0, -128(%rbp)
	je	.L110
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -296(%rbp)
	cmpl	$0, -172(%rbp)
	je	.L111
	movq	$0, -256(%rbp)
	jmp	.L112
.L111:
	cmpq	$0, -104(%rbp)
	je	.L113
	movl	-468(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_hex
	testl	%eax, %eax
	jne	.L113
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC97(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L113:
	cmpl	$0, -176(%rbp)
	je	.L114
	cmpq	$0, -104(%rbp)
	jne	.L115
	movl	-468(%rbp), %edx
	leaq	-464(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jg	.L116
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC98(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L116:
	cmpl	$2, -180(%rbp)
	je	.L115
	leaq	magic.0(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$8, %eax
	jne	.L117
	movl	-468(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %edx
	movl	-468(%rbp), %eax
	cmpl	%eax, %edx
	je	.L115
.L117:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC99(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L114:
	cmpq	$0, -104(%rbp)
	jne	.L115
	leaq	-368(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	cmpl	$8, %eax
	je	.L118
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC100(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L118:
	leaq	magic.0(%rip), %rcx
	leaq	-368(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L119
	movl	-468(%rbp), %edx
	leaq	-464(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %edx
	movl	-468(%rbp), %eax
	cmpl	%eax, %edx
	je	.L115
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC100(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L119:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC101(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L115:
	leaq	-464(%rbp), %rax
	movq	%rax, -256(%rbp)
.L112:
	cmpl	$1, -220(%rbp)
	jne	.L120
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, -300(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -304(%rbp)
	cmpq	$0, -256(%rbp)
	je	.L121
	movl	-468(%rbp), %eax
	movl	%eax, -260(%rbp)
	jmp	.L122
.L121:
	movl	$0, -260(%rbp)
.L122:
	movl	-300(%rbp), %edx
	movl	-304(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movq	-352(%rbp), %r9
	movq	-296(%rbp), %rax
	movl	%eax, %r10d
	movl	-224(%rbp), %r8d
	movl	-260(%rbp), %ecx
	movq	-256(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	-704(%rbp), %rsi
	pushq	%rsi
	pushq	%rdi
	movl	%r10d, %esi
	movq	%rax, %rdi
	call	PKCS5_PBKDF2_HMAC@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L123
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC102(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L123:
	movl	-300(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-704(%rbp), %rcx
	leaq	-432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-304(%rbp), %eax
	movslq	%eax, %rdx
	movl	-300(%rbp), %eax
	cltq
	leaq	-704(%rbp), %rcx
	addq	%rax, %rcx
	leaq	-448(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L124
.L120:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC103(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-296(%rbp), %rax
	movl	%eax, %r8d
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-256(%rbp), %rdx
	leaq	-448(%rbp), %rdi
	pushq	%rdi
	leaq	-432(%rbp), %rdi
	pushq	%rdi
	movl	$1, %r9d
	movq	%rax, %rdi
	call	EVP_BytesToKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L124
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC104(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L124:
	movq	-128(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jne	.L125
	movq	-128(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L110
.L125:
	movq	-296(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L110:
	cmpq	$0, -96(%rbp)
	je	.L126
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -308(%rbp)
	cmpl	$0, -308(%rbp)
	jne	.L127
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC105(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L126
.L127:
	movl	-308(%rbp), %edx
	leaq	-448(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_hex
	testl	%eax, %eax
	jne	.L126
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC106(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L126:
	cmpq	$0, -96(%rbp)
	jne	.L128
	cmpq	$0, -128(%rbp)
	jne	.L128
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	testl	%eax, %eax
	je	.L128
	cmpl	$0, -232(%rbp)
	jne	.L128
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC107(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L128:
	cmpq	$0, -88(%rbp)
	je	.L129
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, %edx
	leaq	-432(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_hex
	testl	%eax, %eax
	jne	.L130
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC108(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L130:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	cleanse@PLT
.L129:
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L175
	leaq	-336(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cmpl	$1, -232(%rbp)
	jne	.L132
	movq	-336(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_flags@PLT
.L132:
	movq	-344(%rbp), %rsi
	movq	-336(%rbp), %rax
	movl	-176(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L133
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC109(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L45
.L133:
	cmpl	$0, -204(%rbp)
	je	.L134
	movq	-336(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_padding@PLT
.L134:
	cmpq	$0, -96(%rbp)
	jne	.L135
	cmpl	$1, -232(%rbp)
	je	.L136
.L135:
	leaq	-448(%rbp), %rcx
	jmp	.L137
.L136:
	movl	$0, %ecx
.L137:
	movq	-336(%rbp), %rax
	movl	-176(%rbp), %esi
	leaq	-432(%rbp), %rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L138
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC109(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L45
.L138:
	cmpl	$0, -164(%rbp)
	je	.L139
	movq	BIO_debug_callback_ex@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_arg@PLT
.L139:
	cmpl	$0, -180(%rbp)
	je	.L109
	cmpl	$0, -172(%rbp)
	jne	.L140
	leaq	.LC110(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -184(%rbp)
	jmp	.L141
.L142:
	movl	-184(%rbp), %eax
	cltq
	movzbl	-464(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -184(%rbp)
.L141:
	movl	-468(%rbp), %eax
	cmpl	%eax, -184(%rbp)
	jl	.L142
	movl	$10, %edi
	call	putchar@PLT
.L140:
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	testl	%eax, %eax
	jle	.L143
	leaq	.LC112(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -184(%rbp)
	jmp	.L144
.L145:
	movl	-184(%rbp), %eax
	cltq
	movzbl	-432(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -184(%rbp)
.L144:
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cmpl	%eax, -184(%rbp)
	jl	.L145
	movl	$10, %edi
	call	putchar@PLT
.L143:
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	testl	%eax, %eax
	jle	.L146
	leaq	.LC113(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -184(%rbp)
	jmp	.L147
.L148:
	movl	-184(%rbp), %eax
	cltq
	movzbl	-448(%rbp,%rax), %eax
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -184(%rbp)
.L147:
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	cmpl	%eax, -184(%rbp)
	jl	.L148
	movl	$10, %edi
	call	putchar@PLT
.L146:
	cmpl	$2, -180(%rbp)
	jne	.L109
	movl	$0, -200(%rbp)
	jmp	.L45
.L109:
	cmpq	$0, -56(%rbp)
	je	.L150
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -72(%rbp)
	jmp	.L150
.L155:
	movl	-156(%rbp), %edx
	movq	-216(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	jle	.L176
	cmpl	$0, -228(%rbp)
	jne	.L153
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L153
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC91(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L153:
	movl	-312(%rbp), %edx
	movq	-216(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -312(%rbp)
	je	.L154
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC99(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L154:
	cmpl	$0, -228(%rbp)
	je	.L177
.L150:
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L155
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L155
	jmp	.L152
.L176:
	nop
	jmp	.L152
.L177:
	nop
.L152:
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L156
	cmpl	$0, -176(%rbp)
	je	.L157
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC114(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L157:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC115(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L156:
	movl	$0, -200(%rbp)
	cmpl	$0, -160(%rbp)
	je	.L178
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_number_read@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC116(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_number_written@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC117(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L45
.L164:
	nop
	jmp	.L45
.L165:
	nop
	jmp	.L45
.L167:
	nop
	jmp	.L45
.L170:
	nop
	jmp	.L45
.L171:
	nop
	jmp	.L45
.L172:
	nop
	jmp	.L45
.L173:
	nop
	jmp	.L45
.L174:
	nop
	jmp	.L45
.L175:
	nop
	jmp	.L45
.L178:
	nop
.L45:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	leaq	.LC118(%rip), %rcx
	movq	-144(%rbp), %rax
	movl	$721, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC118(%rip), %rcx
	movq	-216(%rbp), %rax
	movl	$722, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-360(%rbp), %rax
	leaq	.LC118(%rip), %rcx
	movl	$735, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-200(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	enc_main, .-enc_main
	.section	.rodata
.LC119:
	.string	"-%-25s"
.LC120:
	.string	" "
	.text
	.type	show_ciphers, @function
show_ciphers:
.LFB648:
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
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L185
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L186
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	jne	.L186
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65537, %eax
	je	.L186
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC119(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L184
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC85(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L179
.L184:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC120(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L179
.L185:
	nop
	jmp	.L179
.L186:
	nop
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	show_ciphers, .-show_ciphers
	.section	.rodata
	.align 8
.LC121:
	.string	"hex string is too long, ignoring excess\n"
	.align 8
.LC122:
	.string	"hex string is too short, padding with zero bytes to length\n"
.LC123:
	.string	"non-hex digit\n"
	.text
	.type	set_hex, @function
set_hex:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L188
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC121(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L189
.L188:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L189
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC122(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L189:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -4(%rbp)
	jmp	.L190
.L195:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-9(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L191
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC123(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L192
.L191:
	movzbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movb	%al, -9(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L193
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	orb	-9(%rbp), %al
	movb	%al, (%rdx)
	jmp	.L194
.L193:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	-9(%rbp), %edx
	sall	$4, %edx
	movb	%dl, (%rax)
.L194:
	addl	$1, -4(%rbp)
.L190:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L195
	movl	$1, %eax
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	set_hex, .-set_hex
	.local	buf.1
	.comm	buf.1,128,32
	.section	.rodata
	.align 8
	.type	magic.0, @object
	.size	magic.0, 9
magic.0:
	.string	"Salted__"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
