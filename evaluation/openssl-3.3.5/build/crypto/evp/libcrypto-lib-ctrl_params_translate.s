	.file	"ctrl_params_translate.c"
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
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/evp/ctrl_params_translate.c"
	.text
	.type	default_check, @function
default_check:
.LFB457:
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
	cmpl	$8, -4(%rbp)
	ja	.L20
	cmpl	$7, -4(%rbp)
	jnb	.L7
	cmpl	$1, -4(%rbp)
	je	.L8
	cmpl	$4, -4(%rbp)
	je	.L9
	jmp	.L20
.L8:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L12
.L11:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L13
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L21
.L13:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$303, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L12
.L9:
	cmpq	$0, -16(%rbp)
	je	.L22
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L12
.L16:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L17
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L22
.L17:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$321, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L12
.L7:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$329, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L12
.L18:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L19
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L10
.L19:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$334, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L12
.L20:
	nop
	jmp	.L10
.L21:
	nop
	jmp	.L10
.L22:
	nop
.L10:
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	default_check, .-default_check
	.section	.rodata
.LC1:
	.string	"[action:%d, state:%d]"
	.align 8
.LC2:
	.string	"[action:%d, state:%d] trying to get a BIGNUM via ctrl call"
	.align 8
.LC3:
	.string	"[action:%d, state:%d] only setting allowed"
	.align 8
.LC4:
	.string	"[action:%d, state:%d] name=%s, value=%s"
	.align 8
.LC5:
	.string	"[action:%d, state:%d] unknown OSSL_PARAM data type %d"
	.align 8
.LC6:
	.string	"[action:%d, state:%d] unsupported OSSL_PARAM data type %d"
	.text
	.type	default_fixup_args, @function
