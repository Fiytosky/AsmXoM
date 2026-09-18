	.file	"core_algorithm.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	algorithm_do_map, @function
algorithm_do_map:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	*%rcx
	testl	%eax, %eax
	jne	.L6
	movl	$-1, %eax
	jmp	.L16
.L6:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L8
	movl	$1, -20(%rbp)
	jmp	.L9
.L8:
	movq	-16(%rbp), %rax
	movq	16(%rax), %r9
	movq	-16(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-20(%rbp), %rdi
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L9
	movl	$-1, -20(%rbp)
	jmp	.L10
.L9:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L11
	movl	$1, -20(%rbp)
	jmp	.L10
.L11:
	cmpq	$0, -48(%rbp)
	je	.L12
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L13
.L14:
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	movq	-16(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-56(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	addq	$32, -8(%rbp)
.L13:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L14
.L12:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	movl	$1, -20(%rbp)
	jmp	.L10
.L15:
	movq	-16(%rbp), %rax
	movq	48(%rax), %r9
	movq	-16(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-20(%rbp), %rdi
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L17
	movl	$-1, -20(%rbp)
	jmp	.L10
.L17:
	nop
.L10:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	-20(%rbp), %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	algorithm_do_map, .-algorithm_do_map
	.type	algorithm_do_this, @function
algorithm_do_this:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -4(%rbp)
	movl	$22, -8(%rbp)
	movl	$1, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L19
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.L19:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L20
.L24:
	movl	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	leaq	-40(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_provider_query_operation@PLT
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	algorithm_do_map
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_provider_unquery_operation@PLT
	cmpl	$0, -36(%rbp)
	jns	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	cmpl	$0, -36(%rbp)
	jne	.L23
	movl	$0, -16(%rbp)
.L23:
	addl	$1, -12(%rbp)
.L20:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L24
	movl	-16(%rbp), %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	algorithm_do_this, .-algorithm_do_this
	.globl	ossl_algorithm_do_all
	.type	ossl_algorithm_do_all, @function
ossl_algorithm_do_all:
.LFB404:
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
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L26
	leaq	-96(%rbp), %rdx
	leaq	algorithm_do_this(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_provider_doall_activated@PLT
	jmp	.L25
.L26:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	cmpq	%rax, %rbx
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	algorithm_do_this
	jmp	.L25
.L30:
	nop
.L25:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_algorithm_do_all, .-ossl_algorithm_do_all
	.section	.rodata
.LC0:
	.string	"../crypto/core_algorithm.c"
	.text
	.globl	ossl_algorithm_get1_first_name
	.type	ossl_algorithm_get1_first_name, @function
ossl_algorithm_get1_first_name:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L34
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	jmp	.L35
.L34:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
.L35:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rsi
	movl	$195, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_algorithm_get1_first_name, .-ossl_algorithm_get1_first_name
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
