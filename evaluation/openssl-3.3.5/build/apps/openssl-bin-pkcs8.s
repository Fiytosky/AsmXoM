	.file	"pkcs8.c"
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
	.globl	pkcs8_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"engine"
	.align 8
.LC4:
	.string	"Use engine, possibly a hardware device"
.LC5:
	.string	"v1"
.LC6:
	.string	"Use PKCS#5 v1.5 and cipher"
.LC7:
	.string	"v2"
.LC8:
	.string	"Use PKCS#5 v2.0 and cipher"
.LC9:
	.string	"v2prf"
	.align 8
.LC10:
	.string	"Set the PRF algorithm to use with PKCS#5 v2.0"
.LC11:
	.string	"Input options:\n"
.LC12:
	.string	"in"
.LC13:
	.string	"Input file"
.LC14:
	.string	"inform"
.LC15:
	.string	"Input format (DER or PEM)"
.LC16:
	.string	"passin"
.LC17:
	.string	"Input file pass phrase source"
.LC18:
	.string	"nocrypt"
	.align 8
.LC19:
	.string	"Use or expect unencrypted private key"
.LC20:
	.string	"Output options:\n"
.LC21:
	.string	"out"
.LC22:
	.string	"Output file"
.LC23:
	.string	"outform"
.LC24:
	.string	"Output format (DER or PEM)"
.LC25:
	.string	"topk8"
.LC26:
	.string	"Output PKCS8 file"
.LC27:
	.string	"passout"
	.align 8
.LC28:
	.string	"Output file pass phrase source"
.LC29:
	.string	"traditional"
	.align 8
.LC30:
	.string	"use traditional format private key"
.LC31:
	.string	"iter"
.LC32:
	.string	"Specify the iteration count"
.LC33:
	.string	"noiter"
.LC34:
	.string	"Use 1 as iteration count"
.LC35:
	.string	"saltlen"
	.align 8
.LC36:
	.string	"Specify the salt length (in bytes)"
	.align 8
.LC37:
	.string	"Default: 8 (For PBE1) or 16 (for PBE2)"
.LC38:
	.string	"Scrypt options:\n"
.LC39:
	.string	"scrypt"
.LC40:
	.string	"Use scrypt algorithm"
.LC41:
	.string	"scrypt_N"
.LC42:
	.string	"Set scrypt N parameter"
.LC43:
	.string	"scrypt_r"
.LC44:
	.string	"Set scrypt r parameter"
.LC45:
	.string	"scrypt_p"
.LC46:
	.string	"Set scrypt p parameter"
.LC47:
	.string	"Random state options:\n"
.LC48:
	.string	"rand"
	.align 8
.LC49:
	.string	"Load the given file(s) into the random number generator"
.LC50:
	.string	"writerand"
	.align 8
.LC51:
	.string	"Write random data to the specified file"
.LC52:
	.string	"Provider options:\n"
.LC53:
	.string	"provider-path"
	.align 8
.LC54:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC55:
	.string	"provider"
	.align 8
.LC56:
	.string	"Provider to load (can be specified multiple times)"
.LC57:
	.string	"propquery"
	.align 8
.LC58:
	.string	"Property query used when fetching algorithms"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	pkcs8_options, @object
	.size	pkcs8_options, 816
