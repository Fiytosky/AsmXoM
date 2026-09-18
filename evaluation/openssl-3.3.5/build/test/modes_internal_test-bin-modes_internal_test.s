	.file	"modes_internal_test.c"
	.text
	.section	.rodata
	.align 16
	.type	cts128_test_key, @object
	.size	cts128_test_key, 16
cts128_test_key:
	.ascii	"chicken teriyaki"
	.align 32
	.type	cts128_test_input, @object
	.size	cts128_test_input, 64
cts128_test_input:
	.ascii	"I would like the General Gau's Chicken, please, and wonton s"
	.ascii	"oup."
	.align 16
	.type	cts128_test_iv, @object
	.size	cts128_test_iv, 16
cts128_test_iv:
	.zero	16
	.align 16
	.type	vector_17, @object
	.size	vector_17, 17
vector_17:
	.base64	"xjU1aPK/jLTYpYA2Laf/f5c="
	.align 16
	.type	vector_31, @object
	.size	vector_31, 31
vector_31:
	.base64	"/AB4Pg79ssHURdTI7/ftIpdocmjW7MzAwHsl4l7P5Q=="
	.align 32
	.type	vector_32, @object
	.size	vector_32, 32
vector_32:
	.base64	"OTElI6eGYtW+f8vMmOv1qJdocmjW7MzAwHsl4l7P5YQ="
	.align 32
	.type	vector_47, @object
	.size	vector_47, 47
vector_47:
	.base64	"l2hyaNbszMDAeyXiXs/lhLP//ZQMFqGMG1VJ0vg4Ap45MSUjp4Zi1b5/y8yY6/U="
	.align 32
	.type	vector_48, @object
	.size	vector_48, 48
vector_48:
	.base64	"l2hyaNbszMDAeyXiXs/lhJ2ti7uWxM3AO8ED4aGUu9g5MSUjp4Zi1b5/y8yY6/Wo"
	.align 32
	.type	vector_64, @object
	.size	vector_64, 64
vector_64:
	.base64	"l2hyaNbszMDAeyXiXs/lhDkxJSOnhmLVvn/LzJjr9ahIB+/oNu6JpSZzDbwve8hAna2Lu5bEzcA7wQPhoZS72A=="
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	aes_cts128_vectors, @object
	.size	aes_cts128_vectors, 96
aes_cts128_vectors:
	.quad	17
	.quad	vector_17
	.quad	31
	.quad	vector_31
	.quad	32
	.quad	vector_32
	.quad	47
	.quad	vector_47
	.quad	48
	.quad	vector_48
	.quad	64
	.quad	vector_64
	.text
	.type	cts128_encrypt_key_schedule, @function
