	.file	"core_namemap.c"
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
	.type	lh_NAMENUM_ENTRY_hfn_thunk, @function
lh_NAMENUM_ENTRY_hfn_thunk:
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
	.size	lh_NAMENUM_ENTRY_hfn_thunk, .-lh_NAMENUM_ENTRY_hfn_thunk
	.type	lh_NAMENUM_ENTRY_cfn_thunk, @function
lh_NAMENUM_ENTRY_cfn_thunk:
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
	.size	lh_NAMENUM_ENTRY_cfn_thunk, .-lh_NAMENUM_ENTRY_cfn_thunk
	.type	lh_NAMENUM_ENTRY_free, @function
lh_NAMENUM_ENTRY_free:
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
	.size	lh_NAMENUM_ENTRY_free, .-lh_NAMENUM_ENTRY_free
	.type	lh_NAMENUM_ENTRY_insert, @function
lh_NAMENUM_ENTRY_insert:
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
	.size	lh_NAMENUM_ENTRY_insert, .-lh_NAMENUM_ENTRY_insert
	.type	lh_NAMENUM_ENTRY_retrieve, @function
lh_NAMENUM_ENTRY_retrieve:
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
	.size	lh_NAMENUM_ENTRY_retrieve, .-lh_NAMENUM_ENTRY_retrieve
	.type	lh_NAMENUM_ENTRY_error, @function
lh_NAMENUM_ENTRY_error:
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
	.size	lh_NAMENUM_ENTRY_error, .-lh_NAMENUM_ENTRY_error
	.type	lh_NAMENUM_ENTRY_num_items, @function
lh_NAMENUM_ENTRY_num_items:
.LFB168:
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
	call	OPENSSL_LH_num_items@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	lh_NAMENUM_ENTRY_num_items, .-lh_NAMENUM_ENTRY_num_items
	.type	lh_NAMENUM_ENTRY_doall_thunk, @function
lh_NAMENUM_ENTRY_doall_thunk:
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
	.size	lh_NAMENUM_ENTRY_doall_thunk, .-lh_NAMENUM_ENTRY_doall_thunk
	.type	lh_NAMENUM_ENTRY_doall_arg_thunk, @function
lh_NAMENUM_ENTRY_doall_arg_thunk:
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
	.size	lh_NAMENUM_ENTRY_doall_arg_thunk, .-lh_NAMENUM_ENTRY_doall_arg_thunk
	.type	lh_NAMENUM_ENTRY_doall, @function
lh_NAMENUM_ENTRY_doall:
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
	.size	lh_NAMENUM_ENTRY_doall, .-lh_NAMENUM_ENTRY_doall
	.type	lh_NAMENUM_ENTRY_new, @function
lh_NAMENUM_ENTRY_new:
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
	leaq	lh_NAMENUM_ENTRY_doall_arg_thunk(%rip), %rsi
	leaq	lh_NAMENUM_ENTRY_doall_thunk(%rip), %rcx
	leaq	lh_NAMENUM_ENTRY_cfn_thunk(%rip), %rdx
	leaq	lh_NAMENUM_ENTRY_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	lh_NAMENUM_ENTRY_new, .-lh_NAMENUM_ENTRY_new
	.type	namenum_hash, @function
namenum_hash:
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
	call	ossl_lh_strcasehash@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	namenum_hash, .-namenum_hash
	.type	namenum_cmp, @function
namenum_cmp:
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
	call	OPENSSL_strcasecmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	namenum_cmp, .-namenum_cmp
	.section	.rodata
.LC0:
	.string	"../crypto/core_namemap.c"
	.text
	.type	namenum_free, @function
namenum_free:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L28:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	namenum_free, .-namenum_free
	.globl	ossl_stored_namemap_new
	.type	ossl_stored_namemap_new, @function
ossl_stored_namemap_new:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_namemap_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$1, %edx
	movb	%dl, (%rax)
.L30:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	ossl_stored_namemap_new, .-ossl_stored_namemap_new
	.globl	ossl_stored_namemap_free
	.type	ossl_stored_namemap_free, @function
ossl_stored_namemap_free:
.LFB180:
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
	je	.L34
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$-2, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_free@PLT
.L34:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	ossl_stored_namemap_free, .-ossl_stored_namemap_free
	.globl	ossl_namemap_empty
	.type	ossl_namemap_empty, @function
ossl_namemap_empty:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L36
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L37
.L36:
	movl	$1, %eax
	jmp	.L39
.L37:
	movl	$0, %eax
.L39:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	ossl_namemap_empty, .-ossl_namemap_empty
	.type	do_name, @function
