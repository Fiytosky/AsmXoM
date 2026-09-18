	.file	"defn_cache.c"
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
	.type	lh_PROPERTY_DEFN_ELEM_hfn_thunk, @function
lh_PROPERTY_DEFN_ELEM_hfn_thunk:
.LFB160:
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
.LFE160:
	.size	lh_PROPERTY_DEFN_ELEM_hfn_thunk, .-lh_PROPERTY_DEFN_ELEM_hfn_thunk
	.type	lh_PROPERTY_DEFN_ELEM_cfn_thunk, @function
lh_PROPERTY_DEFN_ELEM_cfn_thunk:
.LFB161:
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
.LFE161:
	.size	lh_PROPERTY_DEFN_ELEM_cfn_thunk, .-lh_PROPERTY_DEFN_ELEM_cfn_thunk
	.type	lh_PROPERTY_DEFN_ELEM_free, @function
lh_PROPERTY_DEFN_ELEM_free:
.LFB162:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	lh_PROPERTY_DEFN_ELEM_free, .-lh_PROPERTY_DEFN_ELEM_free
	.type	lh_PROPERTY_DEFN_ELEM_insert, @function
lh_PROPERTY_DEFN_ELEM_insert:
.LFB164:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	lh_PROPERTY_DEFN_ELEM_insert, .-lh_PROPERTY_DEFN_ELEM_insert
	.type	lh_PROPERTY_DEFN_ELEM_delete, @function
lh_PROPERTY_DEFN_ELEM_delete:
.LFB165:
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
	call	OPENSSL_LH_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	lh_PROPERTY_DEFN_ELEM_delete, .-lh_PROPERTY_DEFN_ELEM_delete
	.type	lh_PROPERTY_DEFN_ELEM_retrieve, @function
lh_PROPERTY_DEFN_ELEM_retrieve:
.LFB166:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	lh_PROPERTY_DEFN_ELEM_retrieve, .-lh_PROPERTY_DEFN_ELEM_retrieve
	.type	lh_PROPERTY_DEFN_ELEM_error, @function
lh_PROPERTY_DEFN_ELEM_error:
.LFB167:
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
	call	OPENSSL_LH_error@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	lh_PROPERTY_DEFN_ELEM_error, .-lh_PROPERTY_DEFN_ELEM_error
	.type	lh_PROPERTY_DEFN_ELEM_doall_thunk, @function
lh_PROPERTY_DEFN_ELEM_doall_thunk:
.LFB171:
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
.LFE171:
	.size	lh_PROPERTY_DEFN_ELEM_doall_thunk, .-lh_PROPERTY_DEFN_ELEM_doall_thunk
	.type	lh_PROPERTY_DEFN_ELEM_doall_arg_thunk, @function
lh_PROPERTY_DEFN_ELEM_doall_arg_thunk:
.LFB172:
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
.LFE172:
	.size	lh_PROPERTY_DEFN_ELEM_doall_arg_thunk, .-lh_PROPERTY_DEFN_ELEM_doall_arg_thunk
	.type	lh_PROPERTY_DEFN_ELEM_doall, @function
lh_PROPERTY_DEFN_ELEM_doall:
.LFB173:
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
	call	OPENSSL_LH_doall@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	lh_PROPERTY_DEFN_ELEM_doall, .-lh_PROPERTY_DEFN_ELEM_doall
	.type	lh_PROPERTY_DEFN_ELEM_new, @function
lh_PROPERTY_DEFN_ELEM_new:
.LFB174:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_PROPERTY_DEFN_ELEM_doall_arg_thunk(%rip), %rsi
	leaq	lh_PROPERTY_DEFN_ELEM_doall_thunk(%rip), %rcx
	leaq	lh_PROPERTY_DEFN_ELEM_cfn_thunk(%rip), %rdx
	leaq	lh_PROPERTY_DEFN_ELEM_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	lh_PROPERTY_DEFN_ELEM_new, .-lh_PROPERTY_DEFN_ELEM_new
	.type	property_defn_hash, @function
property_defn_hash:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_strhash@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	property_defn_hash, .-property_defn_hash
	.type	property_defn_cmp, @function
property_defn_cmp:
.LFB177:
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
.LFE177:
	.size	property_defn_cmp, .-property_defn_cmp
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/property/defn_cache.c"
	.text
	.type	property_defn_free, @function
property_defn_free:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	property_defn_free, .-property_defn_free
	.globl	ossl_property_defns_free
	.type	ossl_property_defns_free, @function
ossl_property_defns_free:
.LFB179:
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
	cmpq	$0, -8(%rbp)
	je	.L30
	leaq	property_defn_free(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_PROPERTY_DEFN_ELEM_doall
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	lh_PROPERTY_DEFN_ELEM_free
.L30:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	ossl_property_defns_free, .-ossl_property_defns_free
	.globl	ossl_property_defns_new
	.type	ossl_property_defns_new, @function
ossl_property_defns_new:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	property_defn_cmp(%rip), %rdx
	leaq	property_defn_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_PROPERTY_DEFN_ELEM_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	ossl_property_defns_new, .-ossl_property_defns_new
	.globl	ossl_prop_defn_get
	.type	ossl_prop_defn_get, @function
ossl_prop_defn_get:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L34
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_read_lock@PLT
	testl	%eax, %eax
	jne	.L35
.L34:
	movl	$0, %eax
	jmp	.L39
.L35:
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_PROPERTY_DEFN_ELEM_retrieve
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_unlock@PLT
	cmpq	$0, -16(%rbp)
	je	.L37
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L38
.L37:
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	ossl_prop_defn_get, .-ossl_prop_defn_get
	.globl	ossl_prop_defn_set
	.type	ossl_prop_defn_set, @function
ossl_prop_defn_set:
.LFB182:
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
	movl	$1, -4(%rbp)
	movq	-72(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L50
.L41:
	cmpq	$0, -80(%rbp)
	jne	.L43
	movl	$1, %eax
	jmp	.L50
.L43:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_write_lock@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L50
.L44:
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L45
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_PROPERTY_DEFN_ELEM_delete
	jmp	.L46
.L45:
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_PROPERTY_DEFN_ELEM_retrieve
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L47
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L46
.L47:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$24, %rax
	leaq	.LC0(%rip), %rcx
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L48
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_PROPERTY_DEFN_ELEM_insert
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L51
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	lh_PROPERTY_DEFN_ELEM_error
	testl	%eax, %eax
	je	.L52
.L48:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L46
.L51:
	nop
	jmp	.L46
.L52:
	nop
.L46:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_unlock@PLT
	movl	-4(%rbp), %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	ossl_prop_defn_set, .-ossl_prop_defn_set
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
