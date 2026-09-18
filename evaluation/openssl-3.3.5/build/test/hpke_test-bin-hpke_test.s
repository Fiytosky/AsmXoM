	.file	"hpke_test.c"
	.text
	.local	testctx
	.comm	testctx,8,8
	.local	nullprov
	.comm	nullprov,8,8
	.local	deflprov
	.comm	deflprov,8,8
	.section	.rodata
.LC0:
	.string	"provider=default"
	.section	.data.rel.local,"aw"
	.align 8
	.type	testpropq, @object
	.size	testpropq, 8
testpropq:
	.quad	.LC0
	.local	verbose
	.comm	verbose,4,4
	.section	.rodata
.LC1:
	.string	"publen <= sizeof(pubbuf)"
.LC2:
	.string	"../test/hpke_test.c"
.LC3:
	.string	"encoded-pub-key"
.LC4:
	.string	"erv"
.LC5:
	.string	"pub"
.LC6:
	.string	"pubbuf"
	.text
	.type	cmpkey, @function
cmpkey:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	$0, -280(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$256, -312(%rbp)
	setbe	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L6
.L2:
	leaq	-280(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	-296(%rbp), %rax
	movq	%rcx, %r8
	movl	$256, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$0, %eax
	jmp	.L6
.L4:
	cmpq	$0, -304(%rbp)
	je	.L5
	movq	-280(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-312(%rbp)
	pushq	-304(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	cmpkey, .-cmpkey
	.section	.rodata
	.align 8
.LC7:
	.string	"OSSL_HPKE_keygen(base->suite, pub, &publen, &privE, base->ikmE, base->ikmElen, libctx, propq)"
	.align 8
.LC8:
	.string	"cmpkey(privE, base->expected_pkEm, base->expected_pkEmlen)"
	.align 8
.LC9:
	.string	"sealctx = OSSL_HPKE_CTX_new(base->mode, base->suite, OSSL_HPKE_ROLE_SENDER, libctx, propq)"
	.align 8
.LC10:
	.string	"OSSL_HPKE_CTX_set1_ikme(sealctx, base->ikmE, base->ikmElen)"
	.align 8
.LC11:
	.string	"base->ikmAuth != NULL && base->ikmAuthlen > 0"
	.align 8
.LC12:
	.string	"OSSL_HPKE_keygen(base->suite, authpub, &authpublen, &authpriv, base->ikmAuth, base->ikmAuthlen, libctx, propq)"
	.align 8
.LC13:
	.string	"OSSL_HPKE_CTX_set1_authpriv(sealctx, authpriv)"
	.align 8
.LC14:
	.string	"OSSL_HPKE_keygen(base->suite, rpub, &rpublen, &privR, base->ikmR, base->ikmRlen, libctx, propq)"
	.align 8
.LC15:
	.string	"cmpkey(privR, base->expected_pkRm, base->expected_pkRmlen)"
	.align 8
.LC16:
	.string	"OSSL_HPKE_CTX_set1_psk(sealctx, base->pskid, base->psk, base->psklen)"
	.align 8
.LC17:
	.string	"OSSL_HPKE_encap(sealctx, enc, &enclen, rpub, rpublen, base->ksinfo, base->ksinfolen)"
.LC18:
	.string	"cmpkey(privE, enc, enclen)"
	.align 8
.LC19:
	.string	"OSSL_HPKE_seal(sealctx, ct, &ctlen, aead[i].aad, aead[i].aadlen, aead[i].pt, aead[i].ptlen)"
.LC20:
	.string	"aead[i].expected_ct"
.LC21:
	.string	"ct"
	.align 8
.LC22:
	.string	"OSSL_HPKE_CTX_get_seq(sealctx, &lastseq)"
	.align 8
.LC23:
	.string	"openctx = OSSL_HPKE_CTX_new(base->mode, base->suite, OSSL_HPKE_ROLE_RECEIVER, libctx, propq)"
	.align 8
.LC24:
	.string	"base->pskid != NULL && base->psk != NULL && base->psklen > 0"
	.align 8
.LC25:
	.string	"OSSL_HPKE_CTX_set1_psk(openctx, base->pskid, base->psk, base->psklen)"
	.align 8
.LC26:
	.string	"OSSL_HPKE_CTX_set1_authpub(openctx, authpub, authpublen)"
	.align 8
.LC27:
	.string	"OSSL_HPKE_decap(openctx, enc, enclen, privR, base->ksinfo, base->ksinfolen)"
	.align 8
.LC28:
	.string	"OSSL_HPKE_open(openctx, ptout, &ptoutlen, aead[i].aad, aead[i].aadlen, aead[i].expected_ct, aead[i].expected_ctlen)"
.LC29:
	.string	"ptout"
.LC30:
	.string	"aead[i].pt"
	.align 8
.LC31:
	.string	"OSSL_HPKE_CTX_get_seq(openctx, &lastseq)"
	.align 8
.LC32:
	.string	"OSSL_HPKE_export(sealctx, eval, len, export[i].context, -1)"
	.align 8
.LC33:
	.string	"OSSL_HPKE_export(sealctx, eval, len, export[i].context, export[i].contextlen)"
.LC34:
	.string	"export[i].expected_secret"
.LC35:
	.string	"eval"
	.align 8
.LC36:
	.string	"OSSL_HPKE_seal(sealctx, ct, &ctlen, NULL, 0, ptout, ptoutlen)"
	.text
	.type	do_testhpke, @function
do_testhpke:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3024, %rsp
	movq	%rdi, -2984(%rbp)
	movq	%rsi, -2992(%rbp)
	movq	%rdx, -3000(%rbp)
	movq	%rcx, -3008(%rbp)
	movq	%r8, -3016(%rbp)
	movq	testctx(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	testpropq(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$256, -840(%rbp)
	movq	$256, -848(%rbp)
	movq	$256, -856(%rbp)
	movq	$512, -1384(%rbp)
	movq	$0, -1392(%rbp)
	movq	$512, -1912(%rbp)
	movq	$0, -1920(%rbp)
	movq	$512, -2440(%rbp)
	movq	$0, -2448(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -2456(%rbp)
	movq	-2984(%rbp), %rax
	movq	24(%rax), %r8
	movq	-2984(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	-1392(%rbp), %rcx
	leaq	-1384(%rbp), %rdx
	leaq	-1376(%rbp), %rsi
	movq	-2984(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	4(%rax), %edi
	movzwl	8(%rax), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$120, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	-2984(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-2984(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-1392(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmpkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$123, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movq	-2984(%rbp), %rax
	movl	(%rax), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-2984(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	4(%rax), %esi
	movzwl	8(%rax), %eax
	salq	$32, %rax
	orq	%rsi, %rax
	movq	%rax, %rsi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$125, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movq	-2984(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-2984(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_ikme@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$129, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	movq	-2984(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L13
	movq	-2984(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L14
.L13:
	movq	-2984(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-2984(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movl	$1, %ecx
	jmp	.L16
.L15:
	movl	$0, %ecx
.L16:
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	-2984(%rbp), %rax
	movq	136(%rax), %r8
	movq	-2984(%rbp), %rax
	movq	128(%rax), %rdi
	leaq	-1920(%rbp), %rcx
	leaq	-1912(%rbp), %rdx
	leaq	-1904(%rbp), %rsi
	movq	-2984(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	4(%rax), %edi
	movzwl	8(%rax), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$135, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-1920(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpriv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$140, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
.L14:
	movq	-2984(%rbp), %rax
	movq	56(%rax), %r8
	movq	-2984(%rbp), %rax
	movq	48(%rax), %rdi
	leaq	-2448(%rbp), %rcx
	leaq	-2440(%rbp), %rdx
	leaq	-2432(%rbp), %rsi
	movq	-2984(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	4(%rax), %edi
	movzwl	8(%rax), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$143, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	movq	-2984(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-2984(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-2448(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmpkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$146, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movq	-2984(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L21
	movq	-2984(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L22
.L21:
	movq	-2984(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-2984(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-2984(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_psk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
.L22:
	movq	-2984(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-2984(%rbp), %rax
	movq	112(%rax), %r9
	movq	-2440(%rbp), %r8
	leaq	-2432(%rbp), %rcx
	leaq	-848(%rbp), %rdx
	leaq	-576(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$154, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
	movq	-848(%rbp), %rdx
	movq	-1392(%rbp), %rax
	leaq	-576(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmpkey
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L66
	movq	$0, -32(%rbp)
	jmp	.L25
.L30:
	movq	$256, -856(%rbp)
	movq	-856(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %r9
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %r8
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$163, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %rsi
	movq	-856(%rbp), %r9
	leaq	-320(%rbp), %r8
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$167, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L68
	leaq	-2456(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_get_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$170, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-2456(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L70
	addq	$1, -32(%rbp)
.L25:
	movq	-32(%rbp), %rax
	cmpq	-3000(%rbp), %rax
	jb	.L30
	movq	-2984(%rbp), %rax
	movl	(%rax), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-2984(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	4(%rax), %esi
	movzwl	8(%rax), %eax
	salq	$32, %rax
	orq	%rsi, %rax
	movq	%rax, %rsi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$175, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	movq	-2984(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L32
	movq	-2984(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L33
.L32:
	movq	-2984(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-2984(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-2984(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movl	$1, %ecx
	jmp	.L35
.L34:
	movl	$0, %ecx
.L35:
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L72
	movq	-2984(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-2984(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-2984(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_psk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$184, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
.L33:
	movq	-2984(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L37
	movq	-2984(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L38
.L37:
	movq	-1912(%rbp), %rdx
	leaq	-1904(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
.L38:
	movq	-2984(%rbp), %rax
	movq	120(%rax), %r8
	movq	-2984(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-2448(%rbp), %rcx
	movq	-848(%rbp), %rdx
	leaq	-576(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$194, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	$0, -32(%rbp)
	jmp	.L40
.L45:
	movq	$256, -840(%rbp)
	movq	-840(%rbp), %rdx
	leaq	-832(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	40(%rax), %r9
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %r8
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rcx
	leaq	-840(%rbp), %rdx
	leaq	-832(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	movq	-840(%rbp), %rsi
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %r8
	movq	-32(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-2992(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-832(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$205, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L77
	leaq	-2456(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_get_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$208, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L78
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-2456(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L79
	addq	$1, -32(%rbp)
.L40:
	movq	-32(%rbp), %rax
	cmpq	-3000(%rbp), %rax
	jb	.L45
	movq	$0, -32(%rbp)
	jmp	.L46
.L53:
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-3008(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$512, -56(%rbp)
	ja	.L80
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-3008(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rdx
	leaq	-2976(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	$-1, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$221, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L81
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-3008(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-3008(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rdx
	leaq	-2976(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$225, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-3008(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-3008(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rsi
	movq	-56(%rbp), %r9
	leaq	-2976(%rbp), %r8
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$229, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L83
	cmpq	$0, -3000(%rbp)
	jne	.L52
	movq	-840(%rbp), %rcx
	leaq	-832(%rbp), %rdi
	leaq	-856(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$236, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L84
.L52:
	addq	$1, -32(%rbp)
.L46:
	movq	-32(%rbp), %rax
	cmpq	-3016(%rbp), %rax
	jb	.L53
	movl	$1, -20(%rbp)
	jmp	.L9
.L55:
	nop
	jmp	.L9
.L56:
	nop
	jmp	.L9
.L57:
	nop
	jmp	.L9
.L58:
	nop
	jmp	.L9
.L59:
	nop
	jmp	.L9
.L60:
	nop
	jmp	.L9
.L61:
	nop
	jmp	.L9
.L62:
	nop
	jmp	.L9
.L63:
	nop
	jmp	.L9
.L64:
	nop
	jmp	.L9
.L65:
	nop
	jmp	.L9
.L66:
	nop
	jmp	.L9
.L67:
	nop
	jmp	.L9
.L68:
	nop
	jmp	.L9
.L69:
	nop
	jmp	.L9
.L70:
	nop
	jmp	.L9
.L71:
	nop
	jmp	.L9
.L72:
	nop
	jmp	.L9
.L73:
	nop
	jmp	.L9
.L74:
	nop
	jmp	.L9
.L75:
	nop
	jmp	.L9
.L76:
	nop
	jmp	.L9
.L77:
	nop
	jmp	.L9
.L78:
	nop
	jmp	.L9
.L79:
	nop
	jmp	.L9
.L80:
	nop
	jmp	.L9
.L81:
	nop
	jmp	.L9
.L82:
	nop
	jmp	.L9
.L83:
	nop
	jmp	.L9
.L84:
	nop
.L9:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-1392(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-2448(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-1920(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	do_testhpke, .-do_testhpke
	.section	.rodata
	.align 16
	.type	pt, @object
	.size	pt, 29
pt:
	.ascii	"Beauty is truth, truth beauty"
	.align 16
	.type	ksinfo, @object
	.size	ksinfo, 20
ksinfo:
	.ascii	"Ode on a Grecian Urn"
	.align 16
	.type	pskid, @object
	.size	pskid, 23
pskid:
	.string	"Ennyn Durin aran Moria"
	.align 32
	.type	psk, @object
	.size	psk, 32
psk:
	.base64	"Akf9M7kTdg+h+lHhiS2fMH++ZesXHoEywq8YVVpzi4I="
	.align 32
	.type	first_ikme, @object
	.size	first_ikme, 32
first_ikme:
	.base64	"eGKMNU5G8+FpvSMb57L/HHeqMCRgom2/oVUVaEwAEws="
	.align 32
	.type	first_ikmr, @object
	.size	first_ikmr, 32
first_ikmr:
	.base64	"1KCdCfV1/vQlkF0qs5bBRJFBRj9pj479t6zPr/iZUJg="
	.align 32
	.type	first_ikmepub, @object
	.size	first_ikmepub, 32
first_ikmepub:
	.base64	"CtCVDZ+5WI5ZaQt08SN+zfHXdc1gvi7KV69aSwRxyRs="
	.align 32
	.type	first_ikmrpub, @object
	.size	first_ikmrpub, 32
first_ikmrpub:
	.base64	"n+1+jBc4dWDpLMZGKmgEllckagm/qK3nrv5YlnIBY2Y="
	.align 32
	.type	first_ikmrpriv, @object
	.size	first_ikmrpriv, 32
first_ikmrpriv:
	.base64	"xesB60V/5sb1dXfFQTuTFVChYscaA6yNGWurvU5c4P0="
	.align 32
	.type	first_expected_shared_secret, @object
	.size	first_expected_shared_secret, 32
first_expected_shared_secret:
	.base64	"cnaZ8An/48B2MVAZxpZINmtpFxQ5vX3QgHdDvedphs0="
	.type	first_aad0, @object
	.size	first_aad0, 7
first_aad0:
	.ascii	"Count-0"
	.align 32
	.type	first_ct0, @object
	.size	first_ct0, 45
first_ct0:
	.base64	"5Sxv7X91jQz3FFaJ8hvBvm7J6gl/706VlEABL0/rc/thG5RhmeaB9M/DTbjq"
	.type	first_aad1, @object
	.size	first_aad1, 7
first_aad1:
	.ascii	"Count-1"
	.align 32
	.type	first_ct1, @object
	.size	first_ct1, 45
first_ct1:
	.base64	"SfOxmyip6p9D6McSBMANSkkO5/YTh7Zxnbdl6UgSO0W2FjPvBZuiLNYkN8i6"
	.type	first_aad2, @object
	.size	first_aad2, 7
first_aad2:
	.ascii	"Count-2"
	.align 32
	.type	first_ct2, @object
	.size	first_ct2, 45
first_ct2:
	.base64	"JXymoIRz3IUf3kWv1ZjMg+Mm3dCr4e8juqO6pN2M3pn84sHozmh7C0fq0a3J"
	.align 32
	.type	first_export1, @object
	.size	first_export1, 32
first_export1:
	.base64	"3/F681TItBZzVn22JZ/WAplntOGq0TAjwq5d+PT0O/Y="
	.type	first_context2, @object
	.size	first_context2, 1
first_context2:
	.zero	1
	.align 32
	.type	first_export2, @object
	.size	first_export2, 32
first_export2:
	.base64	"aoRyYdggf+WWvvtSkoRjiBq0k9o0WxDh3MZF47lOLZU="
	.align 8
	.type	first_context3, @object
	.size	first_context3, 11
first_context3:
	.ascii	"TestContext"
	.align 32
	.type	first_export3, @object
	.size	first_export3, 32
first_export3:
	.base64	"iv9StFob46c0vHpB4gtOBVrUxNIhBLDCAoWnxDAkAc0="
	.text
	.type	x25519kdfsha256_hkdfsha256_aes128gcm_psk_test, @function
x25519kdfsha256_hkdfsha256_aes128gcm_psk_test:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$448, %rsp
	movl	$1, -176(%rbp)
	movw	$32, -172(%rbp)
	movw	$1, -170(%rbp)
	movw	$1, -168(%rbp)
	leaq	first_ikme(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	$32, -152(%rbp)
	leaq	first_ikmepub(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	$32, -136(%rbp)
	leaq	first_ikmr(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	$32, -120(%rbp)
	leaq	first_ikmrpub(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	$32, -104(%rbp)
	leaq	first_ikmrpriv(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	$32, -88(%rbp)
	leaq	first_expected_shared_secret(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$32, -72(%rbp)
	leaq	ksinfo(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	$20, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	leaq	psk(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$32, -24(%rbp)
	leaq	pskid(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -352(%rbp)
	leaq	pt(%rip), %rax
	movq	%rax, -344(%rbp)
	movq	$29, -336(%rbp)
	leaq	first_aad0(%rip), %rax
	movq	%rax, -328(%rbp)
	movq	$7, -320(%rbp)
	leaq	first_ct0(%rip), %rax
	movq	%rax, -312(%rbp)
	movq	$45, -304(%rbp)
	movl	$1, -296(%rbp)
	leaq	pt(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	$29, -280(%rbp)
	leaq	first_aad1(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	$7, -264(%rbp)
	leaq	first_ct1(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	$45, -248(%rbp)
	movl	$2, -240(%rbp)
	leaq	pt(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	$29, -224(%rbp)
	leaq	first_aad2(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	$7, -208(%rbp)
	leaq	first_ct2(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	$45, -192(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -440(%rbp)
	leaq	first_export1(%rip), %rax
	movq	%rax, -432(%rbp)
	movq	$32, -424(%rbp)
	leaq	first_context2(%rip), %rax
	movq	%rax, -416(%rbp)
	movq	$1, -408(%rbp)
	leaq	first_export2(%rip), %rax
	movq	%rax, -400(%rbp)
	movq	$32, -392(%rbp)
	leaq	first_context3(%rip), %rax
	movq	%rax, -384(%rbp)
	movq	$11, -376(%rbp)
	leaq	first_export3(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	$32, -360(%rbp)
	leaq	-448(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movl	$3, %r8d
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	do_testhpke
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	x25519kdfsha256_hkdfsha256_aes128gcm_psk_test, .-x25519kdfsha256_hkdfsha256_aes128gcm_psk_test
	.section	.rodata
	.align 32
	.type	second_ikme, @object
	.size	second_ikme, 32
second_ikme:
	.base64	"cmhgDUA/zkMVYa71g+4WE1J8/2VcE0PymBLmZwbfMjQ="
	.align 32
	.type	second_ikmepub, @object
	.size	second_ikmepub, 32
second_ikmepub:
	.base64	"N/2jVnvb1ijohmjDyNfpfR0SU7bU6m1EwVD3QfG/RDE="
	.align 32
	.type	second_ikmr, @object
	.size	second_ikmr, 32
second_ikmr:
	.base64	"bbnfMKoH3ULuXoGBr9uXflOPXh/sigYiPzP3AT5SUDc="
	.align 32
	.type	second_ikmrpub, @object
	.size	second_ikmrpub, 32
second_ikmrpub:
	.base64	"OUjP4K0d22ldeA5ZB3GV2mxWUGsCcyl5SrAryoCBXE0="
	.align 32
	.type	second_ikmrpriv, @object
	.size	second_ikmrpriv, 32
second_ikmrpriv:
	.base64	"RhLFUCY/yK1YN13z9VeqxTHSaFCQPlWp8j8h2FNOisg="
	.align 32
	.type	second_expected_shared_secret, @object
	.size	second_expected_shared_secret, 32
second_expected_shared_secret:
	.base64	"/g4YyfAkzkN5muOTx+j+j86dIYh16CJ7AYfATn0uofw="
	.type	second_aead0, @object
	.size	second_aead0, 7
second_aead0:
	.ascii	"Count-0"
	.align 32
	.type	second_ct0, @object
	.size	second_ct0, 45
second_ct0:
	.base64	"+ThVi11y8aI4ELS+KrT4QzGswC/Je6vFOlKughijValth3Csg9B76ofhPFEq"
	.type	second_aead1, @object
	.size	second_aead1, 7
second_aead1:
	.ascii	"Count-1"
	.align 32
	.type	second_ct1, @object
	.size	second_ct1, 45
second_ct1:
	.base64	"ry1+msmuficPRrofl1vlPAn42HW9yFNUWMJJTopuqyUcA9DCKla4ykLCBjuE"
	.align 32
	.type	second_export1, @object
	.size	second_export1, 32
second_export1:
	.base64	"OFP+K0A1GVpXP/xThW53BY4V2eoGTePln0lh0AlSUO4="
	.type	second_context2, @object
	.size	second_context2, 1
second_context2:
	.zero	1
	.align 32
	.type	second_export2, @object
	.size	second_export2, 32
second_export2:
	.base64	"Lo8LVGc8cClknU651eM78Ycs921iP/FkrBhdqeiMIaU="
	.align 8
	.type	second_context3, @object
	.size	second_context3, 11
second_context3:
	.ascii	"TestContext"
	.align 32
	.type	second_export3, @object
	.size	second_export3, 32
second_export3:
	.base64	"6eQwZRAsODZAG+2MPDx1rka+FjmGk5HWLGHx7Hr1STE="
	.text
	.type	x25519kdfsha256_hkdfsha256_aes128gcm_base_test, @function
x25519kdfsha256_hkdfsha256_aes128gcm_base_test:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movl	$0, -176(%rbp)
	movw	$32, -172(%rbp)
	movw	$1, -170(%rbp)
	movw	$1, -168(%rbp)
	leaq	second_ikme(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	$32, -152(%rbp)
	leaq	second_ikmepub(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	$32, -136(%rbp)
	leaq	second_ikmr(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	$32, -120(%rbp)
	leaq	second_ikmrpub(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	$32, -104(%rbp)
	leaq	second_ikmrpriv(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	$32, -88(%rbp)
	leaq	second_expected_shared_secret(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$32, -72(%rbp)
	leaq	ksinfo(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	$20, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -288(%rbp)
	leaq	pt(%rip), %rax
	movq	%rax, -280(%rbp)
	movq	$29, -272(%rbp)
	leaq	second_aead0(%rip), %rax
	movq	%rax, -264(%rbp)
	movq	$7, -256(%rbp)
	leaq	second_ct0(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	$45, -240(%rbp)
	movl	$1, -232(%rbp)
	leaq	pt(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	$29, -216(%rbp)
	leaq	second_aead1(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	$7, -200(%rbp)
	leaq	second_ct1(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	$45, -184(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -376(%rbp)
	leaq	second_export1(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	$32, -360(%rbp)
	leaq	second_context2(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	$1, -344(%rbp)
	leaq	second_export2(%rip), %rax
	movq	%rax, -336(%rbp)
	movq	$32, -328(%rbp)
	leaq	second_context3(%rip), %rax
	movq	%rax, -320(%rbp)
	movq	$11, -312(%rbp)
	leaq	second_export3(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	$32, -296(%rbp)
	leaq	-384(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movl	$3, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	do_testhpke
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	x25519kdfsha256_hkdfsha256_aes128gcm_base_test, .-x25519kdfsha256_hkdfsha256_aes128gcm_base_test
	.section	.rodata
	.align 32
	.type	third_ikme, @object
	.size	third_ikme, 32
third_ikme:
	.base64	"QnDlT/0I151ZKAIK9Ghtj2t9NdvkcCZfH1qiKBbOhg4="
	.align 32
	.type	third_ikmepub, @object
	.size	third_ikmepub, 65
third_ikmepub:
	.base64	"BKknGcYZXVCFEE9GmouYFNWDj/crYFAeLERm5eZ7MlrJhTbXthoa9LeOW3+VHAkAvoY8QDzmXJv8uTgmVyItGMQ="
	.align 32
	.type	third_ikmr, @object
	.size	third_ikmr, 32
third_ikmr:
	.base64	"Zos3Fx8QcvPPEuqKI2pF3yP8E7gq82Ca0eNU9u+BdVA="
	.align 32
	.type	third_ikmrpub, @object
	.size	third_ikmrpub, 65
third_ikmrpub:
	.base64	"BP6MGc4JBRkevCmKkkV5JTHybwzs4kYGOei8Oct/cGqCanebTPlpuKDlOcf2L7PTCtaqj4DjDx0Siq/WiiznLqA="
	.align 32
	.type	third_ikmrpriv, @object
	.size	third_ikmrpriv, 32
third_ikmrpriv:
	.base64	"885/2uV+GjENh/HrvebzKL4Kmc28rfTWWJzyneS4/9I="
	.align 32
	.type	third_expected_shared_secret, @object
	.size	third_expected_shared_secret, 32
third_expected_shared_secret:
	.base64	"wNJq6rU2YJpXKwdpXZM7WJ3PNj/52TyTrepTeuq7jLg="
	.type	third_aead0, @object
	.size	third_aead0, 7
third_aead0:
	.ascii	"Count-0"
	.align 32
	.type	third_ct0, @object
	.size	third_ct0, 45
third_ct0:
	.base64	"WtWQu4uqV3+GGds1o2MRImqJbnNCptg22Le80vILbH+QdqwjLjqyUj85UTQ0"
	.type	third_aead1, @object
	.size	third_aead1, 7
third_aead1:
	.ascii	"Count-1"
	.align 32
	.type	third_ct1, @object
	.size	third_ct1, 45
third_ct1:
	.base64	"+m8De0f8IYJrYQFyypY36C1uWAHrMcvTdIJxr/1OywZkbgMpy988PNZVso6C"
	.align 32
	.type	third_export1, @object
	.size	third_export1, 32
third_export1:
	.base64	"XpvD0jbhkR2V5ltXaoqG1Hj7gn6L3+d7dBsomJBJDU0="
	.type	third_context2, @object
	.size	third_context2, 1
third_context2:
	.zero	1
	.align 32
	.type	third_export2, @object
	.size	third_export2, 32
third_export2:
	.base64	"bP+HZYkxvag9yFfmNT7+SYeiAbhJZY2bBHqrTPIW55Y="
	.align 8
	.type	third_context3, @object
	.size	third_context3, 11
third_context3:
	.ascii	"TestContext"
	.align 32
	.type	third_export3, @object
	.size	third_export3, 32
third_export3:
	.base64	"2PHqeUKtu6dBLG1DHGLQE3HqR2uCPraX4fbmyuHauFo="
	.text
	.type	P256kdfsha256_hkdfsha256_aes128gcm_base_test, @function
P256kdfsha256_hkdfsha256_aes128gcm_base_test:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movl	$0, -176(%rbp)
	movw	$16, -172(%rbp)
	movw	$1, -170(%rbp)
	movw	$1, -168(%rbp)
	leaq	third_ikme(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	$32, -152(%rbp)
	leaq	third_ikmepub(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	$65, -136(%rbp)
	leaq	third_ikmr(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	$32, -120(%rbp)
	leaq	third_ikmrpub(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	$65, -104(%rbp)
	leaq	third_ikmrpriv(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	$32, -88(%rbp)
	leaq	third_expected_shared_secret(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$32, -72(%rbp)
	leaq	ksinfo(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	$20, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -288(%rbp)
	leaq	pt(%rip), %rax
	movq	%rax, -280(%rbp)
	movq	$29, -272(%rbp)
	leaq	third_aead0(%rip), %rax
	movq	%rax, -264(%rbp)
	movq	$7, -256(%rbp)
	leaq	third_ct0(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	$45, -240(%rbp)
	movl	$1, -232(%rbp)
	leaq	pt(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	$29, -216(%rbp)
	leaq	third_aead1(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	$7, -200(%rbp)
	leaq	third_ct1(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	$45, -184(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -376(%rbp)
	leaq	third_export1(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	$32, -360(%rbp)
	leaq	third_context2(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	$1, -344(%rbp)
	leaq	third_export2(%rip), %rax
	movq	%rax, -336(%rbp)
	movq	$32, -328(%rbp)
	leaq	third_context3(%rip), %rax
	movq	%rax, -320(%rbp)
	movq	$11, -312(%rbp)
	leaq	third_export3(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	$32, -296(%rbp)
	leaq	-384(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movl	$3, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	do_testhpke
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	P256kdfsha256_hkdfsha256_aes128gcm_base_test, .-P256kdfsha256_hkdfsha256_aes128gcm_base_test
	.section	.rodata
	.align 32
	.type	fourth_ikme, @object
	.size	fourth_ikme, 32
fourth_ikme:
	.base64	"VbwkXuTv2iXTjy1U1btmZSkbmfgQioxLaGwrFIk+pdk="
	.align 32
	.type	fourth_ikmepub, @object
	.size	fourth_ikmepub, 32
fourth_ikmepub:
	.base64	"5ej5v/9sLyl5H8NR0sJc4SmaperKeKdXwLT7S82DCRg="
	.align 32
	.type	fourth_ikmr, @object
	.size	fourth_ikmr, 32
fourth_ikmr:
	.base64	"aDrg2h0iGB507S5QPr+ChA3rHV6HLK3iD0tFjZl4PjE="
	.align 32
	.type	fourth_ikmrpub, @object
	.size	fourth_ikmrpub, 32
fourth_ikmrpub:
	.base64	"GUFBymw8O+tHks2Xug6h+v8J2YQ1ASNFdm7jOq4tdmQ="
	.align 32
	.type	fourth_ikmrpriv, @object
	.size	fourth_ikmrpriv, 32
fourth_ikmrpriv:
	.base64	"M9GWyDChL5rGXW5WWlkNgPBO6bGcg8h/LBcNlyqBKEg="
	.align 32
	.type	fourth_expected_shared_secret, @object
	.size	fourth_expected_shared_secret, 32
fourth_expected_shared_secret:
	.base64	"6BcWzo9zFB1PJe6QmO/JaMkeW4zlL//1nWQDnoKRi2Y="
	.align 32
	.type	fourth_export1, @object
	.size	fourth_export1, 32
fourth_export1:
	.base64	"ejYiG9VtUPtR7mXt/ZjQaiPE3IcIWqWGbLcIckS9KjY="
	.type	fourth_context2, @object
	.size	fourth_context2, 1
fourth_context2:
	.zero	1
	.align 32
	.type	fourth_export2, @object
	.size	fourth_export2, 32
fourth_export2:
	.base64	"1VNbhwmcbDzoDcESomccbsjoEaLyhPlIzsbdFwjuM/A="
	.align 8
	.type	fourth_context3, @object
	.size	fourth_context3, 11
fourth_context3:
	.ascii	"TestContext"
	.align 32
	.type	fourth_export3, @object
	.size	fourth_export3, 32
fourth_export3:
	.base64	"/6q8had2E2ygw3jl0ITJFAq1UrePA50uh3Xybv/0xw4="
	.text
	.type	export_only_test, @function
export_only_test:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movl	$0, -176(%rbp)
	movw	$32, -172(%rbp)
	movw	$1, -170(%rbp)
	movw	$-1, -168(%rbp)
	leaq	fourth_ikme(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	$32, -152(%rbp)
	leaq	fourth_ikmepub(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	$32, -136(%rbp)
	leaq	fourth_ikmr(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	$32, -120(%rbp)
	leaq	fourth_ikmrpub(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	$32, -104(%rbp)
	leaq	fourth_ikmrpriv(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	$32, -88(%rbp)
	leaq	fourth_expected_shared_secret(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	$32, -72(%rbp)
	leaq	ksinfo(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	$20, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	leaq	fourth_export1(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	$32, -248(%rbp)
	leaq	fourth_context2(%rip), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	leaq	fourth_export2(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	$32, -216(%rbp)
	leaq	fourth_context3(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	$11, -200(%rbp)
	leaq	fourth_export3(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	$32, -184(%rbp)
	leaq	-272(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$3, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_testhpke
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	export_only_test, .-export_only_test
	.data
	.align 16
	.type	hpke_mode_list, @object
	.size	hpke_mode_list, 16
hpke_mode_list:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 8
	.type	hpke_kem_list, @object
	.size	hpke_kem_list, 10
hpke_kem_list:
	.value	16
	.value	17
	.value	18
	.value	32
	.value	33
	.align 2
	.type	hpke_kdf_list, @object
	.size	hpke_kdf_list, 6
hpke_kdf_list:
	.value	1
	.value	2
	.value	3
	.align 2
	.type	hpke_aead_list, @object
	.size	hpke_aead_list, 6
hpke_aead_list:
	.value	1
	.value	2
	.value	3
	.section	.rodata
.LC37:
	.string	"base"
.LC38:
	.string	"psk"
.LC39:
	.string	"auth"
.LC40:
	.string	"pskauth"
	.section	.data.rel.local
	.align 32
	.type	mode_str_list, @object
	.size	mode_str_list, 32
mode_str_list:
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.section	.rodata
.LC41:
	.string	"P-256"
.LC42:
	.string	"P-384"
.LC43:
	.string	"P-521"
.LC44:
	.string	"x25519"
.LC45:
	.string	"x448"
.LC46:
	.string	"0x10"
.LC47:
	.string	"0x11"
.LC48:
	.string	"0x12"
.LC49:
	.string	"0x20"
.LC50:
	.string	"0x21"
.LC51:
	.string	"16"
.LC52:
	.string	"17"
.LC53:
	.string	"18"
.LC54:
	.string	"32"
.LC55:
	.string	"33"
	.section	.data.rel.local
	.align 32
	.type	kem_str_list, @object
	.size	kem_str_list, 120
kem_str_list:
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.section	.rodata
.LC56:
	.string	"hkdf-sha256"
.LC57:
	.string	"hkdf-sha384"
.LC58:
	.string	"hkdf-sha512"
.LC59:
	.string	"0x1"
.LC60:
	.string	"0x01"
.LC61:
	.string	"0x2"
.LC62:
	.string	"0x02"
.LC63:
	.string	"0x3"
.LC64:
	.string	"0x03"
.LC65:
	.string	"1"
.LC66:
	.string	"2"
.LC67:
	.string	"3"
	.section	.data.rel.local
	.align 32
	.type	kdf_str_list, @object
	.size	kdf_str_list, 96
kdf_str_list:
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.section	.rodata
.LC68:
	.string	"aes-128-gcm"
.LC69:
	.string	"aes-256-gcm"
.LC70:
	.string	"chacha20-poly1305"
.LC71:
	.string	"exporter"
.LC72:
	.string	"0xff"
.LC73:
	.string	"255"
	.section	.data.rel.local
	.align 32
	.type	aead_str_list, @object
	.size	aead_str_list, 120
aead_str_list:
	.quad	.LC68
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC72
	.quad	.LC73
	.section	.rodata
.LC74:
	.string	"3,33,3"
.LC75:
	.string	"bogus,bogus,bogus"
.LC76:
	.string	"bogus,33,3,1,bogus"
.LC77:
	.string	"bogus,33,3,1"
.LC78:
	.string	"bogus,bogus"
.LC79:
	.string	"bogus"
.LC80:
	.string	"0x10,0x01,bogus"
.LC81:
	.string	"0x10,bogus,0x01"
.LC82:
	.string	"bogus,0x02,0x01"
	.align 8
.LC83:
	.string	"aes-256-gcm,hkdf-sha512,x25519"
.LC84:
	.string	",,0x10,0x01,0x02"
.LC85:
	.string	"0x10,,0x01,0x02"
.LC86:
	.string	"0x10,0x01,,0x02"
.LC87:
	.string	"0x10,"
	.string	"x01,,0x02"
.LC88:
	.string	"0x10,"
	.string	"0x01,0x02"
.LC89:
	.string	"0x10"
	.string	",0x01,0x02"
.LC90:
	.string	"0x10,0x01"
	.string	",0x02"
.LC91:
	.string	"0x10,0x01,"
	.string	"0x02"
	.align 8
.LC92:
	.string	" aes-256-gcm,hkdf-sha512,x25519"
	.align 8
.LC93:
	.string	"aes-256-gcm, hkdf-sha512,x25519"
	.align 8
.LC94:
	.string	"aes-256-gcm ,hkdf-sha512,x25519"
	.align 8
.LC95:
	.string	"aes-256-gcm,hkdf-sha512, x25519"
	.align 8
.LC96:
	.string	"aes-256-gcm,hkdf-sha512 ,x25519"
	.align 8
.LC97:
	.string	"aes-256-gcm,hkdf-sha512,x25519 "
.LC98:
	.string	"0x10,0x01,0x02,"
.LC99:
	.string	"0x10,0x01,0x02,,,"
.LC100:
	.string	"0x10,0x01,0x01,0x02"
.LC101:
	.string	"0x10,0x01,0x01,blah"
.LC102:
	.string	"0x10,0x01,0x01 0x02"
.LC103:
	.string	"0x10,0x01"
.LC104:
	.string	""
.LC105:
	.string	","
.LC106:
	.string	",,"
	.section	.data.rel.local
	.align 32
	.type	bogus_suite_strs, @object
	.size	bogus_suite_strs, 280
bogus_suite_strs:
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC96
	.quad	.LC97
	.quad	.LC98
	.quad	.LC99
	.quad	.LC100
	.quad	.LC101
	.quad	.LC102
	.quad	.LC103
	.quad	.LC46
	.quad	0
	.quad	.LC104
	.quad	.LC105
	.quad	.LC106
	.section	.rodata
	.align 8
.LC107:
	.string	"OSSL_HPKE_keygen(hpke_suite, authpub, &authpublen, &authpriv, NULL, 0, testctx, NULL)"
	.align 8
.LC108:
	.string	"OSSL_HPKE_keygen(hpke_suite, pub, &publen, &privp, NULL, 0, testctx, NULL)"
	.align 8
.LC109:
	.string	"ctx = OSSL_HPKE_CTX_new(hpke_mode, hpke_suite, OSSL_HPKE_ROLE_SENDER, testctx, NULL)"
	.align 8
.LC110:
	.string	"OSSL_HPKE_CTX_set1_psk(ctx, pskidp, pskp, psklen)"
	.align 8
.LC111:
	.string	"OSSL_HPKE_CTX_set1_authpriv(ctx, authpriv)"
	.align 8
.LC112:
	.string	"OSSL_HPKE_encap(ctx, senderpub, &senderpublen, pub, publen, infop, infolen)"
	.align 8
.LC113:
	.string	"OSSL_HPKE_seal(ctx, cipher, &cipherlen, aadp, aadlen, plain, plainlen)"
.LC114:
	.string	"rctx"
	.align 8
.LC115:
	.string	"OSSL_HPKE_CTX_set1_psk(rctx, pskidp, pskp, psklen)"
	.align 8
.LC116:
	.string	"OSSL_HPKE_CTX_set1_authpub(rctx, authpub, 10 )"
	.align 8
.LC117:
	.string	"OSSL_HPKE_CTX_set1_authpub(rctx, authpubp, authpublen)"
	.align 8
.LC118:
	.string	"OSSL_HPKE_decap(rctx, senderpub, senderpublen, privp, infop, infolen)"
	.align 8
.LC119:
	.string	"OSSL_HPKE_open(rctx, clear, &clearlen, aadp, aadlen, cipher, cipherlen)"
.LC120:
	.string	"plain"
.LC121:
	.string	"clear"
.LC122:
	.string	"worked"
.LC123:
	.string	"failed"
	.align 8
.LC124:
	.string	"HPKE %s for mode: %s/0x%02x, kem: %s/0x%02x, kdf: %s/0x%02x, aead: %s/0x%02x"
	.text
	.type	test_hpke_modes_suites, @function
test_hpke_modes_suites:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$3912, %rsp
	.cfi_offset 3, -24
	movl	$1, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L94
.L138:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	hpke_mode_list(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -132(%rbp)
	movq	$512, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$32, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$32, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -176(%rbp)
	movw	$32, -182(%rbp)
	movw	$1, -180(%rbp)
	movw	$1, -178(%rbp)
	movq	$512, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	leaq	-3312(%rbp), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-3312(%rbp), %rax
	movabsq	$7449362198107594849, %rbx
	movabsq	$7955925901184475237, %rsi
	movq	%rbx, (%rax)
	movq	%rsi, 8(%rax)
	movabsq	$6998715218728873838, %rbx
	movabsq	$28548220073239072, %rsi
	movq	%rbx, 10(%rax)
	movq	%rsi, 18(%rax)
	leaq	-3312(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -144(%rbp)
	call	test_random@PLT
	andl	$1, %eax
	testl	%eax, %eax
	je	.L95
	leaq	-3824(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-3824(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L96
.L95:
	movq	$0, -64(%rbp)
.L96:
	call	test_random@PLT
	andl	$1, %eax
	testl	%eax, %eax
	je	.L97
	leaq	-3920(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdx
	leaq	-3920(%rbp), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L98
.L97:
	movq	$0, -80(%rbp)
.L98:
	cmpl	$1, -132(%rbp)
	je	.L99
	cmpl	$3, -132(%rbp)
	jne	.L100
.L99:
	leaq	-3888(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-3888(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-3856(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	leaq	-1(%rax), %rdx
	leaq	-3856(%rbp), %rax
	movl	$73, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-104(%rbp), %rax
	subq	$1, %rax
	movb	$0, -3856(%rbp,%rax)
	jmp	.L101
.L100:
	movq	$0, -104(%rbp)
.L101:
	movq	$0, -40(%rbp)
	jmp	.L102
.L137:
	movq	-40(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	leaq	hpke_kem_list(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movw	%ax, -162(%rbp)
	movq	$512, -192(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -200(%rbp)
	movzwl	-162(%rbp), %eax
	movw	%ax, -182(%rbp)
	cmpl	$2, -132(%rbp)
	je	.L103
	cmpl	$3, -132(%rbp)
	jne	.L104
.L103:
	movq	testctx(%rip), %rsi
	leaq	-200(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	-2800(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-182(%rbp), %eax
	movzwl	-180(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-178(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$976, %esi
	call	test_true@PLT
	cmpl	$1, %eax
	je	.L105
	movl	$0, -20(%rbp)
.L105:
	leaq	-2800(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.L106
.L104:
	movq	$0, -192(%rbp)
.L106:
	movq	$0, -48(%rbp)
	jmp	.L107
.L135:
	movq	-48(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	leaq	hpke_kdf_list(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movw	%ax, -164(%rbp)
	movzwl	-164(%rbp), %eax
	movw	%ax, -180(%rbp)
	movq	$0, -56(%rbp)
	jmp	.L108
.L133:
	movq	-56(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	leaq	hpke_aead_list(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movw	%ax, -166(%rbp)
	movq	$512, -208(%rbp)
	movq	$512, -216(%rbp)
	movq	$512, -224(%rbp)
	movq	$512, -232(%rbp)
	movzwl	-166(%rbp), %eax
	movw	%ax, -178(%rbp)
	movq	testctx(%rip), %rsi
	leaq	-176(%rbp), %rcx
	leaq	-208(%rbp), %rdx
	leaq	-2288(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-182(%rbp), %eax
	movzwl	-180(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-178(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1006, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L109
	movl	$0, -20(%rbp)
.L109:
	movq	testctx(%rip), %rdx
	movl	-132(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movzwl	-182(%rbp), %esi
	movzwl	-180(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-178(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1010, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L110
	movl	$0, -20(%rbp)
.L110:
	cmpl	$1, -132(%rbp)
	je	.L111
	cmpl	$3, -132(%rbp)
	jne	.L112
.L111:
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_psk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1016, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$0, -20(%rbp)
.L112:
	cmpl	$2, -132(%rbp)
	je	.L113
	cmpl	$3, -132(%rbp)
	jne	.L114
.L113:
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpriv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1022, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L114
	movl	$0, -20(%rbp)
.L114:
	movq	-208(%rbp), %rdi
	movq	-88(%rbp), %r8
	leaq	-2288(%rbp), %rcx
	leaq	-216(%rbp), %rdx
	leaq	-1776(%rbp), %rsi
	movq	-160(%rbp), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1026, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, -20(%rbp)
.L115:
	movq	$15, -224(%rbp)
	leaq	-3312(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	leaq	-1264(%rbp), %rsi
	movq	-160(%rbp), %rax
	subq	$8, %rsp
	pushq	-144(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1033, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L116
	movl	$0, -20(%rbp)
.L116:
	movq	$512, -224(%rbp)
	leaq	-3312(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	leaq	-1264(%rbp), %rsi
	movq	-160(%rbp), %rax
	subq	$8, %rsp
	pushq	-144(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1039, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L117
	movl	$0, -20(%rbp)
.L117:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-232(%rbp), %rdx
	leaq	-752(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	testctx(%rip), %rdx
	movl	-132(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movzwl	-182(%rbp), %esi
	movzwl	-180(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-178(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	leaq	.LC114(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1048, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L118
	movl	$0, -20(%rbp)
.L118:
	cmpl	$1, -132(%rbp)
	je	.L119
	cmpl	$3, -132(%rbp)
	jne	.L120
.L119:
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_psk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1052, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$0, -20(%rbp)
.L120:
	cmpl	$2, -132(%rbp)
	je	.L121
	cmpl	$3, -132(%rbp)
	jne	.L122
.L121:
	movzwl	-182(%rbp), %eax
	cmpw	$16, %ax
	jne	.L123
	leaq	-2800(%rbp), %rcx
	movq	-152(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1061, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L123
	movl	$0, -20(%rbp)
.L123:
	movq	-192(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1067, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L122
	movl	$0, -20(%rbp)
.L122:
	movq	-176(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rdi
	leaq	-1776(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC118(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1072, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L124
	movl	$0, -20(%rbp)
.L124:
	movq	$15, -232(%rbp)
	movq	-224(%rbp), %rdi
	leaq	-1264(%rbp), %r9
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %rcx
	leaq	-232(%rbp), %rdx
	leaq	-752(%rbp), %rsi
	movq	-152(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1078, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L125
	movl	$0, -20(%rbp)
.L125:
	movq	$512, -232(%rbp)
	movq	-224(%rbp), %rdi
	leaq	-1264(%rbp), %r9
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %rcx
	leaq	-232(%rbp), %rdx
	leaq	-752(%rbp), %rsi
	movq	-152(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1084, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L126
	movl	$0, -20(%rbp)
.L126:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -176(%rbp)
	movq	-232(%rbp), %r8
	leaq	-752(%rbp), %rdi
	leaq	.LC120(%rip), %rcx
	leaq	.LC121(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-144(%rbp)
	leaq	-3312(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1092, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L127
	movl	$0, -20(%rbp)
.L127:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	jne	.L128
	cmpl	$1, -20(%rbp)
	je	.L129
.L128:
	movq	$0, -128(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L130
	leaq	.LC122(%rip), %rax
	movq	%rax, -128(%rbp)
	jmp	.L131
.L130:
	leaq	.LC123(%rip), %rax
	movq	%rax, -128(%rbp)
.L131:
	movzwl	-166(%rbp), %r9d
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	aead_str_list(%rip), %rax
	movq	(%rdx,%rax), %r8
	movzwl	-164(%rbp), %esi
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	kdf_str_list(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movzwl	-162(%rbp), %r11d
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	kem_str_list(%rip), %rax
	movq	(%rdx,%rax), %r10
	movq	-32(%rbp), %rax
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	mode_str_list(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-128(%rbp), %rax
	leaq	.LC124(%rip), %rdi
	pushq	%r9
	pushq	%r8
	pushq	%rsi
	pushq	%rcx
	movl	%r11d, %r9d
	movq	%r10, %r8
	movl	%ebx, %ecx
	movq	%rax, %rsi
	movl	$0, %eax
	call	test_note@PLT
	addq	$32, %rsp
.L129:
	addq	$1, -56(%rbp)
.L108:
	cmpl	$1, -20(%rbp)
	jne	.L132
	cmpq	$2, -56(%rbp)
	jbe	.L133
.L132:
	addq	$1, -48(%rbp)
.L107:
	cmpl	$1, -20(%rbp)
	jne	.L134
	cmpq	$2, -48(%rbp)
	jbe	.L135
.L134:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	addq	$1, -40(%rbp)
.L102:
	cmpl	$1, -20(%rbp)
	jne	.L136
	cmpq	$4, -40(%rbp)
	jbe	.L137
.L136:
	addq	$1, -32(%rbp)
.L94:
	cmpq	$3, -32(%rbp)
	jbe	.L138
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_hpke_modes_suites, .-test_hpke_modes_suites
	.section	.rodata
.LC125:
	.string	"foo"
	.align 8
.LC126:
	.string	"OSSL_HPKE_export(NULL, exp, sizeof(exp), (unsigned char *)estr, strlen(estr))"
	.align 8
.LC127:
	.string	"OSSL_HPKE_export(ctx, exp, sizeof(exp), (unsigned char *)estr, strlen(estr))"
	.align 8
.LC128:
	.string	"OSSL_HPKE_encap(ctx, enc, &enclen, pub, publen, NULL, 0)"
	.align 8
.LC129:
	.string	"OSSL_HPKE_seal(ctx, cipher, &cipherlen, NULL, 0, plain, plainlen)"
	.align 8
.LC130:
	.string	"OSSL_HPKE_export(ctx, exp2, sizeof(exp2), (unsigned char *)estr, strlen(estr))"
.LC131:
	.string	"exp2"
.LC132:
	.string	"exp"
	.align 8
.LC133:
	.string	"rctx = OSSL_HPKE_CTX_new(hpke_mode, hpke_suite, OSSL_HPKE_ROLE_RECEIVER, testctx, NULL)"
	.align 8
.LC134:
	.string	"OSSL_HPKE_decap(rctx, enc, enclen, privp, NULL, 0)"
	.align 8
.LC135:
	.string	"OSSL_HPKE_open(rctx, clear, &clearlen, NULL, 0, cipher, cipherlen)"
	.align 8
.LC136:
	.string	"OSSL_HPKE_export(rctx, rexp, sizeof(rexp), (unsigned char *)estr, strlen(estr))"
	.align 8
.LC137:
	.string	"OSSL_HPKE_export(rctx, rexp2, sizeof(rexp2), (unsigned char *)estr, strlen(estr))"
.LC138:
	.string	"rexp2"
.LC139:
	.string	"rexp"
	.text
	.type	test_hpke_export, @function
test_hpke_export:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2320, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -56(%rbp)
	movq	$512, -584(%rbp)
	movl	$0, -28(%rbp)
	movw	$32, -590(%rbp)
	movw	$1, -588(%rbp)
	movw	$1, -586(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movabsq	$8242185913642874225, %rax
	movabsq	$33899481626736495, %rdx
	movq	%rax, -736(%rbp)
	movq	%rdx, -728(%rbp)
	movq	$16, -40(%rbp)
	movq	$512, -1256(%rbp)
	movq	$512, -1784(%rbp)
	movq	$512, -2312(%rbp)
	leaq	.LC125(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	testctx(%rip), %rsi
	leaq	-56(%rbp), %rcx
	leaq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1143, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movq	testctx(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movzwl	-590(%rbp), %esi
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-586(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L160
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	-624(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_HPKE_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC126(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1151, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L161
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	-624(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	OSSL_HPKE_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1155, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L162
	movq	-584(%rbp), %rdi
	leaq	-576(%rbp), %rcx
	leaq	-1256(%rbp), %rdx
	leaq	-1248(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L163
	leaq	-736(%rbp), %rcx
	leaq	-1784(%rbp), %rdx
	leaq	-1776(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC129(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L164
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	-624(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	OSSL_HPKE_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1164, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L165
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	-656(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	OSSL_HPKE_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC130(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1168, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L166
	leaq	-624(%rbp), %rdi
	leaq	.LC131(%rip), %rcx
	leaq	.LC132(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$32
	leaq	-656(%rbp), %rsi
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$1171, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L167
	movq	testctx(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movzwl	-590(%rbp), %esi
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-586(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1173, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L168
	movq	-56(%rbp), %rcx
	movq	-1256(%rbp), %rdx
	leaq	-1248(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1177, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L169
	movq	-1784(%rbp), %rcx
	leaq	-1776(%rbp), %rdi
	leaq	-2312(%rbp), %rdx
	leaq	-2304(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1179, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L170
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	OSSL_HPKE_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC136(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1182, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L171
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	leaq	-720(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	OSSL_HPKE_export@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC137(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L172
	leaq	-688(%rbp), %rdi
	leaq	.LC138(%rip), %rcx
	leaq	.LC139(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$32
	leaq	-720(%rbp), %rsi
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$1189, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L173
	leaq	-624(%rbp), %rdi
	leaq	.LC139(%rip), %rcx
	leaq	.LC132(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$32
	leaq	-688(%rbp), %rsi
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$1191, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L174
	movl	$1, -4(%rbp)
	jmp	.L142
.L159:
	nop
	jmp	.L142
.L160:
	nop
	jmp	.L142
.L161:
	nop
	jmp	.L142
.L162:
	nop
	jmp	.L142
.L163:
	nop
	jmp	.L142
.L164:
	nop
	jmp	.L142
.L165:
	nop
	jmp	.L142
.L166:
	nop
	jmp	.L142
.L167:
	nop
	jmp	.L142
.L168:
	nop
	jmp	.L142
.L169:
	nop
	jmp	.L142
.L170:
	nop
	jmp	.L142
.L171:
	nop
	jmp	.L142
.L172:
	nop
	jmp	.L142
.L173:
	nop
	jmp	.L142
.L174:
	nop
.L142:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_hpke_export, .-test_hpke_export
	.section	.rodata
.LC140:
	.string	"%s,%s,%s"
	.align 8
.LC141:
	.string	"OSSL_HPKE_str2suite(sstr, &stirred)"
	.align 8
.LC142:
	.string	"Unexpected str2suite fail for :%s"
	.align 8
.LC143:
	.string	"OSSL_HPKE_str2suite(bogus_suite_strs[sind], &stirred)"
	.align 8
.LC144:
	.string	"OSSL_HPKE_str2suite didn't fail for bogus[%d]:%s"
	.align 8
.LC145:
	.string	"OSSL_HPKE_str2suite(\"\", &stirred)"
	.align 8
.LC146:
	.string	"OSSL_HPKE_str2suite(NULL, &stirred)"
.LC147:
	.string	"OSSL_HPKE_str2suite(\"\", NULL)"
	.align 8
.LC148:
	.string	"OSSL_HPKE_str2suite(giant, &stirred)"
	.text
	.type	test_hpke_suite_strs, @function
test_hpke_suite_strs:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2224, %rsp
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L176
.L183:
	movl	$0, -12(%rbp)
	jmp	.L177
.L182:
	movl	$0, -16(%rbp)
	jmp	.L178
.L181:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	aead_str_list(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	kdf_str_list(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	kem_str_list(%rip), %rax
	movq	(%rdx,%rax), %rdx
	leaq	.LC140(%rip), %rsi
	leaq	-160(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-166(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_str2suite@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC141(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1221, %esi
	call	test_true@PLT
	cmpl	$1, %eax
	je	.L179
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L180
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bogus_suite_strs(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC142(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
.L180:
	movl	$0, -4(%rbp)
.L179:
	addl	$1, -16(%rbp)
.L178:
	cmpl	$15, -16(%rbp)
	jne	.L181
	addl	$1, -12(%rbp)
.L177:
	cmpl	$12, -12(%rbp)
	jne	.L182
	addl	$1, -8(%rbp)
.L176:
	cmpl	$15, -8(%rbp)
	jne	.L183
	movl	$0, -20(%rbp)
	jmp	.L184
.L187:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bogus_suite_strs(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	-166(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_str2suite@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC143(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1231, %esi
	call	test_false@PLT
	cmpl	$1, %eax
	je	.L185
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L186
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bogus_suite_strs(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-20(%rbp), %eax
	leaq	.LC144(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_note@PLT
.L186:
	movl	$0, -4(%rbp)
.L185:
	addl	$1, -20(%rbp)
.L184:
	cmpl	$35, -20(%rbp)
	jne	.L187
	leaq	-166(%rbp), %rax
	leaq	.LC104(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_HPKE_str2suite@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC145(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1240, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L188
	movl	$0, -4(%rbp)
.L188:
	leaq	-166(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_HPKE_str2suite@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC146(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1242, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L189
	movl	$0, -4(%rbp)
.L189:
	leaq	.LC104(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HPKE_str2suite@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC147(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1244, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L190
	movl	$0, -4(%rbp)
.L190:
	leaq	-2224(%rbp), %rax
	movl	$2047, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -177(%rbp)
	leaq	-166(%rbp), %rdx
	leaq	-2224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_str2suite@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC148(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1248, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L191
	movl	$0, -4(%rbp)
.L191:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_hpke_suite_strs, .-test_hpke_suite_strs
	.section	.rodata
	.align 8
.LC149:
	.string	"OSSL_HPKE_get_grease_value(NULL, &g_suite, g_pub, &g_pub_len, g_cipher, g_cipher_len, testctx, NULL)"
.LC150:
	.string	"clearlen"
.LC151:
	.string	"expanded"
.LC152:
	.string	"0"
.LC153:
	.string	"enclen"
.LC154:
	.string	"ikmelen"
	.text
	.type	test_hpke_grease, @function
test_hpke_grease:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1104, %rsp
	movl	$1, -4(%rbp)
	movq	$512, -584(%rbp)
	movq	$266, -16(%rbp)
	movq	$128, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	leaq	-54(%rbp), %rax
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	$10, -584(%rbp)
	movq	testctx(%rip), %rsi
	movq	-16(%rbp), %r8
	leaq	-1104(%rbp), %rdi
	leaq	-584(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-54(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC149(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1275, %esi
	call	test_false@PLT
	cmpl	$1, %eax
	je	.L194
	movl	$0, -4(%rbp)
.L194:
	movq	$512, -584(%rbp)
	movq	testctx(%rip), %rsi
	movq	-16(%rbp), %r8
	leaq	-1104(%rbp), %rdi
	leaq	-584(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-54(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC149(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1283, %esi
	call	test_true@PLT
	cmpl	$1, %eax
	je	.L195
	movl	$0, -4(%rbp)
.L195:
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movzwl	-54(%rbp), %eax
	movzwl	-52(%rbp), %edx
	salq	$16, %rdx
	orq	%rax, %rdx
	movzwl	-50(%rbp), %eax
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_get_ciphertext_size@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC150(%rip), %rcx
	leaq	.LC151(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1291, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L196
	movl	$0, -4(%rbp)
.L196:
	movzwl	-54(%rbp), %eax
	movzwl	-52(%rbp), %edx
	salq	$16, %rdx
	orq	%rax, %rdx
	movzwl	-50(%rbp), %eax
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_get_public_encap_size@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rsi
	leaq	.LC152(%rip), %rcx
	leaq	.LC153(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1295, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	jne	.L197
	movl	$0, -4(%rbp)
.L197:
	movzwl	-54(%rbp), %eax
	movzwl	-52(%rbp), %edx
	salq	$16, %rdx
	orq	%rax, %rdx
	movzwl	-50(%rbp), %eax
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_get_recommended_ikmelen@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	leaq	.LC152(%rip), %rcx
	leaq	.LC154(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1299, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	testl	%eax, %eax
	jne	.L198
	movl	$0, -4(%rbp)
.L198:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_hpke_grease, .-test_hpke_grease
	.section	.rodata
.LC155:
	.string	"yeah, this won't work"
	.align 8
.LC156:
	.string	"OSSL_HPKE_CTX_set_seq(NULL, 1)"
	.align 8
.LC157:
	.string	"OSSL_HPKE_CTX_get_seq(NULL, &lseq)"
	.align 8
.LC158:
	.string	"OSSL_HPKE_CTX_set1_authpub(NULL, pub, publen)"
	.align 8
.LC159:
	.string	"OSSL_HPKE_CTX_set1_authpriv(NULL, privp)"
	.align 8
.LC160:
	.string	"OSSL_HPKE_CTX_set1_ikme(NULL, NULL, 0)"
	.align 8
.LC161:
	.string	"OSSL_HPKE_CTX_set1_psk(NULL, NULL, NULL, 0)"
	.align 8
.LC162:
	.string	"OSSL_HPKE_suite_check(hpke_suite)"
	.align 8
.LC163:
	.string	"OSSL_HPKE_suite_check(bad_suite)"
	.align 8
.LC164:
	.string	"OSSL_HPKE_get_recommended_ikmelen(bad_suite)"
	.align 8
.LC165:
	.string	"OSSL_HPKE_get_public_encap_size(bad_suite)"
	.align 8
.LC166:
	.string	"OSSL_HPKE_get_ciphertext_size(bad_suite, 0)"
	.align 8
.LC167:
	.string	"OSSL_HPKE_keygen(bad_suite, pub, &publen, &privp, NULL, 0, testctx, badpropq)"
	.align 8
.LC168:
	.string	"OSSL_HPKE_keygen(bad_suite, pub, &publen, &privp, NULL, 0, testctx, NULL)"
	.align 8
.LC169:
	.string	"OSSL_HPKE_keygen(hpke_suite, NULL, &publen, &privp, NULL, 0, testctx, NULL)"
	.align 8
.LC170:
	.string	"OSSL_HPKE_keygen(hpke_suite, pub, &publen, &privp, NULL, 80, testctx, NULL)"
	.align 8
.LC171:
	.string	"OSSL_HPKE_keygen(hpke_suite, pub, &publen, &privp, fake_ikm, 0, testctx, NULL)"
	.align 8
.LC172:
	.string	"OSSL_HPKE_keygen(hpke_suite, pub, &publen, &privp, fake_ikm, -1, testctx, NULL)"
	.align 8
.LC173:
	.string	"OSSL_HPKE_encap(NULL, NULL, NULL, NULL, 0, NULL, 0)"
	.align 8
.LC174:
	.string	"OSSL_HPKE_decap(NULL, NULL, 0, NULL, NULL, 0)"
	.align 8
.LC175:
	.string	"ctx = OSSL_HPKE_CTX_new(OSSL_HPKE_MODE_PSK, hpke_suite, OSSL_HPKE_ROLE_SENDER, testctx, NULL)"
.LC176:
	.string	"bar"
	.align 8
.LC177:
	.string	"OSSL_HPKE_CTX_set1_psk(ctx, \"foo\", (unsigned char *)\"bar\", -1)"
	.align 8
.LC178:
	.string	"OSSL_HPKE_CTX_set1_psk(ctx, giant_pskid, (unsigned char *)\"bar\", 3)"
	.align 8
.LC179:
	.string	"ctx = OSSL_HPKE_CTX_new(hpke_mode, bad_suite, OSSL_HPKE_ROLE_SENDER, testctx, NULL)"
	.align 8
.LC180:
	.string	"ctx = OSSL_HPKE_CTX_new(bad_mode, hpke_suite, OSSL_HPKE_ROLE_SENDER, testctx, NULL)"
	.align 8
.LC181:
	.string	"OSSL_HPKE_CTX_set1_ikme(ctx, fake_ikm, -1)"
	.align 8
.LC182:
	.string	"OSSL_HPKE_CTX_set1_ikme(ctx, fake_ikm, 0)"
	.align 8
.LC183:
	.string	"OSSL_HPKE_CTX_set1_authpub(ctx, NULL, 0)"
	.align 8
.LC184:
	.string	"OSSL_HPKE_CTX_set1_authpriv(ctx, NULL)"
	.align 8
.LC185:
	.string	"OSSL_HPKE_CTX_set1_authpriv(ctx, privp)"
	.align 8
.LC186:
	.string	"OSSL_HPKE_CTX_set1_psk(ctx, \"foo\", (unsigned char *)\"bar\", 3)"
	.align 8
.LC187:
	.string	"OSSL_HPKE_encap(ctx, enc, &enclen, pub, 1, NULL, 0)"
	.align 8
.LC188:
	.string	"OSSL_HPKE_encap(ctx, enc, &enclen, pub, 1, info, -1)"
	.align 8
.LC189:
	.string	"OSSL_HPKE_encap(ctx, enc, &enclen, pub, 1, NULL, 1)"
	.align 8
.LC190:
	.string	"OSSL_HPKE_encap(ctx, enc, &enclen, pub, 1, info, 0)"
	.align 8
.LC191:
	.string	"OSSL_HPKE_encap(ctx, smallenc, &smallenclen, pub, 1, NULL, 0)"
	.align 8
.LC192:
	.string	"rctx = OSSL_HPKE_CTX_new(OSSL_HPKE_MODE_PSK, hpke_suite, OSSL_HPKE_ROLE_RECEIVER, testctx, NULL)"
	.align 8
.LC193:
	.string	"OSSL_HPKE_decap(rctx, enc, enclen, privp, info, -1)"
	.align 8
.LC194:
	.string	"OSSL_HPKE_CTX_set_seq(rctx, -1)"
	.align 8
.LC195:
	.string	"OSSL_HPKE_CTX_set_seq(rctx, 0)"
	.text
	.type	test_hpke_oddcalls, @function
test_hpke_oddcalls:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3344, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -56(%rbp)
	movq	$512, -584(%rbp)
	movl	$0, -28(%rbp)
	movl	$2989, -32(%rbp)
	movw	$32, -590(%rbp)
	movw	$1, -588(%rbp)
	movw	$1, -586(%rbp)
	movw	$2989, -596(%rbp)
	movw	$2989, -594(%rbp)
	movw	$2989, -592(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movabsq	$8242185913642874225, %rax
	movabsq	$33899481626736495, %rdx
	movq	%rax, -624(%rbp)
	movq	%rdx, -616(%rbp)
	movq	$16, -40(%rbp)
	movq	$512, -1160(%rbp)
	movq	$10, -1168(%rbp)
	movq	$512, -1688(%rbp)
	movq	$512, -2216(%rbp)
	leaq	.LC155(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -2744(%rbp)
	movl	$0, %edi
	call	OSSL_HPKE_CTX_free@PLT
	movl	$1, %esi
	movl	$0, %edi
	call	OSSL_HPKE_CTX_set_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC156(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1338, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L260
	leaq	-2744(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_HPKE_CTX_get_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC157(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1340, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L261
	movq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_HPKE_CTX_set1_authpub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC158(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1342, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L262
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_HPKE_CTX_set1_authpriv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC159(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1344, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L263
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_HPKE_CTX_set1_ikme@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC160(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1346, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L264
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_HPKE_CTX_set1_psk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC161(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1348, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L265
	movw	$2989, -586(%rbp)
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %edx
	salq	$16, %rdx
	orq	%rax, %rdx
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_suite_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC162(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1353, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L266
	movw	$1, -586(%rbp)
	movl	-596(%rbp), %eax
	movzwl	-592(%rbp), %edx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_suite_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC163(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1356, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L267
	movl	-596(%rbp), %eax
	movzwl	-592(%rbp), %edx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_get_recommended_ikmelen@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC164(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1358, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L268
	movl	-596(%rbp), %eax
	movzwl	-592(%rbp), %edx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_get_public_encap_size@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC165(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1360, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L269
	movl	$0, %esi
	movl	-596(%rbp), %eax
	movzwl	-592(%rbp), %edx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_get_ciphertext_size@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC166(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1362, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L270
	movq	testctx(%rip), %rsi
	leaq	-56(%rbp), %rcx
	leaq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	pushq	-48(%rbp)
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	-596(%rbp), %eax
	movzwl	-592(%rbp), %edi
	salq	$32, %rdi
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC167(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1364, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L271
	movq	testctx(%rip), %rsi
	leaq	-56(%rbp), %rcx
	leaq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	-596(%rbp), %eax
	movzwl	-592(%rbp), %edi
	salq	$32, %rdi
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC168(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1367, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L272
	movq	testctx(%rip), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-584(%rbp), %rax
	pushq	$0
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC169(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1373, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L273
	movq	testctx(%rip), %rsi
	leaq	-56(%rbp), %rcx
	leaq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$80, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC170(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1377, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L274
	movq	testctx(%rip), %rsi
	leaq	-2736(%rbp), %rdi
	leaq	-56(%rbp), %rcx
	leaq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rsi
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1381, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L275
	movq	testctx(%rip), %rsi
	leaq	-2736(%rbp), %rdi
	leaq	-56(%rbp), %rcx
	leaq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movq	$-1, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1385, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L276
	movq	$10, -584(%rbp)
	movq	testctx(%rip), %rsi
	leaq	-56(%rbp), %rcx
	leaq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1390, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L277
	movq	$512, -584(%rbp)
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC173(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1396, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L278
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC174(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1398, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L279
	movq	testctx(%rip), %rsi
	leaq	-56(%rbp), %rcx
	leaq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1406, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L280
	movq	testctx(%rip), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %esi
	salq	$16, %rsi
	orq	%rax, %rsi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rsi, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC175(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1411, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L281
	leaq	.LC176(%rip), %rdx
	leaq	.LC125(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_psk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1416, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L282
	leaq	-2832(%rbp), %rax
	movl	$75, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -2757(%rbp)
	leaq	.LC176(%rip), %rdx
	leaq	-2832(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_psk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC178(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1422, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L283
	movq	-584(%rbp), %rdi
	leaq	-576(%rbp), %rcx
	leaq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1426, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L284
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	testctx(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	-596(%rbp), %esi
	movzwl	-592(%rbp), %edi
	salq	$32, %rdi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC179(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1431, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L285
	movq	testctx(%rip), %rdx
	movl	-32(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movzwl	-590(%rbp), %esi
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-586(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC180(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1436, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L286
	movq	testctx(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movzwl	-590(%rbp), %esi
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-586(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1441, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L287
	leaq	-2736(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_ikme@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC181(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1446, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L288
	leaq	-2736(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_ikme@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC182(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1449, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L289
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC183(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1452, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L290
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpriv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC184(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1455, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L291
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpriv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1458, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L292
	leaq	.LC176(%rip), %rdx
	leaq	.LC125(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_psk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC186(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1461, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L293
	leaq	-624(%rbp), %rcx
	leaq	-1688(%rbp), %rdx
	leaq	-1680(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC129(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1465, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L294
	leaq	-576(%rbp), %rcx
	leaq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC187(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1469, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L295
	leaq	-3344(%rbp), %rdi
	leaq	-576(%rbp), %rcx
	leaq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$-1
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC188(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1472, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L296
	leaq	-576(%rbp), %rcx
	leaq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC189(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1475, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L297
	leaq	-3344(%rbp), %rdi
	leaq	-576(%rbp), %rcx
	leaq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC190(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1478, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L298
	leaq	-576(%rbp), %rcx
	leaq	-1168(%rbp), %rdx
	leaq	-1146(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC191(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1481, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L299
	movq	-584(%rbp), %rdi
	leaq	-576(%rbp), %rcx
	leaq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1484, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L300
	movq	-584(%rbp), %rdi
	leaq	-576(%rbp), %rcx
	leaq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1487, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L301
	movq	$0, -40(%rbp)
	leaq	-624(%rbp), %rcx
	leaq	-1688(%rbp), %rdx
	leaq	-1680(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC129(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1491, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L302
	movq	$16, -40(%rbp)
	leaq	-624(%rbp), %rcx
	leaq	-1688(%rbp), %rdx
	leaq	-1680(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC129(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1496, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L303
	movq	testctx(%rip), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$1, %edx
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %esi
	salq	$16, %rsi
	orq	%rax, %rsi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rsi, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC192(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1502, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L304
	movq	-56(%rbp), %rcx
	movq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1506, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L305
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	testctx(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movzwl	-590(%rbp), %esi
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-586(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1512, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L306
	movq	-1688(%rbp), %rcx
	leaq	-1680(%rbp), %rdi
	leaq	-2216(%rbp), %rdx
	leaq	-2208(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1517, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L307
	movq	-56(%rbp), %rcx
	movq	-1160(%rbp), %rdx
	leaq	-3344(%rbp), %rdi
	leaq	-1136(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	$-1, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC193(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1521, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L308
	movq	-56(%rbp), %rcx
	movq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1524, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L309
	movq	-56(%rbp), %rcx
	movq	-1160(%rbp), %rdx
	leaq	-1136(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1527, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L310
	movq	$0, -2216(%rbp)
	movq	-1688(%rbp), %rcx
	leaq	-1680(%rbp), %rdi
	leaq	-2216(%rbp), %rdx
	leaq	-2208(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1531, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L311
	movq	$512, -2216(%rbp)
	movq	-24(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC194(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1536, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L312
	movq	-1688(%rbp), %rcx
	leaq	-1680(%rbp), %rdi
	leaq	-2216(%rbp), %rdx
	leaq	-2208(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1538, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L313
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC195(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1541, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L314
	movq	-1688(%rbp), %rcx
	leaq	-1680(%rbp), %rdi
	leaq	-2216(%rbp), %rdx
	leaq	-2208(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1543, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L315
	movq	-2216(%rbp), %rsi
	movq	-40(%rbp), %r8
	leaq	-624(%rbp), %rdi
	leaq	.LC121(%rip), %rcx
	leaq	.LC120(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-2208(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1546, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L316
	movl	$1, -4(%rbp)
	jmp	.L202
.L260:
	nop
	jmp	.L202
.L261:
	nop
	jmp	.L202
.L262:
	nop
	jmp	.L202
.L263:
	nop
	jmp	.L202
.L264:
	nop
	jmp	.L202
.L265:
	nop
	jmp	.L202
.L266:
	nop
	jmp	.L202
.L267:
	nop
	jmp	.L202
.L268:
	nop
	jmp	.L202
.L269:
	nop
	jmp	.L202
.L270:
	nop
	jmp	.L202
.L271:
	nop
	jmp	.L202
.L272:
	nop
	jmp	.L202
.L273:
	nop
	jmp	.L202
.L274:
	nop
	jmp	.L202
.L275:
	nop
	jmp	.L202
.L276:
	nop
	jmp	.L202
.L277:
	nop
	jmp	.L202
.L278:
	nop
	jmp	.L202
.L279:
	nop
	jmp	.L202
.L280:
	nop
	jmp	.L202
.L281:
	nop
	jmp	.L202
.L282:
	nop
	jmp	.L202
.L283:
	nop
	jmp	.L202
.L284:
	nop
	jmp	.L202
.L285:
	nop
	jmp	.L202
.L286:
	nop
	jmp	.L202
.L287:
	nop
	jmp	.L202
.L288:
	nop
	jmp	.L202
.L289:
	nop
	jmp	.L202
.L290:
	nop
	jmp	.L202
.L291:
	nop
	jmp	.L202
.L292:
	nop
	jmp	.L202
.L293:
	nop
	jmp	.L202
.L294:
	nop
	jmp	.L202
.L295:
	nop
	jmp	.L202
.L296:
	nop
	jmp	.L202
.L297:
	nop
	jmp	.L202
.L298:
	nop
	jmp	.L202
.L299:
	nop
	jmp	.L202
.L300:
	nop
	jmp	.L202
.L301:
	nop
	jmp	.L202
.L302:
	nop
	jmp	.L202
.L303:
	nop
	jmp	.L202
.L304:
	nop
	jmp	.L202
.L305:
	nop
	jmp	.L202
.L306:
	nop
	jmp	.L202
.L307:
	nop
	jmp	.L202
.L308:
	nop
	jmp	.L202
.L309:
	nop
	jmp	.L202
.L310:
	nop
	jmp	.L202
.L311:
	nop
	jmp	.L202
.L312:
	nop
	jmp	.L202
.L313:
	nop
	jmp	.L202
.L314:
	nop
	jmp	.L202
.L315:
	nop
	jmp	.L202
.L316:
	nop
.L202:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_hpke_oddcalls, .-test_hpke_oddcalls
	.section	.rodata
	.align 32
	.type	ikm25519, @object
	.size	ikm25519, 32
ikm25519:
	.base64	"cmhgDUA/zkMVYa71g+4WE1J8/2VcE0PymBLmZwbfMjQ="
	.align 32
	.type	pub25519, @object
	.size	pub25519, 32
pub25519:
	.base64	"N/2jVnvb1ijohmjDyNfpfR0SU7bU6m1EwVD3QfG/RDE="
	.align 32
	.type	ikmp256, @object
	.size	ikmp256, 32
ikmp256:
	.base64	"QnDlT/0I151ZKAIK9Ghtj2t9NdvkcCZfH1qiKBbOhg4="
	.align 32
	.type	pubp256, @object
	.size	pubp256, 65
pubp256:
	.base64	"BKknGcYZXVCFEE9GmouYFNWDj/crYFAeLERm5eZ7MlrJhTbXthoa9LeOW3+VHAkAvoY8QDzmXJv8uTgmVyItGMQ="
	.align 32
	.type	ikmiter, @object
	.size	ikmiter, 32
ikmiter:
	.zero	27
	.ascii	"\003\0018\265\354"
	.align 32
	.type	pubiter, @object
	.size	pubiter, 65
pubiter:
	.base64	"BH0Mh//V0UVUp1Hfo5kmqeMOfDxlYk9LX7OteqTawkrY9b7Q6G64hBzkiS4Pw4e72/4WDViciS3UsUZKw1HFb7Y="
	.align 32
	.type	ikmp521, @object
	.size	ikmp521, 66
ikmp521:
	.base64	"fwarghUQX8RqzusuPcUCi0Q2T5YEJusNjkAmwvi11+ephmiPFZGr9at1PDV6XW8EQEFLTtTt5xMXdyrJjZI59wkE"
	.align 32
	.type	pubp521, @object
	.size	pubp521, 133
pubp521:
	.base64	"BAE4s4XKFrsNX6DAZl+71+aePuKfY5kdPptfp0CquJAKru1G7XOkkFV1hCWgzjZQfFSynMW4Wlzua64M8cIfJzHs4gE9w/t8jSFlS7FhtGOWLKGejGVP8kyU3SiY3hIFHx7QaSI3+wKy+NHcHHPps2a1KetDbpiplu5SKu+GPdVznS8psA=="
	.align 8
.LC196:
	.string	"OSSL_HPKE_get_grease_value(NULL, NULL, NULL, NULL, NULL, 0, testctx, NULL)"
	.align 8
.LC197:
	.string	"OSSL_HPKE_get_grease_value(&def_suite, &suite2, enc, &enclen, ct, ctlen, testctx, NULL)"
	.align 8
.LC198:
	.string	"OSSL_HPKE_get_grease_value(NULL, &suite2, enc, &enclen, ct, ctlen, testctx, NULL)"
	.align 8
.LC199:
	.string	"OSSL_HPKE_get_grease_value(&suite, &suite2, enc, &enclen, ct, ctlen, testctx, NULL)"
	.text
	.type	test_hpke_random_suites, @function
test_hpke_random_suites:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$752, %rsp
	movw	$32, -14(%rbp)
	movw	$1, -12(%rbp)
	movw	$1, -10(%rbp)
	movw	$32, -20(%rbp)
	movw	$1, -18(%rbp)
	movw	$1, -16(%rbp)
	movw	$-255, -26(%rbp)
	movw	$-254, -24(%rbp)
	movw	$-253, -22(%rbp)
	movq	$200, -248(%rbp)
	movq	$500, -8(%rbp)
	movq	testctx(%rip), %rax
	pushq	$0
	pushq	%rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC196(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1658, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L318
	movl	$0, %eax
	jmp	.L328
.L318:
	movq	$10, -248(%rbp)
	movq	testctx(%rip), %rdi
	movq	-8(%rbp), %r9
	leaq	-752(%rbp), %r8
	leaq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-26(%rbp), %rsi
	leaq	-14(%rbp), %rax
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC197(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1663, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L320
	movl	$0, %eax
	jmp	.L328
.L320:
	movq	$200, -248(%rbp)
	movq	testctx(%rip), %rdi
	movq	-8(%rbp), %r9
	leaq	-752(%rbp), %r8
	leaq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-26(%rbp), %rsi
	leaq	-14(%rbp), %rax
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC197(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1670, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L321
	movl	$0, %eax
	jmp	.L328
.L321:
	movq	$200, -248(%rbp)
	movq	testctx(%rip), %rsi
	movq	-8(%rbp), %r8
	leaq	-752(%rbp), %rdi
	leaq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-26(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC198(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1676, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L322
	movl	$0, %eax
	jmp	.L328
.L322:
	movq	$200, -248(%rbp)
	movw	$18, -20(%rbp)
	movq	testctx(%rip), %rdi
	movq	-8(%rbp), %r9
	leaq	-752(%rbp), %r8
	leaq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-26(%rbp), %rsi
	leaq	-20(%rbp), %rax
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC199(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1684, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L323
	movl	$0, %eax
	jmp	.L328
.L323:
	movq	$200, -248(%rbp)
	movq	$2, -8(%rbp)
	movq	testctx(%rip), %rsi
	movq	-8(%rbp), %r8
	leaq	-752(%rbp), %rdi
	leaq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-26(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC198(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1690, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L324
	movl	$0, %eax
	jmp	.L328
.L324:
	movq	$500, -8(%rbp)
	movq	$200, -248(%rbp)
	movw	$32, -20(%rbp)
	movw	$4660, -16(%rbp)
	movq	testctx(%rip), %rdi
	movq	-8(%rbp), %r9
	leaq	-752(%rbp), %r8
	leaq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-26(%rbp), %rsi
	leaq	-20(%rbp), %rax
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC199(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1700, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L325
	movl	$0, %eax
	jmp	.L328
.L325:
	movq	$200, -248(%rbp)
	movzwl	-10(%rbp), %eax
	movw	%ax, -16(%rbp)
	movw	$13393, -18(%rbp)
	movq	testctx(%rip), %rdi
	movq	-8(%rbp), %r9
	leaq	-752(%rbp), %r8
	leaq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-26(%rbp), %rsi
	leaq	-20(%rbp), %rax
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC199(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1707, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L326
	movl	$0, %eax
	jmp	.L328
.L326:
	movq	$200, -248(%rbp)
	movzwl	-12(%rbp), %eax
	movw	%ax, -18(%rbp)
	movw	$17687, -20(%rbp)
	movq	testctx(%rip), %rdi
	movq	-8(%rbp), %r9
	leaq	-752(%rbp), %r8
	leaq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-26(%rbp), %rsi
	leaq	-20(%rbp), %rax
	pushq	$0
	pushq	%rdi
	movq	%rax, %rdi
	call	OSSL_HPKE_get_grease_value@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC199(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1714, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L327
	movl	$0, %eax
	jmp	.L328
.L327:
	movl	$1, %eax
.L328:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_hpke_random_suites, .-test_hpke_random_suites
	.section	.rodata
	.align 8
.LC200:
	.string	"OSSL_HPKE_keygen(hpke_suite, lpub, &lpublen, &sk, ikm, ikmlen, testctx, NULL)"
.LC201:
	.string	"sk"
.LC202:
	.string	"lpub"
	.text
	.type	test_hpke_one_ikm_gen, @function
test_hpke_one_ikm_gen:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movl	%edi, %eax
	movq	%rsi, -560(%rbp)
	movq	%rdx, -568(%rbp)
	movq	%rcx, -576(%rbp)
	movq	%r8, -584(%rbp)
	movw	%ax, -548(%rbp)
	movw	$32, -6(%rbp)
	movw	$1, -4(%rbp)
	movw	$1, -2(%rbp)
	movq	$512, -536(%rbp)
	movq	$0, -544(%rbp)
	movzwl	-548(%rbp), %eax
	movw	%ax, -6(%rbp)
	movq	testctx(%rip), %rsi
	movq	-568(%rbp), %r8
	movq	-560(%rbp), %rdi
	leaq	-544(%rbp), %rcx
	leaq	-536(%rbp), %rdx
	leaq	-528(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movzwl	-6(%rbp), %eax
	movzwl	-4(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-2(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC200(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1744, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L330
	movl	$0, %eax
	jmp	.L334
.L330:
	movq	-544(%rbp), %rax
	leaq	.LC201(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1747, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L332
	movl	$0, %eax
	jmp	.L334
.L332:
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-536(%rbp), %rsi
	movq	-584(%rbp), %r8
	movq	-576(%rbp), %rdi
	leaq	.LC202(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-528(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1750, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L333
	movl	$0, %eax
	jmp	.L334
.L333:
	movl	$1, %eax
.L334:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_hpke_one_ikm_gen, .-test_hpke_one_ikm_gen
	.type	test_hpke_ikms, @function
test_hpke_ikms:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	leaq	pub25519(%rip), %rdx
	leaq	ikm25519(%rip), %rax
	movl	$32, %r8d
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	test_hpke_one_ikm_gen
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L336
	movl	-4(%rbp), %eax
	jmp	.L337
.L336:
	leaq	pubp521(%rip), %rdx
	leaq	ikmp521(%rip), %rax
	movl	$133, %r8d
	movq	%rdx, %rcx
	movl	$66, %edx
	movq	%rax, %rsi
	movl	$18, %edi
	call	test_hpke_one_ikm_gen
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L338
	movl	-4(%rbp), %eax
	jmp	.L337
.L338:
	leaq	pubp256(%rip), %rdx
	leaq	ikmp256(%rip), %rax
	movl	$65, %r8d
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	test_hpke_one_ikm_gen
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L339
	movl	-4(%rbp), %eax
	jmp	.L337
.L339:
	leaq	pubiter(%rip), %rdx
	leaq	ikmiter(%rip), %rax
	movl	$65, %r8d
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	test_hpke_one_ikm_gen
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L340
	movl	-4(%rbp), %eax
	jmp	.L337
.L340:
	movl	-4(%rbp), %eax
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_hpke_ikms, .-test_hpke_ikms
	.section	.rodata
.LC203:
	.string	"compressed"
.LC204:
	.string	"point-format"
	.align 8
.LC205:
	.string	"EVP_PKEY_set_utf8_string_param(authpriv, OSSL_PKEY_PARAM_EC_POINT_CONVERSION_FORMAT, OSSL_PKEY_EC_POINT_CONVERSION_FORMAT_COMPRESSED)"
	.align 8
.LC206:
	.string	"EVP_PKEY_get_octet_string_param(authpriv, OSSL_PKEY_PARAM_PUB_KEY, authpub, sizeof(authpub), &authpublen)"
	.align 8
.LC207:
	.string	"OSSL_HPKE_CTX_set1_authpub(rctx, authpub, authpublen)"
	.text
	.type	test_hpke_compressed, @function
test_hpke_compressed:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2704, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$512, -568(%rbp)
	movq	$0, -576(%rbp)
	movq	$512, -1096(%rbp)
	movl	$2, -28(%rbp)
	movw	$32, -1102(%rbp)
	movw	$1, -1100(%rbp)
	movw	$1, -1098(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movabsq	$8242185913642874225, %rax
	movabsq	$33899481626736495, %rdx
	movq	%rax, -1120(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	$16, -40(%rbp)
	movq	$512, -1640(%rbp)
	movq	$512, -2168(%rbp)
	movq	$512, -2696(%rbp)
	movw	$16, -1102(%rbp)
	movq	testctx(%rip), %rsi
	leaq	-576(%rbp), %rcx
	leaq	-1096(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-1102(%rbp), %eax
	movzwl	-1100(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-1098(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1821, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L356
	movq	-576(%rbp), %rax
	leaq	.LC203(%rip), %rdx
	leaq	.LC204(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_utf8_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC205(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1825, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L357
	movq	-576(%rbp), %rax
	leaq	-1096(%rbp), %rcx
	leaq	-1088(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rcx, %r8
	movl	$512, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC206(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1829, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L358
	movq	testctx(%rip), %rsi
	leaq	-48(%rbp), %rcx
	leaq	-568(%rbp), %rdx
	leaq	-560(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-1102(%rbp), %eax
	movzwl	-1100(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-1098(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1837, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L359
	movq	testctx(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movzwl	-1102(%rbp), %esi
	movzwl	-1100(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-1098(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1840, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L360
	movq	-576(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpriv@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1844, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L361
	movq	-568(%rbp), %rdi
	leaq	-560(%rbp), %rcx
	leaq	-1640(%rbp), %rdx
	leaq	-1632(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1846, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L362
	leaq	-1120(%rbp), %rcx
	leaq	-2168(%rbp), %rdx
	leaq	-2160(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC129(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1848, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L363
	movq	testctx(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movzwl	-1102(%rbp), %esi
	movzwl	-1100(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-1098(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1853, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L364
	movq	-1096(%rbp), %rdx
	leaq	-1088(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set1_authpub@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC207(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1857, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L365
	movq	-48(%rbp), %rcx
	movq	-1640(%rbp), %rdx
	leaq	-1632(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1859, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L366
	movq	-2168(%rbp), %rcx
	leaq	-2160(%rbp), %rdi
	leaq	-2696(%rbp), %rdx
	leaq	-2688(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1861, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L367
	movl	$1, -4(%rbp)
	jmp	.L343
.L356:
	nop
	jmp	.L343
.L357:
	nop
	jmp	.L343
.L358:
	nop
	jmp	.L343
.L359:
	nop
	jmp	.L343
.L360:
	nop
	jmp	.L343
.L361:
	nop
	jmp	.L343
.L362:
	nop
	jmp	.L343
.L363:
	nop
	jmp	.L343
.L364:
	nop
	jmp	.L343
.L365:
	nop
	jmp	.L343
.L366:
	nop
	jmp	.L343
.L367:
	nop
.L343:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_hpke_compressed, .-test_hpke_compressed
	.section	.rodata
	.align 8
.LC208:
	.string	"OSSL_HPKE_CTX_set_seq(ctx, seq)"
	.align 8
.LC209:
	.string	"OSSL_HPKE_CTX_set_seq(ctx, seq + 1)"
	.align 8
.LC210:
	.string	"OSSL_HPKE_CTX_set_seq(rctx, seq)"
	.text
	.type	test_hpke_noncereuse, @function
test_hpke_noncereuse:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2192, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -56(%rbp)
	movq	$512, -584(%rbp)
	movl	$0, -28(%rbp)
	movw	$32, -590(%rbp)
	movw	$1, -588(%rbp)
	movw	$1, -586(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movabsq	$8242185913642874225, %rax
	movabsq	$33899481626736495, %rdx
	movq	%rax, -608(%rbp)
	movq	%rdx, -600(%rbp)
	movq	$16, -40(%rbp)
	movq	$512, -1128(%rbp)
	movq	$512, -1656(%rbp)
	movq	$512, -2184(%rbp)
	movq	$195894762, -48(%rbp)
	movq	testctx(%rip), %rsi
	leaq	-56(%rbp), %rcx
	leaq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movzwl	-590(%rbp), %eax
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rax, %rdi
	movzwl	-586(%rbp), %eax
	salq	$32, %rax
	orq	%rdi, %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_keygen@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1898, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L384
	movq	testctx(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movzwl	-590(%rbp), %esi
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-586(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1901, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L385
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC208(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1906, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L386
	movq	-584(%rbp), %rdi
	leaq	-576(%rbp), %rcx
	leaq	-1128(%rbp), %rdx
	leaq	-1120(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_HPKE_encap@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1908, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L387
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC209(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1911, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L388
	leaq	-608(%rbp), %rcx
	leaq	-1656(%rbp), %rdx
	leaq	-1648(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_seal@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC129(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1913, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L389
	movq	testctx(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movzwl	-590(%rbp), %esi
	movzwl	-588(%rbp), %edi
	salq	$16, %rdi
	orq	%rsi, %rdi
	movzwl	-586(%rbp), %esi
	salq	$32, %rsi
	orq	%rdi, %rsi
	movl	%eax, %edi
	call	OSSL_HPKE_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$1918, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L390
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC210(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1923, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L391
	movq	-56(%rbp), %rcx
	movq	-1128(%rbp), %rdx
	leaq	-1120(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	OSSL_HPKE_decap@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC134(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1925, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L392
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC210(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1928, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L393
	movq	-1656(%rbp), %rcx
	leaq	-1648(%rbp), %rdi
	leaq	-2184(%rbp), %rdx
	leaq	-2176(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1931, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L394
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_set_seq@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC195(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1935, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L395
	movq	-1656(%rbp), %rcx
	leaq	-1648(%rbp), %rdi
	leaq	-2184(%rbp), %rdx
	leaq	-2176(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_HPKE_open@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC135(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$1937, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L396
	movl	$1, -4(%rbp)
	jmp	.L370
.L384:
	nop
	jmp	.L370
.L385:
	nop
	jmp	.L370
.L386:
	nop
	jmp	.L370
.L387:
	nop
	jmp	.L370
.L388:
	nop
	jmp	.L370
.L389:
	nop
	jmp	.L370
.L390:
	nop
	jmp	.L370
.L391:
	nop
	jmp	.L370
.L392:
	nop
	jmp	.L370
.L393:
	nop
	jmp	.L370
.L394:
	nop
	jmp	.L370
.L395:
	nop
	jmp	.L370
.L396:
	nop
.L370:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_HPKE_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_hpke_noncereuse, .-test_hpke_noncereuse
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC211:
	.string	"default"
.LC212:
	.string	"export_only_test"
	.align 8
.LC213:
	.string	"x25519kdfsha256_hkdfsha256_aes128gcm_base_test"
	.align 8
.LC214:
	.string	"x25519kdfsha256_hkdfsha256_aes128gcm_psk_test"
	.align 8
.LC215:
	.string	"P256kdfsha256_hkdfsha256_aes128gcm_base_test"
.LC216:
	.string	"test_hpke_export"
.LC217:
	.string	"test_hpke_modes_suites"
.LC218:
	.string	"test_hpke_suite_strs"
.LC219:
	.string	"test_hpke_grease"
.LC220:
	.string	"test_hpke_ikms"
.LC221:
	.string	"test_hpke_random_suites"
.LC222:
	.string	"test_hpke_oddcalls"
.LC223:
	.string	"test_hpke_compressed"
.LC224:
	.string	"test_hpke_noncereuse"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L400
.L405:
	cmpl	$1, -4(%rbp)
	je	.L401
	cmpl	$0, -4(%rbp)
	jle	.L402
	movl	-4(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L402
	jmp	.L407
.L401:
	movl	$1, verbose(%rip)
	jmp	.L400
.L407:
	jmp	.L400
.L402:
	movl	$0, %eax
	jmp	.L404
.L400:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L405
	leaq	.LC211(%rip), %rcx
	leaq	deflprov(%rip), %rdx
	leaq	nullprov(%rip), %rsi
	leaq	testctx(%rip), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L406
	movl	$0, %eax
	jmp	.L404
.L406:
	leaq	export_only_test(%rip), %rdx
	leaq	.LC212(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	x25519kdfsha256_hkdfsha256_aes128gcm_base_test(%rip), %rdx
	leaq	.LC213(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	x25519kdfsha256_hkdfsha256_aes128gcm_psk_test(%rip), %rdx
	leaq	.LC214(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	P256kdfsha256_hkdfsha256_aes128gcm_base_test(%rip), %rdx
	leaq	.LC215(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hpke_export(%rip), %rdx
	leaq	.LC216(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hpke_modes_suites(%rip), %rdx
	leaq	.LC217(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hpke_suite_strs(%rip), %rdx
	leaq	.LC218(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hpke_grease(%rip), %rdx
	leaq	.LC219(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hpke_ikms(%rip), %rdx
	leaq	.LC220(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hpke_random_suites(%rip), %rdx
	leaq	.LC221(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hpke_oddcalls(%rip), %rdx
	leaq	.LC222(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hpke_compressed(%rip), %rdx
	leaq	.LC223(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_hpke_noncereuse(%rip), %rdx
	leaq	.LC224(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L404:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	deflprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	nullprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	testctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC225:
	.string	"Usage: %s [options]\n"
.LC226:
	.string	"Valid options are:\n"
.LC227:
	.string	"help"
.LC228:
	.string	"Display this summary"
.LC229:
	.string	"list"
	.align 8
.LC230:
	.string	"Display the list of tests available"
.LC231:
	.string	"test"
	.align 8
.LC232:
	.string	"Run a single test by id or name"
.LC233:
	.string	"iter"
	.align 8
.LC234:
	.string	"Run a single iteration of a test"
.LC235:
	.string	"indent"
	.align 8
.LC236:
	.string	"Number of tabs added to output"
.LC237:
	.string	"seed"
	.align 8
.LC238:
	.string	"Seed value to randomize tests with"
.LC239:
	.string	"v"
.LC240:
	.string	"Enable verbose mode"
.LC241:
	.string	"Run HPKE tests\n"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 264
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC225
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC226
	.quad	.LC227
	.long	500
	.long	45
	.quad	.LC228
	.quad	.LC229
	.long	501
	.long	45
	.quad	.LC230
	.quad	.LC231
	.long	502
	.long	115
	.quad	.LC232
	.quad	.LC233
	.long	503
	.long	110
	.quad	.LC234
	.quad	.LC235
	.long	504
	.long	112
	.quad	.LC236
	.quad	.LC237
	.long	505
	.long	110
	.quad	.LC238
	.quad	.LC239
	.long	1
	.long	45
	.quad	.LC240
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC241
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
