	.file	"x509_meth.c"
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
	.string	"../crypto/x509/x509_meth.c"
	.text
	.globl	X509_LOOKUP_meth_new
	.type	X509_LOOKUP_meth_new, @function
X509_LOOKUP_meth_new:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$22, %edx
	movq	%rax, %rsi
	movl	$96, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$25, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L10
.L6:
	movq	-8(%rbp), %rax
	jmp	.L8
.L10:
	nop
.L7:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$33, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	X509_LOOKUP_meth_new, .-X509_LOOKUP_meth_new
	.globl	X509_LOOKUP_meth_free
	.type	X509_LOOKUP_meth_free, @function
X509_LOOKUP_meth_free:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L12:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$41, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	X509_LOOKUP_meth_free, .-X509_LOOKUP_meth_free
	.globl	X509_LOOKUP_meth_set_new_item
	.type	X509_LOOKUP_meth_set_new_item, @function
X509_LOOKUP_meth_set_new_item:
.LFB591:
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
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	X509_LOOKUP_meth_set_new_item, .-X509_LOOKUP_meth_set_new_item
	.globl	X509_LOOKUP_meth_get_new_item
	.type	X509_LOOKUP_meth_get_new_item, @function
X509_LOOKUP_meth_get_new_item:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	X509_LOOKUP_meth_get_new_item, .-X509_LOOKUP_meth_get_new_item
	.globl	X509_LOOKUP_meth_set_free
	.type	X509_LOOKUP_meth_set_free, @function
X509_LOOKUP_meth_set_free:
.LFB593:
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
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	X509_LOOKUP_meth_set_free, .-X509_LOOKUP_meth_set_free
	.globl	X509_LOOKUP_meth_get_free
	.type	X509_LOOKUP_meth_get_free, @function
X509_LOOKUP_meth_get_free:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	X509_LOOKUP_meth_get_free, .-X509_LOOKUP_meth_get_free
	.globl	X509_LOOKUP_meth_set_init
	.type	X509_LOOKUP_meth_set_init, @function
X509_LOOKUP_meth_set_init:
.LFB595:
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
	movq	%rdx, 24(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	X509_LOOKUP_meth_set_init, .-X509_LOOKUP_meth_set_init
	.globl	X509_LOOKUP_meth_get_init
	.type	X509_LOOKUP_meth_get_init, @function
X509_LOOKUP_meth_get_init:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	X509_LOOKUP_meth_get_init, .-X509_LOOKUP_meth_get_init
	.globl	X509_LOOKUP_meth_set_shutdown
	.type	X509_LOOKUP_meth_set_shutdown, @function
X509_LOOKUP_meth_set_shutdown:
.LFB597:
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
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	X509_LOOKUP_meth_set_shutdown, .-X509_LOOKUP_meth_set_shutdown
	.globl	X509_LOOKUP_meth_get_shutdown
	.type	X509_LOOKUP_meth_get_shutdown, @function
X509_LOOKUP_meth_get_shutdown:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	X509_LOOKUP_meth_get_shutdown, .-X509_LOOKUP_meth_get_shutdown
	.globl	X509_LOOKUP_meth_set_ctrl
	.type	X509_LOOKUP_meth_set_ctrl, @function
X509_LOOKUP_meth_set_ctrl:
.LFB599:
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
	movq	%rdx, 40(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	X509_LOOKUP_meth_set_ctrl, .-X509_LOOKUP_meth_set_ctrl
	.globl	X509_LOOKUP_meth_get_ctrl
	.type	X509_LOOKUP_meth_get_ctrl, @function
X509_LOOKUP_meth_get_ctrl:
.LFB600:
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
.LFE600:
	.size	X509_LOOKUP_meth_get_ctrl, .-X509_LOOKUP_meth_get_ctrl
	.globl	X509_LOOKUP_meth_set_get_by_subject
	.type	X509_LOOKUP_meth_set_get_by_subject, @function
X509_LOOKUP_meth_set_get_by_subject:
.LFB601:
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
	movq	%rdx, 48(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	X509_LOOKUP_meth_set_get_by_subject, .-X509_LOOKUP_meth_set_get_by_subject
	.globl	X509_LOOKUP_meth_get_get_by_subject
	.type	X509_LOOKUP_meth_get_get_by_subject, @function
X509_LOOKUP_meth_get_get_by_subject:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	X509_LOOKUP_meth_get_get_by_subject, .-X509_LOOKUP_meth_get_get_by_subject
	.globl	X509_LOOKUP_meth_set_get_by_issuer_serial
	.type	X509_LOOKUP_meth_set_get_by_issuer_serial, @function
X509_LOOKUP_meth_set_get_by_issuer_serial:
.LFB603:
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
	movq	%rdx, 56(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	X509_LOOKUP_meth_set_get_by_issuer_serial, .-X509_LOOKUP_meth_set_get_by_issuer_serial
	.globl	X509_LOOKUP_meth_get_get_by_issuer_serial
	.type	X509_LOOKUP_meth_get_get_by_issuer_serial, @function
X509_LOOKUP_meth_get_get_by_issuer_serial:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	X509_LOOKUP_meth_get_get_by_issuer_serial, .-X509_LOOKUP_meth_get_get_by_issuer_serial
	.globl	X509_LOOKUP_meth_set_get_by_fingerprint
	.type	X509_LOOKUP_meth_set_get_by_fingerprint, @function
X509_LOOKUP_meth_set_get_by_fingerprint:
.LFB605:
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
	movq	%rdx, 64(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	X509_LOOKUP_meth_set_get_by_fingerprint, .-X509_LOOKUP_meth_set_get_by_fingerprint
	.globl	X509_LOOKUP_meth_get_get_by_fingerprint
	.type	X509_LOOKUP_meth_get_get_by_fingerprint, @function
X509_LOOKUP_meth_get_get_by_fingerprint:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	X509_LOOKUP_meth_get_get_by_fingerprint, .-X509_LOOKUP_meth_get_get_by_fingerprint
	.globl	X509_LOOKUP_meth_set_get_by_alias
	.type	X509_LOOKUP_meth_set_get_by_alias, @function
X509_LOOKUP_meth_set_get_by_alias:
.LFB607:
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
	movq	%rdx, 72(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	X509_LOOKUP_meth_set_get_by_alias, .-X509_LOOKUP_meth_set_get_by_alias
	.globl	X509_LOOKUP_meth_get_get_by_alias
	.type	X509_LOOKUP_meth_get_get_by_alias, @function
X509_LOOKUP_meth_get_get_by_alias:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	X509_LOOKUP_meth_get_get_by_alias, .-X509_LOOKUP_meth_get_get_by_alias
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
