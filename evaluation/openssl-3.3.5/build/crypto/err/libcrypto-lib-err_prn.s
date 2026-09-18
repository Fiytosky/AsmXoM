	.file	"err_prn.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
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
.LC0:
	.string	""
.LC1:
	.string	"<null>"
.LC2:
	.string	"%s:"
.LC3:
	.string	":%s:%d:%s\n"
.LC4:
	.string	"../crypto/err/err_prn.c"
	.text
	.globl	ERR_print_errors_cb
	.type	ERR_print_errors_cb, @function
ERR_print_errors_cb:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4176, %rsp
	movq	%rdi, -4168(%rbp)
	movq	%rsi, -4176(%rbp)
	call	CRYPTO_THREAD_get_current_id@PLT
	movq	%rax, -32(%rbp)
	jmp	.L9
.L15:
	leaq	-4160(%rbp), %rdx
	movl	$0, %eax
	movl	$512, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	$0, -16(%rbp)
	movl	-64(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L10
	leaq	.LC0(%rip), %rax
	movq	%rax, -48(%rbp)
.L10:
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_buf2hexstr_sep@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L11
	movq	-16(%rbp), %rax
	jmp	.L12
.L11:
	leaq	.LC1(%rip), %rax
.L12:
	leaq	.LC2(%rip), %rdx
	leaq	-4160(%rbp), %rdi
	movq	%rax, %rcx
	movl	$4096, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movl	$4096, %edx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movl	-20(%rbp), %eax
	cltq
	leaq	-4160(%rbp), %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_err_string_int@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-4160(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %r9
	movl	-60(%rbp), %r8d
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movl	$4096, %ecx
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-4160(%rbp), %rcx
	leaq	(%rcx,%rdx), %rdi
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	.LC4(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	-4160(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-4176(%rbp), %rdx
	leaq	-4160(%rbp), %rax
	movq	-4168(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jg	.L9
	nop
	jmp	.L16
.L9:
	leaq	-64(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ERR_get_error_all@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
.L16:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	ERR_print_errors_cb, .-ERR_print_errors_cb
	.type	put_error, @function
put_error:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	call	ERR_new@PLT
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	put_error, .-put_error
	.globl	ERR_add_error_txt
	.type	ERR_add_error_txt, @function
ERR_add_error_txt:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	call	ERR_peek_last_error@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.L19
	leaq	.LC0(%rip), %rax
	movq	%rax, -152(%rbp)
.L19:
	cmpq	$0, -80(%rbp)
	jne	.L40
	leaq	.LC0(%rip), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	put_error
.L40:
	movq	-160(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
	leaq	-140(%rbp), %rdi
	leaq	-136(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-116(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ERR_peek_last_error_all@PLT
	movl	-140(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L21
	leaq	.LC0(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -64(%rbp)
.L21:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -88(%rbp)
	cmpq	$3995, -88(%rbp)
	ja	.L22
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movl	$3996, %eax
	subq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L23
.L22:
	movq	$0, -40(%rbp)
	jmp	.L24
.L23:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-88(%rbp), %rdx
	addq	%rax, %rdx
	movl	$3995, %eax
	subq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L24:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L26
	movq	-96(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L27
.L26:
	movq	-40(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L27
.L31:
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L29
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	jmp	.L28
.L29:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
.L28:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L30
	movq	-56(%rbp), %rax
	subq	-160(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L31
.L30:
	movq	-56(%rbp), %rax
	subq	-160(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L27
	movq	$0, -48(%rbp)
.L27:
	cmpq	$0, -48(%rbp)
	je	.L32
	movq	-48(%rbp), %rax
	cmpq	-160(%rbp), %rax
	je	.L33
	movq	-48(%rbp), %rax
	subq	-160(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdx
	movq	-160(%rbp), %rax
	movl	$123, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L42
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	leaq	.LC4(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L33:
	movl	-116(%rbp), %r13d
	movq	-112(%rbp), %r12
	movq	-80(%rbp), %rax
	movl	%eax, %r14d
	movq	-128(%rbp), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	movl	%r13d, %r8d
	movq	%r12, %rcx
	movl	%r14d, %edx
	movq	%rbx, %rsi
	movl	%eax, %edi
	call	put_error
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)
	jmp	.L36
.L32:
	cmpl	$0, -68(%rbp)
	je	.L37
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	negq	%rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	subq	-160(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdx
	movq	-160(%rbp), %rax
	movl	$133, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L43
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	leaq	.LC4(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$138, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L39
.L37:
	movq	-160(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L39:
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
.L36:
	movq	-160(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L40
	jmp	.L18
.L42:
	nop
	jmp	.L18
.L43:
	nop
.L18:
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	ERR_add_error_txt, .-ERR_add_error_txt
	.globl	ERR_add_error_mem_bio
	.type	ERR_add_error_mem_bio, @function
ERR_add_error_mem_bio:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L44
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L44
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L47
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L49
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
.L47:
	cmpq	$1, -8(%rbp)
	jle	.L44
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_add_error_txt@PLT
	jmp	.L44
.L49:
	nop
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	ERR_add_error_mem_bio, .-ERR_add_error_mem_bio
	.type	print_bio, @function
print_bio:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	print_bio, .-print_bio
	.globl	ERR_print_errors
	.type	ERR_print_errors, @function
ERR_print_errors:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	print_bio(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ERR_print_errors_cb@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	ERR_print_errors, .-ERR_print_errors
	.globl	ERR_print_errors_fp
	.type	ERR_print_errors_fp, @function
ERR_print_errors_fp:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L56
	movq	-8(%rbp), %rax
	leaq	print_bio(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ERR_print_errors_cb@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L53
.L56:
	nop
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	ERR_print_errors_fp, .-ERR_print_errors_fp
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
