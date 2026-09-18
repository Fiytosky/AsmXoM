	.file	"dhtest.c"
	.text
	.section	.rodata
.LC0:
	.string	"dh = DH_new()"
.LC1:
	.string	"../test/dhtest.c"
.LC2:
	.string	"p = BN_new()"
.LC3:
	.string	"q = BN_new()"
.LC4:
	.string	"g = BN_new()"
.LC5:
	.string	"priv_key = BN_new()"
.LC6:
	.string	"BN_set_word(p, 4079L)"
.LC7:
	.string	"BN_set_word(q, 2039L)"
.LC8:
	.string	"BN_set_word(g, 3L)"
.LC9:
	.string	"DH_set0_pqg(dh, p, q, g)"
.LC10:
	.string	"DH_check(dh, &i)"
.LC11:
	.string	"i & DH_CHECK_P_NOT_PRIME"
.LC12:
	.string	"i & DH_CHECK_P_NOT_SAFE_PRIME"
	.align 8
.LC13:
	.string	"i & DH_UNABLE_TO_CHECK_GENERATOR"
.LC14:
	.string	"i & DH_NOT_SUITABLE_GENERATOR"
.LC15:
	.string	"i & DH_CHECK_Q_NOT_PRIME"
.LC16:
	.string	"i & DH_CHECK_INVALID_Q_VALUE"
.LC17:
	.string	"i & DH_CHECK_INVALID_J_VALUE"
.LC18:
	.string	"i & DH_MODULUS_TOO_SMALL"
.LC19:
	.string	"i & DH_MODULUS_TOO_LARGE"
.LC20:
	.string	"i"
.LC21:
	.string	"p"
.LC22:
	.string	"p2"
.LC23:
	.string	"q"
.LC24:
	.string	"q2"
.LC25:
	.string	"g"
.LC26:
	.string	"g2"
.LC27:
	.string	"DH_get0_p(dh)"
.LC28:
	.string	"DH_get0_q(dh)"
.LC29:
	.string	"DH_get0_g(dh)"
.LC30:
	.string	"BN_set_word(priv_key, 1234L)"
	.align 8
.LC31:
	.string	"DH_set0_key(dh, NULL, priv_key)"
.LC32:
	.string	"NULL"
.LC33:
	.string	"pub_key2"
.LC34:
	.string	"priv_key"
.LC35:
	.string	"priv_key2"
.LC36:
	.string	"DH_get0_pub_key(dh)"
.LC37:
	.string	"DH_get0_priv_key(dh)"
.LC38:
	.string	"DH_generate_key(dh)"
.LC39:
	.string	"BN_copy(q, p)"
.LC40:
	.string	"BN_add(q, q, BN_value_one())"
.LC41:
	.string	"BN_set_word(p, 1)"
	.align 8
.LC42:
	.string	"BN_lshift(p, p, OPENSSL_DH_CHECK_MAX_MODULUS_BITS)"
.LC43:
	.string	"_cb = BN_GENCB_new()"
.LC44:
	.string	"a = DH_new()"
	.align 8
.LC45:
	.string	"DH_generate_parameters_ex(a, 512, DH_GENERATOR_5, _cb)"
.LC46:
	.string	"DH_check(a, &i)"
.LC47:
	.string	"b = DH_new()"
.LC48:
	.string	"bp = BN_dup(ap)"
.LC49:
	.string	"bg = BN_dup(ag)"
.LC50:
	.string	"DH_set0_pqg(b, bp, NULL, bg)"
.LC51:
	.string	"c = DHparams_dup(b)"
.LC52:
	.string	"cpriv_key = BN_dup(bpriv_key)"
	.align 8
.LC53:
	.string	"DH_set0_key(c, NULL, cpriv_key)"
.LC54:
	.string	"abuf = OPENSSL_malloc(alen)"
.LC55:
	.string	"0"
	.align 8
.LC56:
	.string	"(aout = DH_compute_key(abuf, bpub_key, a))"
.LC57:
	.string	"bbuf = OPENSSL_malloc(blen)"
	.align 8
.LC58:
	.string	"(bout = DH_compute_key(bbuf, apub_key, b))"
.LC59:
	.string	"cbuf = OPENSSL_malloc(clen)"
	.align 8
.LC60:
	.string	"(cout = DH_compute_key(cbuf, apub_key, c))"
.LC61:
	.string	"aout >= 20"
.LC62:
	.string	"bbuf"
.LC63:
	.string	"abuf"
.LC64:
	.string	"cbuf"
	.text
	.type	dh_test, @function
