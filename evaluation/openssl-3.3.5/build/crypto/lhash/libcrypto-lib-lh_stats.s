	.file	"lh_stats.c"
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
	.globl	OPENSSL_LH_stats
	.type	OPENSSL_LH_stats, @function
OPENSSL_LH_stats:
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
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_stats_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L5
.L8:
	nop
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	OPENSSL_LH_stats, .-OPENSSL_LH_stats
	.globl	OPENSSL_LH_node_stats
	.type	OPENSSL_LH_node_stats, @function
OPENSSL_LH_node_stats:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_node_stats_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L9
.L12:
	nop
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	OPENSSL_LH_node_stats, .-OPENSSL_LH_node_stats
	.globl	OPENSSL_LH_node_usage_stats
	.type	OPENSSL_LH_node_usage_stats, @function
OPENSSL_LH_node_usage_stats:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L16
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_node_usage_stats_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L13
.L16:
	nop
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	OPENSSL_LH_node_usage_stats, .-OPENSSL_LH_node_usage_stats
	.section	.rodata
.LC0:
	.string	"num_items             = %lu\n"
.LC1:
	.string	"num_nodes             = %u\n"
.LC2:
	.string	"num_alloc_nodes       = %u\n"
.LC3:
	.string	"num_expands           = 0\n"
.LC4:
	.string	"num_expand_reallocs   = 0\n"
.LC5:
	.string	"num_contracts         = 0\n"
.LC6:
	.string	"num_contract_reallocs = 0\n"
.LC7:
	.string	"num_hash_calls        = 0\n"
.LC8:
	.string	"num_comp_calls        = 0\n"
.LC9:
	.string	"num_insert            = 0\n"
.LC10:
	.string	"num_replace           = 0\n"
.LC11:
	.string	"num_delete            = 0\n"
.LC12:
	.string	"num_no_delete         = 0\n"
.LC13:
	.string	"num_retrieve          = 0\n"
.LC14:
	.string	"num_retrieve_miss     = 0\n"
.LC15:
	.string	"num_hash_comps        = 0\n"
	.text
	.globl	OPENSSL_LH_stats_bio
	.type	OPENSSL_LH_stats_bio, @function
OPENSSL_LH_stats_bio:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	movl	60(%rax), %edx
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC3(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC4(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC5(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC6(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC7(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC8(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC9(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC10(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC11(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC12(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC13(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC14(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC15(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	OPENSSL_LH_stats_bio, .-OPENSSL_LH_stats_bio
	.section	.rodata
.LC16:
	.string	"node %6u -> %3u\n"
	.text
	.globl	OPENSSL_LH_node_stats_bio
	.type	OPENSSL_LH_node_stats_bio, @function
OPENSSL_LH_node_stats_bio:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L19
.L22:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L20
.L21:
	addl	$1, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L20:
	cmpq	$0, -8(%rbp)
	jne	.L21
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	leaq	.LC16(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -12(%rbp)
.L19:
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jb	.L22
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	OPENSSL_LH_node_stats_bio, .-OPENSSL_LH_node_stats_bio
	.section	.rodata
.LC17:
	.string	"%lu nodes used out of %u\n"
.LC18:
	.string	"%lu items\n"
	.align 8
.LC19:
	.string	"load %d.%02d  actual load %d.%02d\n"
	.text
	.globl	OPENSSL_LH_node_usage_stats_bio
	.type	OPENSSL_LH_node_usage_stats_bio, @function
OPENSSL_LH_node_usage_stats_bio:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L24
.L28:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L25
.L26:
	addq	$1, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L25:
	cmpq	$0, -8(%rbp)
	jne	.L26
	cmpq	$0, -16(%rbp)
	je	.L27
	addq	$1, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -32(%rbp)
.L27:
	addl	$1, -20(%rbp)
.L24:
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jb	.L28
	movq	-56(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-40(%rbp), %rdx
	leaq	.LC17(%rip), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rdx
	leaq	.LC18(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -40(%rbp)
	je	.L31
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movq	%rdx, %rax
	imulq	$100, %rax, %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movl	%eax, %r8d
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	-40(%rbp)
	movl	%eax, %edi
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	imulq	$100, %rax, %rax
	movq	-56(%rbp), %rdx
	movl	56(%rdx), %edx
	movl	%edx, %esi
	movl	$0, %edx
	divq	%rsi
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movl	%eax, %edx
	leaq	.LC19(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L23
.L31:
	nop
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	OPENSSL_LH_node_usage_stats_bio, .-OPENSSL_LH_node_usage_stats_bio
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
