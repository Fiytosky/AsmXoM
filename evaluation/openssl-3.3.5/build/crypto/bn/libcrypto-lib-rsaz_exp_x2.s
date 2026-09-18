	.file	"rsaz_exp_x2.c"
	.text
	.type	value_barrier_64, @function
value_barrier_64:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	value_barrier_64, .-value_barrier_64
	.type	constant_time_select_64, @function
constant_time_select_64:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	value_barrier_64
	andq	-24(%rbp), %rax
	movq	%rax, %rbx
	movq	-16(%rbp), %rax
	notq	%rax
	movq	%rax, %rdi
	call	value_barrier_64
	andq	-32(%rbp), %rax
	orq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	constant_time_select_64, .-constant_time_select_64
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
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
.LFE187:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
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
.LFE188:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	bn_select_words, @function
bn_select_words:
.LFB204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L10
.L11:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-32(%rbp), %rax
	leaq	(%rsi,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	constant_time_select_64
	movq	%rax, (%rbx)
	addq	$1, -16(%rbp)
.L10:
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L11
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	bn_select_words, .-bn_select_words
	.type	bn_reduce_once_in_place, @function
bn_reduce_once_in_place:
.LFB205:
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
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	subq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_select_words
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	bn_reduce_once_in_place, .-bn_reduce_once_in_place
	.type	number_of_digits, @function
number_of_digits:
.LFB206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cltd
	idivl	-8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	number_of_digits, .-number_of_digits
	.section	.rodata
.LC0:
	.string	"../crypto/bn/rsaz_exp_x2.c"
	.text
	.globl	ossl_rsaz_mod_exp_avx512_x2
	.type	ossl_rsaz_mod_exp_avx512_x2, @function
ossl_rsaz_mod_exp_avx512_x2:
.LFB207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movl	$0, -4(%rbp)
	movl	64(%rbp), %eax
	addl	$2, %eax
	movl	$52, %esi
	movl	%eax, %edi
	call	number_of_digits
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	imull	$52, %eax, %eax
	subl	64(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	addl	$4, %eax
	sall	$6, %eax
	subl	$1, %eax
	leal	255(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$8, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	cltq
	addq	$8, %rax
	sall	$3, %eax
	movl	%eax, -52(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$2048, 64(%rbp)
	je	.L17
	cmpl	$2048, 64(%rbp)
	jg	.L27
	cmpl	$1024, 64(%rbp)
	je	.L19
	cmpl	$1536, 64(%rbp)
	je	.L20
	jmp	.L27
.L19:
	movq	ossl_rsaz_amm52x20_x1_ifma256@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L21
.L20:
	movq	ossl_rsaz_amm52x30_x1_ifma256@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L21
.L17:
	movq	ossl_rsaz_amm52x40_x1_ifma256@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	nop
.L21:
	movl	-52(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$188, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L28
	movq	-16(%rbp), %rax
	andl	$63, %eax
	movl	$64, %edx
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	-40(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	-40(%rbp), %eax
	sall	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movl	64(%rbp), %ecx
	movq	-160(%rbp), %rdx
	movl	-40(%rbp), %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	to_words52
	movl	64(%rbp), %ecx
	movq	24(%rbp), %rdx
	movl	-40(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	to_words52
	movl	64(%rbp), %ecx
	movq	-176(%rbp), %rdx
	movl	-40(%rbp), %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	to_words52
	movl	64(%rbp), %ecx
	movq	40(%rbp), %rdx
	movl	-40(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	to_words52
	movl	64(%rbp), %ecx
	movq	-184(%rbp), %rdx
	movl	-40(%rbp), %esi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	to_words52
	movl	64(%rbp), %ecx
	movq	48(%rbp), %rdx
	movl	-40(%rbp), %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	to_words52
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1321528399, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$4, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %esi
	sall	$6, %esi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1321528399, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$4, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$52, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	addl	%esi, %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_bit
	movq	-192(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-192(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	56(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	56(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-168(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	56(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-144(%rbp), %r9
	movq	-96(%rbp), %r8
	movq	-80(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	movl	64(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	RSAZ_mod_exp_x2_ifma256
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L29
	movq	-96(%rbp), %rdx
	movl	64(%rbp), %ecx
	movq	-152(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	from_words52
	movq	-104(%rbp), %rdx
	movl	64(%rbp), %ecx
	movq	16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	from_words52
	movl	64(%rbp), %eax
	cltq
	shrq	$6, %rax
	movl	%eax, 64(%rbp)
	movl	64(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	bn_reduce_once_in_place
	movl	64(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	bn_reduce_once_in_place
	jmp	.L22
.L27:
	nop
	jmp	.L22
.L28:
	nop
	jmp	.L22
.L29:
	nop
.L22:
	cmpq	$0, -16(%rbp)
	je	.L25
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$261, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L25:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	ossl_rsaz_mod_exp_avx512_x2, .-ossl_rsaz_mod_exp_avx512_x2
	.section	.rodata
.LC1:
	.string	"assertion failed: rem != 0"
	.text
	.type	RSAZ_mod_exp_x2_ifma256, @function
RSAZ_mod_exp_x2_ifma256:
.LFB208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movl	$0, -4(%rbp)
	movl	$5, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$2048, 16(%rbp)
	je	.L31
	cmpl	$2048, 16(%rbp)
	jg	.L47
	cmpl	$1024, 16(%rbp)
	je	.L33
	cmpl	$1536, 16(%rbp)
	je	.L34
	jmp	.L47
.L33:
	movl	$20, -12(%rbp)
	movl	$16, -16(%rbp)
	movq	ossl_rsaz_amm52x20_x2_ifma256@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	ossl_extract_multiplier_2x20_win5@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L35
.L34:
	movl	$32, -12(%rbp)
	movl	$24, -16(%rbp)
	movq	ossl_rsaz_amm52x30_x2_ifma256@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	ossl_extract_multiplier_2x30_win5@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L35
.L31:
	movl	$40, -12(%rbp)
	movl	$32, -16(%rbp)
	movq	ossl_rsaz_amm52x40_x2_ifma256@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	ossl_extract_multiplier_2x40_win5@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	nop
.L35:
	movl	-12(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	$1, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %esi
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	addl	%edx, %eax
	movl	%eax, %eax
	addq	$8, %rax
	sall	$3, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$370, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L48
	movq	-24(%rbp), %rax
	andl	$63, %eax
	movl	$64, %edx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	$1, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	$1, (%rax)
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-208(%rbp), %rsi
	movq	-192(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	*%r9
	movl	$1, -8(%rbp)
	jmp	.L38
.L39:
	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-112(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-112(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-208(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r9
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	sall	$2, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-112(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	imull	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-112(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-208(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	*%r9
	addl	$1, -8(%rbp)
.L38:
	movl	-76(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	shrl	%eax
	cmpl	%eax, -8(%rbp)
	jl	.L39
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-184(%rbp), %rax
	movq	(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-184(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,8), %rsi
	movq	-120(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-16(%rbp), %eax
	addl	$1, %eax
	addl	%eax, %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movl	16(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	movl	%edx, -124(%rbp)
	movl	-80(%rbp), %eax
	cltq
	movq	%rax, -136(%rbp)
	movl	16(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -140(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -144(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.L40
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$423, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L40:
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	-140(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, -64(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-112(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	movl	-76(%rbp), %eax
	subl	%eax, -52(%rbp)
	jmp	.L41
.L44:
	movl	-52(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -140(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -144(%rbp)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-140(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, -64(%rbp)
	movl	$64, %eax
	subl	-76(%rbp), %eax
	cmpl	%eax, -144(%rbp)
	jle	.L42
	movl	$64, %eax
	subl	-144(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, -152(%rbp)
	movq	-152(%rbp), %rax
	xorq	%rax, -64(%rbp)
.L42:
	movq	-136(%rbp), %rax
	andq	%rax, -64(%rbp)
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	-140(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-140(%rbp), %eax
	leal	1(%rax), %edx
	movl	-16(%rbp), %eax
	addl	$1, %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, -72(%rbp)
	movl	$64, %eax
	subl	-76(%rbp), %eax
	cmpl	%eax, -144(%rbp)
	jle	.L43
	movl	$64, %eax
	subl	-144(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, -152(%rbp)
	movq	-152(%rbp), %rax
	xorq	%rax, -72(%rbp)
.L43:
	movq	-136(%rbp), %rax
	andq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	-76(%rbp), %eax
	subl	%eax, -52(%rbp)
.L41:
	cmpl	$0, -52(%rbp)
	jns	.L44
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-104(%rbp), %rax
	movq	$1, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	$1, (%rax)
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	movl	$1, -4(%rbp)
	jmp	.L36
.L47:
	nop
	jmp	.L36
.L48:
	nop
.L36:
	cmpq	$0, -24(%rbp)
	je	.L45
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$514, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L45:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	RSAZ_mod_exp_x2_ifma256, .-RSAZ_mod_exp_x2_ifma256
	.type	get_digit, @function
get_digit:
.LFB209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L50
.L51:
	salq	$8, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, -8(%rbp)
	subl	$1, -28(%rbp)
.L50:
	cmpl	$0, -28(%rbp)
	jg	.L51
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	get_digit, .-get_digit
	.type	to_words52, @function
to_words52:
.LFB210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L54
.L55:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movabsq	$4503599627370495, %rdx
	andq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$6, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rcx, %rdx
	movq	%rdx, (%rax)
	addq	$7, -8(%rbp)
	subl	$2, -44(%rbp)
	subl	$104, -48(%rbp)
	addq	$16, -40(%rbp)
.L54:
	cmpl	$103, -48(%rbp)
	jg	.L55
	cmpl	$52, -48(%rbp)
	jle	.L56
	movq	-8(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	get_digit
	movq	%rax, -16(%rbp)
	movabsq	$4503599627370495, %rax
	andq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$6, -8(%rbp)
	subl	$52, -48(%rbp)
	movl	-48(%rbp), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_digit
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	shrq	$4, %rdx
	movq	%rdx, (%rax)
	addq	$16, -40(%rbp)
	subl	$2, -44(%rbp)
	jmp	.L57
.L56:
	cmpl	$0, -48(%rbp)
	jle	.L57
	movl	-48(%rbp), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_digit
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$8, -40(%rbp)
	subl	$1, -44(%rbp)
.L57:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	to_words52, .-to_words52
	.type	put_digit, @function
put_digit:
.LFB211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L59
.L60:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	shrq	$8, -24(%rbp)
	subl	$1, -12(%rbp)
.L59:
	cmpl	$0, -12(%rbp)
	jg	.L60
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	put_digit, .-put_digit
	.type	from_words52, @function
from_words52:
.LFB212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	addl	$63, %eax
	sarl	$6, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L62
.L63:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L62:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L63
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L64
.L65:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$6, -16(%rbp)
	movq	-32(%rbp), %rax
	shrq	$48, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	salq	$4, %rax
	orq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$7, -16(%rbp)
	subl	$104, -44(%rbp)
	addq	$16, -56(%rbp)
.L64:
	cmpl	$103, -44(%rbp)
	jg	.L65
	cmpl	$52, -44(%rbp)
	jle	.L66
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	put_digit
	addq	$6, -16(%rbp)
	subl	$52, -44(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	shrq	$48, %rax
	orq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	put_digit
	jmp	.L68
.L66:
	cmpl	$0, -44(%rbp)
	je	.L68
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	put_digit
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	from_words52, .-from_words52
	.type	set_bit, @function
set_bit:
.LFB213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	set_bit, .-set_bit
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
