	.file	"eddsa.c"
	.text
	.type	c448_succeed_if, @function
c448_succeed_if:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	c448_succeed_if, .-c448_succeed_if
	.section	.rodata
	.align 32
	.type	ZERO, @object
	.size	ZERO, 64
ZERO:
	.zero	64
	.align 32
	.type	ONE, @object
	.size	ONE, 64
ONE:
	.quad	1
	.zero	56
.LC0:
	.string	"SHAKE256"
	.text
	.type	oneshot_hash, @function
oneshot_hash:
.LFB424:
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
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	-80(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L10
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L11
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L11
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	je	.L11
	movl	$-1, -4(%rbp)
	jmp	.L7
.L10:
	nop
	jmp	.L7
.L11:
	nop
.L7:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	oneshot_hash, .-oneshot_hash
	.type	clamp, @function
clamp:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$55, %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$55, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	clamp, .-clamp
	.type	hash_init_with_dom, @function
hash_init_with_dom:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%ecx, %eax
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movb	%dl, -52(%rbp)
	movb	%al, -56(%rbp)
	movabsq	$4049919570178697555, %rax
	movq	%rax, -17(%rbp)
	movb	$0, -9(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$255, -72(%rbp)
	jbe	.L14
	movl	$0, %eax
	jmp	.L23
.L14:
	cmpb	$0, -52(%rbp)
	jne	.L16
	movl	$1, %eax
	jmp	.L17
.L16:
	movl	$2, %eax
.L17:
	cmpb	$0, -56(%rbp)
	jne	.L18
	movl	$1, %edx
	jmp	.L19
.L18:
	movl	$0, %edx
.L19:
	subl	%edx, %eax
	movb	%al, -19(%rbp)
	movq	-72(%rbp), %rax
	movb	%al, -18(%rbp)
	movq	16(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L20
	movl	$0, %eax
	jmp	.L23
.L20:
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L21
	leaq	-17(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L21
	leaq	-19(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L21
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$-1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	hash_init_with_dom, .-hash_init_with_dom
	.globl	ossl_c448_ed448_convert_private_key_to_x448
	.type	ossl_c448_ed448_convert_private_key_to_x448, @function
ossl_c448_ed448_convert_private_key_to_x448:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r9
	movl	$57, %r8d
	movq	%rdx, %rcx
	movl	$56, %edx
	movq	%rax, %rdi
	call	oneshot_hash
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	ossl_c448_ed448_convert_private_key_to_x448, .-ossl_c448_ed448_convert_private_key_to_x448
	.globl	ossl_c448_ed448_derive_public_key
	.type	ossl_c448_ed448_derive_public_key, @function
ossl_c448_ed448_derive_public_key:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movq	%rcx, -416(%rbp)
	movq	-416(%rbp), %rcx
	movq	-408(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-392(%rbp), %rax
	movq	%rcx, %r9
	movl	$57, %r8d
	movq	%rdx, %rcx
	movl	$57, %edx
	movq	%rax, %rdi
	call	oneshot_hash
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L31
.L27:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	clamp
	leaq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_decode_long@PLT
	movl	$1, -4(%rbp)
	jmp	.L29
.L30:
	leaq	-128(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_halve@PLT
	sall	-4(%rbp)
.L29:
	cmpl	$3, -4(%rbp)
	jbe	.L30
	movq	ossl_curve448_precomputed_base@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_precomputed_scalarmul@PLT
	leaq	-384(%rbp), %rdx
	movq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_scalar_destroy@PLT
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_point_destroy@PLT
	leaq	-64(%rbp), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$-1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ossl_c448_ed448_derive_public_key, .-ossl_c448_ed448_derive_public_key
	.globl	ossl_c448_ed448_sign
	.type	ossl_c448_ed448_sign, @function
ossl_c448_ed448_sign:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$664, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -616(%rbp)
	movq	%rsi, -624(%rbp)
	movq	%rdx, -632(%rbp)
	movq	%rcx, -640(%rbp)
	movq	%r8, -648(%rbp)
	movq	%r9, -656(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -660(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -183(%rbp)
	movq	$0, -175(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L33
	movl	$0, %eax
	jmp	.L46
.L33:
	movq	40(%rbp), %rcx
	movq	-632(%rbp), %rdx
	leaq	-544(%rbp), %rsi
	movq	-616(%rbp), %rax
	movq	%rcx, %r9
	movl	$57, %r8d
	movq	%rdx, %rcx
	movl	$114, %edx
	movq	%rax, %rdi
	call	oneshot_hash
	testl	%eax, %eax
	je	.L47
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	clamp
	leaq	-544(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_decode_long@PLT
	movzbl	-660(%rbp), %edx
	movq	32(%rbp), %rdi
	movq	24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-616(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	hash_init_with_dom
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L37
	leaq	-544(%rbp), %rax
	addq	$57, %rax
	movq	-32(%rbp), %rcx
	movl	$57, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L37
	movq	-656(%rbp), %rdx
	movq	-648(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L38
.L37:
	leaq	-544(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L41
.L38:
	leaq	-544(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-544(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-544(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_decode_long@PLT
	leaq	-544(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-160(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_halve@PLT
	movl	$2, -24(%rbp)
	jmp	.L42
.L43:
	leaq	-608(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_halve@PLT
	sall	-24(%rbp)
.L42:
	cmpl	$3, -24(%rbp)
	jbe	.L43
	movq	ossl_curve448_precomputed_base@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	-608(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_precomputed_scalarmul@PLT
	leaq	-544(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_point_destroy@PLT
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_scalar_destroy@PLT
	movzbl	-660(%rbp), %edx
	movq	32(%rbp), %rdi
	movq	24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-616(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	hash_init_with_dom
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L49
	leaq	-224(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L49
	movq	-640(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L49
	movq	-656(%rbp), %rdx
	movq	-648(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L49
	leaq	-544(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	je	.L49
	leaq	-544(%rbp), %rcx
	leaq	-288(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_decode_long@PLT
	leaq	-544(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-96(%rbp), %rdx
	leaq	-288(%rbp), %rcx
	leaq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_mul@PLT
	leaq	-160(%rbp), %rdx
	leaq	-288(%rbp), %rcx
	leaq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_add@PLT
	movq	-624(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-624(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-183(%rbp), %rcx
	movq	-175(%rbp), %rbx
	movq	%rcx, 41(%rax)
	movq	%rbx, 49(%rax)
	movq	-624(%rbp), %rax
	leaq	57(%rax), %rdx
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_curve448_scalar_encode@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_scalar_destroy@PLT
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_scalar_destroy@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_scalar_destroy@PLT
	movl	$-1, -20(%rbp)
	jmp	.L41
.L47:
	nop
	jmp	.L41
.L48:
	nop
	jmp	.L41
.L49:
	nop
.L41:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-20(%rbp), %eax
.L46:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	ossl_c448_ed448_sign, .-ossl_c448_ed448_sign
	.globl	ossl_c448_ed448_sign_prehash
	.type	ossl_c448_ed448_sign_prehash, @function
ossl_c448_ed448_sign_prehash:
.LFB430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-48(%rbp)
	pushq	$1
	movl	$64, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_c448_ed448_sign@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	ossl_c448_ed448_sign_prehash, .-ossl_c448_ed448_sign_prehash
	.globl	ossl_c448_ed448_verify
	.type	ossl_c448_ed448_verify, @function
ossl_c448_ed448_verify:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$832, %rsp
	movq	%rdi, -792(%rbp)
	movq	%rsi, -800(%rbp)
	movq	%rdx, -808(%rbp)
	movq	%rcx, -816(%rbp)
	movq	%r8, -824(%rbp)
	movl	%r9d, %edx
	movl	24(%rbp), %eax
	movb	%dl, -828(%rbp)
	movb	%al, -832(%rbp)
	movl	$56, -4(%rbp)
	jmp	.L53
.L58:
	movl	-4(%rbp), %eax
	cltq
	leaq	57(%rax), %rdx
	movq	-800(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	order.0(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpb	%dl, %al
	jnb	.L54
	movl	$0, %eax
	jmp	.L64
.L54:
	movl	-4(%rbp), %eax
	cltq
	leaq	57(%rax), %rdx
	movq	-800(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	order.0(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpb	%al, %dl
	jb	.L65
	subl	$1, -4(%rbp)
.L53:
	cmpl	$0, -4(%rbp)
	jns	.L58
	jmp	.L57
.L65:
	nop
.L57:
	cmpl	$0, -4(%rbp)
	jns	.L59
	movl	$0, %eax
	jmp	.L64
.L59:
	movq	-808(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio@PLT
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L60
	movl	-8(%rbp), %eax
	jmp	.L64
.L60:
	movq	-800(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio@PLT
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L61
	movl	-8(%rbp), %eax
	jmp	.L64
.L61:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L62
	movzbl	-832(%rbp), %edi
	movzbl	-828(%rbp), %edx
	movq	16(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-792(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	hash_init_with_dom
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L62
	movq	-800(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L62
	movq	-808(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L62
	movq	-824(%rbp), %rdx
	movq	-816(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L62
	leaq	-784(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	jne	.L63
.L62:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	-784(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_decode_long@PLT
	leaq	-784(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-592(%rbp), %rdx
	movq	ossl_curve448_scalar_zero@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	-592(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_sub@PLT
	movq	-800(%rbp), %rax
	leaq	57(%rax), %rcx
	leaq	-656(%rbp), %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_decode_long@PLT
	leaq	-592(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-656(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_base_double_scalarmul_non_secret@PLT
	leaq	-528(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_point_eq@PLT
	movq	%rax, %rdi
	call	c448_succeed_if
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	ossl_c448_ed448_verify, .-ossl_c448_ed448_verify
	.globl	ossl_c448_ed448_verify_prehash
	.type	ossl_c448_ed448_verify_prehash, @function
ossl_c448_ed448_verify_prehash:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, %eax
	movb	%al, -44(%rbp)
	movzbl	-44(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	%rdi
	pushq	-40(%rbp)
	movl	$1, %r9d
	movl	$64, %r8d
	movq	%rax, %rdi
	call	ossl_c448_ed448_verify@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ossl_c448_ed448_verify_prehash, .-ossl_c448_ed448_verify_prehash
	.globl	ossl_ed448_sign
	.type	ossl_ed448_sign, @function
ossl_ed448_sign:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	32(%rbp), %eax
	movb	%al, -52(%rbp)
	movzbl	-52(%rbp), %edi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	40(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_c448_ed448_sign@PLT
	addq	$32, %rsp
	cmpl	$-1, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	ossl_ed448_sign, .-ossl_ed448_sign
	.globl	ossl_ed448_verify
	.type	ossl_ed448_verify, @function
ossl_ed448_verify:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	24(%rbp), %eax
	movb	%al, -52(%rbp)
	movq	16(%rbp), %rax
	movzbl	%al, %edi
	movzbl	-52(%rbp), %r9d
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	%rdi
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	ossl_c448_ed448_verify@PLT
	addq	$32, %rsp
	cmpl	$-1, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	ossl_ed448_verify, .-ossl_ed448_verify
	.globl	ossl_ed448_public_from_private
	.type	ossl_ed448_public_from_private, @function
ossl_ed448_public_from_private:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_c448_ed448_derive_public_key@PLT
	cmpl	$-1, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	ossl_ed448_public_from_private, .-ossl_ed448_public_from_private
	.section	.rodata
	.align 32
	.type	order.0, @object
	.size	order.0, 57
order.0:
	.base64	"80RYq5LCeCNVj8WNcsJsIZA21q5J207E6SPKfP///////////////////////////////////z8A"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