dh_test:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	$0, -144(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movl	$0, -132(%rbp)
	call	DH_new@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$58, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$60, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$61, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movq	-24(%rbp), %rax
	movl	$4079, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	-32(%rbp), %rax
	movl	$2039, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	-40(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DH_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$72, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-252(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movl	-252(%rbp), %eax
	xorb	$-128, %al
	movl	%eax, -252(%rbp)
	movl	-252(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	movl	-252(%rbp), %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$80, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	movl	-252(%rbp), %eax
	andl	$4, %eax
	shrl	$2, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$81, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	movl	-252(%rbp), %eax
	andl	$8, %eax
	shrl	$3, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	movl	-252(%rbp), %eax
	andl	$16, %eax
	shrl	$4, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$83, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	movl	-252(%rbp), %eax
	andl	$32, %eax
	shrl	$5, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	movl	-252(%rbp), %eax
	andl	$64, %eax
	shrl	$6, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$85, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	movl	-252(%rbp), %eax
	andl	$128, %eax
	shrl	$7, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	movl	-252(%rbp), %eax
	andl	$256, %eax
	shrl	$8, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	movl	-252(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L57
	leaq	-192(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pqg@PLT
	movq	-176(%rbp), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	-184(%rbp), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	-192(%rbp), %rsi
	movq	-40(%rbp), %rdi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	-176(%rbp), %rbx
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_p@PLT
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$99, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L59
	movq	-184(%rbp), %rbx
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_q@PLT
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L59
	movq	-192(%rbp), %rbx
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_g@PLT
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L59
	movq	-48(%rbp), %rax
	movl	$1234, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-48(%rbp), %rdx
	movq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$106, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	leaq	-208(%rbp), %rdx
	leaq	-200(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movq	-200(%rbp), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-208(%rbp), %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-200(%rbp), %rbx
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pub_key@PLT
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L62
	movq	-208(%rbp), %rbx
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_priv_key@PLT
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L62
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DH_generate_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$121, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L63
	call	ERR_clear_error@PLT
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$127, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L64
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$127, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
	leaq	-252(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$130, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
	movl	-252(%rbp), %eax
	andl	$32, %eax
	shrl	$5, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$132, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L66
	movl	-252(%rbp), %eax
	andl	$16, %eax
	shrl	$4, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$137, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$32768, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$138, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
	leaq	-252(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$144, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L68
	call	ERR_clear_error@PLT
	call	BN_GENCB_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$155, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	leaq	cb(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GENCB_set@PLT
	call	DH_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$158, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L70
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	DH_generate_parameters_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$159, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	leaq	-252(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L71
	movl	-252(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	movl	-252(%rbp), %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$167, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	movl	-252(%rbp), %eax
	andl	$4, %eax
	shrl	$2, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$168, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	movl	-252(%rbp), %eax
	andl	$8, %eax
	shrl	$3, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	movl	-252(%rbp), %eax
	andl	$16, %eax
	shrl	$4, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$170, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	movl	-252(%rbp), %eax
	andl	$32, %eax
	shrl	$5, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$171, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	movl	-252(%rbp), %eax
	andl	$64, %eax
	shrl	$6, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	movl	-252(%rbp), %eax
	andl	$128, %eax
	shrl	$7, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$173, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	movl	-252(%rbp), %eax
	andl	$256, %eax
	shrl	$8, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$174, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	movl	-252(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$175, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L72
	leaq	-224(%rbp), %rdx
	leaq	-216(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	DH_get0_pqg@PLT
	call	DH_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$181, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$184, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$185, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	DH_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L74
	movq	$0, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	DH_generate_key@PLT
	testl	%eax, %eax
	je	.L75
	leaq	-232(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	DH_generate_key@PLT
	testl	%eax, %eax
	je	.L76
	leaq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	DHparams_dup@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$203, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$204, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	movq	-104(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$205, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	$0, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$210, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$210, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L78
	movq	-240(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key@PLT
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$211, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L78
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$215, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$215, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L79
	movq	-232(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key@PLT
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$216, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L79
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$220, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$220, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L80
	movq	-232(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key@PLT
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$221, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L80
	cmpl	$19, -152(%rbp)
	setg	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$224, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movl	-160(%rbp), %eax
	movslq	%eax, %rsi
	movl	-152(%rbp), %eax
	movslq	%eax, %r8
	movq	-112(%rbp), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-120(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$225, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L81
	movl	-168(%rbp), %eax
	movslq	%eax, %rsi
	movl	-152(%rbp), %eax
	movslq	%eax, %r8
	movq	-112(%rbp), %rdi
	leaq	.LC64(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-128(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$226, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L81
	movl	$1, -132(%rbp)
	jmp	.L52
.L54:
	nop
	jmp	.L4
.L55:
	nop
.L4:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L8
.L56:
	nop
	jmp	.L8
.L57:
	nop
	jmp	.L8
.L58:
	nop
	jmp	.L8
.L59:
	nop
	jmp	.L8
.L60:
	nop
.L8:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L52
.L19:
.L61:
	nop
	jmp	.L52
.L62:
	nop
	jmp	.L52
.L63:
	nop
	jmp	.L52
.L64:
	nop
	jmp	.L52
.L65:
	nop
	jmp	.L52
.L66:
	nop
	jmp	.L52
.L67:
	nop
	jmp	.L52
.L68:
	nop
	jmp	.L52
.L69:
	nop
	jmp	.L52
.L70:
	nop
	jmp	.L52
.L71:
	nop
	jmp	.L52
.L72:
	nop
	jmp	.L52
.L73:
	nop
	jmp	.L52
.L74:
	nop
	jmp	.L52
.L75:
	nop
	jmp	.L52
.L76:
	nop
	jmp	.L52
.L77:
	nop
	jmp	.L52
.L78:
	nop
	jmp	.L52
.L79:
	nop
	jmp	.L52
.L80:
	nop
	jmp	.L52
.L81:
	nop
.L52:
	leaq	.LC1(%rip), %rcx
	movq	-112(%rbp), %rax
	movl	$242, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$243, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$244, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	-132(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	dh_test, .-dh_test
	.type	cb, @function
cb:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	cb, .-cb
	.section	.rodata
	.align 8
.LC65:
	.string	"p = BN_dup(&ossl_bignum_ffdhe2048_p)"
	.align 8
.LC66:
	.string	"q = BN_dup(&ossl_bignum_ffdhe2048_q)"
	.align 8
.LC67:
	.string	"g = BN_dup(&ossl_bignum_const_2)"
.LC68:
	.string	"sz = DH_size(dh)"
.LC69:
	.string	"buf = OPENSSL_malloc(sz)"
.LC70:
	.string	"pub = BN_new()"
.LC71:
	.string	"priv = BN_new()"
.LC72:
	.string	"BN_set_word(priv, 1)"
.LC73:
	.string	"DH_set0_key(dh, NULL, priv)"
.LC74:
	.string	"BN_set_word(pub, 1)"
	.align 8
.LC75:
	.string	"ossl_dh_compute_key(buf, pub, dh)"
.LC76:
	.string	"BN_copy(pub, DH_get0_p(dh))"
.LC77:
	.string	"BN_sub_word(pub, 1)"
.LC78:
	.string	"sz"
	.text
	.type	dh_computekey_range_test, @function
dh_computekey_range_test:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	ossl_bignum_ffdhe2048_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$269, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movq	ossl_bignum_ffdhe2048_q@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$270, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movq	ossl_bignum_const_2@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$271, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	call	DH_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$272, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$273, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L101
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$277, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L102
	movl	-68(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$278, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC69(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$278, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L102
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$279, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L102
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$280, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L102
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$284, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	movq	$0, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$287, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_compute_key@PLT
	movl	%eax, %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$293, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L105
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_p@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L106
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_compute_key@PLT
	movl	%eax, %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$297, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L106
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$300, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L107
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_compute_key@PLT
	movl	%eax, %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$301, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L107
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$304, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_compute_key@PLT
	movl	%eax, %esi
	movl	-68(%rbp), %edi
	leaq	.LC78(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$305, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L108
	movl	$1, -4(%rbp)
	jmp	.L87
.L101:
	nop
	jmp	.L87
.L102:
	nop
	jmp	.L87
.L103:
	nop
	jmp	.L87
.L104:
	nop
	jmp	.L87
.L105:
	nop
	jmp	.L87
.L106:
	nop
	jmp	.L87
.L107:
	nop
	jmp	.L87
.L108:
	nop
.L87:
	leaq	.LC1(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$310, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	dh_computekey_range_test, .-dh_computekey_range_test
	.section	.rodata
	.align 16
	.type	dhtest_1024_160_xA, @object
	.size	dhtest_1024_160_xA, 20
dhtest_1024_160_xA:
	.base64	"uaOzro/vwaKTBJZQcIb4RV1IlD4="
	.align 32
	.type	dhtest_1024_160_yA, @object
	.size	dhtest_1024_160_yA, 128
dhtest_1024_160_yA:
	.base64	"KoU7PZIZdQG5AVst6z7YT14CHcw+UvEJ0yc9K3UhKBy6vg52/1cn+orM4mlWupofyibyAijYaT/rEIQdhKc2AFTs5af1t6Ya09+zxg0uQxBthyfaN9+czpW0eHVdBrzqj51Fll91pfPR3zcBFl/J5QxCec6wf5iVQK6W1diO13Y="
	.align 16
	.type	dhtest_1024_160_xB, @object
	.size	dhtest_1024_160_xB, 20
dhtest_1024_160_xB:
	.base64	"k5LJ+etqemqQIvfYPnIjxoNbvdo="
	.align 32
	.type	dhtest_1024_160_yB, @object
	.size	dhtest_1024_160_yB, 128
dhtest_1024_160_yB:
	.base64	"cXpssFM3H/SjuTKUHB5WY/hhodatNK5mV237mPbGy/nd1aVseDP2vP3/CVWCrYaORA6NCf12njzszcPTseTPoFd3bKr5c5tqn+6OdBH41trAnWpO20bMK11SAwkOrmEmMR5T/SwUtXTmoxCaPaG+Qb3OqhhvXOBnFqK2oHs8M/4="
	.align 32
	.type	dhtest_1024_160_Z, @object
	.size	dhtest_1024_160_Z, 128
dhtest_1024_160_Z:
	.base64	"XIBPRU0w2cTfhScfk1KMkd9rSKtfgLO1nKrBso+Ky6nNPjnzy2FFJdlSHS5kTFO4B7gQ80AGLyV9fW+/6NXo8HLptumv2pQT6vsuiwaZsftaDKzt3q6tfpz7s2ritCCDW9g6GfsLXpa/j6TQnjRVJRZ+zZFVQW9G9AjtMbY8bm0="
	.align 16
	.type	dhtest_2048_224_xA, @object
	.size	dhtest_2048_224_xA, 28
dhtest_2048_224_xA:
	.base64	"IuYmAdv/0GcIpoD3R/Nh922PT3IaBUjkgylLDA=="
	.align 32
	.type	dhtest_2048_224_yA, @object
	.size	dhtest_2048_224_yA, 256
dhtest_2048_224_yA:
	.base64	"GzpjRRvYhuaZ5ntJTiiL1/jg03C63aeg79L959j2YUXMnygEGZdeuAiHfIpMDI4L1I1KVAHrHod2v+7hNMA4MawnPNnWNasM4AakKoh+P1L7h2a2UPOAeLyO6FgM7+JDloz8T43D2whFVBcdQb8uhht7tNad0OAeo4fLqlymcq/L6L251i1M4V8X3Tb5HtHu3WXKSgZFXLlM1ApS7DYOhLPJJuIsQ4CjvzCdVoSXaLf1LP32Vf0FOn73BpeeflgGsX365TrSpbxWjrtSmnph1o0lb4/JfAdKhh2Cfi68jGE0VTEVtw5xA5IKoW2F5SvLq414amgXj6j/fC9ccWSN"
	.ascii	"o"
	.align 16
	.type	dhtest_2048_224_xB, @object
	.size	dhtest_2048_224_xB, 28
dhtest_2048_224_xB:
	.base64	"T/O8lsf8am1x07NjgAp83+9vxBtEF+oVNTt1kA=="
	.align 32
	.type	dhtest_2048_224_yB, @object
	.size	dhtest_2048_224_yB, 256
dhtest_2048_224_yB:
	.base64	"Tc7pkql2KhPy+DhErT137g4xyXGLPbbCA105YRgsPguiR+xBgtdgzUjZlZmXBiKhiBu6Lcgik5x4w5EsZmH6VDiyB2YiK3XiTC460McocjYSlSXuFbXdeZiqBMSpaWys1xcgg6l6gWZOrSxHnkROTAZUzBnijXcDzujazWEm9dZl7FLGclXbkgFLA362IaKsjjZd4HH/wUAKzwd6EpE92N6JRzQ3q3ujRnQ8GyFd2cEhZKfkBTEY0Zm+yO9vxWEXDITIfRDummdKH6j/4Tvfuh1E3kiUbWjcDN13djWnq1v7Hku3uFb5aCdzTBhBOOkV2cMALrzlMSBUan4gAhQr"
	.ascii	"l"
	.align 32
	.type	dhtest_2048_224_Z, @object
	.size	dhtest_2048_224_Z, 256
dhtest_2048_224_Z:
	.base64	"NNm93BtCF2wxP+oDTCEDTQdKYxO7Ts2zcD//QkVnpGvfdVMO3gqdpSKd59dnMihsvA+R2kw8hS/AmcZ5Ux2Ux4qwPZ3ssKTkyosrtFkcQCHPjOOiClQdM5lAF9AgCuLJUW4v9RRXeSaehisPtHSi1W3DHtVpp3ALTEqxayKkVRNTHvUj1xISB3taFpve/6162WCChMd5W21aUYO4cGbeF9jWccnr2OyJVE1F7AYVk9RCxiq5zjscuZQ6HSOl6jvPIaAUceZ+AD5/imnHKL5JCy/IjP65LbaiFeXQPBfEZMmsGkbiA+E/lSmV+wPGnTzEf8tRC2mY/9Oqbec8+fY4"
	.ascii	"i"
	.align 32
	.type	dhtest_2048_256_xA, @object
	.size	dhtest_2048_256_xA, 32
dhtest_2048_256_xA:
	.base64	"CIE4LNuHZgxtwT5hSTjVuciy8khYHMXjGzVFQ5f85Q4="
	.align 32
	.type	dhtest_2048_256_yA, @object
	.size	dhtest_2048_256_yA, 256
dhtest_2048_256_yA:
	.base64	"LpOAyDI6+XVFvElB3rDsN0LGL+Ds6CSmq9vmbFm+4CQpEb+5ZyNc66Na4T5Ox1K+YwuS3EveKEepxiy4FSdFQh+362CmPA/pFZ/M5ybOfNhSPXRQZn74QOSRkSHrXwHIybDT1kipO/t1aJ6CRKwTSvVEcRznmgLcw0ImaEeA3dy0mFlBBsN/W8eYVkh69asCKi5eQvCYl8GoWhHqAhKvBNm0zryTfDwaPhWooDQuM3YVyE5/47i5uH+x5zoVrxKjDXRuBt/DTykNeXzlGqE6p4W/Zliv9eSwkwA8vq9mWzwuETo6TpBSaTQdwHEUJmhfTvN+hoqBJv8/Inm1fKZ+"
	.ascii	")"
	.align 32
	.type	dhtest_2048_256_xB, @object
	.size	dhtest_2048_256_xB, 32
dhtest_2048_256_xB:
	.base64	"fWKn4+823mF7E9GvuCx4DYOiO9TuZwVkUSHzcfVGpT0="
	.align 32
	.type	dhtest_2048_256_yB, @object
	.size	dhtest_2048_256_yB, 256
dhtest_2048_256_yB:
	.base64	"V18DUb0rG4F0SL34emw2LB4onTkDowuYMsV0H6JQNj56y8f3fz2svB8TGt2OAzZ+/4+7s+HFeEQkgJslr+TSJioab9L6tkEFyjCmdOB/eAmFIIhjL8BJIzeRrU7dCDqXi4g+5hi8Xg3QR0FfLZXmg88UgmtfvhDTzkHGwSDHirIACMaYv38LyrnX9Ae+0PQ6+ylw9X+NEgQ5Y+Zt3TINWZrZk2yPRBN8CLGA7F6YXOvhhvPVSWd+gGBzMe4XrzOApyWweCMX191D9Z16+VaKm7Y6hNNl+SJE7RIJiCGTAvQpJMfKkLidJPcbCraXgj196xr/Ww6OSkXUn39TdX4Z"
	.ascii	"\023"
	.align 32
	.type	dhtest_2048_256_Z, @object
	.size	dhtest_2048_256_Z, 256
dhtest_2048_256_Z:
	.base64	"hscL+NC7gbsBB4oXIZy30nID2yoZyHfx0fGf19d+8iVGpo8AWtUtyEVTt4/GAzC+Uep8BnLKwVFeSzXAR7mlUbiPOdwm2hSgnvdHdNR8di3Rd/ntW8LxHlLIeb2VCYUEzZ7s2Kj5s++9HwCKxYUwl9nRg38rGPd8174Br4Cnx7XqPKVMwC0MEW/uP5W7hzmThYddfoZ0fmducok4rL/3CY4Fvk3PskBSuDrv+xR4PwKa295/U/rpIIQiQJDgB87pTUvyus6f/UtX0q98ck0Mqhm/BQH28XtKoQ9CXj6nYIC0udazzv6hFbLOuHibuKOw6of+vmO2yPhG7G2wwmxd"
	.ascii	"|"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	rfctd, @object
	.size	rfctd, 264
rfctd:
	.quad	DH_get_1024_160
	.quad	dhtest_1024_160_xA
	.quad	20
	.quad	dhtest_1024_160_yA
	.quad	128
	.quad	dhtest_1024_160_xB
	.quad	20
	.quad	dhtest_1024_160_yB
	.quad	128
	.quad	dhtest_1024_160_Z
	.quad	128
	.quad	DH_get_2048_224
	.quad	dhtest_2048_224_xA
	.quad	28
	.quad	dhtest_2048_224_yA
	.quad	256
	.quad	dhtest_2048_224_xB
	.quad	28
	.quad	dhtest_2048_224_yB
	.quad	256
	.quad	dhtest_2048_224_Z
	.quad	256
	.quad	DH_get_2048_256
	.quad	dhtest_2048_256_xA
	.quad	32
	.quad	dhtest_2048_256_yA
	.quad	256
	.quad	dhtest_2048_256_xB
	.quad	32
	.quad	dhtest_2048_256_yB
	.quad	256
	.quad	dhtest_2048_256_Z
	.quad	256
	.section	.rodata
.LC79:
	.string	"dhA = td->get_param()"
.LC80:
	.string	"dhB = td->get_param()"
	.align 8
.LC81:
	.string	"priv_key = BN_bin2bn(td->xA, td->xA_len, NULL)"
	.align 8
.LC82:
	.string	"pub_key = BN_bin2bn(td->yA, td->yA_len, NULL)"
	.align 8
.LC83:
	.string	"DH_set0_key(dhA, pub_key, priv_key)"
	.align 8
.LC84:
	.string	"priv_key = BN_bin2bn(td->xB, td->xB_len, NULL)"
	.align 8
.LC85:
	.string	"pub_key = BN_bin2bn(td->yB, td->yB_len, NULL)"
	.align 8
.LC86:
	.string	"DH_set0_key(dhB, pub_key, priv_key)"
.LC87:
	.string	"szA = DH_size(dhA)"
.LC88:
	.string	"szB = DH_size(dhB)"
.LC89:
	.string	"(size_t)szA"
.LC90:
	.string	"td->Z_len"
.LC91:
	.string	"(size_t)szB"
	.align 8
.LC92:
	.string	"Z1 = OPENSSL_malloc((size_t)szA)"
	.align 8
.LC93:
	.string	"Z2 = OPENSSL_malloc((size_t)szB)"
.LC94:
	.string	"-1"
	.align 8
.LC95:
	.string	"DH_compute_key(Z1, pub_key_tmp, dhA)"
	.align 8
.LC96:
	.string	"DH_compute_key(Z2, pub_key_tmp, dhB)"
.LC97:
	.string	"td->Z"
.LC98:
	.string	"Z1"
.LC99:
	.string	"Z2"
	.align 8
.LC100:
	.string	"Initialisation error RFC5114 set %d\n"
.LC101:
	.string	"Test failed RFC5114 set %d\n"
	.text
	.type	rfc5114_test, @function
rfc5114_test:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L110
.L127:
	movl	-4(%rbp), %eax
	cltq
	imulq	$88, %rax, %rax
	leaq	rfctd(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	call	*%rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$592, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	call	*%rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$593, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$596, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L131
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$597, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L131
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$598, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L131
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$601, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L132
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$602, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L132
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$603, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L132
	movq	$0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$607, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L133
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$608, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L133
	movl	-68(%rbp), %eax
	movslq	%eax, %rdi
	movq	-64(%rbp), %rax
	movq	80(%rax), %rsi
	leaq	.LC89(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$609, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L133
	movl	-72(%rbp), %eax
	movslq	%eax, %rdi
	movq	-64(%rbp), %rax
	movq	80(%rax), %rsi
	leaq	.LC91(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$610, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L133
	movl	-68(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$613, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$613, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L134
	movl	-72(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$614, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$614, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key@PLT
	movl	%eax, %esi
	leaq	.LC94(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$621, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L135
	leaq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key@PLT
	movl	%eax, %esi
	leaq	.LC94(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$625, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L136
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	80(%rax), %r9
	movq	-24(%rbp), %r8
	leaq	.LC97(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$628, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L137
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	80(%rax), %r9
	movq	-32(%rbp), %r8
	leaq	.LC97(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$629, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L137
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	$0, -16(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$636, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$638, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -32(%rbp)
	addl	$1, -4(%rbp)
.L110:
	cmpl	$2, -4(%rbp)
	jle	.L127
	movl	$1, %eax
	jmp	.L129
.L130:
	nop
	jmp	.L113
.L131:
	nop
	jmp	.L113
.L132:
	nop
	jmp	.L113
.L134:
	nop
	jmp	.L113
.L135:
	nop
	jmp	.L113
.L136:
	nop
.L113:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$648, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$649, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	leaq	.LC100(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$650, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L129
.L133:
	nop
	jmp	.L120
.L137:
	nop
.L120:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$656, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$657, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	leaq	.LC101(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$658, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	rfc5114_test, .-rfc5114_test
	.section	.rodata
	.align 8
.LC102:
	.string	"a = DH_new_by_nid(NID_ffdhe2048)"
	.align 8
.LC103:
	.string	"b = DH_new_by_nid(NID_ffdhe2048)"
.LC104:
	.string	"alen"
.LC105:
	.string	"blen"
	.text
	.type	rfc7919_test, @function
rfc7919_test:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$1126, %edi
	call	DH_new_by_nid@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC102(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$671, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L154
	leaq	-76(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DH_check@PLT
	testl	%eax, %eax
	je	.L155
	movl	-76(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$676, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movl	-76(%rbp), %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$677, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movl	-76(%rbp), %eax
	andl	$4, %eax
	shrl	$2, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$678, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movl	-76(%rbp), %eax
	andl	$8, %eax
	shrl	$3, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$679, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$680, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L156
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_generate_key@PLT
	testl	%eax, %eax
	je	.L157
	leaq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movl	$1126, %edi
	call	DH_new_by_nid@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$688, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L158
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_generate_key@PLT
	testl	%eax, %eax
	je	.L159
	leaq	-72(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$696, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L160
	movl	-44(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$696, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$696, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L160
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$697, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L160
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC105(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$701, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L161
	movl	-52(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$701, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$701, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L161
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key@PLT
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$702, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L161
	cmpl	$19, -48(%rbp)
	setg	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$705, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L162
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movl	-48(%rbp), %eax
	movslq	%eax, %r8
	movq	-16(%rbp), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$706, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L162
	movl	$1, -28(%rbp)
	jmp	.L140
.L154:
	nop
	jmp	.L140
.L155:
	nop
	jmp	.L140
.L156:
	nop
	jmp	.L140
.L157:
	nop
	jmp	.L140
.L158:
	nop
	jmp	.L140
.L159:
	nop
	jmp	.L140
.L160:
	nop
	jmp	.L140
.L161:
	nop
	jmp	.L140
.L162:
	nop
.L140:
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$712, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$713, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	rfc7919_test, .-rfc7919_test
	.data
	.align 32
	.type	prime_groups, @object
	.size	prime_groups, 36
prime_groups:
	.long	1126
	.long	1127
	.long	1128
	.long	1129
	.long	1130
	.long	1213
	.long	1214
	.long	1215
	.long	1216
	.section	.rodata
	.align 8
.LC106:
	.string	"dh = DH_new_by_nid(prime_groups[index])"
.LC107:
	.string	"prime_groups[index]"
.LC108:
	.string	"DH_get_nid(dh)"
.LC109:
	.string	"(int)DH_get_length(dh)"
	.text
	.type	dh_test_prime_groups, @function
dh_test_prime_groups:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	prime_groups(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	DH_new_by_nid@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$737, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L171
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pqg@PLT
	movq	-40(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$740, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L172
	movq	-48(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$740, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L172
	movq	-56(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$740, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L172
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	prime_groups(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_nid@PLT
	movl	%eax, %esi
	leaq	.LC107(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$743, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L173
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_length@PLT
	movl	%eax, %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$747, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L174
	movl	$1, -20(%rbp)
	jmp	.L165
.L171:
	nop
	jmp	.L165
.L172:
	nop
	jmp	.L165
.L173:
	nop
	jmp	.L165
.L174:
	nop
.L165:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	dh_test_prime_groups, .-dh_test_prime_groups
	.section	.rodata
.LC110:
	.string	"paramgen_ctx"
.LC111:
	.string	"1"
	.align 8
.LC112:
	.string	"EVP_PKEY_paramgen_init(paramgen_ctx)"
	.align 8
.LC113:
	.string	"EVP_PKEY_CTX_set_dhx_rfc5114(paramgen_ctx, 3)"
	.align 8
.LC114:
	.string	"EVP_PKEY_CTX_set_dhx_rfc5114(paramgen_ctx, 99)"
	.text
	.type	dh_rfc5114_fix_nid_test, @function
dh_rfc5114_fix_nid_test:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, %esi
	movl	$920, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$763, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L182
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	movl	%eax, %esi
	leaq	.LC111(%rip), %rcx
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$765, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L183
	movq	-16(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dhx_rfc5114@PLT
	movl	%eax, %esi
	leaq	.LC111(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$768, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L184
	movq	-16(%rbp), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dhx_rfc5114@PLT
	movl	%eax, %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC114(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$771, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L185
	movl	$1, -4(%rbp)
	jmp	.L177
.L182:
	nop
	jmp	.L177
.L183:
	nop
	jmp	.L177
.L184:
	nop
	jmp	.L177
.L185:
	nop
.L177:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	dh_rfc5114_fix_nid_test, .-dh_rfc5114_fix_nid_test
	.section	.rodata
	.align 8
.LC115:
	.string	"EVP_PKEY_CTX_set_dh_nid(paramgen_ctx, NID_ffdhe2048)"
	.align 8
.LC116:
	.string	"EVP_PKEY_CTX_set_dh_nid(paramgen_ctx, NID_secp521r1)"
	.text
	.type	dh_set_dh_nid_test, @function
dh_set_dh_nid_test:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, %esi
	movl	$28, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$787, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L193
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_paramgen_init@PLT
	movl	%eax, %esi
	leaq	.LC111(%rip), %rcx
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$789, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L194
	movq	-16(%rbp), %rax
	movl	$1126, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_nid@PLT
	movl	%eax, %esi
	leaq	.LC111(%rip), %rcx
	leaq	.LC115(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$792, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L195
	movq	-16(%rbp), %rax
	movl	$716, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_nid@PLT
	movl	%eax, %esi
	leaq	.LC55(%rip), %rcx
	leaq	.LC116(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$795, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L196
	movl	$1, -4(%rbp)
	jmp	.L188
.L193:
	nop
	jmp	.L188
.L194:
	nop
	jmp	.L188
.L195:
	nop
	jmp	.L188
.L196:
	nop
.L188:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	dh_set_dh_nid_test, .-dh_set_dh_nid_test
	.section	.rodata
.LC117:
	.string	"dh1"
.LC118:
	.string	"dh2"
.LC119:
	.string	"pcpy = BN_dup(p)"
.LC120:
	.string	"gcpy = BN_dup(g)"
	.align 8
.LC121:
	.string	"DH_set0_pqg(dh2, pcpy, NULL, gcpy)"
.LC122:
	.string	"DH_get0_q(dh2)"
.LC123:
	.string	"NID_ffdhe2048"
.LC124:
	.string	"DH_get_nid(dh2)"
.LC125:
	.string	"gcpy = BN_dup(BN_value_one())"
	.align 8
.LC126:
	.string	"DH_set0_pqg(dh2, NULL, NULL, gcpy)"
.LC127:
	.string	"NID_undef"
.LC128:
	.string	"qcpy = BN_dup(q)"
.LC129:
	.string	"BN_add_word(qcpy, 2)"
	.align 8
.LC130:
	.string	"DH_set0_pqg(dh2, pcpy, qcpy, gcpy)"
	.text
	.type	dh_get_nid, @function
dh_get_nid:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$1126, %edi
	call	DH_new_by_nid@PLT
	movq	%rax, -40(%rbp)
	call	DH_new@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$812, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L213
	movq	-48(%rbp), %rax
	leaq	.LC118(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$813, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L213
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pqg@PLT
	movq	-56(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$818, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	movq	-64(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$819, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	movq	-72(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$820, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC119(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$821, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC120(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$822, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L214
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	DH_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC121(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$825, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L215
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_q@PLT
	movq	%rax, %rcx
	leaq	.LC122(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$829, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L216
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_nid@PLT
	movl	%eax, %esi
	leaq	.LC123(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1126, %r9d
	movl	%esi, %r8d
	movl	$833, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L217
	call	BN_value_one@PLT
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC125(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$837, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L218
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	DH_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC126(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$839, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L219
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_nid@PLT
	movl	%eax, %esi
	leaq	.LC127(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$842, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L220
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC119(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$846, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L221
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC128(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$847, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L221
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC120(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$848, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L221
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	movl	%eax, %esi
	leaq	.LC111(%rip), %rcx
	leaq	.LC129(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$849, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L221
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DH_set0_pqg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC130(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$850, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L221
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_nid@PLT
	movl	%eax, %esi
	leaq	.LC127(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$853, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L222
	movl	$1, -4(%rbp)
	jmp	.L200
.L213:
	nop
	jmp	.L200
.L214:
	nop
	jmp	.L200
.L215:
	nop
	jmp	.L200
.L216:
	nop
	jmp	.L200
.L217:
	nop
	jmp	.L200
.L218:
	nop
	jmp	.L200
.L219:
	nop
	jmp	.L200
.L220:
	nop
	jmp	.L200
.L221:
	nop
	jmp	.L200
.L222:
	nop
.L200:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	dh_get_nid, .-dh_get_nid
	.section	.rodata
	.align 32
	.type	dh_pub_der, @object
	.size	dh_pub_der, 556
dh_pub_der:
	.base64	"MIICKDCCARsGCSqGSIb3DQEDATCCAQwCggEBAP//////////yQ/aoiFowjTExmKLgNwc0SkCTgiKZ8x0Agu+pjsTmyJRSgh5jjQE3e+VGbPNOkMbMCsKbfJfFDdP4TVtbVHCReSFtXZiXn7G9ExC6aY37WsL/1y29Aa37e44a/taiZ+lrp8kEXxLH+ZJKGZR7ORbPcIAfLihY78FmNpINhxV05ppFj+o/STPX4NlXSPco62WHGLzViCFUrue1SkHcJaWbWcMNU5KvJgE8XRsCMoYIXwykF5GLjbOO+OedywYDoYDmyeDouwHoo+1xV3wb0xSyd4ry/aVWBcYOZVJ"
	.base64	"fOqVauUV0iYYmPoFEBVyjlqKrKpo//////////8CAQICAgQAA4IBBQACggEACIeKX0877+F3EzvXWHbJ634tzH7txe75LVWw4jeMUYdqjg2yCO1PiJtjGXpnoWHYF6As28L6s0/nyxby59As+MyX0+euwnHYKxKD6VpF/mZcorbOLwQF56e85WMakz1N9HfdKslRe/VUoqsm7hbTg5KFQGejqTEWZEVaKp2oGoQvWVdru1EovZFg2Y9UaqBrsvZ4edI6j6YkfuluZjDtv1VxnImB8KfnBYdRwf/lzx8Z5Ot8HBpY1SI9MSLHi2D16JVz4CDiTwOeiTSRXtpPYP/J"
	.base64	"T1o3HrDtJkykxibJzKvSGjqCaANJj7C5yEidx9+LHL/aiXhv02KtNbnTm9AlZQ=="
	.align 8
.LC131:
	.string	"pkey = d2i_PUBKEY_ex(NULL, &p, sizeof(dh_pub_der), NULL, NULL)"
.LC132:
	.string	"priv_len"
	.align 8
.LC133:
	.string	"EVP_PKEY_get_int_param(pkey, OSSL_PKEY_PARAM_DH_PRIV_LEN, &privlen)"
.LC134:
	.string	"1024"
.LC135:
	.string	"privlen"
	.text
	.type	dh_load_pkcs3_namedgroup_privlen_test, @function
dh_load_pkcs3_namedgroup_privlen_test:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	leaq	dh_pub_der(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$556, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PUBKEY_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC131(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$926, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L224
	leaq	-16(%rbp), %rdx
	leaq	.LC132(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_int_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$928, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L224
	movl	-16(%rbp), %esi
	leaq	.LC134(%rip), %rcx
	leaq	.LC135(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1024, %r9d
	movl	%esi, %r8d
	movl	$930, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L224
	movl	$1, %eax
	jmp	.L225
.L224:
	movl	$0, %eax
.L225:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	dh_load_pkcs3_namedgroup_privlen_test, .-dh_load_pkcs3_namedgroup_privlen_test
	.section	.rodata
.LC136:
	.string	"dh_test"
.LC137:
	.string	"dh_computekey_range_test"
.LC138:
	.string	"rfc5114_test"
.LC139:
	.string	"rfc7919_test"
.LC140:
	.string	"dh_test_prime_groups"
.LC141:
	.string	"dh_get_nid"
	.align 8
.LC142:
	.string	"dh_load_pkcs3_namedgroup_privlen_test"
.LC143:
	.string	"dh_rfc5114_fix_nid_test"
.LC144:
	.string	"dh_set_dh_nid_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dh_test(%rip), %rdx
	leaq	.LC136(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	dh_computekey_range_test(%rip), %rdx
	leaq	.LC137(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	rfc5114_test(%rip), %rdx
	leaq	.LC138(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	rfc7919_test(%rip), %rdx
	leaq	.LC139(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	dh_test_prime_groups(%rip), %rsi
	leaq	.LC140(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	dh_get_nid(%rip), %rdx
	leaq	.LC141(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	dh_load_pkcs3_namedgroup_privlen_test(%rip), %rdx
	leaq	.LC142(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	dh_rfc5114_fix_nid_test(%rip), %rdx
	leaq	.LC143(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	dh_set_dh_nid_test(%rip), %rdx
	leaq	.LC144(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
