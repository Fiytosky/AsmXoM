	.file	"cmactest.c"
	.text
	.section	.rodata
	.align 32
	.type	xtskey, @object
	.size	xtskey, 32
xtskey:
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8="
	.align 8
.LC0:
	.string	"29cec977c48f63c200bd5c4a6881b224"
	.align 8
.LC1:
	.string	"db6493aa04e4761f473b2b453c031c9a"
	.align 8
.LC2:
	.string	"65c11c75ecf590badd0a5e56cbb8af60"
	.align 8
.LC3:
	.string	"35da8a02a7afce90e5b711308cee2dee"
	.align 8
.LC4:
	.string	"59053f4e81f3593610f987adb547c5b2"
	.align 8
.LC5:
	.string	"9c6cf85f7f4baca99725764a0df973a9"
.LC6:
	.string	"2c2fccc7fcc5d98a"
	.align 8
.LC7:
	.string	"c9a9cbc82a3b2d96074e386fce1216f2"
	.section	.data.rel.local,"aw"
	.align 32
	.type	test, @object
	.size	test, 33152
test:
	.base64	"AAECAwQFBgcICQoLDA0ODwA="
	.zero	15
	.long	16
	.string	"My test data"
	.zero	4083
	.long	12
	.quad	.LC0
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8="
	.long	32
	.string	"My test data"
	.zero	4083
	.long	12
	.quad	.LC1
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8="
	.long	32
	.string	"My test data again"
	.zero	4077
	.long	18
	.quad	.LC2
	.base64	"AAECAwQFBgcICQoLDA0ODwA="
	.zero	15
	.long	16
	.string	"#abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789#"
	.zero	4031
	.long	3072
	.quad	.LC3
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXAA=="
	.zero	7
	.long	24
	.string	"#abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789#"
	.zero	4031
	.long	4095
	.quad	.LC4
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8="
	.long	32
	.string	"#abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789#"
	.zero	4031
	.long	2560
	.quad	.LC5
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8="
	.long	24
	.string	"#abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789#"
	.zero	4031
	.long	2048
	.quad	.LC6
	.base64	"AAECAwQFBgcICQoLDA0ODwA="
	.zero	15
	.long	16
	.string	"#abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789#"
	.zero	4031
	.long	2049
	.quad	.LC7
	.section	.rodata
.LC8:
	.string	"ctx"
.LC9:
	.string	"../test/cmactest.c"
	.align 8
.LC10:
	.string	"CMAC_Init(ctx, NULL, 0, NULL, NULL)"
	.align 8
.LC11:
	.string	"CMAC_Update(ctx, test[0].data, test[0].data_len)"
	.align 8
.LC12:
	.string	"CMAC_Init(ctx, NULL, 0, EVP_aes_128_cbc(), NULL)"
	.align 8
.LC13:
	.string	"CMAC_Init(ctx, test[0].key, test[0].key_len, NULL, NULL)"
	.align 8
.LC14:
	.string	"CMAC_Init(ctx, xtskey, sizeof(xtskey), EVP_aes_128_xts(), NULL)"
	.text
	.type	test_cmac_bad, @function
