	.file	"trace.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB149:
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
.LFE149:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB150:
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
.LFE150:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"ALL"
.LC1:
	.string	"TRACE"
.LC2:
	.string	"INIT"
.LC3:
	.string	"TLS"
.LC4:
	.string	"TLS_CIPHER"
.LC5:
	.string	"CONF"
.LC6:
	.string	"ENGINE_TABLE"
.LC7:
	.string	"ENGINE_REF_COUNT"
.LC8:
	.string	"PKCS5V2"
.LC9:
	.string	"PKCS12_KEYGEN"
.LC10:
	.string	"PKCS12_DECRYPT"
.LC11:
	.string	"X509V3_POLICY"
.LC12:
	.string	"BN_CTX"
.LC13:
	.string	"CMP"
.LC14:
	.string	"STORE"
.LC15:
	.string	"DECODER"
.LC16:
	.string	"ENCODER"
.LC17:
	.string	"REF_COUNT"
.LC18:
	.string	"HTTP"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	trace_categories, @object
	.size	trace_categories, 304
trace_categories:
	.quad	.LC0
	.long	0
	.zero	4
	.quad	.LC1
	.long	1
	.zero	4
	.quad	.LC2
	.long	2
	.zero	4
	.quad	.LC3
	.long	3
	.zero	4
	.quad	.LC4
	.long	4
	.zero	4
	.quad	.LC5
	.long	5
	.zero	4
	.quad	.LC6
	.long	6
	.zero	4
	.quad	.LC7
	.long	7
	.zero	4
	.quad	.LC8
	.long	8
	.zero	4
	.quad	.LC9
	.long	9
	.zero	4
	.quad	.LC10
	.long	10
	.zero	4
	.quad	.LC11
	.long	11
	.zero	4
	.quad	.LC12
	.long	12
	.zero	4
	.quad	.LC13
	.long	13
	.zero	4
	.quad	.LC14
	.long	14
	.zero	4
	.quad	.LC15
	.long	15
	.zero	4
	.quad	.LC16
	.long	16
	.zero	4
	.quad	.LC17
	.long	17
	.zero	4
	.quad	.LC18
	.long	18
	.zero	4
	.text
	.globl	OSSL_trace_get_category_name
	.type	OSSL_trace_get_category_name, @function
OSSL_trace_get_category_name:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L6
	movl	-4(%rbp), %eax
	cmpl	$18, %eax
	jbe	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	trace_categories(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L9
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+trace_categories(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L10
.L9:
	movl	$0, %eax
	jmp	.L8
.L10:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	trace_categories(%rip), %rax
	movq	(%rdx,%rax), %rax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	OSSL_trace_get_category_name, .-OSSL_trace_get_category_name
	.globl	OSSL_trace_get_category_num
	.type	OSSL_trace_get_category_num, @function
OSSL_trace_get_category_num:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L12
	movl	$-1, %eax
	jmp	.L13
.L12:
	movq	$0, -8(%rbp)
	jmp	.L14
.L16:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	trace_categories(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+trace_categories(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L13
.L15:
	addq	$1, -8(%rbp)
.L14:
	cmpq	$18, -8(%rbp)
	jbe	.L16
	movl	$-1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	OSSL_trace_get_category_num, .-OSSL_trace_get_category_num
	.globl	ossl_trace_cleanup
	.type	ossl_trace_cleanup, @function
ossl_trace_cleanup:
.LFB167:
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
.LFE167:
	.size	ossl_trace_cleanup, .-ossl_trace_cleanup
	.globl	OSSL_trace_set_channel
	.type	OSSL_trace_set_channel, @function
OSSL_trace_set_channel:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	OSSL_trace_set_channel, .-OSSL_trace_set_channel
	.globl	OSSL_trace_set_callback
	.type	OSSL_trace_set_callback, @function
OSSL_trace_set_callback:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	OSSL_trace_set_callback, .-OSSL_trace_set_callback
	.globl	OSSL_trace_set_prefix
	.type	OSSL_trace_set_prefix, @function
OSSL_trace_set_prefix:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	OSSL_trace_set_prefix, .-OSSL_trace_set_prefix
	.globl	OSSL_trace_set_suffix
	.type	OSSL_trace_set_suffix, @function
OSSL_trace_set_suffix:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	OSSL_trace_set_suffix, .-OSSL_trace_set_suffix
	.globl	OSSL_trace_enabled
	.type	OSSL_trace_enabled, @function
OSSL_trace_enabled:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	OSSL_trace_enabled, .-OSSL_trace_enabled
	.globl	OSSL_trace_begin
	.type	OSSL_trace_begin, @function
OSSL_trace_begin:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	OSSL_trace_begin, .-OSSL_trace_begin
	.globl	OSSL_trace_end
	.type	OSSL_trace_end, @function
OSSL_trace_end:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	OSSL_trace_end, .-OSSL_trace_end
	.section	.rodata
.LC19:
	.string	"[len %zu limited to %d]: "
.LC20:
	.string	"%.*s"
	.text
	.globl	OSSL_trace_string
	.type	OSSL_trace_string, @function
OSSL_trace_string:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r8, -128(%rbp)
	cmpl	$0, -112(%rbp)
	jne	.L32
	cmpq	$80, -128(%rbp)
	jbe	.L32
	movq	-128(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	-104(%rbp), %rax
	movl	$80, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$80, -4(%rbp)
	jmp	.L33
.L32:
	movq	-128(%rbp), %rax
	movl	%eax, -4(%rbp)
.L33:
	cmpl	$0, -108(%rbp)
	jne	.L34
	movl	$0, -8(%rbp)
	jmp	.L35
.L39:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L36
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$64, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L37
.L36:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	jmp	.L38
.L37:
	movl	$32, %eax
.L38:
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -96(%rbp,%rdx)
	addl	$1, -8(%rbp)
	addq	$1, -120(%rbp)
.L35:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L39
	cmpl	$0, -4(%rbp)
	je	.L40
	movq	-120(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L41
.L40:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cltq
	movb	$10, -96(%rbp,%rax)
.L41:
	leaq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
.L34:
	movq	-120(%rbp), %rcx
	movl	-4(%rbp), %edx
	leaq	.LC20(%rip), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	OSSL_trace_string, .-OSSL_trace_string
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