do_name:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L42
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 16(%rdx)
	cltq
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
.L42:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	do_name, .-do_name
	.type	lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA_thunk, @function
lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA_thunk:
.LFB183:
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
.LFE183:
	.size	lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA_thunk, .-lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA_thunk
	.type	lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA, @function
lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA:
.LFB184:
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
	leaq	lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA, .-lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA
	.globl	ossl_namemap_doall_names
	.type	ossl_namemap_doall_names, @function
ossl_namemap_doall_names:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -32(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L53
.L46:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L53
.L48:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_NAMENUM_ENTRY_num_items
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L49
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, %eax
	jmp	.L53
.L49:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$156, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L50
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, %eax
	jmp	.L53
.L50:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-48(%rbp), %rdx
	leaq	do_name(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, -4(%rbp)
	jmp	.L51
.L52:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -4(%rbp)
.L51:
	movl	-32(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L52
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$168, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	ossl_namemap_doall_names, .-ossl_namemap_doall_names
	.type	namemap_name2num, @function
namemap_name2num:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_NAMENUM_ENTRY_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L55
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L57
.L55:
	movl	$0, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	namemap_name2num, .-namemap_name2num
	.globl	ossl_namemap_name2num
	.type	ossl_namemap_name2num, @function
ossl_namemap_name2num:
.LFB187:
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
	jne	.L59
	movl	$0, %edi
	call	ossl_namemap_stored@PLT
	movq	%rax, -24(%rbp)
.L59:
	cmpq	$0, -24(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L61
.L62:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	namemap_name2num
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	ossl_namemap_name2num, .-ossl_namemap_name2num
	.globl	ossl_namemap_name2num_n
	.type	ossl_namemap_name2num_n, @function
ossl_namemap_name2num_n:
.LFB188:
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
	cmpq	$0, -32(%rbp)
	je	.L64
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$211, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L65
.L64:
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -12(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$215, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	ossl_namemap_name2num_n, .-ossl_namemap_name2num_n
	.type	do_num2name, @function
do_num2name:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L70
.L68:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L70:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	do_num2name, .-do_num2name
	.globl	ossl_namemap_num2name
	.type	ossl_namemap_num2name, @function
ossl_namemap_num2name:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	do_num2name(%rip), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_namemap_doall_names@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L74
.L72:
	movq	-8(%rbp), %rax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	ossl_namemap_num2name, .-ossl_namemap_num2name
	.type	namemap_add_name, @function
namemap_add_name:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	namemap_name2num
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L76
	movl	-12(%rbp), %eax
	jmp	.L77
.L76:
	leaq	.LC0(%rip), %rax
	movl	$257, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	movl	$0, %eax
	jmp	.L77
.L78:
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L84
	cmpl	$0, -28(%rbp)
	jne	.L81
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movl	$1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	addl	$1, %eax
	jmp	.L82
.L81:
	movl	-28(%rbp), %eax
.L82:
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_NAMENUM_ENTRY_insert
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_NAMENUM_ENTRY_error
	testl	%eax, %eax
	jne	.L85
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L77
.L84:
	nop
	jmp	.L80
.L85:
	nop
.L80:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	namenum_free
	movl	$0, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	namemap_add_name, .-namemap_add_name
	.globl	ossl_namemap_add_name
	.type	ossl_namemap_add_name, @function
ossl_namemap_add_name:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L87
	movl	$0, %edi
	call	ossl_namemap_stored@PLT
	movq	%rax, -24(%rbp)
.L87:
	cmpq	$0, -40(%rbp)
	je	.L88
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L88
	cmpq	$0, -24(%rbp)
	jne	.L89
.L88:
	movl	$0, %eax
	jmp	.L90
.L89:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L90
.L91:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	namemap_add_name
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	ossl_namemap_add_name, .-ossl_namemap_add_name
	.section	.rodata
	.align 8
.LC1:
	.string	"\"%s\" has an existing different identity %d (from \"%s\")"
	.align 8
.LC2:
	.string	"Got number %d when expecting %d"
	.text
	.globl	ossl_namemap_add_names
	.type	ossl_namemap_add_names, @function
ossl_namemap_add_names:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, %eax
	movb	%al, -80(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L93
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$304, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L93:
	leaq	.LC0(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$308, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L94
.L95:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L96
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$312, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L94
.L96:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L97
.L104:
	movsbl	-80(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L98
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L99
.L98:
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
.L99:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L100
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$332, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -76(%rbp)
	jmp	.L101
.L100:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	namemap_name2num
	movl	%eax, -52(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L102
	movl	-52(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.L103
.L102:
	cmpl	$0, -52(%rbp)
	je	.L103
	movl	-52(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.L103
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$342, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rsi
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$118, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -76(%rbp)
	jmp	.L101
.L103:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L97:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L104
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L105
.L108:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	namemap_add_name
	movl	%eax, -36(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L106
	movl	-36(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.L107
.L106:
	movl	-36(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.L107
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$361, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-76(%rbp), %ecx
	movl	-36(%rbp), %eax
	leaq	.LC2(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -76(%rbp)
	jmp	.L101
.L107:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L105:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L108
	nop
.L101:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$371, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-76(%rbp), %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	ossl_namemap_add_names, .-ossl_namemap_add_names
	.type	get_legacy_evp_names, @function
get_legacy_evp_names:
.LFB436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L110
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -4(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -4(%rbp)
.L110:
	cmpl	$0, -88(%rbp)
	je	.L111
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -4(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -4(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L111
	movq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$1, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jle	.L111
	leaq	-80(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -4(%rbp)
.L111:
	cmpq	$0, -96(%rbp)
	je	.L114
	movq	-96(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_namemap_add_name@PLT
	movl	%eax, -4(%rbp)
.L114:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	get_legacy_evp_names, .-get_legacy_evp_names
	.type	get_legacy_cipher_names, @function
get_legacy_cipher_names:
.LFB437:
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
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L117
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_type@PLT
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %edi
	call	get_legacy_evp_names
.L117:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	get_legacy_cipher_names, .-get_legacy_cipher_names
	.type	get_legacy_md_names, @function
get_legacy_md_names:
.LFB438:
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
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L120
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %edi
	call	get_legacy_evp_names
.L120:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	get_legacy_md_names, .-get_legacy_md_names
	.section	.rodata
.LC3:
	.string	"DHX"
	.text
	.type	get_legacy_pkey_meth_names, @function
get_legacy_pkey_meth_names:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	leaq	-4(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_get0_info@PLT
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L126
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L123
	movl	-4(%rbp), %eax
	cmpl	$920, %eax
	jne	.L124
	movl	-4(%rbp), %eax
	movq	-48(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	call	get_legacy_evp_names
.L124:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, %esi
	movl	$0, %edi
	call	get_legacy_evp_names
	jmp	.L126
.L123:
	movl	-4(%rbp), %eax
	cmpl	$1172, %eax
	jne	.L125
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, %esi
	movl	$0, %edi
	call	get_legacy_evp_names
	nop
	jmp	.L126
.L125:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, %edi
	call	get_legacy_evp_names
.L126:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	get_legacy_pkey_meth_names, .-get_legacy_pkey_meth_names
	.globl	ossl_namemap_stored
	.type	ossl_namemap_stored, @function
ossl_namemap_stored:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L128
	movl	$0, %eax
	jmp	.L129
.L128:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_empty@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L130
	movl	$0, %eax
	jmp	.L129
.L130:
	cmpl	$1, -20(%rbp)
	jne	.L131
	movl	$0, %esi
	movl	$12, %edi
	call	OPENSSL_init_crypto@PLT
	movq	-16(%rbp), %rax
	leaq	get_legacy_cipher_names(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	call	OBJ_NAME_do_all@PLT
	movq	-16(%rbp), %rax
	leaq	get_legacy_md_names(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$1, %edi
	call	OBJ_NAME_do_all@PLT
	movl	$0, -4(%rbp)
	call	EVP_PKEY_asn1_get_count@PLT
	movl	%eax, -24(%rbp)
	jmp	.L132
.L133:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_asn1_get0@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	get_legacy_pkey_meth_names
	addl	$1, -4(%rbp)
.L132:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L133
.L131:
	movq	-16(%rbp), %rax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	ossl_namemap_stored, .-ossl_namemap_stored
	.globl	ossl_namemap_new
	.type	ossl_namemap_new, @function
ossl_namemap_new:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$515, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L135
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L135
	leaq	namenum_cmp(%rip), %rdx
	leaq	namenum_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_NAMENUM_ENTRY_new
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L135
	movq	-8(%rbp), %rax
	jmp	.L136
.L135:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_free@PLT
	movl	$0, %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	ossl_namemap_new, .-ossl_namemap_new
	.globl	ossl_namemap_free
	.type	ossl_namemap_free, @function
ossl_namemap_free:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L141
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L141
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	namenum_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_NAMENUM_ENTRY_doall
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_NAMENUM_ENTRY_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$534, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L137
.L141:
	nop
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	ossl_namemap_free, .-ossl_namemap_free
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ossl_namemap_add_names"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