test_cmac_bad:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	CMAC_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$147, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L6
	movl	4132+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	36+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$148, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L6
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	movl	4132+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	36+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$152, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L6
	movl	32+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	test(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$154, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	movl	4132+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	36+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$156, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	call	EVP_aes_128_xts@PLT
	movq	%rax, %rdx
	leaq	xtskey(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$158, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L6
	movl	4132+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	36+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L6
	movl	$1, -4(%rbp)
	jmp	.L4
.L6:
	nop
.L4:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CMAC_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_cmac_bad, .-test_cmac_bad
	.section	.rodata
	.align 8
.LC15:
	.string	"CMAC_Init(ctx, test[0].key, test[0].key_len, EVP_aes_128_cbc(), NULL)"
.LC16:
	.string	"CMAC_Final(ctx, buf, &len)"
.LC17:
	.string	"test[0].mac"
.LC18:
	.string	"p"
	.align 8
.LC19:
	.string	"CMAC_Init(ctx, test[1].key, test[1].key_len, EVP_aes_256_cbc(), NULL)"
	.align 8
.LC20:
	.string	"CMAC_Update(ctx, test[1].data, test[1].data_len)"
.LC21:
	.string	"test[1].mac"
	.align 8
.LC22:
	.string	"CMAC_Init(ctx, test[2].key, test[2].key_len, NULL, NULL)"
	.align 8
.LC23:
	.string	"CMAC_Update(ctx, test[2].data, test[2].data_len)"
.LC24:
	.string	"test[2].mac"
	.align 8
.LC25:
	.string	"CMAC_Init(ctx, NULL, 0, EVP_aes_256_cbc(), NULL)"
	.align 8
.LC26:
	.string	"CMAC_Init(ctx, test[3].key, test[3].key_len, EVP_aes_128_cbc(), NULL)"
	.align 8
.LC27:
	.string	"CMAC_Update(ctx, test[3].data, test[3].data_len)"
.LC28:
	.string	"test[3].mac"
	.align 8
.LC29:
	.string	"CMAC_Init(ctx, test[4].key, test[4].key_len, EVP_aes_192_cbc(), NULL)"
	.align 8
.LC30:
	.string	"CMAC_Update(ctx, test[4].data, test[4].data_len)"
.LC31:
	.string	"test[4].mac"
	.align 8
.LC32:
	.string	"CMAC_Init(ctx, test[5].key, test[5].key_len, EVP_aes_256_cbc(), NULL)"
	.align 8
.LC33:
	.string	"CMAC_Update(ctx, test[5].data, test[5].data_len)"
.LC34:
	.string	"test[5].mac"
	.align 8
.LC35:
	.string	"CMAC_Init(ctx, test[6].key, test[6].key_len, EVP_des_ede3_cbc(), NULL)"
	.align 8
.LC36:
	.string	"CMAC_Update(ctx, test[6].data, test[6].data_len)"
.LC37:
	.string	"test[6].mac"
	.align 8
.LC38:
	.string	"CMAC_Init(ctx, test[7].key, test[7].key_len, EVP_sm4_cbc(), NULL)"
	.align 8
.LC39:
	.string	"CMAC_Update(ctx, test[7].data, test[7].data_len)"
.LC40:
	.string	"test[7].mac"
	.text
	.type	test_cmac_run, @function
test_cmac_run:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	CMAC_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L8
.L12:
	movq	-16(%rbp), %rax
	imulq	$4144, %rax, %rax
	leaq	32(%rax), %rdx
	leaq	test(%rip), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	imulq	$4144, %rax, %rax
	leaq	4132+test(%rip), %rdx
	movl	(%rax,%rdx), %eax
	cltq
	subq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L9
.L11:
	movq	-24(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L10
	movq	-16(%rbp), %rax
	imulq	$4144, %rax, %rax
	leaq	32(%rax), %rdx
	leaq	test(%rip), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rsi
	movq	-16(%rbp), %rax
	imulq	$4144, %rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leaq	32(%rax), %rdx
	leaq	test(%rip), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	subq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	addq	%rax, -32(%rbp)
	jmp	.L9
.L10:
	movq	-16(%rbp), %rax
	imulq	$4144, %rax, %rax
	leaq	32(%rax), %rdx
	leaq	test(%rip), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rsi
	movq	-16(%rbp), %rax
	imulq	$4144, %rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leaq	32(%rax), %rdx
	leaq	test(%rip), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	$0, -24(%rbp)
.L9:
	cmpq	$0, -24(%rbp)
	jne	.L11
	addq	$1, -16(%rbp)
.L8:
	cmpq	$7, -16(%rbp)
	jbe	.L12
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rcx
	movl	32+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	test(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$197, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movl	4132+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	36+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	4136+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$204, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L46
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rcx
	movl	4176+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	4144+test(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$207, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movl	8276+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	4180+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$209, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$210, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	8280+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC21(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$214, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L48
	movl	8320+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	8288+test(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$217, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	movl	12420+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	8324+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$218, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$219, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	12424+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$222, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L50
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$225, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movl	12420+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	8324+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	12424+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L52
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$234, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movl	8320+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	8288+test(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$235, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movl	12420+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	8324+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$236, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$237, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L53
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	12424+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$240, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L54
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rcx
	movl	12464+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	12432+test(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$244, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movl	16564+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	12468+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$246, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$247, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	16568+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$250, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L56
	call	EVP_aes_192_cbc@PLT
	movq	%rax, %rcx
	movl	16608+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	16576+test(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$253, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	movl	20708+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	16612+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$255, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	20712+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$259, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L58
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rcx
	movl	20752+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	20720+test(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$262, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movl	24852+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	20756+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$264, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$265, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	24856+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC34(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L60
	call	EVP_des_ede3_cbc@PLT
	movq	%rax, %rcx
	movl	24896+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	24864+test(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$272, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movl	28996+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	24900+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$274, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$275, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	29000+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L62
	call	EVP_sm4_cbc@PLT
	movq	%rax, %rcx
	movl	29040+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	29008+test(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movl	33140+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	29044+test(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$285, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$286, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -48(%rbp)
	movq	33144+test(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC40(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$289, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L64
	movl	$1, -4(%rbp)
	jmp	.L15
.L45:
	nop
	jmp	.L15
.L46:
	nop
	jmp	.L15
.L47:
	nop
	jmp	.L15
.L48:
	nop
	jmp	.L15
.L49:
	nop
	jmp	.L15
.L50:
	nop
	jmp	.L15
.L51:
	nop
	jmp	.L15
.L52:
	nop
	jmp	.L15
.L53:
	nop
	jmp	.L15
.L54:
	nop
	jmp	.L15
.L55:
	nop
	jmp	.L15
.L56:
	nop
	jmp	.L15
.L57:
	nop
	jmp	.L15
.L58:
	nop
	jmp	.L15
.L59:
	nop
	jmp	.L15
.L60:
	nop
	jmp	.L15
.L61:
	nop
	jmp	.L15
.L62:
	nop
	jmp	.L15
.L63:
	nop
	jmp	.L15
.L64:
	nop
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMAC_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_cmac_run, .-test_cmac_run
	.section	.rodata
.LC41:
	.string	"ctx2"
.LC42:
	.string	"CMAC_CTX_copy(ctx2, ctx)"
.LC43:
	.string	"CMAC_Final(ctx2, buf, &len)"
	.text
	.type	test_cmac_copy, @function
test_cmac_copy:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	call	CMAC_CTX_new@PLT
	movq	%rax, -16(%rbp)
	call	CMAC_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$309, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movq	-24(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$309, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rcx
	movl	32+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	test(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	CMAC_Init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$312, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	movl	4132+test(%rip), %eax
	movslq	%eax, %rdx
	leaq	36+test(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$314, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMAC_CTX_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$315, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMAC_Final@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movl	%eax, %ecx
	movl	$316, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pt
	movq	%rax, -32(%rbp)
	movq	4136+test(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$320, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L75
	movl	$1, -4(%rbp)
	jmp	.L68
.L73:
	nop
	jmp	.L68
.L74:
	nop
	jmp	.L68
.L75:
	nop
.L68:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CMAC_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CMAC_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_cmac_copy, .-test_cmac_copy
	.section	.rodata
.LC44:
	.string	"%02x"
	.text
	.type	pt, @function
pt:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L77
.L79:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-4(%rbp), %edx
	addl	%edx, %edx
	movl	%edx, %ecx
	leaq	buf.0(%rip), %rdx
	leaq	(%rcx,%rdx), %rdi
	leaq	.LC44(%rip), %rdx
	movl	%eax, %ecx
	movl	$3, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addl	$1, -4(%rbp)
.L77:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jnb	.L78
	movl	-4(%rbp), %eax
	addl	$1, %eax
	addl	%eax, %eax
	cmpl	$80, %eax
	jbe	.L79
.L78:
	leaq	buf.0(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	pt, .-pt
	.section	.rodata
.LC45:
	.string	"test_cmac_bad"
.LC46:
	.string	"test_cmac_run"
.LC47:
	.string	"test_cmac_copy"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_cmac_bad(%rip), %rdx
	leaq	.LC45(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmac_run(%rip), %rdx
	leaq	.LC46(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cmac_copy(%rip), %rdx
	leaq	.LC47(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	setup_tests, .-setup_tests
	.local	buf.0
	.comm	buf.0,81,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