default_fixup_args:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movl	-84(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L24
	movl	-20(%rbp), %eax
	jmp	.L25
.L24:
	cmpl	$8, -84(%rbp)
	je	.L26
	cmpl	$8, -84(%rbp)
	ja	.L27
	cmpl	$7, -84(%rbp)
	je	.L28
	cmpl	$7, -84(%rbp)
	ja	.L27
	cmpl	$5, -84(%rbp)
	je	.L87
	cmpl	$5, -84(%rbp)
	ja	.L27
	cmpl	$4, -84(%rbp)
	je	.L30
	cmpl	$4, -84(%rbp)
	ja	.L27
	cmpl	$2, -84(%rbp)
	je	.L31
	cmpl	$2, -84(%rbp)
	ja	.L27
	cmpl	$0, -84(%rbp)
	je	.L26
	cmpl	$1, -84(%rbp)
	je	.L32
.L27:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$396, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	-84(%rbp), %ecx
	leaq	.LC1(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$786689, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L25
.L32:
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$413, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	-84(%rbp), %ecx
	leaq	.LC1(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$524556, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L25
.L33:
	movq	-96(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L34
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L35
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	je	.L35
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L35
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$256, %eax
	je	.L35
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$64, %eax
	jne	.L36
.L35:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L37
.L36:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$2048, %eax
	jne	.L38
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L37
.L38:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$512, %eax
	je	.L39
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1024, %eax
	jne	.L40
.L39:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L37
.L40:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4096, %eax
	je	.L41
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$8192, %eax
	jne	.L42
.L41:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L37
.L42:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L43
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L44
.L43:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L37
.L44:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	jne	.L34
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L34
.L37:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$435, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L25
.L34:
	movq	-96(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$7, %eax
	je	.L45
	cmpl	$7, %eax
	ja	.L88
	cmpl	$6, %eax
	je	.L47
	cmpl	$6, %eax
	ja	.L88
	cmpl	$5, %eax
	je	.L48
	cmpl	$5, %eax
	ja	.L88
	cmpl	$4, %eax
	je	.L49
	cmpl	$4, %eax
	ja	.L88
	cmpl	$1, %eax
	je	.L50
	cmpl	$2, %eax
	je	.L51
	jmp	.L88
.L50:
	movq	-104(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rbx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L46
.L51:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L53
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$462, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-104(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	movl	$0, %eax
	jmp	.L25
.L54:
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2nativepad@PLT
	testl	%eax, %eax
	jns	.L55
	movq	-104(%rbp), %rax
	movq	120(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$466, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-104(%rbp), %rax
	movq	$0, 120(%rax)
	movl	$0, %eax
	jmp	.L25
.L55:
	movq	-104(%rbp), %rax
	movq	136(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	48(%rax), %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_BN@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L46
.L53:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$479, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	-84(%rbp), %ecx
	leaq	.LC2(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$524556, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L25
.L52:
	movq	-104(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rbx
	leaq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L46
.L49:
	movq	-104(%rbp), %rax
	movl	28(%rax), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	48(%rax), %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L46
.L47:
	movq	-104(%rbp), %rax
	movl	28(%rax), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	48(%rax), %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L46
.L48:
	movq	-104(%rbp), %rax
	movl	28(%rax), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	48(%rax), %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rbx)
	jmp	.L46
.L45:
	movq	-104(%rbp), %rax
	movl	28(%rax), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	48(%rax), %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_ptr@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-128(%rbp), %rax
	movq	%rax, 32(%rbx)
	nop
.L46:
	jmp	.L88
.L31:
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L89
	movq	-96(%rbp), %rax
	movl	48(%rax), %eax
	subl	$4, %eax
	cmpl	$3, %eax
	ja	.L89
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	32(%rax), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 28(%rax)
	nop
	jmp	.L89
.L30:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L59
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$548, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	-84(%rbp), %ecx
	leaq	.LC3(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L25
.L59:
	cmpq	$0, -96(%rbp)
	je	.L61
	movq	-96(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L61
	movq	-104(%rbp), %rax
	addq	$64, %rax
	movl	$7890280, (%rax)
	movq	-104(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcat@PLT
	cmpq	$3, %rax
	ja	.L62
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$565, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L25
.L62:
	movq	-104(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -32(%rbp)
.L61:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_settable_params@PLT
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	movq	-104(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	leaq	-76(%rbp), %r8
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	OSSL_PARAM_allocate_from_text@PLT
	testl	%eax, %eax
	jne	.L63
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$578, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movq	-56(%rbp), %rsi
	movl	-84(%rbp), %ecx
	leaq	.LC4(%rip), %rdx
	subq	$8, %rsp
	pushq	-64(%rbp)
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	addq	$16, %rsp
	movl	$-2, %eax
	jmp	.L25
.L64:
	movl	$0, %eax
	jmp	.L25
.L63:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 136(%rax)
	jmp	.L57
.L26:
	movq	-104(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -20(%rbp)
.L28:
	cmpl	$7, -84(%rbp)
	jne	.L65
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L65
	movq	-96(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$7, %eax
	je	.L66
	cmpl	$7, %eax
	ja	.L67
	cmpl	$5, %eax
	je	.L68
	cmpl	$5, %eax
	ja	.L67
	cmpl	$4, %eax
	je	.L69
	cmpl	$4, %eax
	ja	.L67
	cmpl	$1, %eax
	je	.L70
	cmpl	$2, %eax
	je	.L71
	jmp	.L67
.L70:
	movq	-104(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	jmp	.L25
.L71:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L25
.L72:
	movq	-104(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L25
.L73:
	movl	$1, %eax
	jmp	.L25
.L69:
	movq	-104(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	jmp	.L25
.L68:
	movq	-104(%rbp), %rax
	leaq	28(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-104(%rbp), %rax
	leaq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	jmp	.L25
.L66:
	movq	-104(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_ptr@PLT
	jmp	.L25
.L67:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$643, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-96(%rbp), %rax
	movl	48(%rax), %esi
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	-84(%rbp), %ecx
	leaq	.LC5(%rip), %rdx
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$524556, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L25
.L65:
	cmpl	$8, -84(%rbp)
	je	.L74
	cmpl	$0, -84(%rbp)
	jne	.L75
.L74:
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L75
	movq	-96(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-104(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L76
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
.L76:
	cmpl	$0, -36(%rbp)
	jne	.L77
	movq	-96(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$661, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L25
.L78:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
.L77:
	cmpl	$7, -36(%rbp)
	je	.L79
	cmpl	$7, -36(%rbp)
	ja	.L80
	cmpl	$5, -36(%rbp)
	je	.L81
	cmpl	$5, -36(%rbp)
	ja	.L80
	cmpl	$4, -36(%rbp)
	je	.L82
	cmpl	$4, -36(%rbp)
	ja	.L80
	cmpl	$1, -36(%rbp)
	je	.L83
	cmpl	$2, -36(%rbp)
	je	.L84
	jmp	.L80
.L83:
	movq	-104(%rbp), %rax
	movl	28(%rax), %edx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	jmp	.L25
.L84:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_BN@PLT
	jmp	.L25
.L85:
	movq	-104(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint@PLT
	jmp	.L25
.L82:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	jmp	.L25
.L81:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	jmp	.L25
.L79:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_ptr@PLT
	jmp	.L25
.L80:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$689, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-96(%rbp), %rax
	movl	48(%rax), %esi
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	-84(%rbp), %ecx
	leaq	.LC6(%rip), %rdx
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$524556, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L25
.L75:
	cmpl	$7, -84(%rbp)
	jne	.L90
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L90
	movq	-96(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$7, %eax
	jne	.L90
	movq	-104(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L90
.L87:
	nop
	jmp	.L57
.L88:
	nop
	jmp	.L57
.L89:
	nop
	jmp	.L57
.L90:
	nop
.L57:
	movl	-20(%rbp), %eax
.L25:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	default_fixup_args, .-default_fixup_args
	.type	cleanup_translation_ctx, @function
cleanup_translation_ctx:
.LFB459:
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
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$713, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L92:
	movq	-24(%rbp), %rax
	movq	$0, 120(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	cleanup_translation_ctx, .-cleanup_translation_ctx
	.type	get_cipher_name, @function
get_cipher_name:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	get_cipher_name, .-get_cipher_name
	.type	get_md_name, @function
get_md_name:
.LFB461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	get_md_name, .-get_md_name
	.type	get_cipher_by_name, @function
get_cipher_by_name:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_get_cipherbyname_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	get_cipher_by_name, .-get_cipher_by_name
	.type	get_md_by_name, @function
get_md_by_name:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_get_digestbyname_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	get_md_by_name, .-get_md_by_name
	.section	.rodata
.LC7:
	.string	""
	.text
	.type	fix_cipher_md, @function
fix_cipher_md:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$1, -20(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L103
	movl	-20(%rbp), %eax
	jmp	.L104
.L103:
	cmpl	$1, -36(%rbp)
	jne	.L105
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L105
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-56(%rbp), %rax
	movl	$50, 28(%rax)
	jmp	.L106
.L105:
	cmpl	$1, -36(%rbp)
	jne	.L107
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L107
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L108
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	jmp	.L109
.L108:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.L109:
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 28(%rax)
	jmp	.L106
.L107:
	cmpl	$8, -36(%rbp)
	jne	.L106
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L106
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L111
.L110:
	leaq	.LC7(%rip), %rax
.L111:
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 28(%rax)
.L106:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L112
	movl	-20(%rbp), %eax
	jmp	.L104
.L112:
	cmpl	$2, -36(%rbp)
	jne	.L113
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L113
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	56(%rcx), %rbx
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movl	$1, 28(%rax)
	jmp	.L114
.L113:
	cmpl	$7, -36(%rbp)
	jne	.L114
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L114
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-56(%rbp), %rax
	movl	$0, 28(%rax)
.L114:
	movl	-20(%rbp), %eax
.L104:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	fix_cipher_md, .-fix_cipher_md
	.type	fix_cipher, @function
fix_cipher:
.LFB465:
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
	leaq	get_cipher_by_name(%rip), %rdi
	leaq	get_cipher_name(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	fix_cipher_md
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	fix_cipher, .-fix_cipher
	.type	fix_md, @function
fix_md:
.LFB466:
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
	leaq	get_md_by_name(%rip), %rdi
	leaq	get_md_name(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	fix_cipher_md
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	fix_md, .-fix_md
	.type	fix_distid_len, @function
fix_distid_len:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L120
	movl	$0, -4(%rbp)
	cmpl	$2, -20(%rbp)
	je	.L121
	cmpl	$5, -20(%rbp)
	jne	.L120
.L121:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L120
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
.L120:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	fix_distid_len, .-fix_distid_len
	.type	fix_kdf_type, @function
fix_kdf_type:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L124
	movl	-4(%rbp), %eax
	jmp	.L125
.L124:
	cmpl	$1, -20(%rbp)
	jne	.L126
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L127
	movl	$0, %eax
	jmp	.L125
.L127:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$-2, %eax
	jne	.L128
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	$50, 28(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.L126
.L128:
	movq	-40(%rbp), %rax
	movl	$2, 8(%rax)
.L126:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L129
	movl	-4(%rbp), %eax
	jmp	.L125
.L129:
	cmpl	$1, -20(%rbp)
	jne	.L130
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L131
.L130:
	cmpl	$8, -20(%rbp)
	jne	.L132
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L132
.L131:
	movl	$-2, -4(%rbp)
	jmp	.L133
.L136:
	movq	-40(%rbp), %rax
	movl	28(%rax), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L134
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$1, -4(%rbp)
	jmp	.L135
.L134:
	addq	$16, -48(%rbp)
.L133:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L136
.L135:
	cmpl	$0, -4(%rbp)
	jle	.L147
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 28(%rax)
.L132:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L139
	movl	-4(%rbp), %eax
	jmp	.L125
.L139:
	cmpl	$2, -20(%rbp)
	jne	.L140
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L141
.L140:
	cmpl	$7, -20(%rbp)
	jne	.L142
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L142
.L141:
	movl	$-1, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 28(%rax)
	jmp	.L143
.L146:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L144
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	$1, -4(%rbp)
	jmp	.L145
.L144:
	addq	$16, -48(%rbp)
.L143:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L146
.L145:
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	jmp	.L138
.L142:
	cmpl	$7, -20(%rbp)
	jne	.L148
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L148
	movq	-40(%rbp), %rax
	movl	$-2, 28(%rax)
	jmp	.L138
.L147:
	nop
	jmp	.L138
.L148:
	nop
.L138:
	movl	-4(%rbp), %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	fix_kdf_type, .-fix_kdf_type
	.type	fix_dh_kdf_type, @function
fix_dh_kdf_type:
.LFB469:
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
	leaq	kdf_type_map.17(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	fix_kdf_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	fix_dh_kdf_type, .-fix_dh_kdf_type
	.type	fix_ec_kdf_type, @function
fix_ec_kdf_type:
.LFB470:
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
	leaq	kdf_type_map.16(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	fix_kdf_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	fix_ec_kdf_type, .-fix_ec_kdf_type
	.type	fix_oid, @function
fix_oid:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L154
	movl	-4(%rbp), %eax
	jmp	.L155
.L154:
	cmpl	$1, -20(%rbp)
	jne	.L156
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L157
.L156:
	cmpl	$8, -20(%rbp)
	jne	.L158
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L158
.L157:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	64(%rdx), %rdi
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$50, %esi
	call	OBJ_obj2txt@PLT
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 28(%rax)
.L158:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L159
	movl	-4(%rbp), %eax
	jmp	.L155
.L159:
	cmpl	$7, -20(%rbp)
	jne	.L160
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L161
.L160:
	cmpl	$2, -20(%rbp)
	jne	.L162
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L162
.L161:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L162:
	movl	-4(%rbp), %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	fix_oid, .-fix_oid
	.type	fix_dh_nid, @function
fix_dh_nid:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L164
	movl	-4(%rbp), %eax
	jmp	.L165
.L164:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L166
	movl	$0, %eax
	jmp	.L165
.L166:
	cmpl	$1, -20(%rbp)
	jne	.L167
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %edi
	call	ossl_ffc_uid_to_dh_named_group@PLT
	movq	%rax, %rdi
	call	ossl_ffc_named_group_get_name@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L168
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1008, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L165
.L168:
	movq	-40(%rbp), %rax
	movl	$0, 28(%rax)
.L167:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	fix_dh_nid, .-fix_dh_nid
	.type	fix_dh_nid5114, @function
fix_dh_nid5114:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L170
	movl	-4(%rbp), %eax
	jmp	.L171
.L170:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L172
	movl	$0, %eax
	jmp	.L171
.L172:
	cmpl	$1, -20(%rbp)
	je	.L173
	cmpl	$4, -20(%rbp)
	je	.L174
	jmp	.L177
.L173:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %edi
	call	ossl_ffc_uid_to_dh_named_group@PLT
	movq	%rax, %rdi
	call	ossl_ffc_named_group_get_name@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L176
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1035, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L171
.L176:
	movq	-40(%rbp), %rax
	movl	$0, 28(%rax)
	jmp	.L177
.L174:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L178
	movl	$0, %eax
	jmp	.L171
.L178:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edi
	call	ossl_ffc_uid_to_dh_named_group@PLT
	movq	%rax, %rdi
	call	ossl_ffc_named_group_get_name@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L179
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1047, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L171
.L179:
	movq	-40(%rbp), %rax
	movl	$0, 28(%rax)
	nop
.L177:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	fix_dh_nid5114, .-fix_dh_nid5114
	.type	fix_dh_paramgen_type, @function
fix_dh_paramgen_type:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L181
	movl	-4(%rbp), %eax
	jmp	.L182
.L181:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L183
	movl	$0, %eax
	jmp	.L182
.L183:
	cmpl	$4, -20(%rbp)
	jne	.L184
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edi
	call	ossl_dh_gen_type_id2name@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L185
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1078, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L182
.L185:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 28(%rax)
.L184:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	fix_dh_paramgen_type, .-fix_dh_paramgen_type
	.section	.rodata
.LC8:
	.string	"explicit"
.LC9:
	.string	"named_curve"
	.text
	.type	fix_ec_param_enc, @function
fix_ec_param_enc:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L187
	movl	-4(%rbp), %eax
	jmp	.L188
.L187:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L189
	movl	$0, %eax
	jmp	.L188
.L189:
	cmpl	$1, -20(%rbp)
	jne	.L190
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L191
	cmpl	$1, %eax
	je	.L192
	jmp	.L201
.L191:
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L194
.L192:
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L194
.L201:
	movl	$-2, -4(%rbp)
	jmp	.L195
.L194:
	movq	-40(%rbp), %rax
	movl	$0, 28(%rax)
.L190:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L196
	movl	-4(%rbp), %eax
	jmp	.L188
.L196:
	cmpl	$7, -20(%rbp)
	jne	.L202
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L197
	movq	-40(%rbp), %rax
	movl	$0, 28(%rax)
	jmp	.L198
.L197:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L199
	movq	-40(%rbp), %rax
	movl	$1, 28(%rax)
	jmp	.L198
.L199:
	movl	$-2, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 28(%rax)
.L198:
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	jmp	.L195
.L202:
	nop
.L195:
	cmpl	$-2, -4(%rbp)
	jne	.L200
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L200:
	movl	-4(%rbp), %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	fix_ec_param_enc, .-fix_ec_param_enc
	.type	fix_ec_paramgen_curve_nid, @function
fix_ec_paramgen_curve_nid:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L204
	movl	-4(%rbp), %eax
	jmp	.L211
.L204:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L206
	movl	$0, %eax
	jmp	.L211
.L206:
	cmpl	$1, -20(%rbp)
	jne	.L207
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movl	$0, 28(%rax)
	jmp	.L208
.L207:
	cmpl	$7, -20(%rbp)
	jne	.L208
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	$50, 40(%rax)
.L208:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L209
	movl	-4(%rbp), %eax
	jmp	.L211
.L209:
	cmpl	$7, -20(%rbp)
	jne	.L210
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movq	-40(%rbp), %rdx
	movl	%eax, 28(%rdx)
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
.L210:
	movl	-4(%rbp), %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	fix_ec_paramgen_curve_nid, .-fix_ec_paramgen_curve_nid
	.type	fix_ecdh_cofactor, @function
fix_ecdh_cofactor:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L213
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L214
	movl	$0, %eax
	jmp	.L215
.L214:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$-2, %eax
	jne	.L216
	movq	-40(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.L217
.L216:
	movq	-40(%rbp), %rax
	movl	$2, 8(%rax)
	jmp	.L217
.L213:
	cmpl	$4, -20(%rbp)
	jne	.L218
	movq	-40(%rbp), %rax
	movl	$2, 8(%rax)
	jmp	.L217
.L218:
	cmpl	$7, -20(%rbp)
	jne	.L219
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L217
	movl	$0, %eax
	jmp	.L215
.L219:
	cmpl	$8, -20(%rbp)
	jne	.L217
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L217
	movq	-40(%rbp), %rax
	movl	$1, 8(%rax)
.L217:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L220
	movl	-4(%rbp), %eax
	jmp	.L215
.L220:
	cmpl	$1, -20(%rbp)
	jne	.L221
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L221
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$-1, %eax
	jl	.L222
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jle	.L221
.L222:
	movl	$-2, %eax
	jmp	.L215
.L221:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L223
	movl	-4(%rbp), %eax
	jmp	.L215
.L223:
	cmpl	$2, -20(%rbp)
	jne	.L224
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L224
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	js	.L225
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jle	.L229
.L225:
	movl	$-1, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 28(%rax)
	jmp	.L229
.L224:
	cmpl	$7, -20(%rbp)
	jne	.L228
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L228
	movq	-40(%rbp), %rax
	movl	$-2, 28(%rax)
	jmp	.L227
.L228:
	cmpl	$8, -20(%rbp)
	jne	.L227
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L227
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 28(%rax)
	jmp	.L227
.L229:
	nop
.L227:
	movl	-4(%rbp), %eax
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	fix_ecdh_cofactor, .-fix_ecdh_cofactor
	.section	.rodata
	.align 8
.LC10:
	.string	"[action:%d, state:%d] padding number %d"
	.align 8
.LC11:
	.string	"[action:%d, state:%d] padding name %s"
	.text
	.type	fix_rsa_padding_mode, @function
fix_rsa_padding_mode:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L231
	movl	-20(%rbp), %eax
	jmp	.L232
.L231:
	cmpl	$1, -52(%rbp)
	jne	.L233
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L233
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-72(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-72(%rbp), %rax
	movl	$50, 28(%rax)
	jmp	.L234
.L233:
	cmpl	$1, -52(%rbp)
	jne	.L235
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L235
	movq	-72(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rbx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	$1, %eax
	jmp	.L232
.L235:
	cmpl	$8, -52(%rbp)
	jne	.L234
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L234
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L236
	cmpl	$2, %eax
	je	.L237
	nop
	movq	$0, -32(%rbp)
	jmp	.L239
.L236:
	movq	-72(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	jmp	.L232
.L237:
	movq	-72(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	jmp	.L232
.L242:
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	str_value_map.11(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %eax
	je	.L257
	addq	$1, -32(%rbp)
.L239:
	cmpq	$6, -32(%rbp)
	jbe	.L242
	jmp	.L241
.L257:
	nop
.L241:
	cmpq	$7, -32(%rbp)
	jne	.L243
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1324, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	28(%rax), %esi
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	-52(%rbp), %ecx
	leaq	.LC10(%rip), %rdx
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$118, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L232
.L243:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+str_value_map.11(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L244
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1334, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L232
.L244:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+str_value_map.11(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
.L234:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L245
	movl	-20(%rbp), %eax
	jmp	.L232
.L245:
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L246
	cmpl	$7, -52(%rbp)
	je	.L247
.L246:
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L248
	cmpl	$2, -52(%rbp)
	jne	.L248
.L247:
	movq	$0, -40(%rbp)
	jmp	.L249
.L252:
	movq	-40(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+str_value_map.11(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L258
	addq	$1, -40(%rbp)
.L249:
	cmpq	$6, -40(%rbp)
	jbe	.L252
	jmp	.L251
.L258:
	nop
.L251:
	cmpq	$7, -40(%rbp)
	jne	.L253
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1354, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	-52(%rbp), %ecx
	leaq	.LC11(%rip), %rdx
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$118, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, -20(%rbp)
	movq	-72(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 28(%rax)
	jmp	.L254
.L253:
	cmpl	$2, -52(%rbp)
	jne	.L255
	movq	-40(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	str_value_map.11(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movl	%edx, (%rax)
	jmp	.L254
.L255:
	movq	-40(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	str_value_map.11(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
.L254:
	movq	-72(%rbp), %rax
	movq	$0, 32(%rax)
.L248:
	movl	-20(%rbp), %eax
.L232:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	fix_rsa_padding_mode, .-fix_rsa_padding_mode
	.section	.rodata
.LC12:
	.string	"%d"
	.text
	.type	fix_rsa_pss_saltlen, @function
fix_rsa_pss_saltlen:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jg	.L260
	movl	-24(%rbp), %eax
	jmp	.L261
.L260:
	cmpl	$1, -36(%rbp)
	jne	.L262
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L262
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-56(%rbp), %rax
	movl	$50, 28(%rax)
	jmp	.L263
.L262:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L264
	cmpl	$1, -36(%rbp)
	je	.L265
.L264:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L263
	cmpl	$8, -36(%rbp)
	jne	.L263
.L265:
	movq	$0, -8(%rbp)
	jmp	.L266
.L269:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	str_value_map.9(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %eax
	je	.L284
	addq	$1, -8(%rbp)
.L266:
	cmpq	$2, -8(%rbp)
	jbe	.L269
	jmp	.L268
.L284:
	nop
.L268:
	cmpq	$3, -8(%rbp)
	jne	.L270
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	movq	-56(%rbp), %rdx
	leaq	64(%rdx), %rdi
	leaq	.LC12(%rip), %rdx
	movl	%eax, %ecx
	movl	$50, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L271
.L270:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+str_value_map.9(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	64(%rdx), %rcx
	movl	$49, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	movq	-56(%rbp), %rax
	movb	$0, 113(%rax)
.L271:
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 28(%rax)
.L263:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jg	.L272
	movl	-24(%rbp), %eax
	jmp	.L261
.L272:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L273
	cmpl	$7, -36(%rbp)
	je	.L274
.L273:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L275
	cmpl	$2, -36(%rbp)
	jne	.L275
.L274:
	movq	$0, -16(%rbp)
	jmp	.L276
.L279:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+str_value_map.9(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L285
	addq	$1, -16(%rbp)
.L276:
	cmpq	$2, -16(%rbp)
	jbe	.L279
	jmp	.L278
.L285:
	nop
.L278:
	cmpq	$3, -16(%rbp)
	jne	.L280
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -20(%rbp)
	jmp	.L281
.L280:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	str_value_map.9(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
.L281:
	cmpl	$2, -36(%rbp)
	jne	.L282
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L283
.L282:
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 28(%rax)
.L283:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
.L275:
	movl	-24(%rbp), %eax
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	fix_rsa_pss_saltlen, .-fix_rsa_pss_saltlen
	.type	fix_hkdf_mode, @function
fix_hkdf_mode:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_check
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L287
	movl	-20(%rbp), %eax
	jmp	.L288
.L287:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L289
	cmpl	$1, -36(%rbp)
	je	.L290
.L289:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L291
	cmpl	$8, -36(%rbp)
	jne	.L291
.L290:
	movq	$0, -8(%rbp)
	jmp	.L292
.L295:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	str_value_map.8(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %eax
	je	.L308
	addq	$1, -8(%rbp)
.L292:
	cmpq	$2, -8(%rbp)
	jbe	.L295
	jmp	.L294
.L308:
	nop
.L294:
	cmpq	$3, -8(%rbp)
	jne	.L296
	movl	$0, %eax
	jmp	.L288
.L296:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+str_value_map.8(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 28(%rax)
.L291:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L297
	movl	-20(%rbp), %eax
	jmp	.L288
.L297:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L298
	cmpl	$7, -36(%rbp)
	je	.L299
.L298:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L300
	cmpl	$2, -36(%rbp)
	jne	.L300
.L299:
	movq	$0, -16(%rbp)
	jmp	.L301
.L304:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+str_value_map.8(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L309
	addq	$1, -16(%rbp)
.L301:
	cmpq	$2, -16(%rbp)
	jbe	.L304
	jmp	.L303
.L309:
	nop
.L303:
	cmpq	$3, -16(%rbp)
	jne	.L305
	movl	$0, %eax
	jmp	.L288
.L305:
	cmpl	$2, -36(%rbp)
	jne	.L306
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	str_value_map.8(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L307
.L306:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	str_value_map.8(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 28(%rax)
.L307:
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
.L300:
	movl	$1, %eax
.L288:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	fix_hkdf_mode, .-fix_hkdf_mode
	.type	get_payload_group_name, @function
get_payload_group_name:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$28, %eax
	je	.L311
	cmpl	$408, %eax
	je	.L312
	jmp	.L320
.L311:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_nid@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L321
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	ossl_ffc_uid_to_dh_named_group@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_named_group_get_name@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L321
.L312:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L316
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -4(%rbp)
.L316:
	cmpl	$0, -4(%rbp)
	je	.L322
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OSSL_EC_curve_nid2name@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L322
.L320:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1550, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L318
.L321:
	nop
	jmp	.L315
.L322:
	nop
.L315:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L319
	movl	$1, %eax
	jmp	.L318
.L319:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
.L318:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	get_payload_group_name, .-get_payload_group_name
	.type	get_payload_private_key, @function
get_payload_private_key:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L324
	movl	$0, %eax
	jmp	.L325
.L324:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$28, %eax
	je	.L326
	cmpl	$408, %eax
	je	.L327
	jmp	.L330
.L326:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_priv_key@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L329
.L327:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L329
.L330:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1595, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L325
.L329:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
.L325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	get_payload_private_key, .-get_payload_private_key
	.type	get_payload_public_key, @function
get_payload_public_key:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$920, %eax
	je	.L332
	cmpl	$920, %eax
	jg	.L333
	cmpl	$408, %eax
	je	.L334
	cmpl	$408, %eax
	jg	.L333
	cmpl	$28, %eax
	je	.L332
	cmpl	$116, %eax
	je	.L335
	jmp	.L333
.L332:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L336
	cmpl	$5, %eax
	jne	.L337
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, %rdi
	leaq	-56(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	ossl_dh_key2buf@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L338
.L336:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, %rdi
	call	DH_get0_pub_key@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L338
.L337:
	movl	$0, %eax
	jmp	.L344
.L338:
	jmp	.L340
.L335:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L341
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, %rdi
	call	DSA_get0_pub_key@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L340
.L341:
	movl	$0, %eax
	jmp	.L344
.L334:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L342
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L343
	movl	$0, %eax
	jmp	.L344
.L343:
	movq	-24(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	EC_POINT_point2buf@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	jmp	.L340
.L342:
	movl	$0, %eax
	jmp	.L344
.L333:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1656, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L344
.L340:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1661, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-44(%rbp), %eax
.L344:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	get_payload_public_key, .-get_payload_public_key
	.section	.rodata
.LC13:
	.string	"qx"
.LC14:
	.string	"qy"
	.text
	.type	get_payload_public_key_ec, @function
get_payload_public_key_ec:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -24(%rbp)
	jne	.L346
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1682, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L347
.L346:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L348
	movl	$0, %eax
	jmp	.L347
.L348:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L356
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L357
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L358
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L353
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L354
.L353:
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L359
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L354:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
	movl	%eax, -4(%rbp)
	jmp	.L350
.L356:
	nop
	jmp	.L350
.L357:
	nop
	jmp	.L350
.L358:
	nop
	jmp	.L350
.L359:
	nop
.L350:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L347:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	get_payload_public_key_ec, .-get_payload_public_key_ec
	.type	get_payload_bn, @function
get_payload_bn:
.LFB485:
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
	cmpq	$0, -32(%rbp)
	jne	.L361
	movl	$0, %eax
	jmp	.L362
.L361:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L363
	movl	$0, %eax
	jmp	.L362
.L363:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
.L362:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	get_payload_bn, .-get_payload_bn
	.type	get_dh_dsa_payload_p, @function
get_dh_dsa_payload_p:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$28, %eax
	je	.L365
	cmpl	$116, %eax
	je	.L366
	jmp	.L370
.L365:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, %rdi
	call	DH_get0_p@PLT
	movq	%rax, -8(%rbp)
	jmp	.L368
.L366:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, %rdi
	call	DSA_get0_p@PLT
	movq	%rax, -8(%rbp)
	jmp	.L368
.L370:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1755, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L368:
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	get_dh_dsa_payload_p, .-get_dh_dsa_payload_p
	.type	get_dh_dsa_payload_q, @function
get_dh_dsa_payload_q:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$28, %eax
	je	.L372
	cmpl	$116, %eax
	je	.L373
	jmp	.L374
.L372:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, %rdi
	call	DH_get0_q@PLT
	movq	%rax, -8(%rbp)
	jmp	.L374
.L373:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, %rdi
	call	DSA_get0_q@PLT
	movq	%rax, -8(%rbp)
	nop
.L374:
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	get_dh_dsa_payload_q, .-get_dh_dsa_payload_q
	.type	get_dh_dsa_payload_g, @function
get_dh_dsa_payload_g:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$28, %eax
	je	.L377
	cmpl	$116, %eax
	je	.L378
	jmp	.L379
.L377:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, %rdi
	call	DH_get0_g@PLT
	movq	%rax, -8(%rbp)
	jmp	.L379
.L378:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, %rdi
	call	DSA_get0_g@PLT
	movq	%rax, -8(%rbp)
	nop
.L379:
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	get_dh_dsa_payload_g, .-get_dh_dsa_payload_g
	.type	get_payload_int, @function
get_payload_int:
.LFB489:
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
	movl	%ecx, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L382
	movl	$0, %eax
	jmp	.L383
.L382:
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	default_fixup_args
.L383:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	get_payload_int, .-get_payload_int
	.type	get_ec_decoded_from_explicit_params, @function
get_ec_decoded_from_explicit_params:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$408, %eax
	jne	.L385
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, %rdi
	call	EC_KEY_decoded_from_explicit_params@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L389
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1830, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$163, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L387
.L385:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1836, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L387
.L389:
	nop
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_int
.L387:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	get_ec_decoded_from_explicit_params, .-get_ec_decoded_from_explicit_params
	.type	get_rsa_payload_n, @function
get_rsa_payload_n:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L391
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L391
	movl	$0, %eax
	jmp	.L392
.L391:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, %rdi
	call	RSA_get0_n@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_bn
.L392:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	get_rsa_payload_n, .-get_rsa_payload_n
	.type	get_rsa_payload_e, @function
get_rsa_payload_e:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L394
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L394
	movl	$0, %eax
	jmp	.L395
.L394:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, %rdi
	call	RSA_get0_e@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_bn
.L395:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	get_rsa_payload_e, .-get_rsa_payload_e
	.type	get_rsa_payload_d, @function
get_rsa_payload_d:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L397
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L397
	movl	$0, %eax
	jmp	.L398
.L397:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, %rdi
	call	RSA_get0_d@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_bn
.L398:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	get_rsa_payload_d, .-get_rsa_payload_d
	.type	get_rsa_payload_factor, @function
get_rsa_payload_factor:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L400
	cmpq	$1, -144(%rbp)
	je	.L401
	jmp	.L406
.L400:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_p@PLT
	movq	%rax, -8(%rbp)
	jmp	.L403
.L401:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_q@PLT
	movq	%rax, -8(%rbp)
	jmp	.L403
.L406:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get_multi_prime_extra_count@PLT
	cltq
	movq	%rax, -24(%rbp)
	movq	-144(%rbp), %rax
	subq	$2, %rax
	cmpq	-24(%rbp), %rax
	jnb	.L407
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RSA_get0_multi_prime_factors@PLT
	testl	%eax, %eax
	je	.L407
	movq	-144(%rbp), %rax
	subq	$2, %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	%rax, -8(%rbp)
.L407:
	nop
.L403:
	movq	-8(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	get_rsa_payload_factor, .-get_rsa_payload_factor
	.type	get_rsa_payload_exponent, @function
get_rsa_payload_exponent:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L409
	cmpq	$1, -224(%rbp)
	je	.L410
	jmp	.L415
.L409:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_dmp1@PLT
	movq	%rax, -8(%rbp)
	jmp	.L412
.L410:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_dmq1@PLT
	movq	%rax, -8(%rbp)
	jmp	.L412
.L415:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get_multi_prime_extra_count@PLT
	cltq
	movq	%rax, -24(%rbp)
	movq	-224(%rbp), %rax
	subq	$2, %rax
	cmpq	-24(%rbp), %rax
	jnb	.L416
	leaq	-112(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_get0_multi_prime_crt_params@PLT
	testl	%eax, %eax
	je	.L416
	movq	-224(%rbp), %rax
	subq	$2, %rax
	movq	-192(%rbp,%rax,8), %rax
	movq	%rax, -8(%rbp)
.L416:
	nop
.L412:
	movq	-8(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movl	-196(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	get_rsa_payload_exponent, .-get_rsa_payload_exponent
	.type	get_rsa_payload_coefficient, @function
get_rsa_payload_coefficient:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.L418
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_iqmp@PLT
	movq	%rax, -8(%rbp)
	jmp	.L419
.L418:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get_multi_prime_extra_count@PLT
	cltq
	movq	%rax, -24(%rbp)
	movq	-224(%rbp), %rax
	subq	$1, %rax
	cmpq	-24(%rbp), %rax
	jnb	.L422
	leaq	-112(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_get0_multi_prime_crt_params@PLT
	testl	%eax, %eax
	je	.L422
	movq	-224(%rbp), %rax
	subq	$1, %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	%rax, -8(%rbp)
.L422:
	nop
.L419:
	movq	-8(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movl	-196(%rbp), %eax
	movl	%eax, %edi
	call	get_payload_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	get_rsa_payload_coefficient, .-get_rsa_payload_coefficient
	.type	get_rsa_payload_f1, @function
get_rsa_payload_f1:
.LFB497:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L424
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L424
	movl	$0, %eax
	jmp	.L425
.L424:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L425:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	get_rsa_payload_f1, .-get_rsa_payload_f1
	.type	get_rsa_payload_f2, @function
get_rsa_payload_f2:
.LFB498:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L427
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L427
	movl	$0, %eax
	jmp	.L428
.L427:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$1, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L428:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	get_rsa_payload_f2, .-get_rsa_payload_f2
	.type	get_rsa_payload_f3, @function
get_rsa_payload_f3:
.LFB499:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L430
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L430
	movl	$0, %eax
	jmp	.L431
.L430:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L431:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	get_rsa_payload_f3, .-get_rsa_payload_f3
	.type	get_rsa_payload_f4, @function
get_rsa_payload_f4:
.LFB500:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L433
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L433
	movl	$0, %eax
	jmp	.L434
.L433:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$3, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L434:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	get_rsa_payload_f4, .-get_rsa_payload_f4
	.type	get_rsa_payload_f5, @function
get_rsa_payload_f5:
.LFB501:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L436
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L436
	movl	$0, %eax
	jmp	.L437
.L436:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$4, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L437:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	get_rsa_payload_f5, .-get_rsa_payload_f5
	.type	get_rsa_payload_f6, @function
get_rsa_payload_f6:
.LFB502:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L439
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L439
	movl	$0, %eax
	jmp	.L440
.L439:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$5, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L440:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	get_rsa_payload_f6, .-get_rsa_payload_f6
	.type	get_rsa_payload_f7, @function
get_rsa_payload_f7:
.LFB503:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L442
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L442
	movl	$0, %eax
	jmp	.L443
.L442:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$6, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L443:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	get_rsa_payload_f7, .-get_rsa_payload_f7
	.type	get_rsa_payload_f8, @function
get_rsa_payload_f8:
.LFB504:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L445
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L445
	movl	$0, %eax
	jmp	.L446
.L445:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$7, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L446:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	get_rsa_payload_f8, .-get_rsa_payload_f8
	.type	get_rsa_payload_f9, @function
get_rsa_payload_f9:
.LFB505:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L448
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L448
	movl	$0, %eax
	jmp	.L449
.L448:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$8, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L449:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	get_rsa_payload_f9, .-get_rsa_payload_f9
	.type	get_rsa_payload_f10, @function
get_rsa_payload_f10:
.LFB506:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L451
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L451
	movl	$0, %eax
	jmp	.L452
.L451:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$9, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_factor
.L452:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	get_rsa_payload_f10, .-get_rsa_payload_f10
	.type	get_rsa_payload_e1, @function
get_rsa_payload_e1:
.LFB507:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L454
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L454
	movl	$0, %eax
	jmp	.L455
.L454:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L455:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	get_rsa_payload_e1, .-get_rsa_payload_e1
	.type	get_rsa_payload_e2, @function
get_rsa_payload_e2:
.LFB508:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L457
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L457
	movl	$0, %eax
	jmp	.L458
.L457:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$1, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L458:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	get_rsa_payload_e2, .-get_rsa_payload_e2
	.type	get_rsa_payload_e3, @function
get_rsa_payload_e3:
.LFB509:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L460
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L460
	movl	$0, %eax
	jmp	.L461
.L460:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L461:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	get_rsa_payload_e3, .-get_rsa_payload_e3
	.type	get_rsa_payload_e4, @function
get_rsa_payload_e4:
.LFB510:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L463
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L463
	movl	$0, %eax
	jmp	.L464
.L463:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$3, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L464:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	get_rsa_payload_e4, .-get_rsa_payload_e4
	.type	get_rsa_payload_e5, @function
get_rsa_payload_e5:
.LFB511:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L466
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L466
	movl	$0, %eax
	jmp	.L467
.L466:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$4, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L467:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	get_rsa_payload_e5, .-get_rsa_payload_e5
	.type	get_rsa_payload_e6, @function
get_rsa_payload_e6:
.LFB512:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L469
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L469
	movl	$0, %eax
	jmp	.L470
.L469:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$5, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L470:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	get_rsa_payload_e6, .-get_rsa_payload_e6
	.type	get_rsa_payload_e7, @function
get_rsa_payload_e7:
.LFB513:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L472
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L472
	movl	$0, %eax
	jmp	.L473
.L472:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$6, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L473:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	get_rsa_payload_e7, .-get_rsa_payload_e7
	.type	get_rsa_payload_e8, @function
get_rsa_payload_e8:
.LFB514:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L475
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L475
	movl	$0, %eax
	jmp	.L476
.L475:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$7, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L476:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	get_rsa_payload_e8, .-get_rsa_payload_e8
	.type	get_rsa_payload_e9, @function
get_rsa_payload_e9:
.LFB515:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L478
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L478
	movl	$0, %eax
	jmp	.L479
.L478:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$8, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L479:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	get_rsa_payload_e9, .-get_rsa_payload_e9
	.type	get_rsa_payload_e10, @function
get_rsa_payload_e10:
.LFB516:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L481
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L481
	movl	$0, %eax
	jmp	.L482
.L481:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$9, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_exponent
.L482:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	get_rsa_payload_e10, .-get_rsa_payload_e10
	.type	get_rsa_payload_c1, @function
get_rsa_payload_c1:
.LFB517:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L484
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L484
	movl	$0, %eax
	jmp	.L485
.L484:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_coefficient
.L485:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	get_rsa_payload_c1, .-get_rsa_payload_c1
	.type	get_rsa_payload_c2, @function
get_rsa_payload_c2:
.LFB518:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L487
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L487
	movl	$0, %eax
	jmp	.L488
.L487:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$1, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_coefficient
.L488:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	get_rsa_payload_c2, .-get_rsa_payload_c2
	.type	get_rsa_payload_c3, @function
get_rsa_payload_c3:
.LFB519:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L490
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L490
	movl	$0, %eax
	jmp	.L491
.L490:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_coefficient
.L491:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	get_rsa_payload_c3, .-get_rsa_payload_c3
	.type	get_rsa_payload_c4, @function
get_rsa_payload_c4:
.LFB520:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L493
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L493
	movl	$0, %eax
	jmp	.L494
.L493:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$3, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_coefficient
.L494:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	get_rsa_payload_c4, .-get_rsa_payload_c4
	.type	get_rsa_payload_c5, @function
get_rsa_payload_c5:
.LFB521:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L496
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L496
	movl	$0, %eax
	jmp	.L497
.L496:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$4, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_coefficient
.L497:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	get_rsa_payload_c5, .-get_rsa_payload_c5
	.type	get_rsa_payload_c6, @function
get_rsa_payload_c6:
.LFB522:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L499
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L499
	movl	$0, %eax
	jmp	.L500
.L499:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$5, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_coefficient
.L500:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	get_rsa_payload_c6, .-get_rsa_payload_c6
	.type	get_rsa_payload_c7, @function
get_rsa_payload_c7:
.LFB523:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L502
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L502
	movl	$0, %eax
	jmp	.L503
.L502:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$6, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_coefficient
.L503:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	get_rsa_payload_c7, .-get_rsa_payload_c7
	.type	get_rsa_payload_c8, @function
get_rsa_payload_c8:
.LFB524:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L505
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L505
	movl	$0, %eax
	jmp	.L506
.L505:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$7, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_coefficient
.L506:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	get_rsa_payload_c8, .-get_rsa_payload_c8
	.type	get_rsa_payload_c9, @function
get_rsa_payload_c9:
.LFB525:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$6, %eax
	je	.L508
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$912, %eax
	je	.L508
	movl	$0, %eax
	jmp	.L509
.L508:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movl	$8, %ecx
	movl	%eax, %edi
	call	get_rsa_payload_coefficient
.L509:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	get_rsa_payload_c9, .-get_rsa_payload_c9
	.type	fix_group_ecx, @function
fix_group_ecx:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$7, -20(%rbp)
	je	.L511
	cmpl	$8, -20(%rbp)
	je	.L512
	jmp	.L519
.L511:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L514
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L514
	movl	$0, %eax
	jmp	.L518
.L514:
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	movl	$1, %eax
	jmp	.L518
.L512:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	je	.L516
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L517
.L516:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2055, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movl	$0, 28(%rax)
	movl	$0, %eax
	jmp	.L518
.L517:
	movq	-40(%rbp), %rax
	movl	$1, 28(%rax)
	movl	$1, %eax
	jmp	.L518
.L519:
	movl	$0, %eax
.L518:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	fix_group_ecx, .-fix_group_ecx
	.section	.rodata
.LC15:
	.string	"distid"
.LC16:
	.string	"hexdistid"
.LC17:
	.string	"kdf-type"
.LC18:
	.string	"kdf-digest"
.LC19:
	.string	"kdf-outlen"
.LC20:
	.string	"kdf-ukm"
.LC21:
	.string	"cekalg"
.LC22:
	.string	"dh_paramgen_type"
.LC23:
	.string	"type"
.LC24:
	.string	"dh_paramgen_prime_len"
.LC25:
	.string	"pbits"
.LC26:
	.string	"dh_param"
.LC27:
	.string	"group"
.LC28:
	.string	"dh_rfc5114"
.LC29:
	.string	"dh_paramgen_generator"
.LC30:
	.string	"safeprime-generator"
.LC31:
	.string	"dh_paramgen_subprime_len"
.LC32:
	.string	"qbits"
.LC33:
	.string	"dh_pad"
.LC34:
	.string	"pad"
.LC35:
	.string	"dsa_paramgen_bits"
.LC36:
	.string	"dsa_paramgen_q_bits"
.LC37:
	.string	"dsa_paramgen_md"
.LC38:
	.string	"digest"
.LC39:
	.string	"ec_param_enc"
.LC40:
	.string	"encoding"
.LC41:
	.string	"ec_paramgen_curve"
.LC42:
	.string	"ecdh_cofactor_mode"
.LC43:
	.string	"ecdh-cofactor-mode"
.LC44:
	.string	"ecdh_kdf_md"
.LC45:
	.string	"rsa_padding_mode"
.LC46:
	.string	"pad-mode"
.LC47:
	.string	"rsa_mgf1_md"
.LC48:
	.string	"mgf1-digest"
.LC49:
	.string	"rsa_pss_saltlen"
.LC50:
	.string	"saltlen"
.LC51:
	.string	"rsa_oaep_md"
.LC52:
	.string	"rsa_oaep_label"
.LC53:
	.string	"oaep-label"
.LC54:
	.string	"rsa_pkcs1_implicit_rejection"
.LC55:
	.string	"implicit-rejection"
.LC56:
	.string	"rsa_pss_keygen_md"
.LC57:
	.string	"rsa_pss_keygen_mgf1_md"
.LC58:
	.string	"rsa_pss_keygen_saltlen"
.LC59:
	.string	"rsa_keygen_bits"
.LC60:
	.string	"bits"
.LC61:
	.string	"rsa_keygen_pubexp"
.LC62:
	.string	"e"
.LC63:
	.string	"rsa_keygen_primes"
.LC64:
	.string	"primes"
.LC65:
	.string	"digestsize"
.LC66:
	.string	"size"
.LC67:
	.string	"md"
.LC68:
	.string	"secret"
.LC69:
	.string	"hexsecret"
.LC70:
	.string	"seed"
.LC71:
	.string	"hexseed"
.LC72:
	.string	"salt"
.LC73:
	.string	"hexsalt"
.LC74:
	.string	"key"
.LC75:
	.string	"hexkey"
.LC76:
	.string	"info"
.LC77:
	.string	"hexinfo"
.LC78:
	.string	"mode"
.LC79:
	.string	"pass"
.LC80:
	.string	"hexpass"
.LC81:
	.string	"N"
.LC82:
	.string	"n"
.LC83:
	.string	"r"
.LC84:
	.string	"p"
.LC85:
	.string	"maxmem_bytes"
.LC86:
	.string	"cipher"
.LC87:
	.string	"priv"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	evp_pkey_ctx_translations, @object
	.size	evp_pkey_ctx_translations, 5504
evp_pkey_ctx_translations:
	.long	2
	.long	-1
	.long	-1
	.long	496
	.long	15
	.zero	4
	.quad	.LC15
	.quad	.LC16
	.quad	.LC15
	.long	5
	.zero	4
	.quad	0
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	16
	.zero	4
	.quad	.LC15
	.quad	.LC16
	.quad	.LC15
	.long	7
	.zero	4
	.quad	0
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	17
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC15
	.long	7
	.zero	4
	.quad	fix_distid_len
	.long	0
	.long	920
	.long	0
	.long	2048
	.long	4102
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC17
	.long	4
	.zero	4
	.quad	fix_dh_kdf_type
	.long	2
	.long	920
	.long	0
	.long	2048
	.long	4103
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC18
	.long	4
	.zero	4
	.quad	fix_md
	.long	1
	.long	920
	.long	0
	.long	2048
	.long	4104
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC18
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	920
	.long	0
	.long	2048
	.long	4105
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.long	1
	.long	920
	.long	0
	.long	2048
	.long	4106
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	920
	.long	0
	.long	2048
	.long	4107
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC20
	.long	5
	.zero	4
	.quad	0
	.long	1
	.long	920
	.long	0
	.long	2048
	.long	4108
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC20
	.long	7
	.zero	4
	.quad	0
	.long	2
	.long	920
	.long	0
	.long	2048
	.long	4109
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC21
	.long	4
	.zero	4
	.quad	fix_oid
	.long	1
	.long	920
	.long	0
	.long	2048
	.long	4110
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC21
	.long	4
	.zero	4
	.quad	fix_oid
	.long	2
	.long	920
	.long	0
	.long	2
	.long	4101
	.zero	4
	.quad	.LC22
	.quad	0
	.quad	.LC23
	.long	4
	.zero	4
	.quad	fix_dh_paramgen_type
	.long	2
	.long	920
	.long	0
	.long	2
	.long	4097
	.zero	4
	.quad	.LC24
	.quad	0
	.quad	.LC25
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	920
	.long	0
	.long	6
	.long	4111
	.zero	4
	.quad	.LC26
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	0
	.long	2
	.long	920
	.long	0
	.long	6
	.long	4099
	.zero	4
	.quad	.LC28
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	fix_dh_nid5114
	.long	2
	.long	28
	.long	0
	.long	2
	.long	4101
	.zero	4
	.quad	.LC22
	.quad	0
	.quad	.LC23
	.long	4
	.zero	4
	.quad	fix_dh_paramgen_type
	.long	2
	.long	28
	.long	0
	.long	2
	.long	4097
	.zero	4
	.quad	.LC24
	.quad	0
	.quad	.LC25
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	28
	.long	0
	.long	6
	.long	4111
	.zero	4
	.quad	.LC26
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	fix_dh_nid
	.long	2
	.long	28
	.long	0
	.long	6
	.long	4099
	.zero	4
	.quad	.LC28
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	fix_dh_nid5114
	.long	2
	.long	28
	.long	0
	.long	2
	.long	4098
	.zero	4
	.quad	.LC29
	.quad	0
	.quad	.LC30
	.long	1
	.zero	4
	.quad	0
	.long	2
	.long	920
	.long	0
	.long	2
	.long	4100
	.zero	4
	.quad	.LC31
	.quad	0
	.quad	.LC32
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	28
	.long	0
	.long	2048
	.long	4112
	.zero	4
	.quad	.LC33
	.quad	0
	.quad	.LC34
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	116
	.long	0
	.long	2
	.long	4097
	.zero	4
	.quad	.LC35
	.quad	0
	.quad	.LC25
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	116
	.long	0
	.long	2
	.long	4098
	.zero	4
	.quad	.LC36
	.quad	0
	.quad	.LC32
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	116
	.long	0
	.long	2
	.long	4099
	.zero	4
	.quad	.LC37
	.quad	0
	.quad	.LC38
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	408
	.long	0
	.long	6
	.long	4098
	.zero	4
	.quad	.LC39
	.quad	0
	.quad	.LC40
	.long	4
	.zero	4
	.quad	fix_ec_param_enc
	.long	2
	.long	408
	.long	0
	.long	6
	.long	4097
	.zero	4
	.quad	.LC41
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	fix_ec_paramgen_curve_nid
	.long	0
	.long	408
	.long	0
	.long	2048
	.long	4099
	.zero	4
	.quad	.LC42
	.quad	0
	.quad	.LC43
	.long	1
	.zero	4
	.quad	fix_ecdh_cofactor
	.long	0
	.long	408
	.long	0
	.long	2048
	.long	4100
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC17
	.long	4
	.zero	4
	.quad	fix_ec_kdf_type
	.long	2
	.long	408
	.long	0
	.long	2048
	.long	4101
	.zero	4
	.quad	.LC44
	.quad	0
	.quad	.LC18
	.long	4
	.zero	4
	.quad	fix_md
	.long	1
	.long	408
	.long	0
	.long	2048
	.long	4102
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC18
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	408
	.long	0
	.long	2048
	.long	4103
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.long	1
	.long	408
	.long	0
	.long	2048
	.long	4104
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	408
	.long	0
	.long	2048
	.long	4105
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC20
	.long	5
	.zero	4
	.quad	0
	.long	1
	.long	408
	.long	0
	.long	2048
	.long	4106
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC20
	.long	7
	.zero	4
	.quad	0
	.long	2
	.long	1172
	.long	0
	.long	6
	.long	4098
	.zero	4
	.quad	.LC39
	.quad	0
	.quad	.LC40
	.long	4
	.zero	4
	.quad	fix_ec_param_enc
	.long	2
	.long	1172
	.long	0
	.long	6
	.long	4097
	.zero	4
	.quad	.LC41
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	fix_ec_paramgen_curve_nid
	.long	0
	.long	1172
	.long	0
	.long	2048
	.long	4099
	.zero	4
	.quad	.LC42
	.quad	0
	.quad	.LC43
	.long	1
	.zero	4
	.quad	fix_ecdh_cofactor
	.long	0
	.long	1172
	.long	0
	.long	2048
	.long	4100
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC17
	.long	4
	.zero	4
	.quad	fix_ec_kdf_type
	.long	2
	.long	1172
	.long	0
	.long	2048
	.long	4101
	.zero	4
	.quad	.LC44
	.quad	0
	.quad	.LC18
	.long	4
	.zero	4
	.quad	fix_md
	.long	1
	.long	1172
	.long	0
	.long	2048
	.long	4102
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC18
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	1172
	.long	0
	.long	2048
	.long	4103
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.long	1
	.long	1172
	.long	0
	.long	2048
	.long	4104
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	1172
	.long	0
	.long	2048
	.long	4105
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC20
	.long	5
	.zero	4
	.quad	0
	.long	1
	.long	1172
	.long	0
	.long	2048
	.long	4106
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC20
	.long	7
	.zero	4
	.quad	0
	.long	2
	.long	6
	.long	912
	.long	2032
	.long	4097
	.zero	4
	.quad	.LC45
	.quad	0
	.quad	.LC46
	.long	4
	.zero	4
	.quad	fix_rsa_padding_mode
	.long	1
	.long	6
	.long	912
	.long	2032
	.long	4102
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC46
	.long	4
	.zero	4
	.quad	fix_rsa_padding_mode
	.long	2
	.long	6
	.long	912
	.long	2032
	.long	4101
	.zero	4
	.quad	.LC47
	.quad	0
	.quad	.LC48
	.long	4
	.zero	4
	.quad	fix_md
	.long	1
	.long	6
	.long	912
	.long	2032
	.long	4104
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC48
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	6
	.long	912
	.long	496
	.long	4098
	.zero	4
	.quad	.LC49
	.quad	0
	.quad	.LC50
	.long	4
	.zero	4
	.quad	fix_rsa_pss_saltlen
	.long	1
	.long	6
	.long	912
	.long	496
	.long	4103
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC50
	.long	4
	.zero	4
	.quad	fix_rsa_pss_saltlen
	.long	2
	.long	6
	.long	0
	.long	1536
	.long	4105
	.zero	4
	.quad	.LC51
	.quad	0
	.quad	.LC38
	.long	4
	.zero	4
	.quad	fix_md
	.long	1
	.long	6
	.long	0
	.long	1536
	.long	4107
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC38
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	6
	.long	0
	.long	1536
	.long	4106
	.zero	4
	.quad	0
	.quad	.LC52
	.quad	.LC53
	.long	5
	.zero	4
	.quad	0
	.long	1
	.long	6
	.long	0
	.long	1536
	.long	4108
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC53
	.long	7
	.zero	4
	.quad	0
	.long	2
	.long	6
	.long	0
	.long	1536
	.long	4110
	.zero	4
	.quad	0
	.quad	.LC54
	.quad	.LC55
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	912
	.long	0
	.long	6
	.long	1
	.zero	4
	.quad	.LC56
	.quad	0
	.quad	.LC38
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	912
	.long	0
	.long	6
	.long	4101
	.zero	4
	.quad	.LC57
	.quad	0
	.quad	.LC48
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	912
	.long	0
	.long	6
	.long	4098
	.zero	4
	.quad	.LC58
	.quad	0
	.quad	.LC50
	.long	1
	.zero	4
	.quad	0
	.long	2
	.long	6
	.long	912
	.long	4
	.long	4099
	.zero	4
	.quad	.LC59
	.quad	0
	.quad	.LC60
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	6
	.long	912
	.long	4
	.long	4100
	.zero	4
	.quad	.LC61
	.quad	0
	.quad	.LC62
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	6
	.long	912
	.long	4
	.long	4109
	.zero	4
	.quad	.LC63
	.quad	0
	.quad	.LC64
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	496
	.long	14
	.zero	4
	.quad	.LC65
	.quad	0
	.quad	.LC66
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4096
	.zero	4
	.quad	.LC67
	.quad	0
	.quad	.LC38
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4097
	.zero	4
	.quad	.LC68
	.quad	.LC69
	.quad	.LC68
	.long	5
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4098
	.zero	4
	.quad	.LC70
	.quad	.LC71
	.quad	.LC70
	.long	5
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4099
	.zero	4
	.quad	.LC67
	.quad	0
	.quad	.LC38
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4100
	.zero	4
	.quad	.LC72
	.quad	.LC73
	.quad	.LC72
	.long	5
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4101
	.zero	4
	.quad	.LC74
	.quad	.LC75
	.quad	.LC74
	.long	5
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4102
	.zero	4
	.quad	.LC76
	.quad	.LC77
	.quad	.LC76
	.long	5
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4103
	.zero	4
	.quad	.LC78
	.quad	0
	.quad	.LC78
	.long	1
	.zero	4
	.quad	fix_hkdf_mode
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4104
	.zero	4
	.quad	.LC79
	.quad	.LC80
	.quad	.LC79
	.long	5
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4105
	.zero	4
	.quad	.LC72
	.quad	.LC73
	.quad	.LC72
	.long	5
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4106
	.zero	4
	.quad	.LC81
	.quad	0
	.quad	.LC82
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4107
	.zero	4
	.quad	.LC83
	.quad	0
	.quad	.LC83
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4108
	.zero	4
	.quad	.LC84
	.quad	0
	.quad	.LC84
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	2048
	.long	4109
	.zero	4
	.quad	.LC85
	.quad	0
	.quad	.LC85
	.long	2
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	1540
	.long	12
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC86
	.long	4
	.zero	4
	.quad	fix_cipher
	.long	2
	.long	-1
	.long	-1
	.long	4
	.long	6
	.zero	4
	.quad	.LC74
	.quad	.LC75
	.quad	.LC87
	.long	5
	.zero	4
	.quad	0
	.long	2
	.long	-1
	.long	-1
	.long	496
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC38
	.long	4
	.zero	4
	.quad	fix_md
	.long	1
	.long	-1
	.long	-1
	.long	496
	.long	13
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC38
	.long	4
	.zero	4
	.quad	fix_md
	.long	2
	.long	1034
	.long	1034
	.long	4
	.long	-1
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	fix_group_ecx
	.long	2
	.long	1034
	.long	1034
	.long	2
	.long	-1
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	fix_group_ecx
	.long	2
	.long	1035
	.long	1035
	.long	4
	.long	-1
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	fix_group_ecx
	.long	2
	.long	1035
	.long	1035
	.long	2
	.long	-1
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	fix_group_ecx
	.section	.rodata
.LC88:
	.string	"pub"
.LC89:
	.string	"g"
.LC90:
	.string	"q"
.LC91:
	.string	"d"
.LC92:
	.string	"rsa-factor1"
.LC93:
	.string	"rsa-factor2"
.LC94:
	.string	"rsa-factor3"
.LC95:
	.string	"rsa-factor4"
.LC96:
	.string	"rsa-factor5"
.LC97:
	.string	"rsa-factor6"
.LC98:
	.string	"rsa-factor7"
.LC99:
	.string	"rsa-factor8"
.LC100:
	.string	"rsa-factor9"
.LC101:
	.string	"rsa-factor10"
.LC102:
	.string	"rsa-exponent1"
.LC103:
	.string	"rsa-exponent2"
.LC104:
	.string	"rsa-exponent3"
.LC105:
	.string	"rsa-exponent4"
.LC106:
	.string	"rsa-exponent5"
.LC107:
	.string	"rsa-exponent6"
.LC108:
	.string	"rsa-exponent7"
.LC109:
	.string	"rsa-exponent8"
.LC110:
	.string	"rsa-exponent9"
.LC111:
	.string	"rsa-exponent10"
.LC112:
	.string	"rsa-coefficient1"
.LC113:
	.string	"rsa-coefficient2"
.LC114:
	.string	"rsa-coefficient3"
.LC115:
	.string	"rsa-coefficient4"
.LC116:
	.string	"rsa-coefficient5"
.LC117:
	.string	"rsa-coefficient6"
.LC118:
	.string	"rsa-coefficient7"
.LC119:
	.string	"rsa-coefficient8"
.LC120:
	.string	"rsa-coefficient9"
.LC121:
	.string	"decoded-from-explicit"
	.section	.data.rel.ro.local
	.align 32
	.type	evp_pkey_translations, @object
	.size	evp_pkey_translations, 2624
evp_pkey_translations:
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC27
	.long	4
	.zero	4
	.quad	get_payload_group_name
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC87
	.long	2
	.zero	4
	.quad	get_payload_private_key
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC88
	.long	0
	.zero	4
	.quad	get_payload_public_key
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC13
	.long	2
	.zero	4
	.quad	get_payload_public_key_ec
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC14
	.long	2
	.zero	4
	.quad	get_payload_public_key_ec
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC84
	.long	2
	.zero	4
	.quad	get_dh_dsa_payload_p
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC89
	.long	2
	.zero	4
	.quad	get_dh_dsa_payload_g
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC90
	.long	2
	.zero	4
	.quad	get_dh_dsa_payload_q
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC82
	.long	2
	.zero	4
	.quad	get_rsa_payload_n
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC62
	.long	2
	.zero	4
	.quad	get_rsa_payload_e
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC91
	.long	2
	.zero	4
	.quad	get_rsa_payload_d
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC92
	.long	2
	.zero	4
	.quad	get_rsa_payload_f1
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC93
	.long	2
	.zero	4
	.quad	get_rsa_payload_f2
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC94
	.long	2
	.zero	4
	.quad	get_rsa_payload_f3
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC95
	.long	2
	.zero	4
	.quad	get_rsa_payload_f4
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC96
	.long	2
	.zero	4
	.quad	get_rsa_payload_f5
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC97
	.long	2
	.zero	4
	.quad	get_rsa_payload_f6
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC98
	.long	2
	.zero	4
	.quad	get_rsa_payload_f7
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC99
	.long	2
	.zero	4
	.quad	get_rsa_payload_f8
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC100
	.long	2
	.zero	4
	.quad	get_rsa_payload_f9
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC101
	.long	2
	.zero	4
	.quad	get_rsa_payload_f10
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC102
	.long	2
	.zero	4
	.quad	get_rsa_payload_e1
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC103
	.long	2
	.zero	4
	.quad	get_rsa_payload_e2
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC104
	.long	2
	.zero	4
	.quad	get_rsa_payload_e3
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC105
	.long	2
	.zero	4
	.quad	get_rsa_payload_e4
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC106
	.long	2
	.zero	4
	.quad	get_rsa_payload_e5
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC107
	.long	2
	.zero	4
	.quad	get_rsa_payload_e6
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC108
	.long	2
	.zero	4
	.quad	get_rsa_payload_e7
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC109
	.long	2
	.zero	4
	.quad	get_rsa_payload_e8
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC110
	.long	2
	.zero	4
	.quad	get_rsa_payload_e9
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC111
	.long	2
	.zero	4
	.quad	get_rsa_payload_e10
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC112
	.long	2
	.zero	4
	.quad	get_rsa_payload_c1
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC113
	.long	2
	.zero	4
	.quad	get_rsa_payload_c2
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC114
	.long	2
	.zero	4
	.quad	get_rsa_payload_c3
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC115
	.long	2
	.zero	4
	.quad	get_rsa_payload_c4
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC116
	.long	2
	.zero	4
	.quad	get_rsa_payload_c5
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC117
	.long	2
	.zero	4
	.quad	get_rsa_payload_c6
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC118
	.long	2
	.zero	4
	.quad	get_rsa_payload_c7
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC119
	.long	2
	.zero	4
	.quad	get_rsa_payload_c8
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC120
	.long	2
	.zero	4
	.quad	get_rsa_payload_c9
	.long	1
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC121
	.long	1
	.zero	4
	.quad	get_ec_decoded_from_explicit_params
	.text
	.type	lookup_translation, @function
lookup_translation:
.LFB527:
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
	movq	$0, -8(%rbp)
	jmp	.L521
.L537:
	movq	-8(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$-1, %eax
	setne	%dl
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	sete	%al
	xorl	%edx, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L538
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$-1, %eax
	je	.L524
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L539
.L524:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$-1, %eax
	je	.L525
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	je	.L525
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jne	.L540
.L525:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L526
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	je	.L527
	jmp	.L523
.L526:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L528
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L529
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L541
.L529:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L530
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L530
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L531
.L530:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L542
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L542
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L531:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L527
.L528:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L533
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L534
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L543
.L534:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L527
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L527
	jmp	.L543
.L533:
	movl	$0, %eax
	jmp	.L536
.L527:
	movq	-32(%rbp), %rax
	jmp	.L536
.L538:
	nop
	jmp	.L523
.L539:
	nop
	jmp	.L523
.L540:
	nop
	jmp	.L523
.L541:
	nop
	jmp	.L523
.L542:
	nop
	jmp	.L523
.L543:
	nop
.L523:
	addq	$1, -8(%rbp)
.L521:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L537
	movl	$0, %eax
.L536:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	lookup_translation, .-lookup_translation
	.type	lookup_evp_pkey_ctx_translation, @function
lookup_evp_pkey_ctx_translation:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	evp_pkey_ctx_translations(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$86, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_translation
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	lookup_evp_pkey_ctx_translation, .-lookup_evp_pkey_ctx_translation
	.type	lookup_evp_pkey_translation, @function
lookup_evp_pkey_translation:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	evp_pkey_translations(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$41, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_translation
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	lookup_evp_pkey_translation, .-lookup_evp_pkey_translation
	.globl	evp_pkey_ctx_ctrl_to_param
	.type	evp_pkey_ctx_ctrl_to_param, @function
evp_pkey_ctx_ctrl_to_param:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -328(%rbp)
	movl	%esi, -332(%rbp)
	movl	%edx, -336(%rbp)
	movl	%ecx, -340(%rbp)
	movl	%r8d, -344(%rbp)
	movq	%r9, -352(%rbp)
	leaq	-176(%rbp), %rdx
	movl	$0, %eax
	movl	$18, %ecx
	movq	%rdx, %rdi
	rep stosq
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movq	$0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -320(%rbp)
	movaps	%xmm0, -304(%rbp)
	movaps	%xmm0, -288(%rbp)
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -256(%rbp)
	leaq	default_fixup_args(%rip), %rax
	movq	%rax, -16(%rbp)
	cmpl	$-1, -332(%rbp)
	jne	.L549
	movq	-328(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -332(%rbp)
.L549:
	movl	-340(%rbp), %eax
	movl	%eax, -224(%rbp)
	movl	-332(%rbp), %eax
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	-336(%rbp), %eax
	movl	%eax, -228(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	lookup_evp_pkey_ctx_translation
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L550
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2726, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L558
.L550:
	movq	-328(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L552
	movq	-328(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	je	.L552
	movq	-328(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	je	.L552
	movl	$-1, %eax
	jmp	.L558
.L552:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L553
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
.L553:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -168(%rbp)
	movl	-340(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-344(%rbp), %eax
	movl	%eax, -148(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$1, %edi
	call	*%rcx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L554
	movl	-168(%rbp), %eax
	cmpl	$1, %eax
	je	.L555
	cmpl	$2, %eax
	je	.L556
	jmp	.L554
.L555:
	movq	-128(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_get_params_strict@PLT
	movl	%eax, -4(%rbp)
	jmp	.L554
.L556:
	movq	-128(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
	movl	%eax, -4(%rbp)
	nop
.L554:
	cmpl	$0, -4(%rbp)
	jle	.L557
	movl	-4(%rbp), %eax
	movl	%eax, -148(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$2, %edi
	call	*%rcx
	movl	-148(%rbp), %eax
	movl	%eax, -4(%rbp)
.L557:
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	cleanup_translation_ctx
	movl	-4(%rbp), %eax
.L558:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	evp_pkey_ctx_ctrl_to_param, .-evp_pkey_ctx_ctrl_to_param
	.globl	evp_pkey_ctx_ctrl_str_to_param
	.type	evp_pkey_ctx_ctrl_str_to_param, @function
evp_pkey_ctx_ctrl_str_to_param:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	leaq	-176(%rbp), %rdx
	movl	$0, %eax
	movl	$18, %ecx
	movq	%rdx, %rdi
	rep stosq
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movq	$0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -320(%rbp)
	movaps	%xmm0, -304(%rbp)
	movaps	%xmm0, -288(%rbp)
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -256(%rbp)
	movq	-328(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-328(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L560
	movq	-328(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L561
.L560:
	movl	$-1, -4(%rbp)
.L561:
	leaq	default_fixup_args(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$2, -240(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -228(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	lookup_evp_pkey_ctx_translation
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L562
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L563
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
.L563:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -168(%rbp)
	movq	-208(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -152(%rbp)
	jmp	.L564
.L562:
	movl	$2, -168(%rbp)
.L564:
	movq	-336(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -148(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$4, %edi
	call	*%rcx
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L565
	movl	-168(%rbp), %eax
	cmpl	$1, %eax
	je	.L570
	cmpl	$2, %eax
	jne	.L571
	movq	-128(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_ctx_set_params_strict@PLT
	movl	%eax, -8(%rbp)
	jmp	.L565
.L570:
	nop
	jmp	.L565
.L571:
	nop
.L565:
	cmpl	$0, -8(%rbp)
	jle	.L568
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$5, %edi
	call	*%rcx
	movl	%eax, -8(%rbp)
.L568:
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	cleanup_translation_ctx
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	evp_pkey_ctx_ctrl_str_to_param, .-evp_pkey_ctx_ctrl_str_to_param
	.type	evp_pkey_ctx_setget_params_to_ctrl, @function
evp_pkey_ctx_setget_params_to_ctrl:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-248(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L573
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L575
.L573:
	movl	$-1, -4(%rbp)
	jmp	.L575
.L583:
	leaq	-176(%rbp), %rdx
	movl	$0, %eax
	movl	$18, %ecx
	movq	%rdx, %rdi
	rep stosq
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movq	$0, -32(%rbp)
	leaq	default_fixup_args(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	-252(%rbp), %eax
	movl	%eax, -240(%rbp)
	movl	-240(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -228(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	lookup_evp_pkey_ctx_translation
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L576
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L577
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
.L577:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -164(%rbp)
.L576:
	movq	-248(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$7, %edi
	call	*%rcx
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L578
	movl	-168(%rbp), %eax
	testl	%eax, %eax
	je	.L578
	movq	-144(%rbp), %r8
	movl	-148(%rbp), %edi
	movl	-164(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-24(%rbp), %esi
	movq	-248(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	movl	%eax, -20(%rbp)
.L578:
	cmpl	$0, -20(%rbp)
	js	.L579
	movl	-20(%rbp), %eax
	movl	%eax, -148(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$8, %edi
	call	*%rcx
	movl	-148(%rbp), %eax
	movl	%eax, -20(%rbp)
.L579:
	leaq	-176(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$9, %edi
	call	cleanup_translation_ctx
	cmpl	$0, -20(%rbp)
	jg	.L580
	movl	$0, %eax
	jmp	.L581
.L580:
	addq	$40, -264(%rbp)
.L575:
	cmpq	$0, -264(%rbp)
	je	.L582
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L583
.L582:
	movl	$1, %eax
.L581:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	evp_pkey_ctx_setget_params_to_ctrl, .-evp_pkey_ctx_setget_params_to_ctrl
	.globl	evp_pkey_ctx_set_params_to_ctrl
	.type	evp_pkey_ctx_set_params_to_ctrl, @function
evp_pkey_ctx_set_params_to_ctrl:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L585
	movl	$0, %eax
	jmp	.L586
.L585:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	evp_pkey_ctx_setget_params_to_ctrl
.L586:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	evp_pkey_ctx_set_params_to_ctrl, .-evp_pkey_ctx_set_params_to_ctrl
	.globl	evp_pkey_ctx_get_params_to_ctrl
	.type	evp_pkey_ctx_get_params_to_ctrl, @function
evp_pkey_ctx_get_params_to_ctrl:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L588
	movl	$0, %eax
	jmp	.L589
.L588:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_pkey_ctx_setget_params_to_ctrl
.L589:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	evp_pkey_ctx_get_params_to_ctrl, .-evp_pkey_ctx_get_params_to_ctrl
	.type	evp_pkey_setget_params_to_ctrl, @function
evp_pkey_setget_params_to_ctrl:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%rdx, -264(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L591
.L598:
	leaq	-176(%rbp), %rdx
	movl	$0, %eax
	movl	$18, %ecx
	movq	%rdx, %rdi
	rep stosq
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movq	$0, -24(%rbp)
	leaq	default_fixup_args(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	-252(%rbp), %eax
	movl	%eax, -240(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	lookup_evp_pkey_translation
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L592
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L593
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
.L593:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -168(%rbp)
.L592:
	movq	-248(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L594
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L594
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L595
.L594:
	movl	$-2, %eax
	jmp	.L596
.L595:
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movl	%eax, -4(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	cleanup_translation_ctx
	addq	$40, -264(%rbp)
.L591:
	cmpq	$0, -264(%rbp)
	je	.L597
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L598
.L597:
	movl	-4(%rbp), %eax
.L596:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	evp_pkey_setget_params_to_ctrl, .-evp_pkey_setget_params_to_ctrl
	.globl	evp_pkey_get_params_to_ctrl
	.type	evp_pkey_get_params_to_ctrl, @function
evp_pkey_get_params_to_ctrl:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_pkey_setget_params_to_ctrl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	evp_pkey_get_params_to_ctrl, .-evp_pkey_get_params_to_ctrl
	.section	.rodata
	.align 8
	.type	__func__.19, @object
	.size	__func__.19, 14
__func__.19:
	.string	"default_check"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 19
__func__.18:
	.string	"default_fixup_args"
.LC122:
	.string	"X942KDF-ASN1"
	.section	.data.rel.ro.local
	.align 32
	.type	kdf_type_map.17, @object
	.size	kdf_type_map.17, 48
kdf_type_map.17:
	.long	1
	.zero	4
	.quad	.LC7
	.long	2
	.zero	4
	.quad	.LC122
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC123:
	.string	"X963KDF"
	.section	.data.rel.ro.local
	.align 32
	.type	kdf_type_map.16, @object
	.size	kdf_type_map.16, 48
kdf_type_map.16:
	.long	1
	.zero	4
	.quad	.LC7
	.long	2
	.zero	4
	.quad	.LC123
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.15, @object
	.size	__func__.15, 11
__func__.15:
	.string	"fix_dh_nid"
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 15
__func__.14:
	.string	"fix_dh_nid5114"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 21
__func__.13:
	.string	"fix_dh_paramgen_type"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 17
__func__.12:
	.string	"fix_ec_param_enc"
.LC124:
	.string	"pkcs1"
.LC125:
	.string	"none"
.LC126:
	.string	"oaep"
.LC127:
	.string	"oeap"
.LC128:
	.string	"x931"
.LC129:
	.string	"pss"
	.section	.data.rel.ro.local
	.align 32
	.type	str_value_map.11, @object
	.size	str_value_map.11, 112
str_value_map.11:
	.long	1
	.zero	4
	.quad	.LC124
	.long	3
	.zero	4
	.quad	.LC125
	.long	4
	.zero	4
	.quad	.LC126
	.long	4
	.zero	4
	.quad	.LC127
	.long	5
	.zero	4
	.quad	.LC128
	.long	6
	.zero	4
	.quad	.LC129
	.long	7
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 21
__func__.10:
	.string	"fix_rsa_padding_mode"
.LC130:
	.string	"max"
.LC131:
	.string	"auto"
	.section	.data.rel.ro.local
	.align 32
	.type	str_value_map.9, @object
	.size	str_value_map.9, 48
str_value_map.9:
	.long	-1
	.zero	4
	.quad	.LC38
	.long	-3
	.zero	4
	.quad	.LC130
	.long	-2
	.zero	4
	.quad	.LC131
	.section	.rodata
.LC132:
	.string	"EXTRACT_AND_EXPAND"
.LC133:
	.string	"EXTRACT_ONLY"
.LC134:
	.string	"EXPAND_ONLY"
	.section	.data.rel.ro.local
	.align 32
	.type	str_value_map.8, @object
	.size	str_value_map.8, 48
str_value_map.8:
	.long	0
	.zero	4
	.quad	.LC132
	.long	1
	.zero	4
	.quad	.LC133
	.long	2
	.zero	4
	.quad	.LC134
	.section	.rodata
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 23
__func__.7:
	.string	"get_payload_group_name"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 24
__func__.6:
	.string	"get_payload_private_key"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 23
__func__.5:
	.string	"get_payload_public_key"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 26
__func__.4:
	.string	"get_payload_public_key_ec"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 21
__func__.3:
	.string	"get_dh_dsa_payload_p"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 36
__func__.2:
	.string	"get_ec_decoded_from_explicit_params"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"fix_group_ecx"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"evp_pkey_ctx_ctrl_to_param"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
