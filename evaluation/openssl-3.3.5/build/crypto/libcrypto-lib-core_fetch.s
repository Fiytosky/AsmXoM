	.file	"core_fetch.c"
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
	.type	is_temporary_method_store, @function
is_temporary_method_store:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	.L6
	movl	$1, %eax
	jmp	.L8
.L6:
	movl	$0, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	is_temporary_method_store, .-is_temporary_method_store
	.type	ossl_method_construct_reserve_store, @function
ossl_method_construct_reserve_store:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	is_temporary_method_store
	testl	%eax, %eax
	je	.L10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_method_construct_reserve_store, .-ossl_method_construct_reserve_store
	.type	ossl_method_construct_unreserve_store, @function
ossl_method_construct_unreserve_store:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_method_construct_unreserve_store, .-ossl_method_construct_unreserve_store
	.section	.rodata
.LC0:
	.string	"../crypto/core_fetch.c"
	.text
	.type	ossl_method_construct_precondition, @function
ossl_method_construct_precondition:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rdx
	movl	-16(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	is_temporary_method_store
	testl	%eax, %eax
	jne	.L17
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_test_operation_bit@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L16
.L17:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_method_construct_precondition, .-ossl_method_construct_precondition
	.type	ossl_method_construct_postcondition, @function
ossl_method_construct_postcondition:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$91, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rdx
	movl	-16(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	is_temporary_method_store
	testl	%eax, %eax
	jne	.L21
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_set_operation_bit@PLT
	testl	%eax, %eax
	je	.L22
.L21:
	movl	$1, %eax
	jmp	.L20
.L22:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_method_construct_postcondition, .-ossl_method_construct_postcondition
	.type	ossl_method_construct_this, @function
ossl_method_construct_this:
.LFB407:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %r8
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %r10
	movq	-8(%rbp), %rax
	movq	32(%rax), %r8
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	cmpl	$0, -36(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L24
.L29:
	nop
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_method_construct_this, .-ossl_method_construct_this
	.globl	ossl_method_construct
	.type	ossl_method_construct, @function
ossl_method_construct:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -80(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L31
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L32
.L31:
	movq	$0, -16(%rbp)
.L32:
	movq	$0, -56(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	ossl_method_construct_this(%rip), %r9
	leaq	ossl_method_construct_reserve_store(%rip), %r8
	leaq	ossl_method_construct_precondition(%rip), %rcx
	movq	-16(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	leaq	-64(%rbp), %rdi
	pushq	%rdi
	leaq	ossl_method_construct_postcondition(%rip), %rdi
	pushq	%rdi
	leaq	ossl_method_construct_unreserve_store(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_algorithm_do_all@PLT
	addq	$32, %rsp
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L33
	movq	-96(%rbp), %rax
	movq	24(%rax), %r8
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
.L33:
	cmpq	$0, -8(%rbp)
	jne	.L34
	movq	-96(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -8(%rbp)
.L34:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_method_construct, .-ossl_method_construct
	.section	.rodata
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 35
__func__.1:
	.string	"ossl_method_construct_precondition"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 36
__func__.0:
	.string	"ossl_method_construct_postcondition"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
