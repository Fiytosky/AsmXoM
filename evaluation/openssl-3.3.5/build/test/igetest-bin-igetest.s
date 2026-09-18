	.file	"igetest.c"
	.text
	.local	rkey
	.comm	rkey,16,16
	.local	rkey2
	.comm	rkey2,16,16
	.local	plaintext
	.comm	plaintext,10240,32
	.local	saved_iv
	.comm	saved_iv,64,32
	.section	.rodata
	.align 32
	.type	ige_test_vectors, @object
	.size	ige_test_vectors, 384
ige_test_vectors:
	.base64	"AAECAwQFBgcICQoLDA0ODw=="
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8="
	.zero	33
	.zero	31
	.base64	"GoUZplV75lLp2o5D2k70RTz0VrTKSIqjg8ecmLNHl8sA"
	.zero	31
	.quad	32
	.long	1
	.zero	4
	.ascii	"This is an imple"
	.ascii	"mentation of IGE mode for OpenSS"
	.string	"L. Let's hope Ben got it right!\n"
	.zero	31
	.base64	"mXBkh6HN5hO8beC28ksceqRIyLnDQD40Z6jK2JNA9TsA"
	.zero	31
	.quad	32
	.long	0
	.zero	4
	.align 32
	.type	bi_ige_test_vectors, @object
	.size	bi_ige_test_vectors, 560
bi_ige_test_vectors:
	.base64	"AAECAwQFBgcICQoLDA0ODwA="
	.zero	15
	.base64	"EBESExQVFhcYGRobHB0eHwA="
	.zero	15
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8gISIjJCUmJygpKissLS4vMDEyMzQ1Njc4OTo7PD0+Pw=="
	.zero	33
	.zero	31
	.base64	"FEBvrqJ58lYfhus7ff9T3E4nDAPefOUWapwgM50z/hIA"
	.zero	31
	.quad	16
	.quad	32
	.long	1
	.zero	4
	.base64	"WAoG6ZcHWVyeGdKnu0AresfYEZ5MUTV1ZCgPI610rDc="
	.base64	"0YCgMUejEROGJp5t/69ydFuiNYHSpj0hZ3tYqBj5cuQ="
	.base64	"gD29TOZ7BqlTNdV+ccFwcHSaACgMv2xCm6TdZRF3fGf+dgrw1cZuaudeTPJ+nvkgDlRvLYqNfr1IeTeZ/yeTow=="
	.base64	"8VQ9yv617xxPpkP25khX8O4Vf+PnL9AvEZV6FwCrpwu+RAmczayoUqGOe3W8pJJaq0bTOqDVNRxVpLOoQIGlCw=="
	.base64	"QuUoMDHCoCNoSU6zJFmSecGlzOZ2U7HPIIYj6HJVmZINFhxaL87LUeJn+hDszT1npeb3MSawDXZeKNx/AcWlTA=="
	.quad	32
	.quad	64
	.long	1
	.zero	4
.LC0:
	.string	"MAX_VECTOR_SIZE"
.LC1:
	.string	"v->length"
.LC2:
	.string	"../test/igetest.c"
.LC3:
	.string	"buf"
.LC4:
	.string	"v->out"
.LC5:
	.string	"IGE test vector %d failed"
.LC6:
	.string	"key"
.LC7:
	.string	"iv"
.LC8:
	.string	"in"
	.align 8
.LC9:
	.string	"IGE test vector %d failed (with in == out)"
	.text
	.type	test_ige_vectors, @function
