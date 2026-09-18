	.file	"ideatest.c"
	.text
	.section	.rodata
	.align 16
	.type	k, @object
	.size	k, 16
k:
	.base64	"AAEAAgADAAQABQAGAAcACA=="
	.align 8
	.type	in, @object
	.size	in, 8
in:
	.base64	"AAAAAQACAAM="
	.align 8
	.type	c, @object
	.size	c, 8
c:
	.base64	"EfvtKwGYbeU="
	.local	out
	.comm	out,80,32
	.align 16
	.type	text, @object
	.size	text, 30
text:
	.string	"Hello to all people out there"
	.align 16
	.type	cfb_key, @object
	.size	cfb_key, 16
cfb_key:
	.base64	"4fDD0qW0h5ZpeEtaLTwPHg=="
	.align 32
	.type	cfb_iv, @object
	.size	cfb_iv, 80
cfb_iv:
	.base64	"NBJ4VquQ780A"
	.zero	71
	.local	cfb_buf1
	.comm	cfb_buf1,40,32
	.local	cfb_buf2
	.comm	cfb_buf2,40,32
	.local	cfb_tmp
	.comm	cfb_tmp,8,8
	.align 16
	.type	plain, @object
	.size	plain, 24
plain:
	.ascii	"Now is the time for all "
	.align 16
	.type	cfb_cipher64, @object
	.size	cfb_cipher64, 24
cfb_cipher64:
	.base64	"WdjiZQBYbD8sFyXQGji3KjlhN9x5+59F"
.LC0:
	.string	"c"
.LC1:
	.string	"out"
.LC2:
	.string	"../test/ideatest.c"
.LC3:
	.string	"in"
	.text
	.type	test_idea_ecb, @function
test_idea_ecb:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$448, %rsp
	leaq	-224(%rbp), %rax
	leaq	k(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	IDEA_set_encrypt_key@PLT
	leaq	-224(%rbp), %rax
	leaq	out(%rip), %rsi
	leaq	in(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	IDEA_ecb_encrypt@PLT
	leaq	out(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$8
	leaq	c(%rip), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L4
.L2:
	leaq	-448(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_set_decrypt_key@PLT
	leaq	-448(%rbp), %rax
	leaq	out(%rip), %rsi
	leaq	c(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	IDEA_ecb_encrypt@PLT
	leaq	out(%rip), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$8
	leaq	in(%rip), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_idea_ecb, .-test_idea_ecb
	.section	.rodata
.LC4:
	.string	"text"
	.text
	.type	test_idea_cbc, @function
test_idea_cbc:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$464, %rsp
	movq	$30, -8(%rbp)
	leaq	-224(%rbp), %rax
	leaq	k(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	IDEA_set_encrypt_key@PLT
	leaq	-448(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_set_decrypt_key@PLT
	movq	k(%rip), %rax
	movq	%rax, -456(%rbp)
	movq	-8(%rbp), %rax
	leaq	-456(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	leaq	out(%rip), %rsi
	leaq	text(%rip), %rdi
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	IDEA_cbc_encrypt@PLT
	movq	k(%rip), %rax
	movq	%rax, -456(%rbp)
	leaq	-456(%rbp), %rdx
	leaq	-448(%rbp), %rax
	leaq	out(%rip), %rsi
	leaq	out(%rip), %rdi
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$8, %edx
	call	IDEA_cbc_encrypt@PLT
	movq	-8(%rbp), %rax
	subq	$8, %rax
	movq	%rax, %r10
	leaq	-456(%rbp), %rdx
	leaq	-448(%rbp), %rax
	leaq	8+out(%rip), %rsi
	leaq	8+out(%rip), %rdi
	movl	$0, %r9d
	movq	%rdx, %r8
	movq	%rax, %rcx
	movq	%r10, %rdx
	call	IDEA_cbc_encrypt@PLT
	movq	-8(%rbp), %rdi
	leaq	text(%rip), %r8
	leaq	.LC1(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-8(%rbp)
	leaq	out(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_idea_cbc, .-test_idea_cbc
	.section	.rodata
.LC5:
	.string	"cfb_buf1"
.LC6:
	.string	"cfb_cipher64"
.LC7:
	.string	"cfb_buf2"
.LC8:
	.string	"plain"
	.text
	.type	test_idea_cfb64, @function
test_idea_cfb64:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$464, %rsp
	leaq	-224(%rbp), %rax
	leaq	cfb_key(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	IDEA_set_encrypt_key@PLT
	leaq	-448(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	IDEA_set_decrypt_key@PLT
	movq	cfb_iv(%rip), %rax
	movq	%rax, cfb_tmp(%rip)
	movl	$0, -452(%rbp)
	leaq	-452(%rbp), %rdx
	leaq	cfb_tmp(%rip), %rcx
	leaq	-224(%rbp), %rax
	leaq	cfb_buf1(%rip), %rsi
	leaq	plain(%rip), %rdi
	subq	$8, %rsp
	pushq	$1
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$12, %edx
	call	IDEA_cfb64_encrypt@PLT
	addq	$16, %rsp
	leaq	-452(%rbp), %rdx
	leaq	cfb_tmp(%rip), %rcx
	leaq	-224(%rbp), %rax
	leaq	12+cfb_buf1(%rip), %rsi
	leaq	12+plain(%rip), %rdi
	subq	$8, %rsp
	pushq	$1
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$12, %edx
	call	IDEA_cfb64_encrypt@PLT
	addq	$16, %rsp
	leaq	cfb_cipher64(%rip), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$24
	leaq	cfb_buf1(%rip), %rsi
	pushq	%rsi
	movl	$24, %r9d
	movq	%rdi, %r8
	movl	$105, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L10
.L8:
	movq	cfb_iv(%rip), %rax
	movq	%rax, cfb_tmp(%rip)
	movl	$0, -452(%rbp)
	leaq	-452(%rbp), %rdx
	leaq	cfb_tmp(%rip), %rcx
	leaq	-224(%rbp), %rax
	leaq	cfb_buf2(%rip), %rsi
	leaq	cfb_buf1(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$13, %edx
	call	IDEA_cfb64_encrypt@PLT
	addq	$16, %rsp
	leaq	-452(%rbp), %rdx
	leaq	cfb_tmp(%rip), %rcx
	leaq	-224(%rbp), %rax
	leaq	13+cfb_buf2(%rip), %rsi
	leaq	13+cfb_buf1(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$11, %edx
	call	IDEA_cfb64_encrypt@PLT
	addq	$16, %rsp
	leaq	plain(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$24
	leaq	cfb_buf2(%rip), %rsi
	pushq	%rsi
	movl	$24, %r9d
	movq	%rdi, %r8
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_idea_cfb64, .-test_idea_cfb64
	.section	.rodata
.LC9:
	.string	"test_idea_ecb"
.LC10:
	.string	"test_idea_cbc"
.LC11:
	.string	"test_idea_cfb64"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_idea_ecb(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_idea_cbc(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_idea_cfb64(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
