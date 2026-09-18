	.file	"x_int64.c"
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
	.string	"../crypto/asn1/x_int64.c"
	.text
	.type	uint64_new, @function
uint64_new:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$31, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	uint64_new, .-uint64_new
	.type	uint64_free, @function
uint64_free:
.LFB509:
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
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$38, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	uint64_free, .-uint64_free
	.type	uint64_clear, @function
uint64_clear:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	uint64_clear, .-uint64_clear
	.type	uint64_i2c, @function
uint64_i2c:
.LFB511:
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
	movq	%rcx, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L11
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$-1, %eax
	jmp	.L14
.L11:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L13
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jns	.L13
	movq	-24(%rbp), %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	movl	$1, -4(%rbp)
.L13:
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_i2c_uint64_int@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	uint64_i2c, .-uint64_i2c
	.type	uint64_c2i, @function
uint64_c2i:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uint64_new
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L23
.L16:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L24
	movl	-52(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-48(%rbp), %rdx
	leaq	-20(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_c2i_uint64_int@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L23
.L20:
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L21
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$226, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L21:
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L22
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L22
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jns	.L22
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$223, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L22:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L25
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, -16(%rbp)
	jmp	.L19
.L24:
	nop
	jmp	.L19
.L25:
	nop
.L19:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	uint64_c2i, .-uint64_c2i
	.section	.rodata
.LC1:
	.string	"%jd\n"
.LC2:
	.string	"%ju\n"
	.text
	.type	uint64_print, @function
uint64_print:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L27
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L27:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	uint64_print, .-uint64_print
	.type	uint32_new, @function
uint32_new:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$124, %edx
	movq	%rax, %rsi
	movl	$4, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	uint32_new, .-uint32_new
	.type	uint32_free, @function
uint32_free:
.LFB515:
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
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	uint32_free, .-uint32_free
	.type	uint32_clear, @function
uint32_clear:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	uint32_clear, .-uint32_clear
	.type	uint32_i2c, @function
uint32_i2c:
.LFB517:
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
	movq	%rcx, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L35
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L35
	movl	$-1, %eax
	jmp	.L38
.L35:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L37
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jns	.L37
	movl	-20(%rbp), %eax
	negl	%eax
	movl	%eax, -20(%rbp)
	movl	$1, -4(%rbp)
.L37:
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_i2c_uint64_int@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	uint32_i2c, .-uint32_i2c
	.type	uint32_c2i, @function
uint32_c2i:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uint64_new
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L50
.L40:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L51
	movl	-52(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_c2i_uint64_int@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L50
.L44:
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L45
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L45
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$226, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L45:
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L46
	movq	-16(%rbp), %rax
	movl	$2147483648, %edx
	cmpq	%rax, %rdx
	jnb	.L47
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$201, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L47:
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, -16(%rbp)
	jmp	.L43
.L46:
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L48
	movq	-16(%rbp), %rax
	cmpq	$2147483647, %rax
	ja	.L49
.L48:
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L52
	movq	-16(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rax, %rdx
	jnb	.L52
.L49:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$223, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L50
.L51:
	nop
	jmp	.L43
.L52:
	nop
.L43:
	movq	-16(%rbp), %rax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	uint32_c2i, .-uint32_c2i
	.section	.rodata
.LC3:
	.string	"%d\n"
.LC4:
	.string	"%u\n"
	.text
	.type	uint32_print, @function
uint32_print:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L54
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	leaq	.LC3(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L55
.L54:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	leaq	.LC4(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	uint32_print, .-uint32_print
	.section	.data.rel.local,"aw"
	.align 32
	.type	uint32_pf, @object
	.size	uint32_pf, 64
uint32_pf:
	.quad	0
	.quad	0
	.quad	uint32_new
	.quad	uint32_free
	.quad	uint32_clear
	.quad	uint32_c2i
	.quad	uint32_i2c
	.quad	uint32_print
	.align 32
	.type	uint64_pf, @object
	.size	uint64_pf, 64
uint64_pf:
	.quad	0
	.quad	0
	.quad	uint64_new
	.quad	uint64_free
	.quad	uint64_clear
	.quad	uint64_c2i
	.quad	uint64_i2c
	.quad	uint64_print
	.text
	.globl	INT32_it
	.type	INT32_it, @function
INT32_it:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	INT32_it, .-INT32_it
	.globl	UINT32_it
	.type	UINT32_it, @function
UINT32_it:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	UINT32_it, .-UINT32_it
	.globl	INT64_it
	.type	INT64_it, @function
INT64_it:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	INT64_it, .-INT64_it
	.globl	UINT64_it
	.type	UINT64_it, @function
UINT64_it:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	UINT64_it, .-UINT64_it
	.globl	ZINT32_it
	.type	ZINT32_it, @function
ZINT32_it:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ZINT32_it, .-ZINT32_it
	.globl	ZUINT32_it
	.type	ZUINT32_it, @function
ZUINT32_it:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	ZUINT32_it, .-ZUINT32_it
	.globl	ZINT64_it
	.type	ZINT64_it, @function
ZINT64_it:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	ZINT64_it, .-ZINT64_it
	.globl	ZUINT64_it
	.type	ZUINT64_it, @function
ZUINT64_it:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	ZUINT64_it, .-ZUINT64_it
	.section	.rodata
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 11
__func__.9:
	.string	"uint64_c2i"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 11
__func__.8:
	.string	"uint32_c2i"
.LC5:
	.string	"INT32"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	uint32_pf
	.quad	2
	.quad	.LC5
	.section	.rodata
.LC6:
	.string	"UINT32"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	uint32_pf
	.quad	0
	.quad	.LC6
	.section	.rodata
.LC7:
	.string	"INT64"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	uint64_pf
	.quad	2
	.quad	.LC7
	.section	.rodata
.LC8:
	.string	"UINT64"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	uint64_pf
	.quad	0
	.quad	.LC8
	.section	.rodata
.LC9:
	.string	"ZINT32"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	uint32_pf
	.quad	3
	.quad	.LC9
	.section	.rodata
.LC10:
	.string	"ZUINT32"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	uint32_pf
	.quad	1
	.quad	.LC10
	.section	.rodata
.LC11:
	.string	"ZINT64"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	uint64_pf
	.quad	3
	.quad	.LC11
	.section	.rodata
.LC12:
	.string	"ZUINT64"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	uint64_pf
	.quad	1
	.quad	.LC12
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