test_ige_vectors:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movl	%edi, -372(%rbp)
	movl	-372(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	leaq	ige_test_vectors(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$64, %r9d
	movl	%esi, %r8d
	movl	$157, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L8
.L2:
	movq	-16(%rbp), %rax
	movl	184(%rax), %eax
	cmpl	$1, %eax
	jne	.L4
	movq	-16(%rbp), %rax
	leaq	-272(%rbp), %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	jmp	.L5
.L4:
	movq	-16(%rbp), %rax
	leaq	-272(%rbp), %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
.L5:
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -368(%rbp)
	movq	%rdx, -360(%rbp)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -352(%rbp)
	movq	%rdx, -344(%rbp)
	movq	-16(%rbp), %rax
	movl	184(%rax), %r8d
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rdi
	leaq	-368(%rbp), %rsi
	leaq	-272(%rbp), %rcx
	leaq	-336(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	movq	-16(%rbp), %rax
	movq	176(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	leaq	112(%rax), %r8
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-336(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$167, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L6
	movl	-372(%rbp), %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$168, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	.LC7(%rip), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_output_memory@PLT
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	48(%rdx), %rsi
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movl	$0, -4(%rbp)
.L6:
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -368(%rbp)
	movq	%rdx, -360(%rbp)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -352(%rbp)
	movq	%rdx, -344(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	leaq	-336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	184(%rax), %r8d
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdx
	leaq	-368(%rbp), %rdi
	leaq	-272(%rbp), %rcx
	leaq	-336(%rbp), %rsi
	leaq	-336(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	AES_ige_encrypt@PLT
	movq	-16(%rbp), %rax
	movq	176(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	leaq	112(%rax), %r8
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-336(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$180, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L7
	movl	-372(%rbp), %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$181, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	.LC7(%rip), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_output_memory@PLT
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	48(%rdx), %rsi
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movl	$0, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_ige_vectors, .-test_ige_vectors
	.section	.rodata
.LC10:
	.string	"key 1"
.LC11:
	.string	"key 2"
	.text
	.type	test_bi_ige_vectors, @function
test_bi_ige_vectors:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movl	%edi, -580(%rbp)
	movl	-580(%rbp), %eax
	cltq
	imulq	$280, %rax, %rax
	leaq	bi_ige_test_vectors(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$64, %r9d
	movl	%esi, %r8d
	movl	$198, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L15
.L10:
	movq	-8(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	$1, %eax
	jne	.L12
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	-256(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_encrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	sall	$3, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	-256(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	AES_set_decrypt_key@PLT
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	sall	$3, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
.L13:
	movq	-8(%rbp), %rax
	movl	272(%rax), %esi
	movq	-8(%rbp), %rax
	leaq	64(%rax), %r9
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rdi
	leaq	-512(%rbp), %r8
	leaq	-256(%rbp), %rcx
	leaq	-576(%rbp), %rax
	subq	$8, %rsp
	pushq	%rsi
	movq	%rax, %rsi
	call	AES_bi_ige_encrypt@PLT
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	264(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	192(%rax), %r8
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-576(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$212, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L14
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	leaq	.LC11(%rip), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_output_memory@PLT
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	.LC7(%rip), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_output_memory@PLT
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	128(%rdx), %rsi
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_bi_ige_vectors, .-test_bi_ige_vectors
	.section	.rodata
.LC12:
	.string	"plaintext"
.LC13:
	.string	"checktext"
	.text
	.type	test_ige_enc_dec, @function
test_ige_enc_dec:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$20800, %rsp
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	leaq	-256(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-320(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-10560(%rbp), %rax
	leaq	plaintext(%rip), %rdi
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	leaq	-256(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	leaq	-320(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-20800(%rbp), %rsi
	leaq	-10560(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rdi
	call	AES_ige_encrypt@PLT
	leaq	-20800(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$128
	leaq	plaintext(%rip), %rsi
	pushq	%rsi
	movl	$128, %r9d
	movq	%rdi, %r8
	movl	$238, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_ige_enc_dec, .-test_ige_enc_dec
	.type	test_ige_enc_chaining, @function
test_ige_enc_chaining:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$20800, %rsp
	leaq	-256(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	leaq	-320(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-10560(%rbp), %rax
	leaq	plaintext(%rip), %rdi
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	leaq	-10560(%rbp), %rax
	addq	$64, %rax
	leaq	64+plaintext(%rip), %rdi
	leaq	-320(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	leaq	-256(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	leaq	-320(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-20800(%rbp), %rsi
	leaq	-10560(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rdi
	call	AES_ige_encrypt@PLT
	leaq	-20800(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$128
	leaq	plaintext(%rip), %rsi
	pushq	%rsi
	movl	$128, %r9d
	movq	%rdi, %r8
	movl	$260, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_ige_enc_chaining, .-test_ige_enc_chaining
	.type	test_ige_dec_chaining, @function
test_ige_dec_chaining:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$20800, %rsp
	leaq	-256(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	leaq	-320(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-10560(%rbp), %rax
	leaq	plaintext(%rip), %rdi
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	leaq	-10560(%rbp), %rax
	addq	$64, %rax
	leaq	64+plaintext(%rip), %rdi
	leaq	-320(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	leaq	-256(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	leaq	-320(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-20800(%rbp), %rsi
	leaq	-10560(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	AES_ige_encrypt@PLT
	leaq	-20800(%rbp), %rsi
	addq	$64, %rsi
	leaq	-10560(%rbp), %rax
	addq	$64, %rax
	leaq	-320(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	AES_ige_encrypt@PLT
	leaq	-20800(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$128
	leaq	plaintext(%rip), %rsi
	pushq	%rsi
	movl	$128, %r9d
	movq	%rdi, %r8
	movl	$286, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_ige_dec_chaining, .-test_ige_dec_chaining
	.section	.rodata
.LC14:
	.string	"ctsize / 2 + ctsize / 100"
.LC15:
	.string	"matches"
.LC16:
	.string	"ctsize / 2"
	.text
	.type	test_ige_garble_forwards, @function
test_ige_garble_forwards:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$20816, %rsp
	movl	$1, -8(%rbp)
	movq	$10240, -24(%rbp)
	leaq	-272(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -336(%rbp)
	movq	%rdx, -328(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	leaq	-336(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-10576(%rbp), %rax
	leaq	plaintext(%rip), %rdi
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10240, %edx
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	movzbl	-5456(%rbp), %eax
	addl	$1, %eax
	movb	%al, -5456(%rbp)
	leaq	-272(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -336(%rbp)
	movq	%rdx, -328(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	leaq	-336(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-20816(%rbp), %rsi
	leaq	-10576(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10240, %edx
	movq	%rax, %rdi
	call	AES_ige_encrypt@PLT
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L23
.L25:
	movl	-4(%rbp), %eax
	movzbl	-20816(%rbp,%rax), %edx
	movl	-4(%rbp), %eax
	leaq	plaintext(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpb	%al, %dl
	jne	.L24
	addq	$1, -16(%rbp)
.L24:
	addl	$1, -4(%rbp)
.L23:
	cmpl	$10239, -4(%rbp)
	jbe	.L25
	movq	-24(%rbp), %rax
	shrq	%rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	leaq	(%rcx,%rax), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$318, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, -8(%rbp)
.L26:
	movq	-24(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$322, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, -8(%rbp)
.L27:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_ige_garble_forwards, .-test_ige_garble_forwards
	.type	test_bi_ige_enc_dec, @function
test_bi_ige_enc_dec:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$21056, %rsp
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -576(%rbp)
	movq	%rdx, -568(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -560(%rbp)
	movq	%rdx, -552(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -544(%rbp)
	movq	%rdx, -536(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -528(%rbp)
	movq	%rdx, -520(%rbp)
	leaq	-256(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-512(%rbp), %rax
	leaq	rkey2(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-576(%rbp), %rsi
	leaq	-512(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-10816(%rbp), %rax
	leaq	plaintext(%rip), %rdi
	subq	$8, %rsp
	pushq	$1
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rsi
	call	AES_bi_ige_encrypt@PLT
	addq	$16, %rsp
	leaq	-256(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	leaq	-512(%rbp), %rax
	leaq	rkey2(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	leaq	-576(%rbp), %rdi
	leaq	-512(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-21056(%rbp), %rsi
	leaq	-10816(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rdi
	call	AES_bi_ige_encrypt@PLT
	addq	$16, %rsp
	leaq	-21056(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$128
	leaq	plaintext(%rip), %rsi
	pushq	%rsi
	movl	$128, %r9d
	movq	%rdi, %r8
	movl	$345, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_bi_ige_enc_dec, .-test_bi_ige_enc_dec
	.section	.rodata
.LC17:
	.string	"sizeof(checktext) / 100"
	.text
	.type	test_bi_ige_garble1, @function
test_bi_ige_garble1:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$21072, %rsp
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -592(%rbp)
	movq	%rdx, -584(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -576(%rbp)
	movq	%rdx, -568(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -560(%rbp)
	movq	%rdx, -552(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -544(%rbp)
	movq	%rdx, -536(%rbp)
	leaq	-272(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-528(%rbp), %rax
	leaq	rkey2(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-592(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-10832(%rbp), %rax
	leaq	plaintext(%rip), %rdi
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10240, %edx
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	movzbl	-5712(%rbp), %eax
	addl	$1, %eax
	movb	%al, -5712(%rbp)
	leaq	-272(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	leaq	-528(%rbp), %rax
	leaq	rkey2(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	leaq	-592(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-21072(%rbp), %rsi
	leaq	-10832(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10240, %edx
	movq	%rax, %rdi
	call	AES_ige_encrypt@PLT
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L32
.L34:
	movl	-4(%rbp), %eax
	movzbl	-21072(%rbp,%rax), %edx
	movl	-4(%rbp), %eax
	leaq	plaintext(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpb	%al, %dl
	jne	.L33
	addq	$1, -16(%rbp)
.L33:
	addl	$1, -4(%rbp)
.L32:
	cmpl	$10239, -4(%rbp)
	jbe	.L34
	movq	-16(%rbp), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$102, %r9d
	movq	%rsi, %r8
	movl	$376, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_bi_ige_garble1, .-test_bi_ige_garble1
	.type	test_bi_ige_garble2, @function
test_bi_ige_garble2:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$21072, %rsp
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -592(%rbp)
	movq	%rdx, -584(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -576(%rbp)
	movq	%rdx, -568(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -560(%rbp)
	movq	%rdx, -552(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -544(%rbp)
	movq	%rdx, -536(%rbp)
	leaq	-272(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-528(%rbp), %rax
	leaq	rkey2(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-592(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-10832(%rbp), %rax
	leaq	plaintext(%rip), %rdi
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10240, %edx
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	movzbl	-593(%rbp), %eax
	addl	$1, %eax
	movb	%al, -593(%rbp)
	leaq	-272(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	leaq	-528(%rbp), %rax
	leaq	rkey2(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	leaq	-592(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-21072(%rbp), %rsi
	leaq	-10832(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10240, %edx
	movq	%rax, %rdi
	call	AES_ige_encrypt@PLT
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L37
.L39:
	movl	-4(%rbp), %eax
	movzbl	-21072(%rbp,%rax), %edx
	movl	-4(%rbp), %eax
	leaq	plaintext(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpb	%al, %dl
	jne	.L38
	addq	$1, -16(%rbp)
.L38:
	addl	$1, -4(%rbp)
.L37:
	cmpl	$10239, -4(%rbp)
	jbe	.L39
	movq	-16(%rbp), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$102, %r9d
	movq	%rsi, %r8
	movl	$407, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_bi_ige_garble2, .-test_bi_ige_garble2
	.type	test_bi_ige_garble3, @function
test_bi_ige_garble3:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$21072, %rsp
	movq	saved_iv(%rip), %rax
	movq	8+saved_iv(%rip), %rdx
	movq	%rax, -592(%rbp)
	movq	%rdx, -584(%rbp)
	movq	16+saved_iv(%rip), %rax
	movq	24+saved_iv(%rip), %rdx
	movq	%rax, -576(%rbp)
	movq	%rdx, -568(%rbp)
	movq	32+saved_iv(%rip), %rax
	movq	40+saved_iv(%rip), %rdx
	movq	%rax, -560(%rbp)
	movq	%rdx, -552(%rbp)
	movq	48+saved_iv(%rip), %rax
	movq	56+saved_iv(%rip), %rdx
	movq	%rax, -544(%rbp)
	movq	%rdx, -536(%rbp)
	leaq	-272(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-528(%rbp), %rax
	leaq	rkey2(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_encrypt_key@PLT
	leaq	-592(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-10832(%rbp), %rax
	leaq	plaintext(%rip), %rdi
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10240, %edx
	movq	%rax, %rsi
	call	AES_ige_encrypt@PLT
	movzbl	-10832(%rbp), %eax
	addl	$1, %eax
	movb	%al, -10832(%rbp)
	leaq	-272(%rbp), %rax
	leaq	rkey(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	leaq	-528(%rbp), %rax
	leaq	rkey2(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	AES_set_decrypt_key@PLT
	leaq	-592(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-21072(%rbp), %rsi
	leaq	-10832(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10240, %edx
	movq	%rax, %rdi
	call	AES_ige_encrypt@PLT
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L42
.L44:
	movl	-4(%rbp), %eax
	movzbl	-21072(%rbp,%rax), %edx
	movl	-4(%rbp), %eax
	leaq	plaintext(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpb	%al, %dl
	jne	.L43
	addq	$1, -16(%rbp)
.L43:
	addl	$1, -4(%rbp)
.L42:
	cmpl	$10239, -4(%rbp)
	jbe	.L44
	movq	-16(%rbp), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$102, %r9d
	movq	%rsi, %r8
	movl	$438, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_bi_ige_garble3, .-test_bi_ige_garble3
	.section	.rodata
.LC18:
	.string	"test_ige_enc_dec"
.LC19:
	.string	"test_ige_enc_chaining"
.LC20:
	.string	"test_ige_dec_chaining"
.LC21:
	.string	"test_ige_garble_forwards"
.LC22:
	.string	"test_bi_ige_enc_dec"
.LC23:
	.string	"test_bi_ige_garble1"
.LC24:
	.string	"test_bi_ige_garble2"
.LC25:
	.string	"test_bi_ige_garble3"
.LC26:
	.string	"test_ige_vectors"
.LC27:
	.string	"test_bi_ige_vectors"
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
	leaq	rkey(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	rkey2(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	plaintext(%rip), %rax
	movl	$10240, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	saved_iv(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	test_ige_enc_dec(%rip), %rdx
	leaq	.LC18(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ige_enc_chaining(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ige_dec_chaining(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ige_garble_forwards(%rip), %rdx
	leaq	.LC21(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bi_ige_enc_dec(%rip), %rdx
	leaq	.LC22(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bi_ige_garble1(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bi_ige_garble2(%rip), %rdx
	leaq	.LC24(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bi_ige_garble3(%rip), %rdx
	leaq	.LC25(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ige_vectors(%rip), %rsi
	leaq	.LC26(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bi_ige_vectors(%rip), %rsi
	leaq	.LC27(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
