	.file	"sm2_internal_test.c"
	.text
	.local	fake_rand
	.comm	fake_rand,8,8
	.local	fake_rand_bytes
	.comm	fake_rand_bytes,8,8
	.local	fake_rand_bytes_offset
	.comm	fake_rand_bytes_offset,8,8
	.local	fake_rand_size
	.comm	fake_rand_size,8,8
	.section	.rodata
.LC0:
	.string	"fake_rand_bytes"
.LC1:
	.string	"../test/sm2_internal_test.c"
.LC2:
	.string	"0"
.LC3:
	.string	"fake_rand_size"
	.text
	.type	get_faked_bytes, @function
get_faked_bytes:
.LFB468:
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
	movq	fake_rand_bytes(%rip), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	movq	fake_rand_size(%rip), %rsi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L5
.L2:
	movl	$0, %eax
	jmp	.L4
.L7:
	movq	fake_rand_bytes_offset(%rip), %rdx
	movq	fake_rand_size(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L6
	movq	$0, fake_rand_bytes_offset(%rip)
.L6:
	movq	fake_rand_bytes(%rip), %rcx
	movq	fake_rand_bytes_offset(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, fake_rand_bytes_offset(%rip)
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
.L5:
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	testq	%rax, %rax
	jne	.L7
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	get_faked_bytes, .-get_faked_bytes
	.section	.rodata
	.align 8
.LC4:
	.string	"fake_rand_bytes = OPENSSL_hexstr2buf(hex_bytes, NULL)"
	.text
	.type	start_fake_rand, @function
start_fake_rand:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	fake_rand_bytes(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, fake_rand_bytes_offset(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	shrq	%rax
	movq	%rax, fake_rand_size(%rip)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, fake_rand_bytes(%rip)
	movq	fake_rand_bytes(%rip), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	leaq	get_faked_bytes(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	fake_rand_set_public_private_callbacks@PLT
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	start_fake_rand, .-start_fake_rand
	.type	restore_rand, @function
restore_rand:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	fake_rand_set_public_private_callbacks@PLT
	movq	fake_rand_bytes(%rip), %rax
	leaq	.LC1(%rip), %rcx
	movl	$71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, fake_rand_bytes(%rip)
	movq	$0, fake_rand_bytes_offset(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	restore_rand, .-restore_rand
	.section	.rodata
.LC5:
	.string	"BN_hex2bn(&p, p_hex)"
.LC6:
	.string	"BN_hex2bn(&a, a_hex)"
.LC7:
	.string	"BN_hex2bn(&b, b_hex)"
.LC8:
	.string	"group"
.LC9:
	.string	"generator"
.LC10:
	.string	"BN_hex2bn(&g_x, x_hex)"
.LC11:
	.string	"BN_hex2bn(&g_y, y_hex)"
	.align 8
.LC12:
	.string	"EC_POINT_set_affine_coordinates(group, generator, g_x, g_y, NULL)"
.LC13:
	.string	"BN_hex2bn(&order, order_hex)"
.LC14:
	.string	"BN_hex2bn(&cof, cof_hex)"
	.align 8
.LC15:
	.string	"EC_GROUP_set_generator(group, generator, order, cof)"
	.text
	.type	create_EC_group, @function
create_EC_group:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-88(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-96(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$93, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-104(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$94, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GFp@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$98, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$102, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	movq	-112(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-120(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$106, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$107, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L27
	movq	-128(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$112, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movl	$1, -20(%rbp)
	jmp	.L15
.L24:
	nop
	jmp	.L15
.L25:
	nop
	jmp	.L15
.L26:
	nop
	jmp	.L15
.L27:
	nop
	jmp	.L15
.L28:
	nop
.L15:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	cmpl	$0, -20(%rbp)
	jne	.L22
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	$0, -16(%rbp)
.L22:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	create_EC_group, .-create_EC_group
	.section	.rodata
.LC16:
	.string	"expected"
.LC17:
	.string	"BN_hex2bn(&priv, privkey_hex)"
.LC18:
	.string	"key"
.LC19:
	.string	"EC_KEY_set_group(key, group)"
	.align 8
.LC20:
	.string	"EC_KEY_set_private_key(key, priv)"
.LC21:
	.string	"pt"
	.align 8
.LC22:
	.string	"EC_POINT_mul(group, pt, priv, NULL, NULL, NULL)"
	.align 8
.LC23:
	.string	"EC_KEY_set_public_key(key, pt)"
	.align 8
.LC24:
	.string	"ossl_sm2_ciphertext_size(key, digest, msg_len, &ctext_len)"
.LC25:
	.string	"ctext"
	.align 8
.LC26:
	.string	"ossl_sm2_encrypt(key, digest, (const uint8_t *)message, msg_len, ctext, &ctext_len)"
	.align 8
.LC27:
	.string	"ossl_sm2_plaintext_size(ctext, ctext_len, &ptext_len)"
.LC28:
	.string	"msg_len"
.LC29:
	.string	"ptext_len"
.LC30:
	.string	"recovered"
	.align 8
.LC31:
	.string	"ossl_sm2_decrypt(key, digest, ctext, ctext_len, recovered, &recovered_len)"
.LC32:
	.string	"recovered_len"
.LC33:
	.string	"message"
	.text
	.type	test_sm2_crypt, @function
test_sm2_crypt:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -36(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$152, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	-120(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$153, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L45
	call	EC_KEY_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$157, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_private_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$159, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$163, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L47
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_public_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$165, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	leaq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sm2_ciphertext_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$166, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movq	-72(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$170, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$171, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	start_fake_rand
	leaq	-72(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_sm2_encrypt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$175, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L38
	call	restore_rand
	jmp	.L32
.L38:
	call	restore_rand
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-56(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$183, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L49
	movq	-72(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sm2_plaintext_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movq	-48(%rbp), %rax
	movl	%eax, %edi
	movq	-80(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$187, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L50
	movq	-80(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$190, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$191, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movq	-72(%rbp), %rcx
	leaq	-88(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_sm2_decrypt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$192, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	movq	-48(%rbp), %rax
	movl	%eax, %edi
	movq	-88(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$194, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L51
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC33(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-48(%rbp)
	pushq	-128(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$195, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L51
	movl	$1, -36(%rbp)
	jmp	.L32
.L45:
	nop
	jmp	.L32
.L46:
	nop
	jmp	.L32
.L47:
	nop
	jmp	.L32
.L48:
	nop
	jmp	.L32
.L49:
	nop
	jmp	.L32
.L50:
	nop
	jmp	.L32
.L51:
	nop
.L32:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$202, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$203, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$204, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_sm2_crypt, .-test_sm2_crypt
	.section	.rodata
	.align 8
.LC34:
	.string	"8542D69E4C044F18E8B92435BF6FF7DD297720630485628D5AE74EE7C32E79B7"
	.align 8
.LC35:
	.string	"0680512BCBB42C07D47349D2153B70C4E5D7FDFCBFA36EA1A85841B9E46E09A2"
	.align 8
.LC36:
	.string	"421DEBD61B62EAB6746434EBC3CC315E32220B3BADD50BDC4C4E6C147FEDD43D"
	.align 8
.LC37:
	.string	"63E4C6D3B23B0C849CF84241484BFE48F61D59A5B16BA06E6E12D1DA27C5249A"
	.align 8
.LC38:
	.string	"787968B4FA32C3FD2417842E73BBFEFF2F3C848B6831D7E0EC65228B3937E498"
	.align 8
.LC39:
	.string	"8542D69E4C044F18E8B92435BF6FF7DE457283915C45517D722EDB8B08F1DFC3"
.LC40:
	.string	"1"
.LC41:
	.string	"test_group"
	.align 8
.LC42:
	.string	"307B0220245C26FB68B1DDDDB12C4B6BF9F2B6D5FE60A383B0D18D1C4144ABF17F6252E7022076CB9264C2A7E88E52B19903FDC47378F605E36811F5C07423A24B84400F01B804209C3D7360C30156FAB7C80A0276712DA9D8094A634B766D3A285E07480653426D0413650053A89B41C418B0C3AAD00D886C00286467"
	.align 8
.LC43:
	.string	"004C62EEFD6ECFC2B95B92FD6C3D9575148AFA17425546D49018E5388D49DD7B4F0092e8ff62146873c258557548500ab2df2a365e0609ab67640a1f6d57d7b17820008349312695a3e1d2f46905f39a766487f2432e95d6be0cb009fe8c69fd8825a7"
.LC44:
	.string	"encryption standard"
	.align 8
.LC45:
	.string	"1649AB77A00637BD5E2EFE283FBF353534AA7F7CB89463F208DDBC2920BB0DA0"
	.align 8
.LC46:
	.string	"307B0220245C26FB68B1DDDDB12C4B6BF9F2B6D5FE60A383B0D18D1C4144ABF17F6252E7022076CB9264C2A7E88E52B19903FDC47378F605E36811F5C07423A24B84400F01B80420BE89139D07853100EFA763F60CBE30099EA3DF7F8F364F9D10A5E988E3C5AAFC0413229E6C9AEE2BB92CAD649FE2C035689785DA33"
	.align 8
.LC47:
	.string	"004C62EEFD6ECFC2B95B92FD6C3D9575148AFA17425546D49018E5388D49DD7B4F003da18008784352192d70f22c26c243174a447ba272fec64163dd4742bae8bc9800df17605cf304e9dd1dfeb90c015e93b393a6f046792f790a6fa4228af67d9588"
	.align 8
.LC48:
	.string	"fffffffeffffffffffffffffffffffff7203df6b21c6052b53bbf40939d54123"
	.align 8
.LC49:
	.string	"bc3736a2f4f6779c59bdcee36b692153d0a9877cc62a474002df32e52139f0a0"
	.align 8
.LC50:
	.string	"32c4ae2c1f1981195f9904466a39c9948fe30bbff2660be1715a4589334c74c7"
	.align 8
.LC51:
	.string	"28e9fa9e9d9f5e344d5a9e4bcf6509a7f39789f515ab8f92ddbcbd414d940e93"
	.align 8
.LC52:
	.string	"fffffffeffffffffffffffffffffffffffffffff00000000fffffffffffffffc"
	.align 8
.LC53:
	.string	"fffffffeffffffffffffffffffffffffffffffff00000000ffffffffffffffff"
.LC54:
	.string	"gm_group"
	.align 8
.LC55:
	.string	"307C022004EBFC718E8D1798620432268E77FEB6415E2EDE0E073C0F4F640ECD2E149A73022100E858F9D81E5430A57B36DAAB8F950A3C64E6EE6A63094D99283AFF767E124DF0042059983C18F809E262923C53AEC295D30383B54E39D609D160AFCB1908D0BD8766041321886CA989CA9C7D58087307CA93092D651EFA"
	.align 8
.LC56:
	.string	"59276E27D506861A16680F3AD9C02DCCEF3CC1FA3CDBE4CE6D54B80DEAC1BC21"
	.align 8
.LC57:
	.string	"3945208F7B2144B13F36E38AC6D39F95889393692860B51A42FB81EF4DF7C5B8"
	.text
	.type	sm2_crypt_test, @function
sm2_crypt_test:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC34(%rip), %r9
	leaq	.LC35(%rip), %r8
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC38(%rip), %rsi
	leaq	.LC39(%rip), %rax
	subq	$8, %rsp
	leaq	.LC40(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	create_EC_group
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$223, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	call	EVP_sm3@PLT
	movq	%rax, %rsi
	leaq	.LC42(%rip), %r8
	leaq	.LC43(%rip), %rdi
	leaq	.LC44(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_sm2_crypt
	testl	%eax, %eax
	je	.L61
	call	EVP_sha256@PLT
	movq	%rax, %rsi
	leaq	.LC46(%rip), %r8
	leaq	.LC47(%rip), %rdi
	leaq	.LC44(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_sm2_crypt
	testl	%eax, %eax
	je	.L62
	leaq	.LC48(%rip), %r9
	leaq	.LC49(%rip), %r8
	leaq	.LC50(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC52(%rip), %rsi
	leaq	.LC53(%rip), %rax
	subq	$8, %rsp
	leaq	.LC40(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	create_EC_group
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$265, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L63
	call	EVP_sm3@PLT
	movq	%rax, %rsi
	leaq	.LC55(%rip), %r8
	leaq	.LC56(%rip), %rdi
	leaq	.LC44(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_sm2_crypt
	testl	%eax, %eax
	je	.L64
	movl	$1, -4(%rbp)
	jmp	.L54
.L60:
	nop
	jmp	.L54
.L61:
	nop
	jmp	.L54
.L62:
	nop
	jmp	.L54
.L63:
	nop
	jmp	.L54
.L64:
	nop
.L54:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	sm2_crypt_test, .-sm2_crypt_test
	.section	.rodata
.LC58:
	.string	"sig"
.LC59:
	.string	"BN_hex2bn(&r, r_hex)"
.LC60:
	.string	"BN_hex2bn(&s, s_hex)"
.LC61:
	.string	"sig_r"
.LC62:
	.string	"r"
.LC63:
	.string	"sig_s"
.LC64:
	.string	"s"
.LC65:
	.string	"ok"
	.text
	.type	test_sm2_sign, @function
test_sm2_sign:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-120(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$322, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	call	EC_KEY_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$326, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	movq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$327, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_private_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$328, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	cmpl	$0, 24(%rbp)
	jne	.L70
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$333, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L78
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$334, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L78
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_public_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$335, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L78
.L70:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	start_fake_rand
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	call	EVP_sm3@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	ossl_sm2_do_sign@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$342, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L72
	call	restore_rand
	jmp	.L67
.L72:
	call	restore_rand
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ECDSA_SIG_get0@PLT
	movq	-144(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$350, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	movq	16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$351, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	movq	-72(%rbp), %rdi
	movq	-88(%rbp), %rsi
	leaq	.LC61(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$352, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L79
	movq	-80(%rbp), %rdi
	movq	-96(%rbp), %rsi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$353, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L79
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	call	EVP_sm3@PLT
	movq	%rax, %rsi
	movq	-128(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%rdi, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	ossl_sm2_do_verify@PLT
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$360, %esi
	call	test_true@PLT
	jmp	.L67
.L76:
	nop
	jmp	.L67
.L77:
	nop
	jmp	.L67
.L78:
	nop
	jmp	.L67
.L79:
	nop
.L67:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_sm2_sign, .-test_sm2_sign
	.section	.rodata
	.align 8
.LC66:
	.string	"40F1EC59F793D9F49E09DCEF49130D4194F79FB1EED2CAA55BACDB49C4E755D1"
	.align 8
.LC67:
	.string	"006CB28D99385C175C94F94E934817663FC176D925DD72B727260DBAAE1FB2F96F007c47811054c6f99613a578eb8453706ccb96384fe7df5c171671e760bfa8be3a"
.LC68:
	.string	"message digest"
	.align 8
.LC69:
	.string	"128B2FA8BD433C6C068C8D803DFF79792A519A55171B1B650C23661D15897263"
.LC70:
	.string	"ALICE123@YAHOO.COM"
	.align 8
.LC71:
	.string	"6FC6DAC32C5D5CF10C77DFB20F7C2EB667A457872FB09EC56327A67EC7DEEBE7"
	.align 8
.LC72:
	.ascii	"test_sm2_sign( test_group, \"ALICE123@YAHOO.COM\", \"128B2FA"
	.ascii	"8BD433C6C068C8D803DFF79792A519A55171B1B650C23661D15897263\","
	.ascii	" \"message digest\", \"006CB28D99385C175C94"
	.string	"F94E934817663FC176D925DD72B727260DBAAE1FB2F96F\" \"007c47811054c6f99613a578eb8453706ccb96384fe7df5c171671e760bfa8be3a\", \"40F1EC59F793D9F49E09DCEF49130D4194F79FB1EED2CAA55BACDB49C4E755D1\", \"6FC6DAC32C5D5CF10C77DFB20F7C2EB667A457872FB09EC56327A67EC7DEEBE7\", 0)"
	.align 8
.LC73:
	.string	"F5A03B0648D2C4630EEAC513E1BB81A15944DA3827D5B74143AC7EACEEE720B3"
.LC74:
	.string	"1234567812345678"
	.align 8
.LC75:
	.string	"B1B6AA29DF212FD8763182BC0D421CA1BB9038FD1F7F42D4840B69C485BBC1AA"
	.align 8
.LC76:
	.ascii	"test_sm2_sign( gm_group, SM2_DEFAULT_USERID, \"3945208F7B214"
	.ascii	"4B13F36E38AC6D39F95889"
	.string	"393692860B51A42FB81EF4DF7C5B8\", \"message digest\", \"59276E27D506861A16680F3AD9C02DCCEF3CC1FA3CDBE4CE6D54B80DEAC1BC21\", \"F5A03B0648D2C4630EEAC513E1BB81A15944DA3827D5B74143AC7EACEEE720B3\", \"B1B6AA29DF212FD8763182BC0D421CA1BB9038FD1F7F42D4840B69C485BBC1AA\", 0)"
	.align 8
.LC77:
	.ascii	"test_sm2_sign( gm_group, SM2_DEFAULT_USERID, \"3945208F7B214"
	.ascii	"4B13F36E38AC6D39F95889"
	.string	"393692860B51A42FB81EF4DF7C5B8\", \"message digest\", \"59276E27D506861A16680F3AD9C02DCCEF3CC1FA3CDBE4CE6D54B80DEAC1BC21\", \"F5A03B0648D2C4630EEAC513E1BB81A15944DA3827D5B74143AC7EACEEE720B3\", \"B1B6AA29DF212FD8763182BC0D421CA1BB9038FD1F7F42D4840B69C485BBC1AA\", 1)"
	.text
	.type	sm2_sig_test, @function
sm2_sig_test:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC34(%rip), %r9
	leaq	.LC35(%rip), %r8
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC38(%rip), %rsi
	leaq	.LC39(%rip), %rax
	subq	$8, %rsp
	leaq	.LC40(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	create_EC_group
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$388, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L88
	leaq	.LC66(%rip), %r9
	leaq	.LC67(%rip), %r8
	leaq	.LC68(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC70(%rip), %rsi
	movq	-24(%rbp), %rax
	pushq	$0
	leaq	.LC71(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_sm2_sign
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$391, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L89
	leaq	.LC48(%rip), %r9
	leaq	.LC49(%rip), %r8
	leaq	.LC50(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC52(%rip), %rsi
	leaq	.LC53(%rip), %rax
	subq	$8, %rsp
	leaq	.LC40(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	create_EC_group
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$412, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L90
	leaq	.LC73(%rip), %r9
	leaq	.LC56(%rip), %r8
	leaq	.LC68(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC74(%rip), %rsi
	movq	-16(%rbp), %rax
	pushq	$0
	leaq	.LC75(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_sm2_sign
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$415, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L91
	leaq	.LC73(%rip), %r9
	leaq	.LC56(%rip), %r8
	leaq	.LC68(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC74(%rip), %rsi
	movq	-16(%rbp), %rax
	pushq	$1
	leaq	.LC75(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	test_sm2_sign
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$435, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L92
	movl	$1, -4(%rbp)
	jmp	.L82
.L88:
	nop
	jmp	.L82
.L89:
	nop
	jmp	.L82
.L90:
	nop
	jmp	.L82
.L91:
	nop
	jmp	.L82
.L92:
	nop
.L82:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	sm2_sig_test, .-sm2_sig_test
	.section	.rodata
.LC78:
	.string	"sm2_crypt_test"
.LC79:
	.string	"sm2_sig_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	fake_rand_start@PLT
	movq	%rax, fake_rand(%rip)
	movq	fake_rand(%rip), %rax
	testq	%rax, %rax
	jne	.L94
	movl	$0, %eax
	jmp	.L95
.L94:
	leaq	sm2_crypt_test(%rip), %rdx
	leaq	.LC78(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	sm2_sig_test(%rip), %rdx
	leaq	.LC79(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L95:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	fake_rand(%rip), %rax
	movq	%rax, %rdi
	call	fake_rand_finish@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	cleanup_tests, .-cleanup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
