	.file	"bss_log.c"
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
	.section	.rodata
.LC0:
	.string	"syslog"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_slg, @object
	.size	methods_slg, 112
methods_slg:
	.long	1025
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	slg_write
	.quad	0
	.quad	0
	.quad	slg_puts
	.quad	0
	.quad	slg_ctrl
	.quad	slg_new
	.quad	slg_free
	.quad	0
	.zero	16
	.text
	.globl	BIO_s_log
	.type	BIO_s_log, @function
BIO_s_log:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_slg(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_s_log, .-BIO_s_log
	.section	.rodata
.LC1:
	.string	"application"
	.text
	.type	slg_new, @function
slg_new:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xopenlog
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	slg_new, .-slg_new
	.type	slg_free, @function
slg_free:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xcloselog
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	slg_free, .-slg_free
	.section	.rodata
.LC2:
	.string	"../crypto/bio/bss_log.c"
	.text
	.type	slg_write, @function
slg_write:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movl	-52(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	.LC2(%rip), %rcx
	movl	$202, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L14
.L15:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$0, -4(%rbp)
	jmp	.L16
.L17:
	addl	$1, -4(%rbp)
.L16:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	mapping.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	mapping.0(%rip), %rdx
	addq	%rdx, %rax
	leaq	4(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L17
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	16+mapping.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	mapping.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	xsyslog
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$215, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-8(%rbp), %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	slg_write, .-slg_write
	.type	slg_ctrl, @function
slg_ctrl:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$4, -12(%rbp)
	jne	.L22
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xcloselog
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xopenlog
	jmp	.L20
.L22:
	nop
.L20:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	slg_ctrl, .-slg_ctrl
	.type	slg_puts, @function
slg_puts:
.LFB170:
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
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	slg_write
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	slg_puts, .-slg_puts
	.type	xopenlog, @function
xopenlog:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	openlog@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	xopenlog, .-xopenlog
	.section	.rodata
.LC3:
	.string	"%s"
	.text
	.type	xsyslog, @function
xsyslog:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movl	-12(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	syslog@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	xsyslog, .-xsyslog
	.type	xcloselog, @function
xcloselog:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	closelog@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	xcloselog, .-xcloselog
	.section	.rodata
	.align 32
	.type	mapping.0, @object
	.size	mapping.0, 400
mapping.0:
	.long	6
	.string	"PANIC "
	.zero	3
	.zero	2
	.long	0
	.long	6
	.string	"EMERG "
	.zero	3
	.zero	2
	.long	0
	.long	4
	.string	"EMR "
	.zero	5
	.zero	2
	.long	0
	.long	6
	.string	"ALERT "
	.zero	3
	.zero	2
	.long	1
	.long	4
	.string	"ALR "
	.zero	5
	.zero	2
	.long	1
	.long	5
	.string	"CRIT "
	.zero	4
	.zero	2
	.long	2
	.long	4
	.string	"CRI "
	.zero	5
	.zero	2
	.long	2
	.long	6
	.string	"ERROR "
	.zero	3
	.zero	2
	.long	3
	.long	4
	.string	"ERR "
	.zero	5
	.zero	2
	.long	3
	.long	8
	.string	"WARNING "
	.zero	1
	.zero	2
	.long	4
	.long	5
	.string	"WARN "
	.zero	4
	.zero	2
	.long	4
	.long	4
	.string	"WAR "
	.zero	5
	.zero	2
	.long	4
	.long	7
	.string	"NOTICE "
	.zero	2
	.zero	2
	.long	5
	.long	5
	.string	"NOTE "
	.zero	4
	.zero	2
	.long	5
	.long	4
	.string	"NOT "
	.zero	5
	.zero	2
	.long	5
	.long	5
	.string	"INFO "
	.zero	4
	.zero	2
	.long	6
	.long	4
	.string	"INF "
	.zero	5
	.zero	2
	.long	6
	.long	6
	.string	"DEBUG "
	.zero	3
	.zero	2
	.long	7
	.long	4
	.string	"DBG "
	.zero	5
	.zero	2
	.long	7
	.long	0
	.string	""
	.zero	9
	.zero	2
	.long	3
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