pkcs8_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	4
	.long	115
	.quad	.LC4
	.quad	.LC5
	.long	15
	.long	115
	.quad	.LC6
	.quad	.LC7
	.long	14
	.long	115
	.quad	.LC8
	.quad	.LC9
	.long	16
	.long	115
	.quad	.LC10
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC11
	.quad	.LC12
	.long	5
	.long	60
	.quad	.LC13
	.quad	.LC14
	.long	2
	.long	70
	.quad	.LC15
	.quad	.LC16
	.long	18
	.long	115
	.quad	.LC17
	.quad	.LC18
	.long	9
	.long	45
	.quad	.LC19
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	6
	.long	62
	.quad	.LC22
	.quad	.LC23
	.long	3
	.long	70
	.quad	.LC24
	.quad	.LC25
	.long	7
	.long	45
	.quad	.LC26
	.quad	.LC27
	.long	19
	.long	115
	.quad	.LC28
	.quad	.LC29
	.long	20
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	17
	.long	112
	.quad	.LC32
	.quad	.LC33
	.long	8
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	21
	.long	112
	.quad	.LC36
	.quad	OPT_MORE_STR
	.long	0
	.long	0
	.quad	.LC37
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC38
	.quad	.LC39
	.long	10
	.long	45
	.quad	.LC40
	.quad	.LC41
	.long	11
	.long	115
	.quad	.LC42
	.quad	.LC43
	.long	12
	.long	115
	.quad	.LC44
	.quad	.LC45
	.long	13
	.long	115
	.quad	.LC46
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC47
	.quad	.LC48
	.long	1501
	.long	115
	.quad	.LC49
	.quad	.LC50
	.long	1502
	.long	62
	.quad	.LC51
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC52
	.quad	.LC53
	.long	1602
	.long	115
	.quad	.LC54
	.quad	.LC55
	.long	1601
	.long	115
	.quad	.LC56
	.quad	.LC57
	.long	1603
	.long	115
	.quad	.LC58
	.quad	0
	.zero	16
	.section	.rodata
.LC59:
	.string	"%s: Use -help for summary.\n"
.LC60:
	.string	"%s: Unknown PBE algorithm %s\n"
.LC61:
	.string	"%s: Unknown PRF algorithm %s\n"
.LC62:
	.string	"Error getting passwords\n"
.LC63:
	.string	"key"
.LC64:
	.string	"Error converting key\n"
.LC65:
	.string	"Bad format specified for key\n"
.LC66:
	.string	"Error setting PBE algorithm\n"
.LC67:
	.string	"Enter Encryption Password:"
.LC68:
	.string	"Error encrypting key\n"
.LC69:
	.string	"Error reading key\n"
.LC70:
	.string	"Enter Password:"
.LC71:
	.string	"Can't read Password\n"
.LC72:
	.string	"Error decrypting key\n"
.LC73:
	.string	"../apps/pkcs8.c"
	.text
	.globl	pkcs8_main
	.type	pkcs8_main, @function
