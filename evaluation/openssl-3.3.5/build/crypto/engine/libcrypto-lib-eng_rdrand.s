	.file	"eng_rdrand.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB499:
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
.LFE499:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB500:
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
.LFE500:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	get_random_bytes, @function
get_random_bytes:
.LFB515:
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
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_ia32_rdrand_bytes@PLT
	cmpq	%rax, %rbx
	sete	%al
	movzbl	%al, %eax
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	get_random_bytes, .-get_random_bytes
	.type	random_status, @function
random_status:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	random_status, .-random_status
	.section	.data.rel.local,"aw"
	.align 32
	.type	rdrand_meth, @object
	.size	rdrand_meth, 48
rdrand_meth:
	.quad	0
	.quad	get_random_bytes
	.quad	0
	.quad	0
	.quad	get_random_bytes
	.quad	random_status
	.text
	.type	rdrand_init, @function
rdrand_init:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	rdrand_init, .-rdrand_init
	.section	.rodata
.LC0:
	.string	"rdrand"
	.section	.data.rel.local
	.align 8
	.type	engine_e_rdrand_id, @object
	.size	engine_e_rdrand_id, 8
engine_e_rdrand_id:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"Intel RDRAND engine"
	.section	.data.rel.local
	.align 8
	.type	engine_e_rdrand_name, @object
	.size	engine_e_rdrand_name, 8
engine_e_rdrand_name:
	.quad	.LC1
	.text
	.type	bind_helper, @function
bind_helper:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	engine_e_rdrand_id(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	je	.L13
	movq	engine_e_rdrand_name(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ENGINE_set_flags@PLT
	testl	%eax, %eax
	je	.L13
	leaq	rdrand_init(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_init_function@PLT
	testl	%eax, %eax
	je	.L13
	leaq	rdrand_meth(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_RAND@PLT
	testl	%eax, %eax
	jne	.L14
.L13:
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	bind_helper, .-bind_helper
	.type	ENGINE_rdrand, @function
ENGINE_rdrand:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ENGINE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bind_helper
	testl	%eax, %eax
	jne	.L19
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movl	$0, %eax
	jmp	.L18
.L19:
	movq	-8(%rbp), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ENGINE_rdrand, .-ENGINE_rdrand
	.globl	engine_load_rdrand_int
	.type	engine_load_rdrand_int, @function
engine_load_rdrand_int:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L20
	call	ENGINE_rdrand
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L23
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	call	ERR_pop_to_mark@PLT
	jmp	.L20
.L23:
	nop
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	engine_load_rdrand_int, .-engine_load_rdrand_int
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
