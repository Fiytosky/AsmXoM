	.file	"gcm128.c"
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
	.type	gcm_init_4bit, @function
gcm_init_4bit:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rax
	andl	$1, %eax
	negq	%rax
	movq	%rax, %rdx
	movabsq	$-2233785415175766016, %rax
	andq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	shrq	%rax
	xorq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rax
	andl	$1, %eax
	negq	%rax
	movq	%rax, %rdx
	movabsq	$-2233785415175766016, %rax
	andq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	shrq	%rax
	xorq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rax
	andl	$1, %eax
	negq	%rax
	movq	%rax, %rdx
	movabsq	$-2233785415175766016, %rax
	andq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	shrq	%rax
	orq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	shrq	%rax
	xorq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$48, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$48, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$80, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$80, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$96, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$96, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$112, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$112, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdx
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$144, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$144, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$160, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$160, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$176, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$176, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$192, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$64, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$192, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$208, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$80, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$208, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$224, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$96, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$224, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$240, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	$112, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$240, %rax
	xorq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	gcm_init_4bit, .-gcm_init_4bit
	.type	gcm_get_funcs, @function
gcm_get_funcs:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	gcm_init_4bit(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L7
	movq	OPENSSL_ia32cap_P@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	andl	$272629760, %eax
	cmpl	$272629760, %eax
	jne	.L8
	movq	-8(%rbp), %rax
	movq	gcm_init_avx@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	gcm_gmult_avx@GOTPCREL(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	gcm_ghash_avx@GOTPCREL(%rip), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L6
.L8:
	movq	-8(%rbp), %rax
	movq	gcm_init_clmul@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	gcm_gmult_clmul@GOTPCREL(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	gcm_ghash_clmul@GOTPCREL(%rip), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L6
.L7:
	movq	-8(%rbp), %rax
	movq	gcm_gmult_4bit@GOTPCREL(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	gcm_ghash_4bit@GOTPCREL(%rip), %rdx
	movq	%rdx, 8(%rax)
	nop
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	gcm_get_funcs, .-gcm_get_funcs
	.globl	ossl_gcm_init_4bit
	.type	ossl_gcm_init_4bit, @function
ossl_gcm_init_4bit:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	gcm_get_funcs
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ossl_gcm_init_4bit, .-ossl_gcm_init_4bit
	.globl	ossl_gcm_gmult_4bit
	.type	ossl_gcm_gmult_4bit, @function
ossl_gcm_gmult_4bit:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	gcm_get_funcs
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	ossl_gcm_gmult_4bit, .-ossl_gcm_gmult_4bit
	.globl	ossl_gcm_ghash_4bit
	.type	ossl_gcm_ghash_4bit, @function
ossl_gcm_ghash_4bit:
.LFB164:
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
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	gcm_get_funcs
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L14
	movq	-24(%rbp), %r8
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L18
.L14:
	movq	$0, -8(%rbp)
	jmp	.L16
.L17:
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	xorq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	$8, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	addq	$16, -8(%rbp)
.L16:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L17
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	ossl_gcm_ghash_4bit, .-ossl_gcm_ghash_4bit
	.globl	CRYPTO_gcm128_init
	.type	CRYPTO_gcm128_init, @function
CRYPTO_gcm128_init:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$1, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	$448, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 384(%rax)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 392(%rax)
	movq	-40(%rbp), %rax
	leaq	80(%rax), %rsi
	movq	-40(%rbp), %rax
	leaq	80(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	call	*%rcx
	cmpl	$0, -4(%rbp)
	je	.L20
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
#APP
# 615 "../crypto/modes/gcm128.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
#APP
# 616 "../crypto/modes/gcm128.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 88(%rax)
.L20:
	movq	-40(%rbp), %rax
	addq	$352, %rax
	movq	%rax, %rdi
	call	gcm_get_funcs
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	80(%rdx), %rcx
	movq	-40(%rbp), %rdx
	addq	$96, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	CRYPTO_gcm128_init, .-CRYPTO_gcm128_init
	.globl	CRYPTO_gcm128_setiv
	.type	CRYPTO_gcm128_setiv, @function
CRYPTO_gcm128_setiv:
.LFB166:
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
	movl	$1, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 380(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 376(%rax)
	cmpq	$12, -72(%rbp)
	jne	.L22
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movb	$0, 12(%rax)
	movq	-56(%rbp), %rax
	movb	$0, 13(%rax)
	movq	-56(%rbp), %rax
	movb	$0, 14(%rax)
	movq	-56(%rbp), %rax
	movb	$1, 15(%rax)
	movl	$1, -4(%rbp)
	jmp	.L23
.L22:
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 72(%rax)
	jmp	.L24
.L27:
	movq	$0, -16(%rbp)
	jmp	.L25
.L26:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$64, %rax
	movzbl	(%rax), %ecx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	addq	$64, %rax
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L25:
	cmpq	$15, -16(%rbp)
	jbe	.L26
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	96(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	$64, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	addq	$16, -64(%rbp)
	subq	$16, -72(%rbp)
.L24:
	cmpq	$15, -72(%rbp)
	ja	.L27
	cmpq	$0, -72(%rbp)
	je	.L28
	movq	$0, -16(%rbp)
	jmp	.L29
.L30:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$64, %rax
	movzbl	(%rax), %ecx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	addq	$64, %rax
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L29:
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L30
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	96(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	$64, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L28:
	salq	$3, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L31
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
#APP
# 672 "../crypto/modes/gcm128.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	xorq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L32
.L31:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	xorq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 72(%rax)
.L32:
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	96(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	$64, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	cmpl	$0, -20(%rbp)
	je	.L33
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
#APP
# 691 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L34
.L33:
	movq	-56(%rbp), %rax
	movl	76(%rax), %eax
	movl	%eax, -4(%rbp)
.L34:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
.L23:
	movq	-56(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-56(%rbp), %rax
	movq	384(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	392(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -4(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L35
	movl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
#APP
# 710 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L37
.L35:
	movq	-56(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 12(%rax)
.L37:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	CRYPTO_gcm128_setiv, .-CRYPTO_gcm128_setiv
	.globl	CRYPTO_gcm128_aad
	.type	CRYPTO_gcm128_aad, @function
CRYPTO_gcm128_aad:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movl	$-2, %eax
	jmp	.L40
.L39:
	movq	-56(%rbp), %rax
	addq	%rax, -24(%rbp)
	movabsq	$2305843009213693952, %rax
	cmpq	-24(%rbp), %rax
	jb	.L41
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L42
.L41:
	movl	$-1, %eax
	jmp	.L40
.L42:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movl	380(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L43
	jmp	.L44
.L46:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	movzbl	64(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	movb	%cl, 64(%rdx,%rax)
	subq	$1, -56(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -12(%rbp)
.L44:
	cmpl	$0, -12(%rbp)
	je	.L45
	cmpq	$0, -56(%rbp)
	jne	.L46
.L45:
	cmpl	$0, -12(%rbp)
	jne	.L47
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	96(%rdx), %rcx
	movq	-40(%rbp), %rdx
	addq	$64, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	jmp	.L43
.L47:
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 380(%rax)
	movl	$0, %eax
	jmp	.L40
.L43:
	movq	-56(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L48
	movq	-40(%rbp), %rax
	movq	360(%rax), %r8
	movq	-40(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	*%r8
	movq	-8(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	subq	%rax, -56(%rbp)
.L48:
	cmpq	$0, -56(%rbp)
	je	.L49
	movq	-56(%rbp), %rax
	movl	%eax, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L50
.L51:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$64, %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addq	$64, %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L50:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L51
.L49:
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 380(%rax)
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	CRYPTO_gcm128_aad, .-CRYPTO_gcm128_aad
	.globl	CRYPTO_gcm128_encrypt
	.type	CRYPTO_gcm128_encrypt, @function
CRYPTO_gcm128_encrypt:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movl	$1, -36(%rbp)
	movq	-136(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-160(%rbp), %rax
	addq	%rax, -48(%rbp)
	movabsq	$68719476704, %rax
	cmpq	-48(%rbp), %rax
	jb	.L53
	movq	-48(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jnb	.L54
.L53:
	movl	$-1, %eax
	jmp	.L55
.L54:
	movq	-136(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-136(%rbp), %rax
	movl	376(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-136(%rbp), %rax
	movl	380(%rax), %eax
	testl	%eax, %eax
	je	.L56
	cmpq	$0, -160(%rbp)
	jne	.L57
	movq	-136(%rbp), %rax
	movq	368(%rax), %rax
	movq	-136(%rbp), %rdx
	leaq	96(%rdx), %rcx
	movq	-136(%rbp), %rdx
	addq	$64, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-136(%rbp), %rax
	movl	$0, 380(%rax)
	movl	$0, %eax
	jmp	.L55
.L57:
	movq	-136(%rbp), %rax
	addq	$64, %rax
	movq	-136(%rbp), %rdx
	leaq	400(%rdx), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-136(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-136(%rbp), %rax
	movq	$0, 72(%rax)
	movl	$16, -12(%rbp)
	movq	-136(%rbp), %rax
	movl	$0, 380(%rax)
.L56:
	cmpl	$0, -36(%rbp)
	je	.L58
	movq	-136(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
#APP
# 810 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L59
.L58:
	movq	-136(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -8(%rbp)
.L59:
	movl	-12(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L60
	jmp	.L61
.L63:
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -144(%rbp)
	movzbl	(%rax), %esi
	movq	-136(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movl	-12(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, -12(%rbp)
	movzbl	(%rax), %ecx
	movq	-136(%rbp), %rax
	movl	%edx, %edx
	movb	%cl, 400(%rax,%rdx)
	subq	$1, -160(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L61:
	cmpl	$0, -4(%rbp)
	je	.L62
	cmpq	$0, -160(%rbp)
	jne	.L63
.L62:
	cmpl	$0, -4(%rbp)
	jne	.L64
	movq	-136(%rbp), %rax
	movq	360(%rax), %r8
	movl	-12(%rbp), %eax
	movq	-136(%rbp), %rdx
	addq	$400, %rdx
	movq	-136(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-136(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L60
.L64:
	movq	-136(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 376(%rax)
	movl	$0, %eax
	jmp	.L55
.L60:
	cmpq	$15, -160(%rbp)
	jbe	.L66
	cmpl	$0, -12(%rbp)
	je	.L66
	movq	-136(%rbp), %rax
	movq	360(%rax), %r8
	movl	-12(%rbp), %eax
	movq	-136(%rbp), %rdx
	addq	$400, %rdx
	movq	-136(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-136(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L66
.L73:
	movq	$3072, -32(%rbp)
	jmp	.L67
.L72:
	movq	-152(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-136(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -8(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L68
	movl	-8(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
#APP
# 871 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L69
.L68:
	movq	-136(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
.L69:
	movq	$0, -24(%rbp)
	jmp	.L70
.L71:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-112(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addq	$1, -24(%rbp)
.L70:
	cmpq	$1, -24(%rbp)
	jbe	.L71
	addq	$16, -152(%rbp)
	addq	$16, -144(%rbp)
	subq	$16, -32(%rbp)
.L67:
	cmpq	$0, -32(%rbp)
	jne	.L72
	movq	-136(%rbp), %rax
	movq	360(%rax), %rax
	movq	-152(%rbp), %rdx
	subq	$3072, %rdx
	movq	-136(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-136(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movl	$3072, %ecx
	call	*%rax
	subq	$3072, -160(%rbp)
.L66:
	cmpq	$3071, -160(%rbp)
	ja	.L73
	movq	-160(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L74
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.L75
.L80:
	movq	-152(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-136(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -8(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L76
	movl	-8(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
#APP
# 898 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L77
.L76:
	movq	-136(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
.L77:
	movq	$0, -24(%rbp)
	jmp	.L78
.L79:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-88(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addq	$1, -24(%rbp)
.L78:
	cmpq	$1, -24(%rbp)
	jbe	.L79
	addq	$16, -152(%rbp)
	addq	$16, -144(%rbp)
	subq	$16, -160(%rbp)
.L75:
	cmpq	$15, -160(%rbp)
	ja	.L80
	movq	-136(%rbp), %rax
	movq	360(%rax), %r8
	movq	-80(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-136(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	*%r8
.L74:
	cmpq	$0, -160(%rbp)
	je	.L81
	movq	-136(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-136(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -8(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L82
	movl	-8(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
#APP
# 940 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L84
.L82:
	movq	-136(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
	jmp	.L84
.L85:
	movl	-4(%rbp), %edx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-136(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movl	-12(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, -12(%rbp)
	movzbl	(%rax), %ecx
	movq	-136(%rbp), %rax
	movl	%edx, %edx
	movb	%cl, 400(%rax,%rdx)
	addl	$1, -4(%rbp)
.L84:
	movq	-160(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -160(%rbp)
	testq	%rax, %rax
	jne	.L85
.L81:
	movq	-136(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 376(%rax)
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	CRYPTO_gcm128_encrypt, .-CRYPTO_gcm128_encrypt
	.globl	CRYPTO_gcm128_decrypt
	.type	CRYPTO_gcm128_decrypt, @function
CRYPTO_gcm128_decrypt:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movl	$1, -36(%rbp)
	movq	-136(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-160(%rbp), %rax
	addq	%rax, -48(%rbp)
	movabsq	$68719476704, %rax
	cmpq	-48(%rbp), %rax
	jb	.L87
	movq	-48(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jnb	.L88
.L87:
	movl	$-1, %eax
	jmp	.L89
.L88:
	movq	-136(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-136(%rbp), %rax
	movl	376(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-136(%rbp), %rax
	movl	380(%rax), %eax
	testl	%eax, %eax
	je	.L90
	cmpq	$0, -160(%rbp)
	jne	.L91
	movq	-136(%rbp), %rax
	movq	368(%rax), %rax
	movq	-136(%rbp), %rdx
	leaq	96(%rdx), %rcx
	movq	-136(%rbp), %rdx
	addq	$64, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-136(%rbp), %rax
	movl	$0, 380(%rax)
	movl	$0, %eax
	jmp	.L89
.L91:
	movq	-136(%rbp), %rax
	addq	$64, %rax
	movq	-136(%rbp), %rdx
	leaq	400(%rdx), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-136(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-136(%rbp), %rax
	movq	$0, 72(%rax)
	movl	$16, -12(%rbp)
	movq	-136(%rbp), %rax
	movl	$0, 380(%rax)
.L90:
	cmpl	$0, -36(%rbp)
	je	.L92
	movq	-136(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
#APP
# 1035 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L93
.L92:
	movq	-136(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -8(%rbp)
.L93:
	movl	-12(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L94
	jmp	.L95
.L97:
	movq	-144(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -144(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movzbl	(%rdx), %ecx
	movq	-136(%rbp), %rdx
	movl	%eax, %esi
	movb	%cl, 400(%rdx,%rsi)
	movq	-136(%rbp), %rdx
	movl	%eax, %eax
	movzbl	400(%rdx,%rax), %esi
	movq	-136(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	subq	$1, -160(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L95:
	cmpl	$0, -4(%rbp)
	je	.L96
	cmpq	$0, -160(%rbp)
	jne	.L97
.L96:
	cmpl	$0, -4(%rbp)
	jne	.L98
	movq	-136(%rbp), %rax
	movq	360(%rax), %r8
	movl	-12(%rbp), %eax
	movq	-136(%rbp), %rdx
	addq	$400, %rdx
	movq	-136(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-136(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L94
.L98:
	movq	-136(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 376(%rax)
	movl	$0, %eax
	jmp	.L89
.L94:
	cmpq	$15, -160(%rbp)
	jbe	.L100
	cmpl	$0, -12(%rbp)
	je	.L100
	movq	-136(%rbp), %rax
	movq	360(%rax), %r8
	movl	-12(%rbp), %eax
	movq	-136(%rbp), %rdx
	addq	$400, %rdx
	movq	-136(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-136(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L100
.L107:
	movq	$3072, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	360(%rax), %r8
	movq	-136(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-136(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-144(%rbp), %rax
	movl	$3072, %ecx
	movq	%rax, %rdx
	call	*%r8
	jmp	.L101
.L106:
	movq	-152(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-136(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -8(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L102
	movl	-8(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
#APP
# 1099 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L103
.L102:
	movq	-136(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
.L103:
	movq	$0, -24(%rbp)
	jmp	.L104
.L105:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-104(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addq	$1, -24(%rbp)
.L104:
	cmpq	$1, -24(%rbp)
	jbe	.L105
	addq	$16, -152(%rbp)
	addq	$16, -144(%rbp)
	subq	$16, -32(%rbp)
.L101:
	cmpq	$0, -32(%rbp)
	jne	.L106
	subq	$3072, -160(%rbp)
.L100:
	cmpq	$3071, -160(%rbp)
	ja	.L107
	movq	-160(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L108
	movq	-136(%rbp), %rax
	movq	360(%rax), %r8
	movq	-136(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-136(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-24(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	*%r8
	jmp	.L109
.L114:
	movq	-152(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-136(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-136(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -8(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L110
	movl	-8(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
#APP
# 1124 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L111
.L110:
	movq	-136(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
.L111:
	movq	$0, -24(%rbp)
	jmp	.L112
.L113:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-80(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addq	$1, -24(%rbp)
.L112:
	cmpq	$1, -24(%rbp)
	jbe	.L113
	addq	$16, -152(%rbp)
	addq	$16, -144(%rbp)
	subq	$16, -160(%rbp)
.L109:
	cmpq	$15, -160(%rbp)
	ja	.L114
.L108:
	cmpq	$0, -160(%rbp)
	je	.L115
	movq	-136(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-136(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -8(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L116
	movl	-8(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
#APP
# 1168 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L118
.L116:
	movq	-136(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
	jmp	.L118
.L119:
	movl	-4(%rbp), %edx
	movq	-144(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movzbl	(%rcx), %ecx
	movq	-136(%rbp), %rdx
	movl	%eax, %esi
	movb	%cl, 400(%rdx,%rsi)
	movq	-136(%rbp), %rdx
	movl	%eax, %eax
	movzbl	400(%rdx,%rax), %esi
	movq	-136(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L118:
	movq	-160(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -160(%rbp)
	testq	%rax, %rax
	jne	.L119
.L115:
	movq	-136(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 376(%rax)
	movl	$0, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	CRYPTO_gcm128_decrypt, .-CRYPTO_gcm128_decrypt
	.globl	CRYPTO_gcm128_encrypt_ctr32
	.type	CRYPTO_gcm128_encrypt_ctr32, @function
CRYPTO_gcm128_encrypt_ctr32:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	$1, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	addq	%rax, -24(%rbp)
	movabsq	$68719476704, %rax
	cmpq	-24(%rbp), %rax
	jb	.L121
	movq	-24(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jnb	.L122
.L121:
	movl	$-1, %eax
	jmp	.L123
.L122:
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-88(%rbp), %rax
	movl	376(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-88(%rbp), %rax
	movl	380(%rax), %eax
	testl	%eax, %eax
	je	.L124
	cmpq	$0, -112(%rbp)
	jne	.L125
	movq	-88(%rbp), %rax
	movq	368(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	96(%rdx), %rcx
	movq	-88(%rbp), %rdx
	addq	$64, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-88(%rbp), %rax
	movl	$0, 380(%rax)
	movl	$0, %eax
	jmp	.L123
.L125:
	movq	-88(%rbp), %rax
	addq	$64, %rax
	movq	-88(%rbp), %rdx
	leaq	400(%rdx), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-88(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 72(%rax)
	movl	$16, -12(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, 380(%rax)
.L124:
	cmpl	$0, -16(%rbp)
	je	.L126
	movq	-88(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
#APP
# 1270 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L127
.L126:
	movq	-88(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -8(%rbp)
.L127:
	movl	-12(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L128
	jmp	.L129
.L131:
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	movzbl	(%rax), %esi
	movq	-88(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movl	-12(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, -12(%rbp)
	movzbl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	%edx, %edx
	movb	%cl, 400(%rax,%rdx)
	subq	$1, -112(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L129:
	cmpl	$0, -4(%rbp)
	je	.L130
	cmpq	$0, -112(%rbp)
	jne	.L131
.L130:
	cmpl	$0, -4(%rbp)
	jne	.L132
	movq	-88(%rbp), %rax
	movq	360(%rax), %r8
	movl	-12(%rbp), %eax
	movq	-88(%rbp), %rdx
	addq	$400, %rdx
	movq	-88(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-88(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L128
.L132:
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 376(%rax)
	movl	$0, %eax
	jmp	.L123
.L128:
	cmpq	$15, -112(%rbp)
	jbe	.L134
	cmpl	$0, -12(%rbp)
	je	.L134
	movq	-88(%rbp), %rax
	movq	360(%rax), %r8
	movl	-12(%rbp), %eax
	movq	-88(%rbp), %rdx
	addq	$400, %rdx
	movq	-88(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-88(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L134
.L137:
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$192, %edx
	movq	%rax, %rdi
	call	*%r9
	addl	$192, -8(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L135
	movl	-8(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
#APP
# 1318 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L136
.L135:
	movq	-88(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
.L136:
	movq	-88(%rbp), %rax
	movq	360(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-104(%rbp), %rax
	movl	$3072, %ecx
	movq	%rax, %rdx
	call	*%r8
	addq	$3072, -104(%rbp)
	addq	$3072, -96(%rbp)
	subq	$3072, -112(%rbp)
.L134:
	cmpq	$3071, -112(%rbp)
	ja	.L137
	movq	-112(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L138
	movq	-48(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-56(%rbp), %rax
	addl	%eax, -8(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L139
	movl	-8(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
#APP
# 1338 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L140
.L139:
	movq	-88(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
.L140:
	movq	-48(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	subq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	360(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	*%r8
	movq	-48(%rbp), %rax
	addq	%rax, -104(%rbp)
.L138:
	cmpq	$0, -112(%rbp)
	je	.L141
	movq	-88(%rbp), %rax
	movq	384(%rax), %rcx
	movq	-88(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -8(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L142
	movl	-8(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
#APP
# 1363 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L144
.L142:
	movq	-88(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
	jmp	.L144
.L145:
	movl	-4(%rbp), %edx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-88(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movl	-12(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, -12(%rbp)
	movzbl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	%edx, %edx
	movb	%cl, 400(%rax,%rdx)
	addl	$1, -4(%rbp)
.L144:
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	testq	%rax, %rax
	jne	.L145
.L141:
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 376(%rax)
	movl	$0, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	CRYPTO_gcm128_encrypt_ctr32, .-CRYPTO_gcm128_encrypt_ctr32
	.globl	CRYPTO_gcm128_decrypt_ctr32
	.type	CRYPTO_gcm128_decrypt_ctr32, @function
CRYPTO_gcm128_decrypt_ctr32:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	$1, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	addq	%rax, -24(%rbp)
	movabsq	$68719476704, %rax
	cmpq	-24(%rbp), %rax
	jb	.L147
	movq	-24(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jnb	.L148
.L147:
	movl	$-1, %eax
	jmp	.L149
.L148:
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-88(%rbp), %rax
	movl	376(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-88(%rbp), %rax
	movl	380(%rax), %eax
	testl	%eax, %eax
	je	.L150
	cmpq	$0, -112(%rbp)
	jne	.L151
	movq	-88(%rbp), %rax
	movq	368(%rax), %rax
	movq	-88(%rbp), %rdx
	leaq	96(%rdx), %rcx
	movq	-88(%rbp), %rdx
	addq	$64, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-88(%rbp), %rax
	movl	$0, 380(%rax)
	movl	$0, %eax
	jmp	.L149
.L151:
	movq	-88(%rbp), %rax
	addq	$64, %rax
	movq	-88(%rbp), %rdx
	leaq	400(%rdx), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-88(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 72(%rax)
	movl	$16, -12(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, 380(%rax)
.L150:
	cmpl	$0, -16(%rbp)
	je	.L152
	movq	-88(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
#APP
# 1424 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L153
.L152:
	movq	-88(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -8(%rbp)
.L153:
	movl	-12(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L154
	jmp	.L155
.L157:
	movq	-96(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -96(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movzbl	(%rdx), %ecx
	movq	-88(%rbp), %rdx
	movl	%eax, %esi
	movb	%cl, 400(%rdx,%rsi)
	movq	-88(%rbp), %rdx
	movl	%eax, %eax
	movzbl	400(%rdx,%rax), %esi
	movq	-88(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	subq	$1, -112(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
.L155:
	cmpl	$0, -4(%rbp)
	je	.L156
	cmpq	$0, -112(%rbp)
	jne	.L157
.L156:
	cmpl	$0, -4(%rbp)
	jne	.L158
	movq	-88(%rbp), %rax
	movq	360(%rax), %r8
	movl	-12(%rbp), %eax
	movq	-88(%rbp), %rdx
	addq	$400, %rdx
	movq	-88(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-88(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L154
.L158:
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 376(%rax)
	movl	$0, %eax
	jmp	.L149
.L154:
	cmpq	$15, -112(%rbp)
	jbe	.L160
	cmpl	$0, -12(%rbp)
	je	.L160
	movq	-88(%rbp), %rax
	movq	360(%rax), %r8
	movl	-12(%rbp), %eax
	movq	-88(%rbp), %rdx
	addq	$400, %rdx
	movq	-88(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-88(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movl	$0, -12(%rbp)
	jmp	.L160
.L163:
	movq	-88(%rbp), %rax
	movq	360(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-96(%rbp), %rax
	movl	$3072, %ecx
	movq	%rax, %rdx
	call	*%r8
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$192, %edx
	movq	%rax, %rdi
	call	*%r9
	addl	$192, -8(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L161
	movl	-8(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
#APP
# 1475 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L162
.L161:
	movq	-88(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
.L162:
	addq	$3072, -104(%rbp)
	addq	$3072, -96(%rbp)
	subq	$3072, -112(%rbp)
.L160:
	cmpq	$3071, -112(%rbp)
	ja	.L163
	movq	-112(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L164
	movq	-48(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	360(%rax), %r8
	movq	-88(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	*%r8
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-56(%rbp), %rax
	addl	%eax, -8(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L165
	movl	-8(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
#APP
# 1507 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L166
.L165:
	movq	-88(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
.L166:
	movq	-48(%rbp), %rax
	addq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	subq	%rax, -112(%rbp)
.L164:
	cmpq	$0, -112(%rbp)
	je	.L167
	movq	-88(%rbp), %rax
	movq	384(%rax), %rcx
	movq	-88(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -8(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L168
	movl	-8(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
#APP
# 1522 "../crypto/modes/gcm128.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L170
.L168:
	movq	-88(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 12(%rax)
	jmp	.L170
.L171:
	movl	-4(%rbp), %edx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movzbl	(%rcx), %ecx
	movq	-88(%rbp), %rdx
	movl	%eax, %esi
	movb	%cl, 400(%rdx,%rsi)
	movq	-88(%rbp), %rdx
	movl	%eax, %eax
	movzbl	400(%rdx,%rax), %esi
	movq	-88(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	16(%rdx,%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L170:
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	testq	%rax, %rax
	jne	.L171
.L167:
	movq	-88(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 376(%rax)
	movl	$0, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	CRYPTO_gcm128_decrypt_ctr32, .-CRYPTO_gcm128_decrypt_ctr32
	.globl	CRYPTO_gcm128_finish
	.type	CRYPTO_gcm128_finish, @function
CRYPTO_gcm128_finish:
.LFB172:
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
	movl	$1, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	salq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	salq	$3, %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	376(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L173
	movl	-20(%rbp), %eax
	addl	$15, %eax
	andl	$-16, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	leaq	400(%rax), %rdx
	movl	-20(%rbp), %eax
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	cmpl	$48, -20(%rbp)
	jne	.L174
	movq	-72(%rbp), %rax
	movq	360(%rax), %r8
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rdx
	addq	$400, %rdx
	movq	-72(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-72(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movl	$0, -20(%rbp)
	jmp	.L174
.L173:
	movq	-72(%rbp), %rax
	movl	380(%rax), %eax
	testl	%eax, %eax
	je	.L174
	movq	-72(%rbp), %rax
	movq	368(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	96(%rdx), %rcx
	movq	-72(%rbp), %rdx
	addq	$64, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L174:
	cmpl	$0, -24(%rbp)
	je	.L175
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
#APP
# 1575 "../crypto/modes/gcm128.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
#APP
# 1576 "../crypto/modes/gcm128.c" 1
	bswapq %rax
# 0 "" 2
#NO_APP
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.L175:
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	leaq	400(%rax), %rdx
	movl	-20(%rbp), %eax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addl	$16, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	360(%rax), %r8
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rdx
	addq	$400, %rdx
	movq	-72(%rbp), %rcx
	leaq	96(%rcx), %rsi
	movq	-72(%rbp), %rcx
	leaq	64(%rcx), %rdi
	movq	%rax, %rcx
	call	*%r8
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 72(%rax)
	cmpq	$0, -80(%rbp)
	je	.L176
	cmpq	$16, -88(%rbp)
	ja	.L176
	movq	-72(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	jmp	.L178
.L176:
	movl	$-1, %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	CRYPTO_gcm128_finish, .-CRYPTO_gcm128_finish
	.globl	CRYPTO_gcm128_tag
	.type	CRYPTO_gcm128_tag, @function
CRYPTO_gcm128_tag:
.LFB173:
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
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_finish@PLT
	movq	-24(%rbp), %rax
	movl	$16, %edx
	cmpq	%rdx, %rax
	cmovbe	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	CRYPTO_gcm128_tag, .-CRYPTO_gcm128_tag
	.section	.rodata
.LC0:
	.string	"../crypto/modes/gcm128.c"
	.text
	.globl	CRYPTO_gcm128_new
	.type	CRYPTO_gcm128_new, @function
CRYPTO_gcm128_new:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$1620, %edx
	movq	%rax, %rsi
	movl	$448, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L181
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_gcm128_init@PLT
.L181:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	CRYPTO_gcm128_new, .-CRYPTO_gcm128_new
	.globl	CRYPTO_gcm128_release
	.type	CRYPTO_gcm128_release, @function
CRYPTO_gcm128_release:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$1628, %ecx
	movl	$448, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	CRYPTO_gcm128_release, .-CRYPTO_gcm128_release
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