pkcs8_main:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1264, %rsp
	movl	%edi, -1252(%rbp)
	movq	%rsi, -1264(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -1192(%rbp)
	movq	$0, -1200(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$1, -104(%rbp)
	movl	$2048, -108(%rbp)
	movl	$0, -1204(%rbp)
	movl	$32773, -1208(%rbp)
	movl	$0, -112(%rbp)
	movl	$-1, -116(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -120(%rbp)
	movq	$0, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	$0, -1232(%rbp)
	movl	$0, -1236(%rbp)
	movq	pkcs8_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-1264(%rbp), %rcx
	movl	-1252(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -144(%rbp)
	jmp	.L6
.L50:
	cmpl	$1604, -148(%rbp)
	je	.L6
	cmpl	$1604, -148(%rbp)
	jg	.L6
	cmpl	$1603, -148(%rbp)
	jg	.L6
	cmpl	$1601, -148(%rbp)
	jge	.L8
	cmpl	$1600, -148(%rbp)
	je	.L6
	cmpl	$1600, -148(%rbp)
	jg	.L6
	cmpl	$1503, -148(%rbp)
	je	.L6
	cmpl	$1503, -148(%rbp)
	jg	.L6
	cmpl	$1502, -148(%rbp)
	jg	.L6
	cmpl	$1501, -148(%rbp)
	jge	.L10
	cmpl	$1500, -148(%rbp)
	je	.L6
	cmpl	$1500, -148(%rbp)
	jg	.L6
	cmpl	$21, -148(%rbp)
	je	.L11
	cmpl	$21, -148(%rbp)
	jg	.L6
	cmpl	$20, -148(%rbp)
	je	.L12
	cmpl	$20, -148(%rbp)
	jg	.L6
	cmpl	$19, -148(%rbp)
	je	.L13
	cmpl	$19, -148(%rbp)
	jg	.L6
	cmpl	$18, -148(%rbp)
	je	.L14
	cmpl	$18, -148(%rbp)
	jg	.L6
	cmpl	$17, -148(%rbp)
	je	.L15
	cmpl	$17, -148(%rbp)
	jg	.L6
	cmpl	$16, -148(%rbp)
	je	.L16
	cmpl	$16, -148(%rbp)
	jg	.L6
	cmpl	$15, -148(%rbp)
	je	.L17
	cmpl	$15, -148(%rbp)
	jg	.L6
	cmpl	$14, -148(%rbp)
	je	.L18
	cmpl	$14, -148(%rbp)
	jg	.L6
	cmpl	$13, -148(%rbp)
	je	.L19
	cmpl	$13, -148(%rbp)
	jg	.L6
	cmpl	$12, -148(%rbp)
	je	.L20
	cmpl	$12, -148(%rbp)
	jg	.L6
	cmpl	$11, -148(%rbp)
	je	.L21
	cmpl	$11, -148(%rbp)
	jg	.L6
	cmpl	$10, -148(%rbp)
	je	.L22
	cmpl	$10, -148(%rbp)
	jg	.L6
	cmpl	$9, -148(%rbp)
	je	.L23
	cmpl	$9, -148(%rbp)
	jg	.L6
	cmpl	$8, -148(%rbp)
	je	.L24
	cmpl	$8, -148(%rbp)
	jg	.L6
	cmpl	$7, -148(%rbp)
	je	.L25
	cmpl	$7, -148(%rbp)
	jg	.L6
	cmpl	$6, -148(%rbp)
	je	.L26
	cmpl	$6, -148(%rbp)
	jg	.L6
	cmpl	$5, -148(%rbp)
	je	.L27
	cmpl	$5, -148(%rbp)
	jg	.L6
	cmpl	$4, -148(%rbp)
	je	.L28
	cmpl	$4, -148(%rbp)
	jg	.L6
	cmpl	$3, -148(%rbp)
	je	.L29
	cmpl	$3, -148(%rbp)
	jg	.L6
	cmpl	$2, -148(%rbp)
	je	.L30
	cmpl	$2, -148(%rbp)
	jg	.L6
	cmpl	$0, -148(%rbp)
	jg	.L31
	cmpl	$-1, -148(%rbp)
	jge	.L32
	jmp	.L6
.L31:
	cmpl	$1, -148(%rbp)
	je	.L33
	jmp	.L6
.L97:
	nop
	jmp	.L32
.L98:
	nop
	jmp	.L32
.L101:
	nop
	jmp	.L32
.L102:
	nop
	jmp	.L32
.L103:
	nop
	jmp	.L32
.L104:
	nop
	jmp	.L32
.L105:
	nop
	jmp	.L32
.L107:
	nop
.L32:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC59(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L34
.L33:
	movq	pkcs8_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -104(%rbp)
	jmp	.L34
.L30:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-1204(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L97
	jmp	.L6
.L27:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L6
.L29:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-1208(%rbp), %rax
	movq	%rax, %rdx
	movl	$6, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L98
	jmp	.L6
.L26:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L6
.L25:
	movl	$1, -112(%rbp)
	jmp	.L6
.L24:
	movl	$1, -108(%rbp)
	jmp	.L6
.L23:
	movl	$1, -100(%rbp)
	jmp	.L6
.L10:
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L99
	jmp	.L6
.L8:
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L100
	jmp	.L6
.L12:
	movl	$1, -120(%rbp)
	jmp	.L6
.L18:
	call	opt_arg@PLT
	movq	%rax, -72(%rbp)
	jmp	.L6
.L17:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	jne	.L6
	call	opt_arg@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L32
.L16:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	EVP_PBE_find@PLT
	testl	%eax, %eax
	jne	.L40
	call	opt_arg@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L32
.L40:
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	jne	.L6
	call	EVP_aes_256_cbc@PLT
	movq	%rax, -160(%rbp)
	jmp	.L6
.L15:
	call	opt_int_arg@PLT
	movl	%eax, -108(%rbp)
	jmp	.L6
.L14:
	call	opt_arg@PLT
	movq	%rax, -80(%rbp)
	jmp	.L6
.L13:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L6
.L28:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	jmp	.L6
.L22:
	movq	$16384, -1216(%rbp)
	movq	$8, -1224(%rbp)
	movq	$1, -1232(%rbp)
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	jne	.L6
	call	EVP_aes_256_cbc@PLT
	movq	%rax, -160(%rbp)
	jmp	.L6
.L21:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-1216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_long@PLT
	testl	%eax, %eax
	je	.L101
	movq	-1216(%rbp), %rax
	testq	%rax, %rax
	jle	.L101
	jmp	.L6
.L20:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-1224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_long@PLT
	testl	%eax, %eax
	je	.L102
	movq	-1224(%rbp), %rax
	testq	%rax, %rax
	jle	.L102
	jmp	.L6
.L19:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-1232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_long@PLT
	testl	%eax, %eax
	je	.L103
	movq	-1232(%rbp), %rax
	testq	%rax, %rax
	jle	.L103
	jmp	.L6
.L11:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-1236(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L104
	nop
.L6:
	call	opt_next@PLT
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.L50
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L105
	movl	$1, -132(%rbp)
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L106
	cmpq	$0, -72(%rbp)
	je	.L53
	leaq	-160(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher@PLT
	testl	%eax, %eax
	je	.L107
.L53:
	leaq	-1200(%rbp), %rcx
	leaq	-1192(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L54
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC62(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L34
.L54:
	cmpl	$-1, -116(%rbp)
	jne	.L55
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	jne	.L55
	call	EVP_aes_256_cbc@PLT
	movq	%rax, -160(%rbp)
.L55:
	movl	-1204(%rbp), %eax
	testl	%eax, %eax
	je	.L56
	movl	-1204(%rbp), %eax
	jmp	.L57
.L56:
	movl	$32773, %eax
.L57:
	movq	-56(%rbp), %rcx
	movl	%eax, %edx
	movl	$114, %esi
	movq	%rcx, %rdi
	call	bio_open_default@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L108
	movl	-1208(%rbp), %ecx
	movl	-132(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bio_open_owner@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L109
	cmpl	$0, -112(%rbp)
	je	.L60
	movq	-1192(%rbp), %rdx
	movl	-1204(%rbp), %esi
	leaq	.LC63(%rip), %rdi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L110
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY2PKCS8@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L62
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC64(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L34
.L62:
	cmpl	$0, -100(%rbp)
	je	.L63
	movl	-1208(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L64
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8_PRIV_KEY_INFO@PLT
	jmp	.L65
.L64:
	movl	-1208(%rbp), %eax
	cmpl	$4, %eax
	jne	.L66
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_PRIV_KEY_INFO_bio@PLT
	jmp	.L65
.L66:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L34
.L63:
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	je	.L67
	movq	-1216(%rbp), %rax
	testq	%rax, %rax
	je	.L68
	movq	-1224(%rbp), %rax
	testq	%rax, %rax
	je	.L68
	movq	-1232(%rbp), %rax
	testq	%rax, %rax
	je	.L68
	movq	-1232(%rbp), %rax
	movq	%rax, %rcx
	movq	-1224(%rbp), %rax
	movq	%rax, %rdi
	movq	-1216(%rbp), %rax
	movq	%rax, %rsi
	movl	-1236(%rbp), %edx
	movq	-160(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS5_pbe2_set_scrypt@PLT
	addq	$16, %rsp
	movq	%rax, -128(%rbp)
	jmp	.L70
.L68:
	movl	-1236(%rbp), %edx
	movq	-160(%rbp), %rax
	movl	-116(%rbp), %ecx
	movl	-108(%rbp), %esi
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS5_pbe2_set_iv@PLT
	movq	%rax, -128(%rbp)
	jmp	.L70
.L67:
	movl	-1236(%rbp), %edx
	movl	-108(%rbp), %esi
	movl	-116(%rbp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	PKCS5_pbe_set@PLT
	movq	%rax, -128(%rbp)
.L70:
	cmpq	$0, -128(%rbp)
	jne	.L71
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L34
.L71:
	movq	-1200(%rbp), %rax
	testq	%rax, %rax
	je	.L72
	movq	-1200(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L73
.L72:
	leaq	-1184(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC67(%rip), %rdx
	leaq	-1184(%rbp), %rax
	movl	$1, %ecx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	EVP_read_pw_string@PLT
	testl	%eax, %eax
	je	.L73
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	jmp	.L34
.L73:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %esi
	movq	-128(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_set0_pbe@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L74
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC68(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L34
.L74:
	movl	-1208(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L75
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8@PLT
	jmp	.L65
.L75:
	movl	-1208(%rbp), %eax
	cmpl	$4, %eax
	jne	.L76
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_bio@PLT
	jmp	.L65
.L76:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L34
.L65:
	movl	$0, -104(%rbp)
	jmp	.L34
.L60:
	cmpl	$0, -100(%rbp)
	je	.L77
	movl	-1204(%rbp), %eax
	cmpl	$32773, %eax
	je	.L78
	movl	-1204(%rbp), %eax
	testl	%eax, %eax
	jne	.L79
.L78:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -40(%rbp)
	jmp	.L82
.L79:
	movl	-1204(%rbp), %eax
	cmpl	$4, %eax
	jne	.L81
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PKCS8_PRIV_KEY_INFO_bio@PLT
	movq	%rax, -40(%rbp)
	jmp	.L82
.L81:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L34
.L77:
	movl	-1204(%rbp), %eax
	cmpl	$32773, %eax
	je	.L83
	movl	-1204(%rbp), %eax
	testl	%eax, %eax
	jne	.L84
.L83:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PKCS8@PLT
	movq	%rax, -48(%rbp)
	jmp	.L85
.L84:
	movl	-1204(%rbp), %eax
	cmpl	$4, %eax
	jne	.L86
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_PKCS8_bio@PLT
	movq	%rax, -48(%rbp)
	jmp	.L85
.L86:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L34
.L85:
	cmpq	$0, -48(%rbp)
	jne	.L87
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC69(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L34
.L87:
	movq	-1192(%rbp), %rax
	testq	%rax, %rax
	je	.L88
	movq	-1192(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L89
.L88:
	leaq	-1184(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC70(%rip), %rdx
	leaq	-1184(%rbp), %rax
	movl	$0, %ecx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	EVP_read_pw_string@PLT
	testl	%eax, %eax
	je	.L89
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC71(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L34
.L89:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS8_decrypt@PLT
	movq	%rax, -40(%rbp)
.L82:
	cmpq	$0, -40(%rbp)
	jne	.L90
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC72(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L34
.L90:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKCS82PKEY@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L91
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC64(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L34
.L91:
	movl	-1208(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L92
	cmpl	$0, -120(%rbp)
	je	.L93
	movq	-1200(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey_traditional@PLT
	addq	$16, %rsp
	jmp	.L94
.L93:
	movq	-1200(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	jmp	.L94
.L92:
	movl	-1208(%rbp), %eax
	cmpl	$4, %eax
	jne	.L95
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PrivateKey_bio@PLT
	jmp	.L94
.L95:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L34
.L94:
	movl	$0, -104(%rbp)
	jmp	.L34
.L99:
	nop
	jmp	.L34
.L100:
	nop
	jmp	.L34
.L106:
	nop
	jmp	.L34
.L108:
	nop
	jmp	.L34
.L109:
	nop
	jmp	.L34
.L110:
	nop
.L34:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-1192(%rbp), %rax
	leaq	.LC73(%rip), %rcx
	movl	$386, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-1200(%rbp), %rax
	leaq	.LC73(%rip), %rcx
	movl	$387, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-104(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	pkcs8_main, .-pkcs8_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
