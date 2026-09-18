	.file	"conf_ssl.c"
	.text
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB59:
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
.LFE59:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.local	ssl_names
	.comm	ssl_names,8,8
	.local	ssl_names_count
	.comm	ssl_names_count,8,8
	.section	.rodata
.LC0:
	.string	"../crypto/conf/conf_ssl.c"
	.text
	.type	ssl_module_free, @function
ssl_module_free:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	ssl_names(%rip), %rax
	testq	%rax, %rax
	je	.L10
	movq	$0, -8(%rbp)
	jmp	.L6
.L9:
	movq	ssl_names(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$49, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -16(%rbp)
	jmp	.L7
.L8:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$52, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addq	$1, -16(%rbp)
.L7:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addq	$1, -8(%rbp)
.L6:
	movq	ssl_names_count(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L9
	movq	ssl_names(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, ssl_names(%rip)
	movq	$0, ssl_names_count(%rip)
	jmp	.L3
.L10:
	nop
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	ssl_module_free, .-ssl_module_free
	.section	.rodata
.LC1:
	.string	"section=%s"
.LC2:
	.string	"name=%s, value=%s"
	.text
	.type	ssl_module_init, @function
ssl_module_init:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	$0, -36(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	CONF_imodule_get_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L12
	cmpq	$0, -72(%rbp)
	jne	.L13
	movl	$120, -40(%rbp)
	jmp	.L14
.L13:
	movl	$119, -40(%rbp)
.L14:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-64(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	-40(%rbp), %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L15
.L12:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cltq
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_module_free
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$81, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, ssl_names(%rip)
	movq	ssl_names(%rip), %rax
	testq	%rax, %rax
	je	.L32
	movq	-80(%rbp), %rax
	movq	%rax, ssl_names_count(%rip)
	movq	$0, -24(%rbp)
	jmp	.L17
.L29:
	movq	ssl_names(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %ebx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L18
	cmpq	$0, -104(%rbp)
	jne	.L19
	movl	$118, -44(%rbp)
	jmp	.L20
.L19:
	movl	$117, -44(%rbp)
.L20:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-96(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC2(%rip), %rsi
	movl	-44(%rbp), %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L15
.L18:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	salq	$4, %rax
	leaq	.LC0(%rip), %rcx
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	$0, -32(%rbp)
	jmp	.L23
.L28:
	movq	-32(%rbp), %rax
	movl	%eax, %ebx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L24
	addq	$1, -56(%rbp)
	jmp	.L25
.L24:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.L25:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L35
	addq	$1, -32(%rbp)
.L23:
	movq	-32(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L28
	addq	$1, -24(%rbp)
.L17:
	movq	ssl_names_count(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L29
	movl	$1, -36(%rbp)
	jmp	.L15
.L32:
	nop
	jmp	.L15
.L33:
	nop
	jmp	.L15
.L34:
	nop
	jmp	.L15
.L35:
	nop
.L15:
	cmpl	$0, -36(%rbp)
	jne	.L30
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_module_free
.L30:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	ssl_module_init, .-ssl_module_init
	.globl	conf_ssl_get
	.type	conf_ssl_get, @function
conf_ssl_get:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	ssl_names(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	ssl_names(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	ssl_names(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	conf_ssl_get, .-conf_ssl_get
	.globl	conf_ssl_name_find
	.type	conf_ssl_name_find, @function
conf_ssl_name_find:
.LFB94:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	$0, -8(%rbp)
	movq	ssl_names(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L41
.L43:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L42
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L40
.L42:
	addq	$1, -8(%rbp)
	addq	$24, -16(%rbp)
.L41:
	movq	ssl_names_count(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L43
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	conf_ssl_name_find, .-conf_ssl_name_find
	.globl	conf_ssl_get_cmd
	.type	conf_ssl_get_cmd, @function
conf_ssl_get_cmd:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	conf_ssl_get_cmd, .-conf_ssl_get_cmd
	.section	.rodata
.LC3:
	.string	"ssl_conf"
	.text
	.globl	ossl_config_add_ssl_module
	.type	ossl_config_add_ssl_module, @function
ossl_config_add_ssl_module:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ssl_module_free(%rip), %rdx
	leaq	ssl_module_init(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CONF_module_add@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	ossl_config_add_ssl_module, .-ossl_config_add_ssl_module
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"ssl_module_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
