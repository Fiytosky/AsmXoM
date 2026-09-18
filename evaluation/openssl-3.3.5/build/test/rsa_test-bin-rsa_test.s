	.file	"rsa_test.c"
	.text
	.type	key1, @function
key1:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	d.35(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %r12
	leaq	e.34(%rip), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	n.33(%rip), %rax
	movl	$0, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	leaq	q.32(%rip), %rax
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	p.31(%rip), %rax
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	leaq	iqmp.30(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %r12
	leaq	dmq1.29(%rip), %rax
	movl	$0, %edx
	movl	$33, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	dmp1.28(%rip), %rax
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_crt_params@PLT
	cmpq	$0, -32(%rbp)
	je	.L2
	leaq	ctext_ex.27(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L2:
	movl	$64, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	key1, .-key1
	.type	key2, @function
key2:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	d.26(%rip), %rax
	movl	$0, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %r12
	leaq	e.25(%rip), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	n.24(%rip), %rax
	movl	$0, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	leaq	q.23(%rip), %rax
	movl	$0, %edx
	movl	$26, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	p.22(%rip), %rax
	movl	$0, %edx
	movl	$26, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	leaq	iqmp.21(%rip), %rax
	movl	$0, %edx
	movl	$26, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %r12
	leaq	dmq1.20(%rip), %rax
	movl	$0, %edx
	movl	$26, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	dmp1.19(%rip), %rax
	movl	$0, %edx
	movl	$26, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_crt_params@PLT
	cmpq	$0, -32(%rbp)
	je	.L5
	leaq	ctext_ex.18(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L5:
	movl	$50, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	key2, .-key2
	.type	key3, @function
key3:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	d.17(%rip), %rax
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %r12
	leaq	e.16(%rip), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	n.15(%rip), %rax
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	leaq	q.14(%rip), %rax
	movl	$0, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	p.13(%rip), %rax
	movl	$0, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	leaq	iqmp.12(%rip), %rax
	movl	$0, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %r12
	leaq	dmq1.11(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	dmp1.10(%rip), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_crt_params@PLT
	cmpq	$0, -32(%rbp)
	je	.L8
	leaq	ctext_ex.9(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L8:
	movl	$128, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	key3, .-key3
	.type	rsa_setkey, @function
rsa_setkey:
.LFB471:
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
	movl	$0, -4(%rbp)
	call	RSA_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L11
	cmpl	$2, -36(%rbp)
	je	.L12
	cmpl	$2, -36(%rbp)
	jg	.L11
	cmpl	$0, -36(%rbp)
	je	.L13
	cmpl	$1, -36(%rbp)
	je	.L14
	jmp	.L11
.L13:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	key1
	movl	%eax, -4(%rbp)
	jmp	.L11
.L14:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	key2
	movl	%eax, -4(%rbp)
	jmp	.L11
.L12:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	key3
	movl	%eax, -4(%rbp)
	nop
.L11:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	rsa_setkey, .-rsa_setkey
	.section	.rodata
.LC4:
	.string	"clentmp"
.LC5:
	.string	"num"
.LC6:
	.string	"../test/rsa_test.c"
.LC7:
	.string	"0"
.LC8:
	.string	"ptext_ex"
.LC9:
	.string	"ptext"
	.text
	.type	test_rsa_simple, @function
test_rsa_simple:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movl	%edi, -548(%rbp)
	movl	%esi, -552(%rbp)
	movl	%edx, -556(%rbp)
	movl	%ecx, -560(%rbp)
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$8, -12(%rbp)
	movl	-548(%rbp), %edx
	movq	-568(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_setkey
	movl	%eax, -8(%rbp)
	cmpq	$0, -576(%rbp)
	je	.L17
	movq	-576(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
.L17:
	movq	-24(%rbp), %rcx
	movl	-552(%rbp), %edi
	leaq	-544(%rbp), %rdx
	leaq	ptext_ex.8(%rip), %rsi
	movl	-12(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	RSA_public_encrypt@PLT
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$253, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rcx
	movl	-556(%rbp), %edi
	leaq	-288(%rbp), %rdx
	leaq	-544(%rbp), %rsi
	movl	-16(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	RSA_private_decrypt@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -560(%rbp)
	je	.L20
	movl	-16(%rbp), %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L25
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-16(%rbp), %eax
	movslq	%eax, %r8
	leaq	-288(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC6(%rip), %rax
	pushq	%rsi
	leaq	ptext_ex.8(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L22
	jmp	.L25
.L20:
	movl	-16(%rbp), %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$261, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	testl	%eax, %eax
	je	.L26
.L22:
	movl	$1, -4(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L27
	movq	-24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$0, -24(%rbp)
	jmp	.L19
.L24:
	nop
	jmp	.L19
.L25:
	nop
	jmp	.L19
.L26:
	nop
	jmp	.L19
.L27:
	nop
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_rsa_simple, .-test_rsa_simple
	.type	test_rsa_pkcs1, @function
test_rsa_pkcs1:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	test_rsa_simple
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_rsa_pkcs1, .-test_rsa_pkcs1
	.type	test_rsa_oaep, @function
test_rsa_oaep:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movl	%edi, -564(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -548(%rbp)
	leaq	-548(%rbp), %rsi
	leaq	-544(%rbp), %rcx
	movl	-564(%rbp), %eax
	subq	$8, %rsp
	leaq	-24(%rbp), %rdx
	pushq	%rdx
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$4, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	test_rsa_simple
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L42
	movl	$8, -12(%rbp)
	movq	-24(%rbp), %rcx
	movl	-548(%rbp), %eax
	leaq	-288(%rbp), %rdx
	leaq	-544(%rbp), %rsi
	movl	$4, %r8d
	movl	%eax, %edi
	call	RSA_private_decrypt@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.L43
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-16(%rbp), %eax
	movslq	%eax, %r8
	leaq	-288(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC6(%rip), %rax
	pushq	%rsi
	leaq	ptext_ex.7(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$302, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L43
	movl	$0, -8(%rbp)
	jmp	.L35
.L37:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-544(%rbp,%rax), %eax
	xorl	$1, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	cltq
	movb	%dl, -544(%rbp,%rax)
	movq	-24(%rbp), %rcx
	movl	-548(%rbp), %eax
	leaq	-288(%rbp), %rdx
	leaq	-544(%rbp), %rsi
	movl	$4, %r8d
	movl	%eax, %edi
	call	RSA_private_decrypt@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$310, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L44
	movl	-8(%rbp), %eax
	cltq
	movzbl	-544(%rbp,%rax), %eax
	xorl	$1, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	cltq
	movb	%dl, -544(%rbp,%rax)
	addl	$1, -8(%rbp)
.L35:
	movl	-548(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L37
	movl	$-1, -8(%rbp)
	jmp	.L38
.L40:
	movq	-24(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	leaq	-544(%rbp), %rsi
	movl	-8(%rbp), %eax
	movl	$4, %r8d
	movl	%eax, %edi
	call	RSA_private_decrypt@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$319, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L45
	addl	$1, -8(%rbp)
.L38:
	movl	-548(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L40
	movl	$1, -4(%rbp)
	jmp	.L32
.L42:
	nop
	jmp	.L32
.L43:
	nop
	jmp	.L32
.L44:
	nop
	jmp	.L32
.L45:
	nop
.L32:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_rsa_oaep, .-test_rsa_oaep
	.section	.rodata
	.align 32
	.type	rsa_security_bits_cases, @object
	.size	rsa_security_bits_cases, 136
rsa_security_bits_cases:
	.long	2048
	.long	112
	.long	3072
	.long	128
	.long	4096
	.long	152
	.long	6144
	.long	176
	.long	8192
	.long	200
	.long	7680
	.long	192
	.long	15360
	.long	256
	.long	256
	.long	40
	.long	512
	.long	56
	.long	1024
	.long	80
	.long	8888
	.long	208
	.long	2468
	.long	120
	.long	13456
	.long	248
	.long	15359
	.long	256
	.long	15361
	.long	264
	.long	7679
	.long	192
	.long	7681
	.long	200
.LC10:
	.string	"key"
.LC11:
	.string	"(int)sizeof(num)"
.LC12:
	.string	"bytes"
	.align 8
.LC13:
	.string	"RSA_set0_key(key, BN_bin2bn(num, bytes, NULL), BN_bin2bn(num, bytes, NULL), NULL)"
.LC14:
	.string	"result"
.LC15:
	.string	"RSA_security_bits(key)"
	.text
	.type	test_rsa_security_bit, @function
test_rsa_security_bit:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$2056, %rsp
	.cfi_offset 3, -24
	movl	%edi, -2052(%rbp)
	call	RSA_new@PLT
	movq	%rax, -32(%rbp)
	movl	-2052(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rsa_security_bits_cases(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-2052(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+rsa_security_bits_cases(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$369, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movl	-44(%rbp), %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$2000, %r9d
	movl	%esi, %r8d
	movl	$369, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L51
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	vals.6(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %ecx
	leaq	-2048(%rbp), %rax
	movq	%rsi, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-44(%rbp), %ecx
	leaq	-2048(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	movl	-44(%rbp), %ecx
	leaq	-2048(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$385, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	movl	-40(%rbp), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_security_bits@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$387, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L52
	movl	$1, -20(%rbp)
	jmp	.L49
.L51:
	nop
	jmp	.L49
.L52:
	nop
.L49:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_rsa_security_bit, .-test_rsa_security_bit
	.section	.rodata
	.align 8
.LC16:
	.string	"(p = BN_bin2bn(p_data, sizeof(p_data), NULL))"
	.align 8
.LC17:
	.string	"(q = BN_bin2bn(q_data, sizeof(q_data), NULL))"
	.align 8
.LC18:
	.string	"(n = BN_bin2bn(n_data, sizeof(n_data), NULL))"
	.align 8
.LC19:
	.string	"(d = BN_bin2bn(d_data, sizeof(d_data), NULL))"
	.align 8
.LC20:
	.string	"(e = BN_bin2bn(e_data, sizeof(e_data), NULL))"
.LC21:
	.string	"(rsa = RSA_new())"
.LC22:
	.string	"(md = EVP_sha256())"
.LC23:
	.string	"(ctx = EVP_MD_CTX_new())"
.LC24:
	.string	"(pkey = EVP_PKEY_new())"
.LC25:
	.string	"RSA_set0_factors(rsa, p, q)"
.LC26:
	.string	"RSA_set0_key(rsa, n, e, d)"
	.align 8
.LC27:
	.string	"EVP_PKEY_assign_RSA(pkey, rsa)"
	.align 8
.LC28:
	.string	"EVP_DigestSignInit(ctx, NULL, md, NULL, pkey)"
	.align 8
.LC29:
	.string	"EVP_DigestSign(ctx, sigbuf, &buflen, msgbuf, msglen)"
	.align 32
.LC0:
	.base64	"AMcoeiiRUaXoPEXPHalpeg3b3Y/i3oXdhW2PeCDWDuUGy5zW08rvHYDTGCORXOXIRDdWG2h/CKMc9ugROA8urbGJiwjoNa87/jeNIdU/H0sBMNjQJPerV62svFNthI6hsluO57Os/GAiEB6Z+qBgAGlfjsptnO5ehE5Tg0J2TbjB6049w86sebspXZIzbs+PWvCztdzVo69ASw8FrEZTLV8glkKoR2FUBSyKJl2SHQEqJ4r8ZCRcNN6SxoLqTeJS5a1iAMbI6Qwi8J6+3FFYrTu6LkVlzFtVRmcYSoBnW4R/EzdF2APGIsNKRmveUL8WCiMLqlBU9iCDdDOXLvKO"
	.ascii	"~\023"
	.align 32
.LC1:
	.base64	"CS3L54e/EBrygDMqBk9WsUHTZdjKcbgCeMi2fCj0bOjRxJJAI6e+n9vaznTaJ7sBrd05mSjVsJLarFpyz3xSxA53SntNUhy9PDk0eHwWyKGu6yc4tPOAMIB4E45GID7Cliaxdh4AabvYK1jkbLTQAAtH7Pt9Up0nkuaVc6A5N80fYBMch52nkZD5NsX6P/l/UPizVGX/b6YizEoeST8HxvJlcxMbLbYV/82aHOrvWFaRLUeBVg3DsEdYjQV9W8AipPAucDYBiaFx7XbpjfVJrxG+5NRIkrZbwgTUDFyL4/opY4a0EK0yB4XiQ3YWkKvfszYKxEl7lUhQco999Ppg"
	.ascii	"\301"
	.align 32
.LC2:
	.base64	"AO33pwBau9FSZZvs/ieL4r5AjC9vtCayvkVLO1qqxqr6wTqpobq3hhqYFV9cHFd4eGoTwkB9B4dHxpbVksllLP674NZ2JVqj35dLZP07K7z7gK07fR9IVif3L46SB6ifvFrO+tVnrfS/4Mk+jrWQWFSSn9o2wA1X/mwjY4vRHk/T"
	.align 32
.LC3:
	.base64	"ANY/9e7/TX2MGoVdPE+d38doJ3/kT0/XojvNSjTYVUo+jrOo6YrFlNEJMkt5jXsDC13KkUG8gsOJZ00DaAMtDk6XbPY+H/RQBl0FIvL48t6tLp3DlxvDdeeG3sURie1qExQjS5iB99Qc7jCShSBPNQL62hR3+gg0YMeTctzEGHDB"
	.text
	.type	test_EVP_rsa_legacy_key, @function
test_EVP_rsa_legacy_key:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1376, %rsp
	movq	$384, -96(%rbp)
	movq	$64, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-816(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$32, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movzbl	(%rdx), %ecx
	movb	%cl, (%rax)
	movw	$1, -819(%rbp)
	movb	$1, -817(%rbp)
	movq	.LC1(%rip), %rax
	movq	8+.LC1(%rip), %rdx
	movq	%rax, -1088(%rbp)
	movq	%rdx, -1080(%rbp)
	movq	16+.LC1(%rip), %rax
	movq	24+.LC1(%rip), %rdx
	movq	%rax, -1072(%rbp)
	movq	%rdx, -1064(%rbp)
	movq	32+.LC1(%rip), %rax
	movq	40+.LC1(%rip), %rdx
	movq	%rax, -1056(%rbp)
	movq	%rdx, -1048(%rbp)
	movq	48+.LC1(%rip), %rax
	movq	56+.LC1(%rip), %rdx
	movq	%rax, -1040(%rbp)
	movq	%rdx, -1032(%rbp)
	movq	64+.LC1(%rip), %rax
	movq	72+.LC1(%rip), %rdx
	movq	%rax, -1024(%rbp)
	movq	%rdx, -1016(%rbp)
	movq	80+.LC1(%rip), %rax
	movq	88+.LC1(%rip), %rdx
	movq	%rax, -1008(%rbp)
	movq	%rdx, -1000(%rbp)
	movq	96+.LC1(%rip), %rax
	movq	104+.LC1(%rip), %rdx
	movq	%rax, -992(%rbp)
	movq	%rdx, -984(%rbp)
	movq	112+.LC1(%rip), %rax
	movq	120+.LC1(%rip), %rdx
	movq	%rax, -976(%rbp)
	movq	%rdx, -968(%rbp)
	movq	128+.LC1(%rip), %rax
	movq	136+.LC1(%rip), %rdx
	movq	%rax, -960(%rbp)
	movq	%rdx, -952(%rbp)
	movq	144+.LC1(%rip), %rax
	movq	152+.LC1(%rip), %rdx
	movq	%rax, -944(%rbp)
	movq	%rdx, -936(%rbp)
	movq	160+.LC1(%rip), %rax
	movq	168+.LC1(%rip), %rdx
	movq	%rax, -928(%rbp)
	movq	%rdx, -920(%rbp)
	movq	176+.LC1(%rip), %rax
	movq	184+.LC1(%rip), %rdx
	movq	%rax, -912(%rbp)
	movq	%rdx, -904(%rbp)
	movq	192+.LC1(%rip), %rax
	movq	200+.LC1(%rip), %rdx
	movq	%rax, -896(%rbp)
	movq	%rdx, -888(%rbp)
	movq	208+.LC1(%rip), %rax
	movq	216+.LC1(%rip), %rdx
	movq	%rax, -880(%rbp)
	movq	%rdx, -872(%rbp)
	movq	224+.LC1(%rip), %rax
	movq	232+.LC1(%rip), %rdx
	movq	%rax, -864(%rbp)
	movq	%rdx, -856(%rbp)
	movq	240+.LC1(%rip), %rax
	movq	248+.LC1(%rip), %rdx
	movq	%rax, -848(%rbp)
	movq	%rdx, -840(%rbp)
	movq	.LC2(%rip), %rax
	movq	8+.LC2(%rip), %rdx
	movq	%rax, -1232(%rbp)
	movq	%rdx, -1224(%rbp)
	movq	16+.LC2(%rip), %rax
	movq	24+.LC2(%rip), %rdx
	movq	%rax, -1216(%rbp)
	movq	%rdx, -1208(%rbp)
	movq	32+.LC2(%rip), %rax
	movq	40+.LC2(%rip), %rdx
	movq	%rax, -1200(%rbp)
	movq	%rdx, -1192(%rbp)
	movq	48+.LC2(%rip), %rax
	movq	56+.LC2(%rip), %rdx
	movq	%rax, -1184(%rbp)
	movq	%rdx, -1176(%rbp)
	movq	64+.LC2(%rip), %rax
	movq	72+.LC2(%rip), %rdx
	movq	%rax, -1168(%rbp)
	movq	%rdx, -1160(%rbp)
	movq	80+.LC2(%rip), %rax
	movq	88+.LC2(%rip), %rdx
	movq	%rax, -1152(%rbp)
	movq	%rdx, -1144(%rbp)
	movq	96+.LC2(%rip), %rax
	movq	104+.LC2(%rip), %rdx
	movq	%rax, -1136(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	112+.LC2(%rip), %rax
	movq	120+.LC2(%rip), %rdx
	movq	%rax, -1120(%rbp)
	movq	%rdx, -1112(%rbp)
	movzbl	128+.LC2(%rip), %eax
	movb	%al, -1104(%rbp)
	movq	.LC3(%rip), %rax
	movq	8+.LC3(%rip), %rdx
	movq	%rax, -1376(%rbp)
	movq	%rdx, -1368(%rbp)
	movq	16+.LC3(%rip), %rax
	movq	24+.LC3(%rip), %rdx
	movq	%rax, -1360(%rbp)
	movq	%rdx, -1352(%rbp)
	movq	32+.LC3(%rip), %rax
	movq	40+.LC3(%rip), %rdx
	movq	%rax, -1344(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	48+.LC3(%rip), %rax
	movq	56+.LC3(%rip), %rdx
	movq	%rax, -1328(%rbp)
	movq	%rdx, -1320(%rbp)
	movq	64+.LC3(%rip), %rax
	movq	72+.LC3(%rip), %rdx
	movq	%rax, -1312(%rbp)
	movq	%rdx, -1304(%rbp)
	movq	80+.LC3(%rip), %rax
	movq	88+.LC3(%rip), %rdx
	movq	%rax, -1296(%rbp)
	movq	%rdx, -1288(%rbp)
	movq	96+.LC3(%rip), %rax
	movq	104+.LC3(%rip), %rdx
	movq	%rax, -1280(%rbp)
	movq	%rdx, -1272(%rbp)
	movq	112+.LC3(%rip), %rax
	movq	120+.LC3(%rip), %rdx
	movq	%rax, -1264(%rbp)
	movq	%rdx, -1256(%rbp)
	movzbl	128+.LC3(%rip), %eax
	movb	%al, -1248(%rbp)
	leaq	-544(%rbp), %rax
	movl	$64, %edx
	movl	$239, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-1232(%rbp), %rax
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$489, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	leaq	-1376(%rbp), %rax
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$490, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	leaq	-816(%rbp), %rax
	movl	$0, %edx
	movl	$257, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$491, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	leaq	-1088(%rbp), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$492, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	leaq	-819(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$493, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	call	RSA_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$494, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	call	EVP_sha256@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$495, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$496, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	call	EVP_PKEY_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$497, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$498, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$499, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$500, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	movq	-16(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$501, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	movq	-24(%rbp), %rdi
	leaq	-544(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-480(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$502, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movl	$0, %eax
.L55:
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-84(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_EVP_rsa_legacy_key, .-test_EVP_rsa_legacy_key
	.section	.rodata
.LC30:
	.string	"rsa = RSA_new()"
	.align 8
.LC31:
	.string	"pn == NULL || pe == NULL || (priv && pd == NULL) || !RSA_set0_key(rsa, pn, pe, pd)"
	.text
	.type	load_key, @function
load_key:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	call	RSA_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$559, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	leaq	n.5(%rip), %rax
	movl	$0, %edx
	movl	$257, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -24(%rbp)
	leaq	e.4(%rip), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L60
	leaq	d.3(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -16(%rbp)
.L60:
	cmpq	$0, -24(%rbp)
	je	.L61
	cmpq	$0, -32(%rbp)
	je	.L61
	cmpl	$0, -36(%rbp)
	je	.L62
	cmpq	$0, -16(%rbp)
	je	.L61
.L62:
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	jne	.L63
.L61:
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$565, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L65
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	$0, -8(%rbp)
.L65:
	movq	-8(%rbp), %rax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	load_key, .-load_key
	.section	.rodata
.LC32:
	.string	"rsa_priv = load_key(1)"
.LC33:
	.string	"rsa_pub = load_key(0)"
.LC34:
	.string	"RSA_size(rsa_priv)"
.LC35:
	.string	"(int)sizeof(sig)"
	.align 8
.LC36:
	.string	"RSA_sign_ASN1_OCTET_STRING(0, in, inlen, sig, &siglen, rsa_priv)"
	.align 8
.LC37:
	.string	"RSA_verify_ASN1_OCTET_STRING(0, in, inlen, sig, siglen, rsa_pub)"
	.align 8
.LC38:
	.string	"RSA_sign_ASN1_OCTET_STRING(0, in, inlen + 1, sig, &siglen, rsa_priv)"
	.align 8
.LC39:
	.string	"RSA_sign_ASN1_OCTET_STRING(0, in, inlen, sig, &siglen, rsa_pub)"
	.align 8
.LC40:
	.string	"RSA_verify_ASN1_OCTET_STRING(0, in, inlen, sig, siglen - 1, rsa_pub)"
	.align 8
.LC41:
	.string	"RSA_verify_ASN1_OCTET_STRING(0, in, inlen, (unsigned char *)no_octet_sig, (unsigned int)sizeof(no_octet_sig), rsa_pub)"
	.align 8
.LC42:
	.string	"RSA_verify_ASN1_OCTET_STRING(0, in, inlen, (unsigned char *)sig_mismatch, (unsigned int)sizeof(sig_mismatch), rsa_pub)"
	.text
	.type	test_rsa_saos, @function
test_rsa_saos:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$242, -28(%rbp)
	movl	$1, %edi
	call	load_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$659, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L80
	movl	$0, %edi
	call	load_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$661, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	%esi, %r9d
	movl	$256, %r8d
	movl	$663, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L82
	movq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	movl	-28(%rbp), %eax
	leaq	in.2(%rip), %rsi
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$0, %edi
	call	RSA_sign_ASN1_OCTET_STRING@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$667, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdi
	leaq	-288(%rbp), %rdx
	movl	-28(%rbp), %eax
	leaq	in.2(%rip), %rsi
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$0, %edi
	call	RSA_verify_ASN1_OCTET_STRING@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$670, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L84
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-288(%rbp), %rax
	leaq	in.2(%rip), %rsi
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %edi
	call	RSA_sign_ASN1_OCTET_STRING@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$674, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L85
	movq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	movl	-28(%rbp), %eax
	leaq	in.2(%rip), %rsi
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$0, %edi
	call	RSA_sign_ASN1_OCTET_STRING@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$679, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L86
	movl	-32(%rbp), %eax
	leal	-1(%rax), %edi
	movq	-16(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	movl	-28(%rbp), %eax
	leaq	in.2(%rip), %rsi
	movq	%rcx, %r9
	movl	%edi, %r8d
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$0, %edi
	call	RSA_verify_ASN1_OCTET_STRING@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$684, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L87
	movq	-16(%rbp), %rcx
	leaq	no_octet_sig.1(%rip), %rdx
	movl	-28(%rbp), %eax
	leaq	in.2(%rip), %rsi
	movq	%rcx, %r9
	movl	$256, %r8d
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$0, %edi
	call	RSA_verify_ASN1_OCTET_STRING@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$688, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L88
	movq	-16(%rbp), %rcx
	leaq	sig_mismatch.0(%rip), %rdx
	movl	-28(%rbp), %eax
	leaq	in.2(%rip), %rsi
	movq	%rcx, %r9
	movl	$256, %r8d
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$0, %edi
	call	RSA_verify_ASN1_OCTET_STRING@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$694, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L89
	movzbl	-288(%rbp), %eax
	addl	$1, %eax
	movb	%al, -288(%rbp)
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdi
	leaq	-288(%rbp), %rdx
	movl	-28(%rbp), %eax
	leaq	in.2(%rip), %rsi
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$0, %edi
	call	RSA_verify_ASN1_OCTET_STRING@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movl	%eax, %ecx
	movl	$701, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L90
	movzbl	-288(%rbp), %eax
	subl	$1, %eax
	movb	%al, -288(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L68
.L80:
	nop
	jmp	.L68
.L81:
	nop
	jmp	.L68
.L82:
	nop
	jmp	.L68
.L83:
	nop
	jmp	.L68
.L84:
	nop
	jmp	.L68
.L85:
	nop
	jmp	.L68
.L86:
	nop
	jmp	.L68
.L87:
	nop
	jmp	.L68
.L88:
	nop
	jmp	.L68
.L89:
	nop
	jmp	.L68
.L90:
	nop
.L68:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_rsa_saos, .-test_rsa_saos
	.section	.rodata
.LC43:
	.string	"test_rsa_pkcs1"
.LC44:
	.string	"test_rsa_oaep"
.LC45:
	.string	"test_rsa_security_bit"
.LC46:
	.string	"test_rsa_saos"
.LC47:
	.string	"test_EVP_rsa_legacy_key"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_rsa_pkcs1(%rip), %rsi
	leaq	.LC43(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rsa_oaep(%rip), %rsi
	leaq	.LC44(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rsa_security_bit(%rip), %rsi
	leaq	.LC45(%rip), %rax
	movl	$1, %ecx
	movl	$17, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rsa_saos(%rip), %rdx
	leaq	.LC46(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_EVP_rsa_legacy_key(%rip), %rdx
	leaq	.LC47(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	setup_tests, .-setup_tests
	.data
	.align 32
	.type	d.35, @object
	.size	d.35, 65
d.35:
	.base64	"CgM3SGJkh2lfXzC8OLmLRMLNLf9DQJjNINihONCQv2R5fD+nos3LPNHgvbomVLT5346K5Z1zPZ8zswFiSv0dUQA="
	.type	e.34, @object
	.size	e.34, 2
e.34:
	.string	"\021"
	.align 32
	.type	n.33, @object
	.size	n.33, 66
n.33:
	.base64	"AKo2q86IrP3/VVI8f8RSP5DvoA3zd0olny5itMXZnLWtswCgKF5TAZMODHD7aHaTnOYWzmJKEeAIbTQevKygofUA"
	.align 32
	.type	q.32, @object
	.size	q.32, 34
q.32:
	.base64	"AMl/sfAn9FP2NBIz6qrR2TU/bELQiGax0FoPIDUCi52JAA=="
	.align 32
	.type	p.31, @object
	.size	p.31, 34
p.31:
	.base64	"ANhAtBZmtC6S6g2jtDIEtc/OM1JSTQQWpaRB5wCvRhINAA=="
	.align 32
	.type	iqmp.30, @object
	.size	iqmp.30, 33
iqmp.30:
	.base64	"Nj/3GJ2o6QsdNB9x0Jt2qKlD4R0Qsk0kny3q/vgMGCYA"
	.align 32
	.type	dmq1.29, @object
	.size	dmq1.29, 34
dmq1.29:
	.base64	"AI48BSH+FeDqBqNv8PEMmVLDW3p1FP0yOLgKrVKYYo1RAA=="
	.align 32
	.type	dmp1.28, @object
	.size	dmp1.28, 33
dmp1.28:
	.base64	"WQuVcqLCqcQGBZ3Cqy8dr+t+i08Qp1Seju31tPzgngUA"
	.align 32
	.type	ctext_ex.27, @object
	.size	ctext_ex.27, 65
ctext_ex.27:
	.base64	"G48F+coaeVJuU/PMUU/biSv7kZMjHni5kuaNUKSAy1IziVx0lY1dAquMD9BA61hEsAXDntgnSp2/qAZxQJQ50gA="
	.align 32
	.type	d.26, @object
	.size	d.26, 51
d.26:
	.base64	"bK+8YJSz/kxysLMyxvslordiKYBOaGX8pFp03w+PuEE7UsDQ5T2bWQ/xm+efSd0h5esA"
	.type	e.25, @object
	.size	e.25, 2
e.25:
	.string	"\003"
	.align 32
	.type	n.24, @object
	.size	n.24, 52
n.24:
	.base64	"AKMHmpDfDf1yrAkMzCp4uHQTEz5AdZyY+vggTzWKCyY8Z3Dng6k7aXG3N3nScXvoNHfPAA=="
	.align 16
	.type	q.23, @object
	.size	q.23, 27
q.23:
	.base64	"AMl/sfAn9FP2NBIz6qrR2TU/bELQiGax0F8A"
	.align 16
	.type	p.22, @object
	.size	p.22, 27
p.22:
	.base64	"AM8gNQKLnYaYQLQWZrQukuoNo7QyBLXPzpEA"
	.align 16
	.type	iqmp.21, @object
	.size	iqmp.21, 27
iqmp.21:
	.base64	"AIPv77ippA0dtu2YrYTtEzXcwQjzItBXz40A"
	.align 16
	.type	dmq1.20, @object
	.size	dmq1.20, 27
dmq1.20:
	.base64	"AIZVIUrFTY1OzWF38cc2kM4qSCyLBZnL4D8A"
	.align 16
	.type	dmp1.19, @object
	.size	dmp1.19, 27
dmp1.19:
	.base64	"AIoVeKxdE68QKyK5mc10YfFebSLMAyPf3wsA"
	.align 32
	.type	ctext_ex.18, @object
	.size	ctext_ex.18, 51
ctext_ex.18:
	.base64	"FL3dKMmDNRkjgOjlSbFYKotAtEhtA6alMR8f1fChgOQXUwMpqTSQdLFSE1QpCCRSYlEA"
	.align 32
	.type	d.17, @object
	.size	d.17, 130
d.17:
	.base64	"AKXa/FNB+vKJxLmI2zDBzfg/MSUeBmi0J4SBOAFXlkGylBCzx5mNa8RldF5cOSZp1ocNosCCqTnjf9y4Lsk+2sl/861ZUKzPvBEcdvGpUpRE5WqvaMVsCSzTjcO+9dIKk5km7U90oT7d++GhzsxIlK+UKMK3uIg/5EY6S8hbHLPBAA=="
	.type	e.16, @object
	.size	e.16, 2
e.16:
	.string	"\021"
	.align 32
	.type	n.15, @object
	.size	n.15, 130
n.15:
	.base64	"ALv4LwkGgs6cIzisK52ocfc2jQfu1BBDpEDWtvB0VPUfuN+6rwNcAqth6kjO62/NSHbtUg1g4exGGXGdiluLgH+vuOCj38c3cj7mtLfZOiWE7mpknQYJU3SINLJFRZg5TuCqsS17YaUfUnqaQfbBaH/iU3KYyiqPWUb45f0JHb3LAA=="
	.align 32
	.type	q.14, @object
	.size	q.14, 66
q.14:
	.base64	"AMl/sfAn9FP2NBIz6qrR2TU/bELQiGax0FoPIDUCi52GmEC0Fma0LpLqDaO0MgS1z84zUlJNBBalpEHnAK9GFQMA"
	.align 32
	.type	p.13, @object
	.size	p.13, 66
p.13:
	.base64	"AO7ProGxubPJCIELEKG1YAGZ659ErvT9pJO4Gp49hPYyEk7wI25dHjt+KPrnqgQKLVslIXZFnR85dUG6Klj7ZZkA"
	.align 32
	.type	iqmp.12, @object
	.size	iqmp.12, 66
iqmp.12:
	.base64	"ALBsT9q7YwEZjSZb266UI7OA8nH3NFOIUJMHf8054hGfyYYyFU9Yg7FnqWe/QCtOni4PllbmmOo2Zu37JXmAOfcA"
	.align 32
	.type	dmq1.11, @object
	.size	dmq1.11, 65
dmq1.11:
	.base64	"Rx4CkP8K8HUDUbf4eIZMqWGtvTqKfpkcXAVWqUwxRqf5gD+Pb4rjQukx/YrkeiING5mklYSYB/45+SRamDbaPQA="
	.align 32
	.type	dmp1.10, @object
	.size	dmp1.10, 65
dmp1.10:
	.base64	"VElMpj66Azfk4kAj/NaaWusH3dwBg6TQrJtUsFHysT7ZSQl16rd0FP9ZwfdpLpouICs4/JEKR0F0rck8H2fJgQA="
	.align 32
	.type	ctext_ex.9, @object
	.size	ctext_ex.9, 129
ctext_ex.9:
	.base64	"uCRrVqbtWIGutYXZolsq15DEF+CAaBvxrCvD3radi87wxDZv7EAK8FKnLpsO/7Wz8vGS2+rKA8EnQAVxE78fBmmsIunzp4UuPBXZE8qwuIY6lcmSlM6GdCFJVGEDRvTUdLJvfEi0LuaOH1cqH8QCasRWtPWfe2IeobnYj2QgL7EA"
	.align 8
	.type	ptext_ex.8, @object
	.size	ptext_ex.8, 9
ptext_ex.8:
	.base64	"VIWbNCxJ6ioA"
	.align 8
	.type	ptext_ex.7, @object
	.size	ptext_ex.7, 9
ptext_ex.7:
	.base64	"VIWbNCxJ6ioA"
	.section	.rodata
	.align 8
	.type	vals.6, @object
	.size	vals.6, 8
vals.6:
	.base64	"gAECBAgQIEA="
	.align 32
	.type	n.5, @object
	.size	n.5, 257
n.5:
	.base64	"AL4kFPI53hmz14Ye+NOXn3goTL/vAynF65cY26UXB1eW4kWRK9KeKGGnjzmq3pRtKznevs/XKRY6GoYv/3ovEsSKMgZvQEI3ql+vQHelcwm/xYV5wDjWty938Fqvr8NjS+qiDCfNfHf0KVppvf4XtsXXwED5KUYfwEvPTo902cjQ3pxIV8wwvAZHSo5AiqEqCY3oQT0hUtycqUNjAUSz7CIGKfbY9mvDNiWwm9uaIlETQr0oC9herMdxbnj89B10mxoZE1YEtDNO7VRZf3FdJBiRUSA5eE4zc5aoEi//SMIRM5XlzBriOdVXRFFZ0TViFiL1Uj3gmy0zNHUTfWJw"
	.ascii	"S1"
	.type	e.4, @object
	.size	e.4, 3
e.4:
	.base64	"AQAB"
	.align 32
	.type	d.3, @object
	.size	d.3, 256
d.3:
	.base64	"C9MHerAMsuNdSX/g9FshMZYrfjLfWuxeEBSdmarYw/qcDgyW6aNYYmjKulDJBFjU46WZjwgry+AfhMVkvUjiwVZRAbeOyuNmcOp/j0U6pgI/FsOtV5eKNy1ttP0ImJVy69epmvrPVRAZ9398j0nzHcLy17OK/Jt2QFynL3qKPd+8UmmZ+Et6vxFdMUFfo7l0r+QIGZ+IyvuOq6QAMcnxd+nj8ZjZBAgMODVLzKsi34Tq5C5XpcGRDDQ7iLwU7m7j8ODcrtYMm6BttpJsfgVGArwjvGXmYgQZ5phnLRUKxOq1YqBU7QdFPiGTPiLQw8o3POqQ3aaxbHbOWuHCgB8y"
	.ascii	"!"
	.align 32
	.type	in.2, @object
	.size	in.2, 256
in.2:
	.zero	256
	.align 32
	.type	no_octet_sig.1, @object
	.size	no_octet_sig.1, 256
no_octet_sig.1:
	.base64	"eK8+0byZsxmoqmRWYJWggdi04Zz4lPoxtd6Qdafb1H7aYt4WeE+bwqTUXBdPLfKEW10AoM/aP7xAtE7LGOtLD86VOlqcSbRj1N774qjzl1I2PsCryBzv3fQ3vPPDZ/bAbnWm8343lvK7JTqgqI7OoM4PIi2cMA0gNsadNl1bPrx8VZW0aRkn9mN4IS3PUbBGRAIpk6Ub2iGzdPZO0Ns9Wf3XiNAvhPaxqs4+oNwa0ONfPNqW7s75dc+N8wMopzm9lapzvqVfhDMHSb8D+EtGvzjUmxSnAbcfEggB7c009bQGR+BTHHw/tTBZu+PWfEHM0hFzA3d/X61KVN8XlJdc"
	.ascii	"\026"
	.align 32
	.type	sig_mismatch.0, @object
	.size	sig_mismatch.0, 256
sig_mismatch.0:
	.base64	"X2Sr04bfbpGo2502ehXldeQn3+uNr7Bg7DaLADa0YTj++klVz7f/6yWlQR6qdD1X7VxKAZ6yULxQFdWXk5GXo/9nKukE3TFvS0RPBKBIasGNwvP3xIwpyywEjzBxu1v5+Rvo8OjRz3P2AkVvUyUedJRu9A02bKOuj5QFqellJn8HxX6r2ekJLRmMaszVYgS0m6+Zanp77wGbwUZZiO6L1+U1rUyyDZPdDlA2K3tCm1mV5+E2UId8rEcTm6c234rX7n0uprsxMu05d/JB+S0p/G0yjjWZOIvZxncJ4+MGmOGW6SMR6wmiayFSZ5QVcn7dZhzn2w5xXZWd+I5lly8a"
	.ascii	"\206"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
