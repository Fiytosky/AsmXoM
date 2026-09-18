	.file	"rsa_crpt.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	RSA_bits
	.type	RSA_bits, @function
RSA_bits:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	RSA_bits, .-RSA_bits
	.globl	RSA_size
	.type	RSA_size, @function
RSA_size:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	RSA_size, .-RSA_size
	.globl	RSA_public_encrypt
	.type	RSA_public_encrypt, @function
RSA_public_encrypt:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %r9
	movl	-8(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	*%r9
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	RSA_public_encrypt, .-RSA_public_encrypt
	.globl	RSA_private_encrypt
	.type	RSA_private_encrypt, @function
RSA_private_encrypt:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %r9
	movl	-8(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	*%r9
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	RSA_private_encrypt, .-RSA_private_encrypt
	.globl	RSA_private_decrypt
	.type	RSA_private_decrypt, @function
RSA_private_decrypt:
.LFB436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %r9
	movl	-8(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	*%r9
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	RSA_private_decrypt, .-RSA_private_decrypt
	.globl	RSA_public_decrypt
	.type	RSA_public_decrypt, @function
RSA_public_decrypt:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %r9
	movl	-8(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	*%r9
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	RSA_public_decrypt, .-RSA_public_decrypt
	.globl	RSA_flags
	.type	RSA_flags, @function
RSA_flags:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	72(%rax), %eax
	jmp	.L20
.L18:
	movl	$0, %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	RSA_flags, .-RSA_flags
	.globl	RSA_blinding_off
	.type	RSA_blinding_off, @function
RSA_blinding_off:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 192(%rax)
	movq	-8(%rbp), %rax
	movl	164(%rax), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 164(%rax)
	movq	-8(%rbp), %rax
	movl	164(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 164(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	RSA_blinding_off, .-RSA_blinding_off
	.globl	RSA_blinding_on
	.type	RSA_blinding_on, @function
RSA_blinding_on:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_blinding_off@PLT
.L23:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RSA_setup_blinding@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 192(%rdx)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movl	164(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 164(%rax)
	movq	-24(%rbp), %rax
	movl	164(%rax), %eax
	andb	$127, %al
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 164(%rax)
	movl	$1, -4(%rbp)
	jmp	.L25
.L27:
	nop
.L25:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	RSA_blinding_on, .-RSA_blinding_on
	.type	rsa_get_public_exp, @function
rsa_get_public_exp:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L29
	cmpq	$0, -48(%rbp)
	je	.L29
	cmpq	$0, -56(%rbp)
	jne	.L30
.L29:
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L37
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L38
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L39
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L40
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_mod_inverse@PLT
	movq	%rax, -8(%rbp)
	jmp	.L33
.L37:
	nop
	jmp	.L33
.L38:
	nop
	jmp	.L33
.L39:
	nop
	jmp	.L33
.L40:
	nop
.L33:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	rsa_get_public_exp, .-rsa_get_public_exp
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_crpt.c"
	.text
	.globl	RSA_setup_blinding
	.type	RSA_setup_blinding, @function
RSA_setup_blinding:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L42
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L42:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.L43:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L45:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	call	rsa_get_public_exp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L47:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.L48:
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L49:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-40(%rbp), %rax
	movq	168(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %rsi
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_BLINDING_create_param@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	cmpq	$0, -24(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L50:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_set_current_thread@PLT
.L46:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L51
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
.L51:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L52:
	movq	-24(%rbp), %rax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	RSA_setup_blinding, .-RSA_setup_blinding
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"RSA_setup_blinding"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
