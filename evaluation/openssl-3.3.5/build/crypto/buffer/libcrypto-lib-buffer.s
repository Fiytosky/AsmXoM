	.file	"buffer.c"
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
	.globl	BUF_MEM_new_ex
	.type	BUF_MEM_new_ex, @function
BUF_MEM_new_ex:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L6:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	BUF_MEM_new_ex, .-BUF_MEM_new_ex
	.section	.rodata
.LC0:
	.string	"../crypto/buffer/buffer.c"
	.text
	.globl	BUF_MEM_new
	.type	BUF_MEM_new, @function
BUF_MEM_new:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$35, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BUF_MEM_new, .-BUF_MEM_new
	.globl	BUF_MEM_free
	.type	BUF_MEM_free, @function
BUF_MEM_free:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L16
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L15
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$47, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	jmp	.L14
.L15:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$49, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L14:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L11
.L16:
	nop
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BUF_MEM_free, .-BUF_MEM_free
	.type	sec_alloc_realloc, @function
sec_alloc_realloc:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L18
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$64, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L18:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	sec_alloc_realloc, .-sec_alloc_realloc
	.globl	BUF_MEM_grow
	.type	BUF_MEM_grow, @function
BUF_MEM_grow:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L21
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	jmp	.L22
.L21:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L23
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L24:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	jmp	.L22
.L23:
	cmpq	$1610612732, -32(%rbp)
	jbe	.L25
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L25:
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	salq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L26
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sec_alloc_realloc
	movq	%rax, -8(%rbp)
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rsi
	movl	$95, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -8(%rbp)
.L27:
	cmpq	$0, -8(%rbp)
	jne	.L28
	movq	$0, -32(%rbp)
	jmp	.L29
.L28:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L29:
	movq	-32(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BUF_MEM_grow, .-BUF_MEM_grow
	.globl	BUF_MEM_grow_clean
	.type	BUF_MEM_grow_clean, @function
BUF_MEM_grow_clean:
.LFB165:
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
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L31
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
.L32:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	jmp	.L33
.L31:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L34
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	jmp	.L33
.L34:
	cmpq	$1610612732, -32(%rbp)
	jbe	.L35
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L35:
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	salq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L36
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sec_alloc_realloc
	movq	%rax, -8(%rbp)
	jmp	.L37
.L36:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rdx
	movl	$132, %r8d
	movq	%rax, %rdi
	call	CRYPTO_clear_realloc@PLT
	movq	%rax, -8(%rbp)
.L37:
	cmpq	$0, -8(%rbp)
	jne	.L38
	movq	$0, -32(%rbp)
	jmp	.L39
.L38:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L39:
	movq	-32(%rbp), %rax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BUF_MEM_grow_clean, .-BUF_MEM_grow_clean
	.globl	BUF_reverse
	.type	BUF_reverse, @function
BUF_reverse:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L41
	movq	-56(%rbp), %rax
	subq	$1, %rax
	addq	%rax, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L42
.L43:
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L42:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L43
	jmp	.L47
.L41:
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L45
.L46:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	-17(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L45:
	movq	-56(%rbp), %rax
	shrq	%rax
	cmpq	%rax, -8(%rbp)
	jb	.L46
.L47:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BUF_reverse, .-BUF_reverse
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"BUF_MEM_grow"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"BUF_MEM_grow_clean"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
