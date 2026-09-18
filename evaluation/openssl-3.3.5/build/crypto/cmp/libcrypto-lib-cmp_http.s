	.file	"cmp_http.c"
	.text
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB108:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB649:
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
.LFE649:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB650:
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
.LFE650:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	keep_alive, @function
keep_alive:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L10
	cmpl	$0, -8(%rbp)
	je	.L10
	cmpl	$2, -8(%rbp)
	je	.L10
	cmpl	$4, -8(%rbp)
	je	.L10
	cmpl	$7, -8(%rbp)
	je	.L10
	cmpl	$25, -8(%rbp)
	je	.L10
	movl	$0, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	keep_alive, .-keep_alive
	.section	.rodata
.LC0:
	.string	"../crypto/cmp/cmp_http.c"
.LC1:
	.string	"no-cache"
.LC2:
	.string	"Pragma"
.LC3:
	.string	"%d"
.LC4:
	.string	" using TLS"
.LC5:
	.string	""
.LC6:
	.string	"DEBUG"
	.align 8
.LC7:
	.string	"connecting to CMP server %s:%s%s"
.LC8:
	.string	"disconnected from CMP server"
.LC9:
	.string	"%s"
	.align 8
.LC10:
	.string	"finished reading response from CMP server"
	.text
	.globl	OSSL_CMP_MSG_http_perform
	.type	OSSL_CMP_MSG_http_perform, @function
OSSL_CMP_MSG_http_perform:
.LFB746:
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
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -120(%rbp)
	movabsq	$8386093285582598241, %rax
	movabsq	$8676584286682247017, %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movl	$7368035, -128(%rbp)
	call	OSSL_CMP_MSG_it@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L13
	cmpq	$0, -160(%rbp)
	jne	.L14
.L13:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L14:
	leaq	-120(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L26
.L16:
	movq	-160(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d_mem_bio@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L27
	movq	-152(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L19
	movq	-152(%rbp), %rax
	movl	72(%rax), %edx
	leaq	.LC3(%rip), %rsi
	leaq	-112(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L19:
	movq	-152(%rbp), %rax
	movl	108(%rax), %eax
	testl	%eax, %eax
	js	.L20
	movq	-152(%rbp), %rax
	movl	108(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	jmp	.L21
.L20:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_http_cb_arg@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
.L21:
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	cmpl	$0, -36(%rbp)
	je	.L23
	leaq	.LC4(%rip), %rax
	jmp	.L24
.L23:
	leaq	.LC5(%rip), %rax
.L24:
	movq	-152(%rbp), %rdx
	movq	64(%rdx), %rdi
	leaq	.LC6(%rip), %r8
	leaq	.LC0(%rip), %rcx
	leaq	__func__.0(%rip), %rdx
	movq	-152(%rbp), %rsi
	pushq	%rax
	leaq	-112(%rbp), %rax
	pushq	%rax
	pushq	%rdi
	leaq	.LC7(%rip), %rax
	pushq	%rax
	movq	%r8, %r9
	movl	$74, %r8d
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
.L22:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-152(%rbp), %rax
	movl	96(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	keep_alive
	movl	%eax, %ebx
	movq	-152(%rbp), %rax
	movl	100(%rax), %r13d
	movq	-120(%rbp), %r12
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_http_cb_arg@PLT
	movq	%rax, %rsi
	movq	-152(%rbp), %rax
	movq	120(%rax), %r9
	movq	-152(%rbp), %rax
	movq	88(%rax), %r8
	movq	-152(%rbp), %rax
	movq	80(%rax), %r14
	movq	-152(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-152(%rbp), %rax
	movq	64(%rax), %rax
	movq	-152(%rbp), %rdx
	leaq	48(%rdx), %rdi
	movl	-36(%rbp), %r11d
	leaq	-112(%rbp), %rdx
	pushq	%rbx
	pushq	%r13
	pushq	$102400
	pushq	$1
	leaq	-144(%rbp), %r10
	pushq	%r10
	pushq	-64(%rbp)
	leaq	-144(%rbp), %r10
	pushq	%r10
	pushq	%r12
	pushq	$0
	pushq	%rsi
	pushq	%r9
	pushq	$0
	pushq	$0
	pushq	%r8
	movq	%r14, %r9
	movl	%r11d, %r8d
	movq	%rax, %rsi
	call	OSSL_HTTP_transfer@PLT
	addq	$112, %rsp
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_d2i_bio@PLT
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	leaq	.LC6(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.0(%rip), %rdx
	movq	-152(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$93, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L25:
	cmpq	$0, -48(%rbp)
	je	.L28
	leaq	.LC6(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.0(%rip), %rdx
	movq	-152(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$100, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L18
.L27:
	nop
	jmp	.L18
.L28:
	nop
.L18:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-48(%rbp), %rax
.L26:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	OSSL_CMP_MSG_http_perform, .-OSSL_CMP_MSG_http_perform
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"OSSL_CMP_MSG_http_perform"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
