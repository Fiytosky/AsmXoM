	.file	"exdatatest.c"
	.text
	.local	saved_argl
	.comm	saved_argl,8,8
	.local	saved_argp
	.comm	saved_argp,8,8
	.local	saved_idx
	.comm	saved_idx,4,4
	.local	saved_idx2
	.comm	saved_idx2,4,4
	.local	saved_idx3
	.comm	saved_idx3,4,4
	.local	gbl_result
	.comm	gbl_result,4,4
	.section	.rodata
.LC0:
	.string	"saved_idx"
.LC1:
	.string	"idx"
.LC2:
	.string	"../test/exdatatest.c"
.LC3:
	.string	"saved_argl"
.LC4:
	.string	"argl"
.LC5:
	.string	"saved_argp"
.LC6:
	.string	"argp"
.LC7:
	.string	"ptr"
	.text
	.type	exnew, @function
exnew:
.LFB468:
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
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	saved_idx(%rip), %edi
	movl	-28(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	saved_argl(%rip), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$33, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	saved_argp(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$34, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L4
.L2:
	movl	$0, gbl_result(%rip)
.L4:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	exnew, .-exnew
	.section	.rodata
.LC8:
	.string	"from_d"
	.text
	.type	exdup, @function
exdup:
.LFB469:
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
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	saved_idx(%rip), %edi
	movl	-28(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	saved_argl(%rip), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	saved_argp(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$45, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L7
.L6:
	movl	$0, gbl_result(%rip)
.L7:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	exdup, .-exdup
	.type	exfree, @function
exfree:
.LFB470:
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
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	saved_idx(%rip), %edi
	movl	-28(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L10
	movq	saved_argl(%rip), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$54, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L10
	movq	saved_argp(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L12
.L10:
	movl	$0, gbl_result(%rip)
.L12:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	exfree, .-exfree
	.section	.rodata
	.align 8
.LC9:
	.string	"idx == saved_idx2 || idx == saved_idx3"
.LC10:
	.string	"ex_data"
	.align 8
.LC11:
	.string	"CRYPTO_set_ex_data(ad, idx, ex_data)"
	.text
	.type	exnew2, @function
exnew2:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$74, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movl	saved_idx2(%rip), %eax
	cmpl	%eax, -44(%rbp)
	je	.L14
	movl	saved_idx3(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L15
.L14:
	movl	$1, %ecx
	jmp	.L16
.L15:
	movl	$0, %ecx
.L16:
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L17
	movq	saved_argl(%rip), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	saved_argp(%rip), %rdi
	movq	-64(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$78, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$79, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	CRYPTO_set_ex_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$81, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L18
.L17:
	movl	$0, gbl_result(%rip)
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$83, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	nop
.L19:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	exnew2, .-exnew2
	.section	.rodata
.LC12:
	.string	"*update_ex_data"
	.align 8
.LC13:
	.string	"ex_data = CRYPTO_get_ex_data(to, idx)"
.LC14:
	.string	"ex_data->new"
	.text
	.type	exdup2, @function
exdup2:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	saved_idx2(%rip), %eax
	cmpl	%eax, -44(%rbp)
	je	.L21
	movl	saved_idx3(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L22
.L21:
	movl	$1, %ecx
	jmp	.L23
.L22:
	movl	$0, %ecx
.L23:
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L24
	movq	saved_argl(%rip), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$96, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	saved_argp(%rip), %rdi
	movq	-64(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$97, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$98, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$99, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$100, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$101, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L25
.L24:
	movl	$0, gbl_result(%rip)
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L26:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	exdup2, .-exdup2
	.section	.rodata
	.align 8
.LC15:
	.string	"CRYPTO_set_ex_data(ad, idx, NULL)"
	.text
	.type	exfree2, @function
exfree2:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	movl	saved_idx2(%rip), %eax
	cmpl	%eax, -44(%rbp)
	je	.L29
	movl	saved_idx3(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L30
.L29:
	movl	$1, %ecx
	jmp	.L31
.L30:
	movl	$0, %ecx
.L31:
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	saved_argl(%rip), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	saved_argp(%rip), %rdi
	movq	-64(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$121, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	CRYPTO_set_ex_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L33
.L32:
	movl	$0, gbl_result(%rip)
.L33:
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	exfree2, .-exfree2
	.type	MYOBJ_new, @function
MYOBJ_new:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC2(%rip), %rax
	movl	$136, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L35
	movl	count.0(%rip), %eax
	addl	$1, %eax
	movl	%eax, count.0(%rip)
	movl	count.0(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$13, %edi
	call	CRYPTO_new_ex_data@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 20(%rdx)
.L35:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	MYOBJ_new, .-MYOBJ_new
	.section	.rodata
.LC16:
	.string	"1"
.LC17:
	.string	"obj->st"
	.text
	.type	MYOBJ_sethello, @function
MYOBJ_sethello:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	saved_idx(%rip), %ecx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	CRYPTO_set_ex_data@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 20(%rdx)
	movq	-8(%rbp), %rax
	movl	20(%rax), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, gbl_result(%rip)
.L39:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	MYOBJ_sethello, .-MYOBJ_sethello
	.type	MYOBJ_gethello, @function
MYOBJ_gethello:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	saved_idx(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	MYOBJ_gethello, .-MYOBJ_gethello
	.type	MYOBJ_sethello2, @function
MYOBJ_sethello2:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	saved_idx2(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$161, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L45
.L43:
	movl	$0, gbl_result(%rip)
	movl	gbl_result(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
.L45:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	MYOBJ_sethello2, .-MYOBJ_sethello2
	.type	MYOBJ_gethello2, @function
MYOBJ_gethello2:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	saved_idx2(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$171, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L47
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L48
.L47:
	movl	$0, gbl_result(%rip)
	movl	gbl_result(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$0, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	MYOBJ_gethello2, .-MYOBJ_gethello2
	.section	.rodata
	.align 8
.LC18:
	.string	"ex_data = CRYPTO_get_ex_data(&obj->ex_data, saved_idx3)"
	.align 8
.LC19:
	.string	"CRYPTO_alloc_ex_data(CRYPTO_EX_INDEX_APP, obj, &obj->ex_data, saved_idx3)"
	.text
	.type	MYOBJ_allochello3, @function
MYOBJ_allochello3:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	saved_idx3(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$182, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L50
	movl	saved_idx3(%rip), %ecx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$13, %edi
	call	CRYPTO_alloc_ex_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$183, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movl	saved_idx3(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$185, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L51
.L50:
	movl	$0, gbl_result(%rip)
	movl	gbl_result(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	nop
.L51:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	MYOBJ_allochello3, .-MYOBJ_allochello3
	.type	MYOBJ_gethello3, @function
MYOBJ_gethello3:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	saved_idx3(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$195, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L54
.L53:
	movl	$0, gbl_result(%rip)
	movl	gbl_result(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$0, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	MYOBJ_gethello3, .-MYOBJ_gethello3
	.type	MYOBJ_free, @function
MYOBJ_free:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L57
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$13, %edi
	call	CRYPTO_free_ex_data@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$206, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L57:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	MYOBJ_free, .-MYOBJ_free
	.type	MYOBJ_dup, @function
MYOBJ_dup:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	MYOBJ_new
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L59
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$13, %edi
	call	CRYPTO_dup_ex_data@PLT
	movq	-8(%rbp), %rdx
	movl	20(%rdx), %edx
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
.L59:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	MYOBJ_dup, .-MYOBJ_dup
	.section	.rodata
.LC20:
	.string	"hello world"
	.align 8
.LC21:
	.string	"p = OPENSSL_strdup(\"hello world\")"
	.align 8
.LC22:
	.string	"saved_argp = OPENSSL_malloc(1)"
.LC23:
	.string	"t1->st"
.LC24:
	.string	"t2->st"
	.align 8
.LC25:
	.string	"CRYPTO_get_ex_data(&t1->ex_data, saved_idx2)"
	.align 8
.LC26:
	.string	"CRYPTO_get_ex_data(&t1->ex_data, saved_idx3)"
.LC27:
	.string	"p"
.LC28:
	.string	"cp"
.LC29:
	.string	"t3->st"
.LC30:
	.string	"ex_data->dup"
	.text
	.type	test_exdata, @function
test_exdata:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, gbl_result(%rip)
	leaq	.LC2(%rip), %rcx
	leaq	.LC20(%rip), %rax
	movl	$230, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$230, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	movq	$21, saved_argl(%rip)
	leaq	.LC2(%rip), %rax
	movl	$233, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, saved_argp(%rip)
	movq	saved_argp(%rip), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$233, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	saved_argp(%rip), %rdx
	movq	saved_argl(%rip), %rax
	leaq	exfree(%rip), %rdi
	leaq	exdup(%rip), %rsi
	leaq	exnew(%rip), %rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$13, %edi
	call	CRYPTO_get_ex_new_index@PLT
	movl	%eax, saved_idx(%rip)
	movq	saved_argp(%rip), %rdx
	movq	saved_argl(%rip), %rax
	leaq	exfree2(%rip), %rdi
	leaq	exdup2(%rip), %rsi
	leaq	exnew2(%rip), %rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$13, %edi
	call	CRYPTO_get_ex_new_index@PLT
	movl	%eax, saved_idx2(%rip)
	call	MYOBJ_new
	movq	%rax, -8(%rbp)
	call	MYOBJ_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$243, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L82
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$243, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L82
	movl	saved_idx2(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
	movq	saved_argp(%rip), %rdx
	movq	saved_argl(%rip), %rax
	leaq	exfree2(%rip), %rdi
	leaq	exdup2(%rip), %rsi
	leaq	exnew2(%rip), %rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$13, %edi
	call	CRYPTO_get_ex_new_index@PLT
	movl	%eax, saved_idx3(%rip)
	movl	saved_idx3(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L84
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MYOBJ_sethello
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_gethello
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$260, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MYOBJ_sethello2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_gethello2
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L86
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MYOBJ_allochello3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_gethello3
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L87
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_gethello
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$274, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L88
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_gethello2
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$278, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L89
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_dup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$282, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L90
	movl	saved_idx2(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$286, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	movq	-40(%rbp), %rax
	movl	12(%rax), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$288, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L92
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_gethello
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$292, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L93
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_gethello2
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$296, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_gethello3
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$300, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L95
	movl	gbl_result(%rip), %eax
	testl	%eax, %eax
	je	.L96
	movl	$1, -28(%rbp)
	jmp	.L65
.L81:
	nop
	jmp	.L65
.L82:
	nop
	jmp	.L65
.L83:
	nop
	jmp	.L65
.L84:
	nop
	jmp	.L65
.L85:
	nop
	jmp	.L65
.L86:
	nop
	jmp	.L65
.L87:
	nop
	jmp	.L65
.L88:
	nop
	jmp	.L65
.L89:
	nop
	jmp	.L65
.L90:
	nop
	jmp	.L65
.L91:
	nop
	jmp	.L65
.L92:
	nop
	jmp	.L65
.L93:
	nop
	jmp	.L65
.L94:
	nop
	jmp	.L65
.L95:
	nop
	jmp	.L65
.L96:
	nop
.L65:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	MYOBJ_free
	movq	saved_argp(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$309, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, saved_argp(%rip)
	leaq	.LC2(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$311, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_exdata, .-test_exdata
	.section	.rodata
.LC31:
	.string	"test_exdata"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_exdata(%rip), %rdx
	leaq	.LC31(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	setup_tests, .-setup_tests
	.local	count.0
	.comm	count.0,4,4
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
