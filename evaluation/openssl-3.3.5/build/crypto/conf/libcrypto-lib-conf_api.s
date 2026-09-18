	.file	"conf_api.c"
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
	.type	ossl_check_CONF_VALUE_type, @function
ossl_check_CONF_VALUE_type:
.LFB160:
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
.LFE160:
	.size	ossl_check_CONF_VALUE_type, .-ossl_check_CONF_VALUE_type
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB161:
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
.LFE161:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB162:
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
.LFE162:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	lh_CONF_VALUE_hash_thunk, @function
lh_CONF_VALUE_hash_thunk:
.LFB166:
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
.LFE166:
	.size	lh_CONF_VALUE_hash_thunk, .-lh_CONF_VALUE_hash_thunk
	.type	lh_CONF_VALUE_comp_thunk, @function
lh_CONF_VALUE_comp_thunk:
.LFB167:
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
.LFE167:
	.size	lh_CONF_VALUE_comp_thunk, .-lh_CONF_VALUE_comp_thunk
	.type	lh_CONF_VALUE_doall_thunk, @function
lh_CONF_VALUE_doall_thunk:
.LFB168:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	lh_CONF_VALUE_doall_thunk, .-lh_CONF_VALUE_doall_thunk
	.type	lh_CONF_VALUE_doall_arg_thunk, @function
lh_CONF_VALUE_doall_arg_thunk:
.LFB169:
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
.LFE169:
	.size	lh_CONF_VALUE_doall_arg_thunk, .-lh_CONF_VALUE_doall_arg_thunk
	.type	ossl_check_CONF_VALUE_lh_plain_type, @function
ossl_check_CONF_VALUE_lh_plain_type:
.LFB170:
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
.LFE170:
	.size	ossl_check_CONF_VALUE_lh_plain_type, .-ossl_check_CONF_VALUE_lh_plain_type
	.type	ossl_check_const_CONF_VALUE_lh_plain_type, @function
ossl_check_const_CONF_VALUE_lh_plain_type:
.LFB171:
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
.LFE171:
	.size	ossl_check_const_CONF_VALUE_lh_plain_type, .-ossl_check_const_CONF_VALUE_lh_plain_type
	.type	ossl_check_CONF_VALUE_lh_type, @function
ossl_check_CONF_VALUE_lh_type:
.LFB173:
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
.LFE173:
	.size	ossl_check_CONF_VALUE_lh_type, .-ossl_check_CONF_VALUE_lh_type
	.type	ossl_check_CONF_VALUE_lh_compfunc_type, @function
ossl_check_CONF_VALUE_lh_compfunc_type:
.LFB174:
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
.LFE174:
	.size	ossl_check_CONF_VALUE_lh_compfunc_type, .-ossl_check_CONF_VALUE_lh_compfunc_type
	.type	ossl_check_CONF_VALUE_lh_hashfunc_type, @function
ossl_check_CONF_VALUE_lh_hashfunc_type:
.LFB175:
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
.LFE175:
	.size	ossl_check_CONF_VALUE_lh_hashfunc_type, .-ossl_check_CONF_VALUE_lh_hashfunc_type
	.type	ossl_check_CONF_VALUE_lh_doallfunc_type, @function
ossl_check_CONF_VALUE_lh_doallfunc_type:
.LFB176:
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
.LFE176:
	.size	ossl_check_CONF_VALUE_lh_doallfunc_type, .-ossl_check_CONF_VALUE_lh_doallfunc_type
	.globl	_CONF_get_section
	.type	_CONF_get_section, @function
_CONF_get_section:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L30
	cmpq	$0, -64(%rbp)
	jne	.L31
.L30:
	movl	$0, %eax
	jmp	.L35
.L31:
	movq	$0, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L33
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_lh_plain_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	jmp	.L35
.L33:
	movl	$0, %eax
.L35:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	_CONF_get_section, .-_CONF_get_section
	.globl	_CONF_get_section_values
	.type	_CONF_get_section_values, @function
_CONF_get_section_values:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_CONF_get_section@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	_CONF_get_section_values, .-_CONF_get_section_values
	.section	.rodata
.LC0:
	.string	"../crypto/conf/conf_api.c"
	.text
	.globl	_CONF_add_string
	.type	_CONF_add_string, @function
_CONF_add_string:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_plain_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_insert@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_delete_ptr@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L42:
	movl	$1, %eax
.L41:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	_CONF_add_string, .-_CONF_add_string
	.section	.rodata
.LC1:
	.string	"ENV"
.LC2:
	.string	"default"
	.text
	.globl	_CONF_get_string
	.type	_CONF_get_string, @function
