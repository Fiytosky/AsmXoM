	.file	"quic_srt_gen_test.c"
	.text
	.section	.rodata
	.type	key_1, @object
	.size	key_1, 3
key_1:
	.base64	"AQID"
	.align 16
	.type	key_2, @object
	.size	key_2, 16
key_2:
	.base64	"AQEBAQEBAQEBAQEBAQEBAQ=="
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	tests, @object
	.size	tests, 168
tests:
	.quad	key_1
	.quad	3
	.byte	2
	.string	"Uf"
	.zero	17
	.base64	"Ap6PPR6pBiOyQ9IZWYqhZg=="
	.zero	3
	.quad	key_2
	.quad	16
	.byte	0
	.zero	2
	.zero	18
	.base64	"kxAvx6+dmyg/hJVro9wHaw=="
	.zero	3
	.quad	key_2
	.quad	16
	.byte	20
	.base64	"AQEBAQEBAQEBAQEBAQEBAQEBAQE="
	.base64	"mpiYYb794wVFrGbPO1j7qw=="
	.zero	3
	.section	.rodata
	.align 8
.LC0:
	.string	"srt_gen = ossl_quic_srt_gen_new(NULL, NULL, t->key, t->key_len)"
.LC1:
	.string	"../test/quic_srt_gen_test.c"
	.align 8
.LC2:
	.string	"ossl_quic_srt_gen_calculate_token(srt_gen, &t->dcid, &token)"
.LC3:
	.string	"&t->expected"
.LC4:
	.string	"token.token"
	.text
	.type	test_srt_gen, @function
test_srt_gen:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movl	-52(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	leaq	tests(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_srt_gen_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	movq	$0, -16(%rbp)
	jmp	.L4
.L7:
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srt_gen_calculate_token@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$64, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L10
	movq	-24(%rbp), %rax
	leaq	37(%rax), %rsi
	leaq	-48(%rbp), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L11
	addq	$1, -16(%rbp)
.L4:
	cmpq	$1, -16(%rbp)
	jbe	.L7
	movl	$1, -4(%rbp)
	jmp	.L3
.L9:
	nop
	jmp	.L3
.L10:
	nop
	jmp	.L3
.L11:
	nop
.L3:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_srt_gen_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_srt_gen, .-test_srt_gen
	.section	.rodata
.LC5:
	.string	"test_srt_gen"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_srt_gen(%rip), %rsi
	leaq	.LC5(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
