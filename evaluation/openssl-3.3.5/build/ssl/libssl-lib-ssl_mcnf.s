	.file	"ssl_mcnf.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	SSL_add_ssl_module
	.type	SSL_add_ssl_module, @function
SSL_add_ssl_module:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	SSL_add_ssl_module, .-SSL_add_ssl_module
	.section	.rodata
.LC0:
	.string	"../ssl/ssl_mcnf.c"
.LC1:
	.string	"system_default"
.LC2:
	.string	"name=%s"
	.text
	.type	ssl_do_config, @function
ssl_do_config:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -20(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L15
	cmpq	$0, -112(%rbp)
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L15:
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jne	.L17
	cmpl	$0, -124(%rbp)
	je	.L17
	leaq	.LC1(%rip), %rax
	movq	%rax, -120(%rbp)
.L17:
	movq	-120(%rbp), %rax
	leaq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	conf_ssl_name_find@PLT
	testl	%eax, %eax
	jne	.L18
	cmpl	$0, -124(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$113, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L30
.L18:
	movq	-72(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	conf_ssl_get@PLT
	movq	%rax, -56(%rbp)
	call	SSL_CONF_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L31
	movl	$2, -24(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.L21
	orl	$96, -24(%rbp)
.L21:
	cmpq	$0, -104(%rbp)
	je	.L22
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_ssl@PLT
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L23
.L22:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-112(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_ssl_ctx@PLT
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.L23:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	ssl_undefined_function@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L24
	orl	$8, -24(%rbp)
.L24:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	ssl_undefined_function@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L25
	orl	$4, -24(%rbp)
.L25:
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_flags@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L26
.L28:
	leaq	-96(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	conf_ssl_get_cmd@PLT
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_cmd@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jg	.L27
	addl	$1, -20(%rbp)
.L27:
	addq	$1, -16(%rbp)
.L26:
	movq	-80(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L28
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CONF_CTX_finish@PLT
	testl	%eax, %eax
	jne	.L32
	addl	$1, -20(%rbp)
	jmp	.L16
.L30:
	nop
	jmp	.L16
.L31:
	nop
	jmp	.L16
.L32:
	nop
.L16:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CONF_CTX_free@PLT
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ssl_do_config, .-ssl_do_config
	.globl	SSL_config
	.type	SSL_config, @function
SSL_config:
.LFB731:
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
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_do_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	SSL_config, .-SSL_config
	.globl	SSL_CTX_config
	.type	SSL_CTX_config, @function
SSL_CTX_config:
.LFB732:
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
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ssl_do_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	SSL_CTX_config, .-SSL_CTX_config
	.globl	ssl_ctx_system_config
	.type	ssl_ctx_system_config, @function
ssl_ctx_system_config:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ssl_do_config
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ssl_ctx_system_config, .-ssl_ctx_system_config
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"ssl_do_config"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