_CONF_get_string:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L51
.L44:
	cmpq	$0, -72(%rbp)
	jne	.L46
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	jmp	.L51
.L46:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	movl	$0, %eax
	jmp	.L51
.L47:
	cmpq	$0, -80(%rbp)
	je	.L48
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_lh_plain_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L49
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L51
.L49:
	leaq	.LC1(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L48
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L48
	movq	-32(%rbp), %rax
	jmp	.L51
.L48:
	leaq	.LC2(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_lh_plain_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
.L51:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	_CONF_get_string, .-_CONF_get_string
	.type	conf_value_hash, @function
conf_value_hash:
.LFB181:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_strhash@PLT
	leaq	0(,%rax,4), %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_strhash@PLT
	xorq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	conf_value_hash, .-conf_value_hash
	.type	conf_value_cmp, @function
conf_value_cmp:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L55
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L55
	movl	-4(%rbp), %eax
	jmp	.L56
.L55:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	jmp	.L56
.L57:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L58
	movl	$0, %eax
	jmp	.L56
.L58:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movl	$-1, %eax
	jmp	.L56
.L59:
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	conf_value_cmp, .-conf_value_cmp
	.globl	_CONF_new_data
	.type	_CONF_new_data, @function
_CONF_new_data:
.LFB183:
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
	cmpq	$0, -24(%rbp)
	jne	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L64
	leaq	conf_value_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_compfunc_type
	movq	%rax, %rbx
	leaq	conf_value_hash(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_hashfunc_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_CONF_VALUE_doall_arg_thunk(%rip), %rsi
	leaq	lh_CONF_VALUE_doall_thunk(%rip), %rcx
	leaq	lh_CONF_VALUE_comp_thunk(%rip), %rdx
	leaq	lh_CONF_VALUE_hash_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L64
	movl	$0, %eax
	jmp	.L63
.L64:
	movl	$1, %eax
.L63:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	_CONF_new_data, .-_CONF_new_data
	.type	lh_CONF_VALUE_doall_LH_CONF_VALUE_thunk, @function
lh_CONF_VALUE_doall_LH_CONF_VALUE_thunk:
.LFB184:
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
.LFE184:
	.size	lh_CONF_VALUE_doall_LH_CONF_VALUE_thunk, .-lh_CONF_VALUE_doall_LH_CONF_VALUE_thunk
	.type	lh_CONF_VALUE_doall_LH_CONF_VALUE, @function
lh_CONF_VALUE_doall_LH_CONF_VALUE:
.LFB185:
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
	leaq	lh_CONF_VALUE_doall_LH_CONF_VALUE_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	lh_CONF_VALUE_doall_LH_CONF_VALUE, .-lh_CONF_VALUE_doall_LH_CONF_VALUE
	.globl	_CONF_free_data
	.type	_CONF_free_data, @function
_CONF_free_data:
.LFB186:
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
	cmpq	$0, -24(%rbp)
	je	.L71
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$141, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_LH_set_down_load@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	value_free_hash(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_CONF_VALUE_doall_LH_CONF_VALUE
	leaq	value_free_stack_doall(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_doallfunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_doall@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	jmp	.L67
.L71:
	nop
	jmp	.L67
.L72:
	nop
.L67:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	_CONF_free_data, .-_CONF_free_data
	.type	value_free_hash, @function
value_free_hash:
.LFB187:
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
	je	.L75
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_lh_plain_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_delete@PLT
.L75:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	value_free_hash, .-value_free_hash
	.type	value_free_stack_doall, @function
value_free_stack_doall:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L81
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L79
.L80:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$177, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$178, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	subl	$1, -4(%rbp)
.L79:
	cmpl	$0, -4(%rbp)
	jns	.L80
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$181, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$182, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L76
.L81:
	nop
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	value_free_stack_doall, .-value_free_stack_doall
	.globl	_CONF_new_section
	.type	_CONF_new_section, @function
_CONF_new_section:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L91
	leaq	.LC0(%rip), %rax
	movl	$193, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L92
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$196, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L93
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_plain_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_insert@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L94
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_lh_type
	movq	%rax, %rdi
	call	OPENSSL_LH_error@PLT
	testl	%eax, %eax
	jg	.L94
	movq	-24(%rbp), %rax
	jmp	.L89
.L91:
	nop
	jmp	.L84
.L92:
	nop
	jmp	.L84
.L93:
	nop
	jmp	.L84
.L94:
	nop
.L84:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L90
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$211, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L90:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$212, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L89:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	_CONF_new_section, .-_CONF_new_section
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
