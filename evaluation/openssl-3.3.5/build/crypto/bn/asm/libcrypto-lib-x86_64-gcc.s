	.file	"x86_64-gcc.c"
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
	.globl	bn_mul_add_words
	.type	bn_mul_add_words, @function
bn_mul_add_words:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L8
	movq	-24(%rbp), %rax
	jmp	.L7
.L9:
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
#APP
# 119 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 119 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rbx, %rax
	movq	%rax, %rdx
#APP
# 119 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,(%rcx); adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, -24(%rbp)
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 120 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 120 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rbx, %rdx
#APP
# 120 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rcx,(%rax); adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, %rbx
	movq	%rbx, -24(%rbp)
	movq	-48(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 121 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 121 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rbx, %rdx
#APP
# 121 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rcx,(%rax); adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, %rbx
	movq	%rbx, -24(%rbp)
	movq	-48(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 122 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 122 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	-24(%rbp), %rcx
	movq	%rbx, %rdx
#APP
# 122 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rcx,(%rax); adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, %rbx
	movq	%rbx, -24(%rbp)
	addq	$32, -48(%rbp)
	addq	$32, -40(%rbp)
	subl	$4, -52(%rbp)
.L8:
	movl	-52(%rbp), %eax
	cmpl	$3, %eax
	ja	.L9
	cmpl	$0, -52(%rbp)
	je	.L10
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
#APP
# 128 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 128 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rbx, %rax
	movq	%rax, %rdx
#APP
# 128 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,(%rcx); adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, %rax
	movq	%rax, %rbx
	movq	%rbx, -24(%rbp)
	subl	$1, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L11
	movq	-24(%rbp), %rax
	jmp	.L7
.L11:
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 131 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 131 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rbx, %rdx
#APP
# 131 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rcx,(%rax); adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, %rbx
	movq	%rbx, -24(%rbp)
	subl	$1, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L12
	movq	-24(%rbp), %rax
	jmp	.L7
.L12:
	movq	-48(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 134 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 134 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rcx
	movq	%rbx, %rdx
#APP
# 134 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rcx,(%rax); adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rdx, %rbx
	movq	%rbx, -24(%rbp)
	movq	-24(%rbp), %rax
	jmp	.L7
.L10:
	movq	-24(%rbp), %rax
.L7:
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	bn_mul_add_words, .-bn_mul_add_words
	.globl	bn_mul_words
	.type	bn_mul_words, @function
bn_mul_words:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L16
	movq	-24(%rbp), %rax
	jmp	.L15
.L17:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 149 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rdx
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 149 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	%rbx, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 150 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rdx
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 150 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	%rbx, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 151 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rdx
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 151 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	%rbx, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 152 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rdx
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 152 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	%rbx, -24(%rbp)
	addq	$32, -48(%rbp)
	addq	$32, -40(%rbp)
	subl	$4, -52(%rbp)
.L16:
	movl	-52(%rbp), %eax
	cmpl	$3, %eax
	ja	.L17
	cmpl	$0, -52(%rbp)
	je	.L18
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 158 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rdx
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 158 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	%rbx, -24(%rbp)
	subl	$1, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L19
	movq	-24(%rbp), %rax
	jmp	.L15
.L19:
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 161 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rdx
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 161 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	%rbx, -24(%rbp)
	subl	$1, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L20
	movq	-24(%rbp), %rax
	jmp	.L15
.L20:
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
#APP
# 164 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rdx
# 0 "" 2
#NO_APP
	movq	%rax, %r12
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rax
#APP
# 164 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rax,%rcx; adcq $0,%rdx
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rbx
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	%rbx, -24(%rbp)
.L18:
	movq	-24(%rbp), %rax
.L15:
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	bn_mul_words, .-bn_mul_words
	.globl	bn_sqr_words
	.type	bn_sqr_words, @function
bn_sqr_words:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L28
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
#APP
# 175 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	%rdx, (%rsi)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
#APP
# 176 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, (%rsi)
	movq	%rdx, (%rcx)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
#APP
# 177 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, (%rsi)
	movq	%rdx, (%rcx)
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
#APP
# 178 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, (%rsi)
	movq	%rdx, (%rcx)
	addq	$32, -16(%rbp)
	addq	$64, -8(%rbp)
	subl	$4, -20(%rbp)
.L24:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	ja	.L25
	cmpl	$0, -20(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
#APP
# 184 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	%rdx, (%rsi)
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
#APP
# 187 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, (%rsi)
	movq	%rdx, (%rcx)
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
#APP
# 190 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, (%rsi)
	movq	%rdx, (%rcx)
	jmp	.L21
.L28:
	nop
	jmp	.L21
.L29:
	nop
	jmp	.L21
.L30:
	nop
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	bn_sqr_words, .-bn_sqr_words
	.globl	bn_div_words
	.type	bn_div_words, @function
bn_div_words:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
#APP
# 198 "../crypto/bn/asm/x86_64-gcc.c" 1
	divq      %rcx
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	bn_div_words, .-bn_div_words
	.globl	bn_add_words
	.type	bn_add_words, @function
bn_add_words:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
#APP
# 214 "../crypto/bn/asm/x86_64-gcc.c" 1
	       subq    %r9,%r9           
       jmp     1f              
.p2align 4                     
1:     movq    (%rdi,%rax,8),%r9    
       adcq    (%r8,%rax,8),%r9    
       movq    %r9,(%rsi,%rax,8)    
       lea     1(%rax),%rax        
       dec     %ecx              
       jnz     1b              
       sbbq    %r9,%r9           

# 0 "" 2
#NO_APP
	movl	%ecx, %edx
	movq	%r9, -16(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	andl	$1, %eax
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	bn_add_words, .-bn_add_words
	.globl	bn_sub_words
	.type	bn_sub_words, @function
bn_sub_words:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %ecx
#APP
# 241 "../crypto/bn/asm/x86_64-gcc.c" 1
	       subq    %r9,%r9           
       jmp     1f              
.p2align 4                     
1:     movq    (%rdi,%rax,8),%r9    
       sbbq    (%r8,%rax,8),%r9    
       movq    %r9,(%rsi,%rax,8)    
       lea     1(%rax),%rax        
       dec     %ecx              
       jnz     1b              
       sbbq    %r9,%r9           

# 0 "" 2
#NO_APP
	movl	%ecx, %edx
	movq	%r9, -16(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	andl	$1, %eax
.L38:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	bn_sub_words, .-bn_sub_words
	.globl	bn_mul_comba8
	.type	bn_mul_comba8, @function
bn_mul_comba8:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$960, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%rsi, -1072(%rbp)
	movq	%rdx, -1080(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
#APP
# 400 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 400 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1064(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$8, %rdx
#APP
# 403 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 403 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
#APP
# 404 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 404 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1064(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
#APP
# 407 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 407 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$8, %rdx
#APP
# 408 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 408 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$16, %rdx
#APP
# 409 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 409 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1064(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$24, %rdx
#APP
# 412 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 412 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$16, %rdx
#APP
# 413 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 413 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$8, %rdx
#APP
# 414 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 414 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
#APP
# 415 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 415 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1064(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
#APP
# 418 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-192(%rbp), %rsi
	movq	-200(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 418 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$8, %rdx
#APP
# 419 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-208(%rbp), %rsi
	movq	-216(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 419 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$16, %rdx
#APP
# 420 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 420 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$24, %rdx
#APP
# 421 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 421 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$32, %rdx
#APP
# 422 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 422 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1064(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$40, %rdx
#APP
# 425 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 425 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$32, %rdx
#APP
# 426 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 426 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$24, %rdx
#APP
# 427 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 427 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$16, %rdx
#APP
# 428 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	-320(%rbp), %rsi
	movq	-328(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 428 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$8, %rdx
#APP
# 429 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 429 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
#APP
# 430 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	-352(%rbp), %rsi
	movq	-360(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 430 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1064(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
#APP
# 433 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	-368(%rbp), %rsi
	movq	-376(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 433 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$8, %rdx
#APP
# 434 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	-384(%rbp), %rsi
	movq	-392(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 434 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$16, %rdx
#APP
# 435 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 435 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$24, %rdx
#APP
# 436 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -416(%rbp)
	movq	%rdx, -424(%rbp)
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 436 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$32, %rdx
#APP
# 437 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movq	-432(%rbp), %rsi
	movq	-440(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 437 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$40, %rdx
#APP
# 438 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -448(%rbp)
	movq	%rdx, -456(%rbp)
	movq	-448(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 438 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$48, %rdx
#APP
# 439 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -464(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-464(%rbp), %rsi
	movq	-472(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 439 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1064(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$56, %rdx
#APP
# 442 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -480(%rbp)
	movq	%rdx, -488(%rbp)
	movq	-480(%rbp), %rsi
	movq	-488(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 442 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$48, %rdx
#APP
# 443 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -496(%rbp)
	movq	%rdx, -504(%rbp)
	movq	-496(%rbp), %rsi
	movq	-504(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 443 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$40, %rdx
#APP
# 444 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -512(%rbp)
	movq	%rdx, -520(%rbp)
	movq	-512(%rbp), %rsi
	movq	-520(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 444 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$32, %rdx
#APP
# 445 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -528(%rbp)
	movq	%rdx, -536(%rbp)
	movq	-528(%rbp), %rsi
	movq	-536(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 445 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$24, %rdx
#APP
# 446 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	-544(%rbp), %rsi
	movq	-552(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 446 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$16, %rdx
#APP
# 447 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -560(%rbp)
	movq	%rdx, -568(%rbp)
	movq	-560(%rbp), %rsi
	movq	-568(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 447 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$8, %rdx
#APP
# 448 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -576(%rbp)
	movq	%rdx, -584(%rbp)
	movq	-576(%rbp), %rsi
	movq	-584(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 448 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
#APP
# 449 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rsi
	movq	-600(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 449 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1064(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$8, %rdx
#APP
# 452 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -608(%rbp)
	movq	%rdx, -616(%rbp)
	movq	-608(%rbp), %rsi
	movq	-616(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 452 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$16, %rdx
#APP
# 453 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -624(%rbp)
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rsi
	movq	-632(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 453 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$24, %rdx
#APP
# 454 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -640(%rbp)
	movq	%rdx, -648(%rbp)
	movq	-640(%rbp), %rsi
	movq	-648(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 454 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$32, %rdx
#APP
# 455 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -656(%rbp)
	movq	%rdx, -664(%rbp)
	movq	-656(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 455 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$40, %rdx
#APP
# 456 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -672(%rbp)
	movq	%rdx, -680(%rbp)
	movq	-672(%rbp), %rsi
	movq	-680(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 456 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$48, %rdx
#APP
# 457 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -688(%rbp)
	movq	%rdx, -696(%rbp)
	movq	-688(%rbp), %rsi
	movq	-696(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 457 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$56, %rdx
#APP
# 458 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -704(%rbp)
	movq	%rdx, -712(%rbp)
	movq	-704(%rbp), %rsi
	movq	-712(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 458 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1064(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$56, %rdx
#APP
# 461 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -720(%rbp)
	movq	%rdx, -728(%rbp)
	movq	-720(%rbp), %rsi
	movq	-728(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 461 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$48, %rdx
#APP
# 462 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -736(%rbp)
	movq	%rdx, -744(%rbp)
	movq	-736(%rbp), %rsi
	movq	-744(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 462 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$40, %rdx
#APP
# 463 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -752(%rbp)
	movq	%rdx, -760(%rbp)
	movq	-752(%rbp), %rsi
	movq	-760(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 463 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$32, %rdx
#APP
# 464 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -768(%rbp)
	movq	%rdx, -776(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 464 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$24, %rdx
#APP
# 465 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -784(%rbp)
	movq	%rdx, -792(%rbp)
	movq	-784(%rbp), %rsi
	movq	-792(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 465 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$16, %rdx
#APP
# 466 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -800(%rbp)
	movq	%rdx, -808(%rbp)
	movq	-800(%rbp), %rsi
	movq	-808(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 466 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1064(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$24, %rdx
#APP
# 469 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -816(%rbp)
	movq	%rdx, -824(%rbp)
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 469 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$32, %rdx
#APP
# 470 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -832(%rbp)
	movq	%rdx, -840(%rbp)
	movq	-832(%rbp), %rsi
	movq	-840(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 470 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$40, %rdx
#APP
# 471 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -848(%rbp)
	movq	%rdx, -856(%rbp)
	movq	-848(%rbp), %rsi
	movq	-856(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 471 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$48, %rdx
#APP
# 472 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -864(%rbp)
	movq	%rdx, -872(%rbp)
	movq	-864(%rbp), %rsi
	movq	-872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 472 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$56, %rdx
#APP
# 473 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -880(%rbp)
	movq	%rdx, -888(%rbp)
	movq	-880(%rbp), %rsi
	movq	-888(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 473 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1064(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$56, %rdx
#APP
# 476 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -896(%rbp)
	movq	%rdx, -904(%rbp)
	movq	-896(%rbp), %rsi
	movq	-904(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 476 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$48, %rdx
#APP
# 477 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -912(%rbp)
	movq	%rdx, -920(%rbp)
	movq	-912(%rbp), %rsi
	movq	-920(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 477 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$40, %rdx
#APP
# 478 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -928(%rbp)
	movq	%rdx, -936(%rbp)
	movq	-928(%rbp), %rsi
	movq	-936(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 478 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$32, %rdx
#APP
# 479 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -944(%rbp)
	movq	%rdx, -952(%rbp)
	movq	-944(%rbp), %rsi
	movq	-952(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 479 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1064(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$40, %rdx
#APP
# 482 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -960(%rbp)
	movq	%rdx, -968(%rbp)
	movq	-960(%rbp), %rsi
	movq	-968(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 482 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$48, %rdx
#APP
# 483 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -976(%rbp)
	movq	%rdx, -984(%rbp)
	movq	-976(%rbp), %rsi
	movq	-984(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 483 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1072(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$56, %rdx
#APP
# 484 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -992(%rbp)
	movq	%rdx, -1000(%rbp)
	movq	-992(%rbp), %rsi
	movq	-1000(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 484 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-1064(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$56, %rdx
#APP
# 487 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -1008(%rbp)
	movq	%rdx, -1016(%rbp)
	movq	-1008(%rbp), %rsi
	movq	-1016(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 487 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1072(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$48, %rdx
#APP
# 488 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -1024(%rbp)
	movq	%rdx, -1032(%rbp)
	movq	-1024(%rbp), %rsi
	movq	-1032(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 488 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-1064(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-1072(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-1080(%rbp), %rdx
	addq	$56, %rdx
#APP
# 491 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -1040(%rbp)
	movq	%rdx, -1048(%rbp)
	movq	-1040(%rbp), %rsi
	movq	-1048(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 491 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-1064(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-1064(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	bn_mul_comba8, .-bn_mul_comba8
	.globl	bn_mul_comba4
	.type	bn_mul_comba4, @function
bn_mul_comba4:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
#APP
# 503 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 503 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-296(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$8, %rdx
#APP
# 506 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 506 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-304(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
#APP
# 507 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 507 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-296(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-304(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
#APP
# 510 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 510 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-304(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$8, %rdx
#APP
# 511 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 511 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$16, %rdx
#APP
# 512 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 512 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-296(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$24, %rdx
#APP
# 515 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 515 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-304(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$16, %rdx
#APP
# 516 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 516 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-304(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$8, %rdx
#APP
# 517 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 517 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-304(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
#APP
# 518 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 518 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-296(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-304(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$8, %rdx
#APP
# 521 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-192(%rbp), %rsi
	movq	-200(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 521 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-304(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$16, %rdx
#APP
# 522 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-208(%rbp), %rsi
	movq	-216(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 522 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-304(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$24, %rdx
#APP
# 523 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 523 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-296(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-304(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$24, %rdx
#APP
# 526 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 526 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-304(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$16, %rdx
#APP
# 527 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 527 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-296(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-304(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	addq	$24, %rdx
#APP
# 530 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 530 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-296(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-296(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	bn_mul_comba4, .-bn_mul_comba4
	.globl	bn_sqr_comba8
	.type	bn_sqr_comba8, @function
bn_sqr_comba8:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$504, %rsp
	movq	%rdi, -616(%rbp)
	movq	%rsi, -624(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-624(%rbp), %rax
	movq	(%rax), %rax
#APP
# 542 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 542 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-616(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
#APP
# 545 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 545 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 545 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-616(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
#APP
# 548 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 548 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
#APP
# 549 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 549 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 549 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-616(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
#APP
# 552 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 552 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 552 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$8, %rdx
#APP
# 553 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 553 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 553 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-616(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
#APP
# 556 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 556 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$8, %rdx
#APP
# 557 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 557 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 557 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
#APP
# 558 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 558 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 558 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-616(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
#APP
# 561 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 561 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 561 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$8, %rdx
#APP
# 562 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-192(%rbp), %rsi
	movq	-200(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 562 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-192(%rbp), %rsi
	movq	-200(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 562 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$16, %rdx
#APP
# 563 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-208(%rbp), %rsi
	movq	-216(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 563 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-208(%rbp), %rsi
	movq	-216(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 563 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-616(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
#APP
# 566 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 566 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$16, %rdx
#APP
# 567 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 567 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-240(%rbp), %rsi
	movq	-248(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 567 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$8, %rdx
#APP
# 568 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 568 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 568 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
#APP
# 569 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 569 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 569 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-616(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
#APP
# 572 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 572 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 572 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$8, %rdx
#APP
# 573 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 573 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 573 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$16, %rdx
#APP
# 574 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	-320(%rbp), %rsi
	movq	-328(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 574 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-320(%rbp), %rsi
	movq	-328(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 574 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$24, %rdx
#APP
# 575 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 575 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 575 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-616(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
#APP
# 578 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	-352(%rbp), %rsi
	movq	-360(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 578 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$24, %rdx
#APP
# 579 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	-368(%rbp), %rsi
	movq	-376(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 579 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-368(%rbp), %rsi
	movq	-376(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 579 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$16, %rdx
#APP
# 580 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	-384(%rbp), %rsi
	movq	-392(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 580 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-384(%rbp), %rsi
	movq	-392(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 580 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$8, %rdx
#APP
# 581 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 581 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 581 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-616(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$16, %rdx
#APP
# 584 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -416(%rbp)
	movq	%rdx, -424(%rbp)
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 584 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 584 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$24, %rdx
#APP
# 585 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movq	-432(%rbp), %rsi
	movq	-440(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 585 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-432(%rbp), %rsi
	movq	-440(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 585 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$32, %rdx
#APP
# 586 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -448(%rbp)
	movq	%rdx, -456(%rbp)
	movq	-448(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 586 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-448(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 586 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-616(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
#APP
# 589 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -464(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-464(%rbp), %rsi
	movq	-472(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 589 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$32, %rdx
#APP
# 590 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -480(%rbp)
	movq	%rdx, -488(%rbp)
	movq	-480(%rbp), %rsi
	movq	-488(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 590 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-480(%rbp), %rsi
	movq	-488(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 590 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$24, %rdx
#APP
# 591 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -496(%rbp)
	movq	%rdx, -504(%rbp)
	movq	-496(%rbp), %rsi
	movq	-504(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 591 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-496(%rbp), %rsi
	movq	-504(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 591 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-616(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$32, %rdx
#APP
# 594 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -512(%rbp)
	movq	%rdx, -520(%rbp)
	movq	-512(%rbp), %rsi
	movq	-520(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 594 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-512(%rbp), %rsi
	movq	-520(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 594 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$40, %rdx
#APP
# 595 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -528(%rbp)
	movq	%rdx, -536(%rbp)
	movq	-528(%rbp), %rsi
	movq	-536(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 595 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-528(%rbp), %rsi
	movq	-536(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 595 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-616(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
#APP
# 598 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	-544(%rbp), %rsi
	movq	-552(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 598 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-624(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$40, %rdx
#APP
# 599 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -560(%rbp)
	movq	%rdx, -568(%rbp)
	movq	-560(%rbp), %rsi
	movq	-568(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 599 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-560(%rbp), %rsi
	movq	-568(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 599 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-616(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-624(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-624(%rbp), %rdx
	addq	$48, %rdx
#APP
# 602 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -576(%rbp)
	movq	%rdx, -584(%rbp)
	movq	-576(%rbp), %rsi
	movq	-584(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 602 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-576(%rbp), %rsi
	movq	-584(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 602 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-616(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-624(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
#APP
# 605 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rsi
	movq	-600(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 605 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-616(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-616(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	bn_sqr_comba8, .-bn_sqr_comba8
	.globl	bn_sqr_comba4
	.type	bn_sqr_comba4, @function
bn_sqr_comba4:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$88, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
#APP
# 617 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 617 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-200(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
#APP
# 620 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 620 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 620 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-208(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
#APP
# 623 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 623 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
#APP
# 624 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 624 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 624 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-200(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-208(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
#APP
# 627 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 627 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 627 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	addq	$8, %rdx
#APP
# 628 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 628 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 628 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-200(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -8(%rbp)
	movq	-208(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
#APP
# 631 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 631 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-208(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	addq	$8, %rdx
#APP
# 632 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 632 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
#APP
# 632 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movq	-200(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -16(%rbp)
	movq	-208(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	addq	$16, %rdx
#APP
# 635 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq (%rdx)
# 0 "" 2
#NO_APP
	movq	%rax, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 635 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
#APP
# 635 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-200(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	$0, -24(%rbp)
	movq	-208(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
#APP
# 638 "../crypto/bn/asm/x86_64-gcc.c" 1
	mulq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-176(%rbp), %rsi
	movq	-184(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
#APP
# 638 "../crypto/bn/asm/x86_64-gcc.c" 1
	addq %rsi,%rcx; adcq %rdi,%rdx; adcq $0,%rax
# 0 "" 2
#NO_APP
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-200(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-200(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	bn_sqr_comba4, .-bn_sqr_comba4
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
