	.file	"conf_lib.c"
	.text
	.type	ossl_check_OPENSSL_CSTRING_type, @function
ossl_check_OPENSSL_CSTRING_type:
.LFB12:
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
.LFE12:
	.size	ossl_check_OPENSSL_CSTRING_type, .-ossl_check_OPENSSL_CSTRING_type
	.type	ossl_check_OPENSSL_CSTRING_sk_type, @function
ossl_check_OPENSSL_CSTRING_sk_type:
.LFB14:
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
.LFE14:
	.size	ossl_check_OPENSSL_CSTRING_sk_type, .-ossl_check_OPENSSL_CSTRING_sk_type
	.type	ossl_check_OPENSSL_CSTRING_compfunc_type, @function
ossl_check_OPENSSL_CSTRING_compfunc_type:
.LFB15:
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
.LFE15:
	.size	ossl_check_OPENSSL_CSTRING_compfunc_type, .-ossl_check_OPENSSL_CSTRING_compfunc_type
	.local	default_CONF_method
	.comm	default_CONF_method,8,8
	.globl	CONF_set_nconf
	.type	CONF_set_nconf, @function
CONF_set_nconf:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	default_CONF_method(%rip), %rax
	testq	%rax, %rax
	jne	.L8
	call	NCONF_default@PLT
	movq	%rax, default_CONF_method(%rip)
.L8:
	movq	default_CONF_method(%rip), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	CONF_set_nconf, .-CONF_set_nconf
	.globl	CONF_set_default_method
	.type	CONF_set_default_method, @function