cts128_encrypt_key_schedule:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	init_key.5(%rip), %eax
	testl	%eax, %eax
	je	.L2
	leaq	ks.4(%rip), %rdx
	leaq	cts128_test_key(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movl	$0, init_key.5(%rip)
.L2:
	leaq	ks.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	cts128_encrypt_key_schedule, .-cts128_encrypt_key_schedule
	.type	cts128_decrypt_key_schedule, @function
cts128_decrypt_key_schedule:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	init_key.3(%rip), %eax
	testl	%eax, %eax
	je	.L5
	leaq	ks.2(%rip), %rdx
	leaq	cts128_test_key(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movl	$0, init_key.3(%rip)
.L5:
	leaq	ks.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	cts128_decrypt_key_schedule, .-cts128_decrypt_key_schedule
	.type	last_blocks_correction, @function
last_blocks_correction:
.LFB470:
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
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movq	$16, -8(%rbp)
.L8:
	addq	$16, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	last_blocks_correction, .-last_blocks_correction
	.type	last_blocks_correction_nist, @function
last_blocks_correction_nist:
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
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movq	$16, -8(%rbp)
.L11:
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	$16, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	last_blocks_correction_nist, .-last_blocks_correction_nist
	.section	.rodata
.LC0:
	.string	"%s_vector_%lu"
.LC1:
	.string	"../test/modes_internal_test.c"
.LC2:
	.string	"len"
	.align 8
.LC3:
	.string	"fixture->encrypt_block(test_input, ciphertext, len, encrypt_key_schedule, iv, (block128_f)AES_encrypt)"
.LC4:
	.string	"vector"
.LC5:
	.string	"ciphertext"
.LC6:
	.string	"vector + len - tail"
.LC7:
	.string	"iv"
	.align 8
.LC8:
	.string	"len == size || len + 16 == size"
.LC9:
	.string	"test_input"
.LC10:
	.string	"cleartext"
	.align 8
.LC11:
	.string	"fixture->encrypt_stream(test_input, ciphertext, len, encrypt_key_schedule, iv, (cbc128_f) AES_cbc_encrypt)"
	.align 8
.LC12:
	.string	"fixture->decrypt_stream(ciphertext, cleartext, len, decrypt_key_schedule, iv, (cbc128_f)AES_cbc_encrypt)"
	.text
	.type	execute_cts128, @function
execute_cts128:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movl	%esi, -300(%rbp)
	leaq	cts128_test_iv(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$16, -16(%rbp)
	movl	-300(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+aes_cts128_vectors(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-300(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	aes_cts128_vectors(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	cts128_test_input(%rip), %rax
	movq	%rax, -40(%rbp)
	call	cts128_encrypt_key_schedule
	movq	%rax, -48(%rbp)
	call	cts128_decrypt_key_schedule
	movq	%rax, -56(%rbp)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$197, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-296(%rbp), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rdx
	leaq	-288(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-296(%rbp), %rax
	movq	16(%rax), %r10
	movq	AES_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$203, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L14
	movq	-32(%rbp), %r8
	leaq	-224(%rbp), %rdi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-32(%rbp)
	leaq	-288(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$206, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L14
	movq	-32(%rbp), %rax
	subq	-64(%rbp), %rax
	leaq	-288(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	-96(%rbp), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$207, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L15
.L14:
	movl	$0, %eax
	jmp	.L26
.L15:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-296(%rbp), %rax
	movq	32(%rax), %r10
	movq	AES_decrypt@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	leaq	-96(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L17
	movq	-32(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -72(%rbp)
	jne	.L18
.L17:
	movl	$1, %ecx
	jmp	.L19
.L18:
	movl	$0, %ecx
.L19:
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L20
	movq	-32(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$216, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L20
	movq	-32(%rbp), %rax
	subq	-64(%rbp), %rax
	leaq	-288(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	-96(%rbp), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$217, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L21
.L20:
	movl	$0, %eax
	jmp	.L26
.L21:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-296(%rbp), %rax
	movq	24(%rax), %r10
	movq	AES_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC2(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$222, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L22
	movq	-32(%rbp), %r8
	leaq	-224(%rbp), %rdi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-32(%rbp)
	leaq	-288(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$226, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L22
	movq	-32(%rbp), %rax
	subq	-64(%rbp), %rax
	leaq	-288(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	-96(%rbp), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$227, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L23
.L22:
	movl	$0, %eax
	jmp	.L26
.L23:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-296(%rbp), %rax
	movq	40(%rax), %r10
	movq	AES_cbc_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	leaq	-96(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC2(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$232, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-32(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$236, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L24
	movq	-32(%rbp), %rax
	subq	-64(%rbp), %rax
	leaq	-288(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	-96(%rbp), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$237, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L25
.L24:
	movl	$0, %eax
	jmp	.L26
.L25:
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	execute_cts128, .-execute_cts128
	.type	test_aes_cts128, @function
test_aes_cts128:
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
	leaq	fixture_cts128.1(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	execute_cts128
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_aes_cts128, .-test_aes_cts128
	.type	test_aes_cts128_nist, @function
test_aes_cts128_nist:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	fixture_cts128_nist.0(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	execute_cts128
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_aes_cts128_nist, .-test_aes_cts128_nist
	.section	.rodata
	.align 16
	.type	K1, @object
	.size	K1, 16
K1:
	.zero	16
	.type	P1, @object
	.size	P1, 1
P1:
	.zero	1
	.type	A1, @object
	.size	A1, 1
A1:
	.zero	1
	.align 8
	.type	IV1, @object
	.size	IV1, 12
IV1:
	.zero	12
	.type	C1, @object
	.size	C1, 1
C1:
	.zero	1
	.align 16
	.type	T1, @object
	.size	T1, 16
T1:
	.base64	"WOL8zvp+MGE2fx1XpOdFWg=="
	.align 16
	.type	P2, @object
	.size	P2, 16
P2:
	.zero	16
	.align 16
	.type	C2, @object
	.size	C2, 16
C2:
	.base64	"A4jazmC2o5LzKMK5cbL+eA=="
	.align 16
	.type	T2, @object
	.size	T2, 16
T2:
	.base64	"q25H1CzsE731OmeyEle93w=="
	.align 16
	.type	K3, @object
	.size	K3, 16
K3:
	.base64	"/v/pkoZlcxxtao+UZzCDCA=="
	.align 32
	.type	P3, @object
	.size	P3, 64
P3:
	.base64	"2TEyJfiEBuWlWQnFr/UmmoanqVMVNPfaLkwwPYoxinIcPAyVlWgJUy/PDiRJprUlsWrt9aoN5le6Y3s5Gq/SVQ=="
	.align 8
	.type	IV3, @object
	.size	IV3, 12
IV3:
	.base64	"yv66vvrO263eyviI"
	.align 32
	.type	C3, @object
	.size	C3, 64
C3:
	.base64	"QoMewiF3dCRLciG3hNDUnOOqIS8sAqTgNcF+IymsoS4h1RSyVGaTHH2PalqshKoFG6MLOWoKrJc9WOCRRz9ZhQ=="
	.align 16
	.type	T3, @object
	.size	T3, 16
T3:
	.base64	"TVwq8yfNZKYs81q9K6b6tA=="
	.align 32
	.type	P4, @object
	.size	P4, 60
P4:
	.base64	"2TEyJfiEBuWlWQnFr/UmmoanqVMVNPfaLkwwPYoxinIcPAyVlWgJUy/PDiRJprUlsWrt9aoN5le6Y3s5"
	.align 16
	.type	A4, @object
	.size	A4, 20
A4:
	.base64	"/u36zt6tvu/+7frO3q2+76ut2tI="
	.align 32
	.type	C4, @object
	.size	C4, 60
C4:
	.base64	"QoMewiF3dCRLciG3hNDUnOOqIS8sAqTgNcF+IymsoS4h1RSyVGaTHH2PalqshKoFG6MLOWoKrJc9WOCR"
	.align 16
	.type	T4, @object
	.size	T4, 16
T4:
	.base64	"W8lPvDIhpduU+ula5xIaRw=="
	.align 8
	.type	IV5, @object
	.size	IV5, 8
IV5:
	.base64	"yv66vvrO260="
	.align 32
	.type	C5, @object
	.size	C5, 60
C5:
	.base64	"YTU7TCgGk0p3f/UfoipHVWmbKnFPzcb4N2bl+XtsdCNzgGkA5J8ksisJdUTUiWtCSYm14eusDwfCP0WY"
	.align 16
	.type	T5, @object
	.size	T5, 16
T5:
	.base64	"NhLS5547B4VWG+FKrKL8yw=="
	.align 32
	.type	IV6, @object
	.size	IV6, 60
IV6:
	.base64	"kxMiXfiEBuVVkJxa/1Jpqmp6lThTT32h5MMD0qMYpyjDwMlRVoCVOfzw4kKaa1JUFq7b9aDealemN7Ob"
	.align 32
	.type	C6, @object
	.size	C6, 60
C6:
	.base64	"jOJJmGJWFbYDoDOsoT+4lL6REqXDohGouiYqPMp+LKcB5Kmk+6Q8kMzcsoHUjHxv1ih10qykFwNMNK7l"
	.align 16
	.type	T6, @object
	.size	T6, 16
T6:
	.base64	"YZzFrv/+C/pGKvQ8FpnQUA=="
	.align 16
	.type	K7, @object
	.size	K7, 24
K7:
	.zero	24
	.type	P7, @object
	.size	P7, 1
P7:
	.zero	1
	.type	A7, @object
	.size	A7, 1
A7:
	.zero	1
	.align 8
	.type	IV7, @object
	.size	IV7, 12
IV7:
	.zero	12
	.type	C7, @object
	.size	C7, 1
C7:
	.zero	1
	.align 16
	.type	T7, @object
	.size	T7, 16
T7:
	.base64	"zTOyisdz90ugDtHzElckNQ=="
	.align 16
	.type	P8, @object
	.size	P8, 16
P8:
	.zero	16
	.align 16
	.type	C8, @object
	.size	C8, 16
C8:
	.base64	"mOckfAfw/kEcJn5DhLD2AA=="
	.align 16
	.type	T8, @object
	.size	T8, 16
T8:
	.base64	"L/WNgAM5J6uO9NRYdRTw+w=="
	.align 16
	.type	K9, @object
	.size	K9, 24
K9:
	.base64	"/v/pkoZlcxxtao+UZzCDCP7/6ZKGZXMc"
	.align 32
	.type	P9, @object
	.size	P9, 64
P9:
	.base64	"2TEyJfiEBuWlWQnFr/UmmoanqVMVNPfaLkwwPYoxinIcPAyVlWgJUy/PDiRJprUlsWrt9aoN5le6Y3s5Gq/SVQ=="
	.align 8
	.type	IV9, @object
	.size	IV9, 12
IV9:
	.base64	"yv66vvrO263eyviI"
	.align 32
	.type	C9, @object
	.size	C9, 64
C9:
	.base64	"OYDKCzwA6EHrBvrEhyonV4WeHOqm79mEYoWTtAyh4Zx9dz0AwUTFJaxhnRjISj9HGOJEiy/jJNnM2icQrK3iVg=="
	.align 16
	.type	T9, @object
	.size	T9, 16
T9:
	.base64	"mSSnyFhzNr+xGAJNuGdKFA=="
	.align 32
	.type	P10, @object
	.size	P10, 60
P10:
	.base64	"2TEyJfiEBuWlWQnFr/UmmoanqVMVNPfaLkwwPYoxinIcPAyVlWgJUy/PDiRJprUlsWrt9aoN5le6Y3s5"
	.align 16
	.type	A10, @object
	.size	A10, 20
A10:
	.base64	"/u36zt6tvu/+7frO3q2+76ut2tI="
	.align 32
	.type	C10, @object
	.size	C10, 60
C10:
	.base64	"OYDKCzwA6EHrBvrEhyonV4WeHOqm79mEYoWTtAyh4Zx9dz0AwUTFJaxhnRjISj9HGOJEiy/jJNnM2icQ"
	.align 16
	.type	T10, @object
	.size	T10, 16
T10:
	.base64	"JRlJjoDxR483ulW9bSdhjA=="
	.align 8
	.type	IV11, @object
	.size	IV11, 8
IV11:
	.base64	"yv66vvrO260="
	.align 32
	.type	C11, @object
	.size	C11, 60
C11:
	.base64	"DxD1ma4UoVTtJLNuJTJNuMVmYy7yu7NPg0coD8RQcFf93CnfmkcfdcZlQdTU2tHJ6ToZpY6LRz+g8GL3"
	.align 16
	.type	T11, @object
	.size	T11, 16
T11:
	.base64	"ZdzFf89iOiQJT8ykDTUz+A=="
	.align 32
	.type	IV12, @object
	.size	IV12, 60
IV12:
	.base64	"kxMiXfiEBuVVkJxa/1Jpqmp6lThTT32h5MMD0qMYpyjDwMlRVoCVOfzw4kKaa1JUFq7b9aDealemN7Ob"
	.align 32
	.type	C12, @object
	.size	C12, 60
C12:
	.base64	"0n6IaBzjJDxIMBZaj9z5/x3podjmtEfvbve3mChmbkWB55ASrzTd2eLwN1ibKS2z5nwDZ0X6Iufptzc7"
	.align 16
	.type	T12, @object
	.size	T12, 16
T12:
	.base64	"3PVm/ykcJbu4Vo/D03am2Q=="
	.align 32
	.type	K13, @object
	.size	K13, 32
K13:
	.zero	32
	.type	P13, @object
	.size	P13, 1
P13:
	.zero	1
	.type	A13, @object
	.size	A13, 1
A13:
	.zero	1
	.align 8
	.type	IV13, @object
	.size	IV13, 12
IV13:
	.zero	12
	.type	C13, @object
	.size	C13, 1
C13:
	.zero	1
	.align 16
	.type	T13, @object
	.size	T13, 16
T13:
	.base64	"Uw+K+8dFNrmpY7TxxMtziw=="
	.align 16
	.type	P14, @object
	.size	P14, 16
P14:
	.zero	16
	.align 8
	.type	IV14, @object
	.size	IV14, 12
IV14:
	.zero	12
	.align 16
	.type	C14, @object
	.size	C14, 16
C14:
	.base64	"zqdAPU1ga24HTsXTuvOdGA=="
	.align 16
	.type	T14, @object
	.size	T14, 16
T14:
	.base64	"0NHIp5mZa/AmW5i11Iq5GQ=="
	.align 32
	.type	K15, @object
	.size	K15, 32
K15:
	.base64	"/v/pkoZlcxxtao+UZzCDCP7/6ZKGZXMcbWqPlGcwgwg="
	.align 32
	.type	P15, @object
	.size	P15, 64
P15:
	.base64	"2TEyJfiEBuWlWQnFr/UmmoanqVMVNPfaLkwwPYoxinIcPAyVlWgJUy/PDiRJprUlsWrt9aoN5le6Y3s5Gq/SVQ=="
	.align 8
	.type	IV15, @object
	.size	IV15, 12
IV15:
	.base64	"yv66vvrO263eyviI"
	.align 32
	.type	C15, @object
	.size	C15, 64
C15:
	.base64	"Ui3B8JlWfQf0fzejKoRCfWQ6jNy/5cDJdZiivSVV0aqMsI5IWQ27PaewixBWgog4xfYeY5O6egq8yfZiiYAVrQ=="
	.align 16
	.type	T15, @object
	.size	T15, 16
T15:
	.base64	"sJTaxdk0cb3sGlAicOPMbA=="
	.align 32
	.type	P16, @object
	.size	P16, 60
P16:
	.base64	"2TEyJfiEBuWlWQnFr/UmmoanqVMVNPfaLkwwPYoxinIcPAyVlWgJUy/PDiRJprUlsWrt9aoN5le6Y3s5"
	.align 16
	.type	A16, @object
	.size	A16, 20
A16:
	.base64	"/u36zt6tvu/+7frO3q2+76ut2tI="
	.align 32
	.type	C16, @object
	.size	C16, 60
C16:
	.base64	"Ui3B8JlWfQf0fzejKoRCfWQ6jNy/5cDJdZiivSVV0aqMsI5IWQ27PaewixBWgog4xfYeY5O6egq8yfZi"
	.align 16
	.type	T16, @object
	.size	T16, 16
T16:
	.base64	"dvxuzg9OF2jN34hTuy1VGw=="
	.align 8
	.type	IV17, @object
	.size	IV17, 8
IV17:
	.base64	"yv66vvrO260="
	.align 32
	.type	C17, @object
	.size	C17, 60
C17:
	.base64	"w3Yt8cp4fTKuR8E78ZhEy68a4U0Ll2r6xS/315u6neD+tYLTOTSk8JVMwjY7xz94YqxDDmSr5Jn0fJsf"
	.align 16
	.type	T17, @object
	.size	T17, 16
T17:
	.base64	"OjN9v0anksReRUkT/i6o8g=="
	.align 32
	.type	IV18, @object
	.size	IV18, 60
IV18:
	.base64	"kxMiXfiEBuVVkJxa/1Jpqmp6lThTT32h5MMD0qMYpyjDwMlRVoCVOfzw4kKaa1JUFq7b9aDealemN7Ob"
	.align 32
	.type	C18, @object
	.size	C18, 60
C18:
	.base64	"Wo3vLwyeU/H3XXhTZZ4qIO6ysiqv3mQZoFirT290a/QPwMO3gPJERS2j6/HF2CzeokGJlyAO+C5Ern4/"
	.align 16
	.type	T18, @object
	.size	T18, 16
T18:
	.base64	"pEqCZu4cjrDItdTPWunxmg=="
	.align 32
	.type	A19, @object
	.size	A19, 128
A19:
	.base64	"2TEyJfiEBuWlWQnFr/UmmoanqVMVNPfaLkwwPYoxinIcPAyVlWgJUy/PDiRJprUlsWrt9aoN5le6Y3s5Gq/SVVItwfCZVn0H9H83oyqEQn1kOozcv+XAyXWYor0lVdGqjLCOSFkNuz2nsIsQVoKIOMX2HmOTunoKvMn2YomAFa0="
	.align 16
	.type	T19, @object
	.size	T19, 16
T19:
	.base64	"X+p5Oi1vl0035o4MuP+Ukg=="
	.align 32
	.type	IV20, @object
	.size	IV20, 64
IV20:
	.base64	"/////wA="
	.zero	59
	.align 32
	.type	P20, @object
	.size	P20, 288
P20:
	.zero	288
	.align 32
	.type	C20, @object
	.size	C20, 288
C20:
	.base64	"VrM3PKnvbkorZP4emhe2FCXxDUenWl/OE+/GvHhK8k9BQb3UjPfHcIh6/Vc8ylQYqa7/zXxc7d/Gp4OXuahbSZ2lWCVyZ8qrKtCyPKR2pTyxf7QcS4tHXLTz9xZQlMIpyejE3AoqX/GQPlAVESITdqHNuDZMUGGiDK50vErNds6wq8n9Mhfvn4yQvkAt322Gl/T4gN/xW/t6aygkHsj+GDwtWeP53/9lPHEm8Ky55kIR9CuuEq9GKxBwvvGrXjYGhyyhDe4VsySbGhuVjyMTTEvMt9AyALzkIKL462bc82RNFCPBtWmQA8E+zvS/OKO2Du3DQDO6wZAng9xtieLn"
	.base64	"dBiKQ5x+vMBnLb2k3c+yeUYTsL5BMV73eHCKcO59dRZc"
	.align 16
	.type	T20, @object
	.size	T20, 16
T20:
	.base64	"izB/azMobQqwJqntP+HoXw=="
	.section	.data.rel.local,"aw"
	.align 32
	.type	gcm128_vectors, @object
	.size	gcm128_vectors, 1920
gcm128_vectors:
	.quad	16
	.quad	K1
	.quad	12
	.quad	IV1
	.quad	1
	.quad	A1
	.quad	1
	.quad	P1
	.quad	1
	.quad	C1
	.quad	16
	.quad	T1
	.quad	16
	.quad	K1
	.quad	12
	.quad	IV1
	.quad	1
	.quad	A1
	.quad	16
	.quad	P2
	.quad	16
	.quad	C2
	.quad	16
	.quad	T2
	.quad	16
	.quad	K3
	.quad	12
	.quad	IV3
	.quad	1
	.quad	A1
	.quad	64
	.quad	P3
	.quad	64
	.quad	C3
	.quad	16
	.quad	T3
	.quad	16
	.quad	K3
	.quad	12
	.quad	IV3
	.quad	20
	.quad	A4
	.quad	60
	.quad	P4
	.quad	60
	.quad	C4
	.quad	16
	.quad	T4
	.quad	16
	.quad	K3
	.quad	8
	.quad	IV5
	.quad	20
	.quad	A4
	.quad	60
	.quad	P4
	.quad	60
	.quad	C5
	.quad	16
	.quad	T5
	.quad	16
	.quad	K3
	.quad	60
	.quad	IV6
	.quad	20
	.quad	A4
	.quad	60
	.quad	P4
	.quad	60
	.quad	C6
	.quad	16
	.quad	T6
	.quad	24
	.quad	K7
	.quad	12
	.quad	IV7
	.quad	1
	.quad	A7
	.quad	1
	.quad	P7
	.quad	1
	.quad	C7
	.quad	16
	.quad	T7
	.quad	24
	.quad	K7
	.quad	12
	.quad	IV7
	.quad	1
	.quad	A7
	.quad	16
	.quad	P8
	.quad	16
	.quad	C8
	.quad	16
	.quad	T8
	.quad	24
	.quad	K9
	.quad	12
	.quad	IV9
	.quad	1
	.quad	A7
	.quad	64
	.quad	P9
	.quad	64
	.quad	C9
	.quad	16
	.quad	T9
	.quad	24
	.quad	K9
	.quad	12
	.quad	IV9
	.quad	20
	.quad	A10
	.quad	60
	.quad	P10
	.quad	60
	.quad	C10
	.quad	16
	.quad	T10
	.quad	24
	.quad	K9
	.quad	8
	.quad	IV11
	.quad	20
	.quad	A10
	.quad	60
	.quad	P10
	.quad	60
	.quad	C11
	.quad	16
	.quad	T11
	.quad	24
	.quad	K9
	.quad	60
	.quad	IV12
	.quad	20
	.quad	A10
	.quad	60
	.quad	P10
	.quad	60
	.quad	C12
	.quad	16
	.quad	T12
	.quad	32
	.quad	K13
	.quad	12
	.quad	IV13
	.quad	1
	.quad	A13
	.quad	1
	.quad	P13
	.quad	1
	.quad	C13
	.quad	16
	.quad	T13
	.quad	32
	.quad	K13
	.quad	12
	.quad	IV14
	.quad	1
	.quad	A13
	.quad	16
	.quad	P14
	.quad	16
	.quad	C14
	.quad	16
	.quad	T14
	.quad	32
	.quad	K15
	.quad	12
	.quad	IV15
	.quad	1
	.quad	A13
	.quad	64
	.quad	P15
	.quad	64
	.quad	C15
	.quad	16
	.quad	T15
	.quad	32
	.quad	K15
	.quad	12
	.quad	IV15
	.quad	20
	.quad	A16
	.quad	60
	.quad	P16
	.quad	60
	.quad	C16
	.quad	16
	.quad	T16
	.quad	32
	.quad	K15
	.quad	8
	.quad	IV17
	.quad	20
	.quad	A16
	.quad	60
	.quad	P16
	.quad	60
	.quad	C17
	.quad	16
	.quad	T17
	.quad	32
	.quad	K15
	.quad	60
	.quad	IV18
	.quad	20
	.quad	A16
	.quad	60
	.quad	P16
	.quad	60
	.quad	C18
	.quad	16
	.quad	T18
	.quad	16
	.quad	K1
	.quad	12
	.quad	IV1
	.quad	128
	.quad	A19
	.quad	1
	.quad	P1
	.quad	1
	.quad	C1
	.quad	16
	.quad	T19
	.quad	16
	.quad	K1
	.quad	64
	.quad	IV20
	.quad	1
	.quad	A1
	.quad	288
	.quad	P20
	.quad	288
	.quad	C20
	.quad	16
	.quad	T20
	.section	.rodata
.LC13:
	.string	"0"
	.align 8
.LC14:
	.string	"CRYPTO_gcm128_encrypt(&ctx, P.data, out, P.size)"
	.align 8
.LC15:
	.string	"CRYPTO_gcm128_finish(&ctx, T.data, 16)"
.LC16:
	.string	"C.data"
.LC17:
	.string	"out"
.LC18:
	.string	"P.data"
	.text
	.type	test_gcm128, @function
test_gcm128:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1328, %rsp
	movl	%edi, -1316(%rbp)
	movl	-1316(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	gcm128_vectors(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, -528(%rbp)
	movq	%rdx, -520(%rbp)
	movl	-1316(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+gcm128_vectors(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, -544(%rbp)
	movq	%rdx, -536(%rbp)
	movl	-1316(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	32+gcm128_vectors(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, -560(%rbp)
	movq	%rdx, -552(%rbp)
	movl	-1316(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	48+gcm128_vectors(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, -576(%rbp)
	movq	%rdx, -568(%rbp)
	movl	-1316(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	64+gcm128_vectors(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, -592(%rbp)
	movq	%rdx, -584(%rbp)
	movl	-1316(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	80+gcm128_vectors(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, -608(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-560(%rbp), %rax
	cmpq	$1, %rax
	jne	.L32
	movq	$0, -552(%rbp)
.L32:
	movq	-576(%rbp), %rax
	cmpq	$1, %rax
	jne	.L33
	movq	$0, -568(%rbp)
.L33:
	movq	-592(%rbp), %rax
	cmpq	$1, %rax
	jne	.L34
	movq	$0, -584(%rbp)
.L34:
	movq	-528(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-520(%rbp), %rax
	leaq	-1312(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	AES_encrypt@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	-1312(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_init@PLT
	movq	-544(%rbp), %rdx
	movq	-536(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	movq	-576(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-552(%rbp), %rax
	testq	%rax, %rax
	je	.L35
	movq	-560(%rbp), %rdx
	movq	-552(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_aad@PLT
.L35:
	movq	-568(%rbp), %rax
	testq	%rax, %rax
	je	.L36
	movq	-576(%rbp), %rcx
	movq	-568(%rbp), %rsi
	leaq	-512(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_gcm128_encrypt@PLT
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$872, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L44
.L36:
	movq	-600(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$874, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L38
	movq	-584(%rbp), %rax
	testq	%rax, %rax
	je	.L39
	movq	-576(%rbp), %rdi
	movq	-584(%rbp), %rsi
	movq	-576(%rbp), %r9
	leaq	-512(%rbp), %r8
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$876, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L39
.L38:
	movl	$0, %eax
	jmp	.L44
.L39:
	movq	-544(%rbp), %rdx
	movq	-536(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_setiv@PLT
	movq	-576(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-552(%rbp), %rax
	testq	%rax, %rax
	je	.L40
	movq	-560(%rbp), %rdx
	movq	-552(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_aad@PLT
.L40:
	movq	-584(%rbp), %rax
	testq	%rax, %rax
	je	.L41
	movq	-576(%rbp), %rcx
	movq	-584(%rbp), %rsi
	leaq	-512(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_gcm128_decrypt@PLT
.L41:
	movq	-600(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$885, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L42
	movq	-568(%rbp), %rax
	testq	%rax, %rax
	je	.L43
	movq	-576(%rbp), %rdi
	movq	-568(%rbp), %rsi
	movq	-576(%rbp), %r9
	leaq	-512(%rbp), %r8
	leaq	.LC18(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$887, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L43
.L42:
	movl	$0, %eax
	jmp	.L44
.L43:
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_gcm128, .-test_gcm128
	.section	.rodata
.LC19:
	.string	"test_aes_cts128"
.LC20:
	.string	"test_aes_cts128_nist"
.LC21:
	.string	"test_gcm128"
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
	leaq	test_aes_cts128(%rip), %rsi
	leaq	.LC19(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_aes_cts128_nist(%rip), %rsi
	leaq	.LC20(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_gcm128(%rip), %rsi
	leaq	.LC21(%rip), %rax
	movl	$1, %ecx
	movl	$20, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	setup_tests, .-setup_tests
	.data
	.align 4
	.type	init_key.5, @object
	.size	init_key.5, 4
init_key.5:
	.long	1
	.local	ks.4
	.comm	ks.4,244,32
	.align 4
	.type	init_key.3, @object
	.size	init_key.3, 4
init_key.3:
	.long	1
	.local	ks.2
	.comm	ks.2,244,32
	.section	.rodata
.LC22:
	.string	"aes_cts128"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	fixture_cts128.1, @object
	.size	fixture_cts128.1, 48
fixture_cts128.1:
	.quad	.LC22
	.quad	last_blocks_correction
	.quad	CRYPTO_cts128_encrypt_block
	.quad	CRYPTO_cts128_encrypt
	.quad	CRYPTO_cts128_decrypt_block
	.quad	CRYPTO_cts128_decrypt
	.section	.rodata
.LC23:
	.string	"aes_cts128_nist"
	.section	.data.rel.ro
	.align 32
	.type	fixture_cts128_nist.0, @object
	.size	fixture_cts128_nist.0, 48
fixture_cts128_nist.0:
	.quad	.LC23
	.quad	last_blocks_correction_nist
	.quad	CRYPTO_nistcts128_encrypt_block
	.quad	CRYPTO_nistcts128_encrypt
	.quad	CRYPTO_nistcts128_decrypt_block
	.quad	CRYPTO_nistcts128_decrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