CONF_set_default_method:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, default_CONF_method(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	CONF_set_default_method, .-CONF_set_default_method
	.section	.rodata
.LC0:
	.string	"rb"
.LC1:
	.string	"../crypto/conf/conf_lib.c"
	.text
	.globl	CONF_load
	.type	CONF_load, @function
CONF_load:
.LFB93:
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
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CONF_load_bio@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	CONF_load, .-CONF_load
	.globl	CONF_load_fp
	.type	CONF_load_fp, @function
CONF_load_fp:
.LFB94:
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
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$75, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CONF_load_bio@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	CONF_load_fp, .-CONF_load_fp
	.globl	CONF_load_bio
	.type	CONF_load_bio, @function
CONF_load_bio:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load_bio@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L18
	movq	-48(%rbp), %rax
	jmp	.L20
.L18:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	CONF_load_bio, .-CONF_load_bio
	.globl	CONF_get_section
	.type	CONF_get_section, @function
CONF_get_section:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	CONF_get_section, .-CONF_get_section
	.globl	CONF_get_string
	.type	CONF_get_string, @function
CONF_get_string:
.LFB97:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L25
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	NCONF_get_string@PLT
	jmp	.L26
.L25:
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	CONF_get_string, .-CONF_get_string
	.globl	CONF_get_number
	.type	CONF_get_number, @function
CONF_get_number:
.LFB98:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -16(%rbp)
	call	ERR_set_mark@PLT
	cmpq	$0, -72(%rbp)
	jne	.L28
	leaq	-16(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	NCONF_get_number_e@PLT
	movl	%eax, -4(%rbp)
	jmp	.L29
.L28:
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	leaq	-16(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_get_number_e@PLT
	movl	%eax, -4(%rbp)
.L29:
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -4(%rbp)
	je	.L30
	movq	-16(%rbp), %rax
	jmp	.L32
.L30:
	movl	$0, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	CONF_get_number, .-CONF_get_number
	.globl	CONF_free
	.type	CONF_free, @function
CONF_free:
.LFB99:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free_data@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	CONF_free, .-CONF_free
	.globl	CONF_dump_fp
	.type	CONF_dump_fp, @function
CONF_dump_fp:
.LFB100:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_dump_bio@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	CONF_dump_fp, .-CONF_dump_fp
	.globl	CONF_dump_bio
	.type	CONF_dump_bio, @function
CONF_dump_bio:
.LFB101:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_dump_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	CONF_dump_bio, .-CONF_dump_bio
	.globl	NCONF_new_ex
	.type	NCONF_new_ex, @function
NCONF_new_ex:
.LFB102:
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
	jne	.L40
	call	NCONF_default@PLT
	movq	%rax, -32(%rbp)
.L40:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524302, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	NCONF_new_ex, .-NCONF_new_ex
	.globl	NCONF_new
	.type	NCONF_new, @function
NCONF_new:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	NCONF_new_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	NCONF_new, .-NCONF_new
	.globl	NCONF_free
	.type	NCONF_free, @function
NCONF_free:
.LFB104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L48
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L45
.L48:
	nop
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	NCONF_free, .-NCONF_free
	.globl	NCONF_free_data
	.type	NCONF_free_data, @function
NCONF_free_data:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L49
.L52:
	nop
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	NCONF_free_data, .-NCONF_free_data
	.globl	NCONF_get0_libctx
	.type	NCONF_get0_libctx, @function
NCONF_get0_libctx:
.LFB106:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	NCONF_get0_libctx, .-NCONF_get0_libctx
	.type	lh_CONF_VALUE_doall_SECTION_NAMES_thunk, @function
lh_CONF_VALUE_doall_SECTION_NAMES_thunk:
.LFB107:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	lh_CONF_VALUE_doall_SECTION_NAMES_thunk, .-lh_CONF_VALUE_doall_SECTION_NAMES_thunk
	.type	lh_CONF_VALUE_doall_SECTION_NAMES, @function
lh_CONF_VALUE_doall_SECTION_NAMES:
.LFB108:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	lh_CONF_VALUE_doall_SECTION_NAMES_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	lh_CONF_VALUE_doall_SECTION_NAMES, .-lh_CONF_VALUE_doall_SECTION_NAMES
	.type	collect_section_name, @function
collect_section_name:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
.L59:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	collect_section_name, .-collect_section_name
	.type	section_name_cmp, @function
section_name_cmp:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	section_name_cmp, .-section_name_cmp
	.globl	NCONF_get_section_names
	.type	NCONF_get_section_names, @function
NCONF_get_section_names:
.LFB111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	section_name_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	collect_section_name(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_CONF_VALUE_doall_SECTION_NAMES
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movq	-8(%rbp), %rax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	NCONF_get_section_names, .-NCONF_get_section_names
	.globl	NCONF_load
	.type	NCONF_load, @function
NCONF_load:
.LFB112:
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
	cmpq	$0, -8(%rbp)
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	NCONF_load, .-NCONF_load
	.globl	NCONF_load_fp
	.type	NCONF_load_fp, @function
NCONF_load_fp:
.LFB113:
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
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load_bio@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	NCONF_load_fp, .-NCONF_load_fp
	.globl	NCONF_load_bio
	.type	NCONF_load_bio, @function
NCONF_load_bio:
.LFB114:
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
	cmpq	$0, -8(%rbp)
	jne	.L72
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$278, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L73
.L72:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	NCONF_load_bio, .-NCONF_load_bio
	.globl	NCONF_get_section
	.type	NCONF_get_section, @function
NCONF_get_section:
.LFB115:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$288, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L75:
	cmpq	$0, -16(%rbp)
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L77:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_CONF_get_section_values@PLT
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	NCONF_get_section, .-NCONF_get_section
	.section	.rodata
.LC2:
	.string	"group=%s name=%s"
	.text
	.globl	NCONF_get_string
	.type	NCONF_get_string, @function
NCONF_get_string:
.LFB116:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_CONF_get_string@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L79
	movq	-8(%rbp), %rax
	jmp	.L80
.L79:
	cmpq	$0, -24(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$312, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L80
.L81:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$315, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$108, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	NCONF_get_string, .-NCONF_get_string
	.type	default_is_number, @function
default_is_number:
.LFB117:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movsbl	-12(%rbp), %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	default_is_number, .-default_is_number
	.type	default_to_int, @function
default_to_int:
.LFB118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movsbl	-12(%rbp), %eax
	subl	$48, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	default_to_int, .-default_to_int
	.globl	NCONF_get_number_e
	.type	NCONF_get_number_e, @function
NCONF_get_number_e:
.LFB119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	leaq	default_is_number(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	default_to_int(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L89
	movl	$0, %eax
	jmp	.L88
.L89:
	cmpq	$0, -56(%rbp)
	je	.L90
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
.L91:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
.L90:
	movq	$0, -16(%rbp)
	jmp	.L92
.L94:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	movabsq	$9223372036854775807, %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	sarq	$63, %rcx
	movq	%rcx, %rdx
	subq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jle	.L93
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$358, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L88
.L93:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L92:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L94
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	NCONF_get_number_e, .-NCONF_get_number_e
	.globl	_CONF_get_number
	.type	_CONF_get_number, @function
_CONF_get_number:
.LFB120:
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
	movq	$0, -16(%rbp)
	call	ERR_set_mark@PLT
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_get_number_e@PLT
	movl	%eax, -4(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -4(%rbp)
	je	.L96
	movq	-16(%rbp), %rax
	jmp	.L98
.L96:
	movl	$0, %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	_CONF_get_number, .-_CONF_get_number
	.globl	NCONF_dump_fp
	.type	NCONF_dump_fp, @function
NCONF_dump_fp:
.LFB121:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L100
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$386, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L100:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_dump_bio@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	NCONF_dump_fp, .-NCONF_dump_fp
	.globl	NCONF_dump_bio
	.type	NCONF_dump_bio, @function
NCONF_dump_bio:
.LFB122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$398, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L103:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	NCONF_dump_bio, .-NCONF_dump_bio
	.globl	OPENSSL_INIT_new
	.type	OPENSSL_INIT_new, @function
OPENSSL_INIT_new:
.LFB123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	$50, 16(%rax)
	movq	-8(%rbp), %rax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	OPENSSL_INIT_new, .-OPENSSL_INIT_new
	.globl	OPENSSL_INIT_set_config_filename
	.type	OPENSSL_INIT_set_config_filename, @function
OPENSSL_INIT_set_config_filename:
.LFB124:
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
	cmpq	$0, -32(%rbp)
	je	.L109
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L109
	movl	$0, %eax
	jmp	.L110
.L109:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	OPENSSL_INIT_set_config_filename, .-OPENSSL_INIT_set_config_filename
	.globl	OPENSSL_INIT_set_config_file_flags
	.type	OPENSSL_INIT_set_config_file_flags, @function
OPENSSL_INIT_set_config_file_flags:
.LFB125:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	OPENSSL_INIT_set_config_file_flags, .-OPENSSL_INIT_set_config_file_flags
	.globl	OPENSSL_INIT_set_config_appname
	.type	OPENSSL_INIT_set_config_appname, @function
OPENSSL_INIT_set_config_appname:
.LFB126:
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
	cmpq	$0, -32(%rbp)
	je	.L113
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L113
	movl	$0, %eax
	jmp	.L114
.L113:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	OPENSSL_INIT_set_config_appname, .-OPENSSL_INIT_set_config_appname
	.globl	OPENSSL_INIT_free
	.type	OPENSSL_INIT_free, @function
OPENSSL_INIT_free:
.LFB127:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L118
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L115
.L118:
	nop
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	OPENSSL_INIT_free, .-OPENSSL_INIT_free
	.section	.rodata
	.align 8
	.type	__func__.11, @object
	.size	__func__.11, 10
__func__.11:
	.string	"CONF_load"
	.align 8
	.type	__func__.10, @object
	.size	__func__.10, 13
__func__.10:
	.string	"CONF_load_fp"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 13
__func__.9:
	.string	"CONF_dump_fp"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 13
__func__.8:
	.string	"NCONF_new_ex"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 11
__func__.7:
	.string	"NCONF_load"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 14
__func__.6:
	.string	"NCONF_load_fp"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 15
__func__.5:
	.string	"NCONF_load_bio"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"NCONF_get_section"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"NCONF_get_string"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"NCONF_get_number_e"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"NCONF_dump_fp"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"NCONF_dump_bio"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
