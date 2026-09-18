	.file	"sha512.c"
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
	.globl	sha512_224_init
	.type	sha512_224_init, @function
sha512_224_init:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-8341449602262348382, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movabsq	$8350123849800275158, %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movabsq	$2160240930085379202, %rsi
	movq	%rsi, 16(%rax)
	movq	-8(%rbp), %rax
	movabsq	$7466358040605728719, %rdi
	movq	%rdi, 24(%rax)
	movq	-8(%rbp), %rax
	movabsq	$1111592415079452072, %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movabsq	$8638871050018654530, %rcx
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movabsq	$4583966954114332360, %rsi
	movq	%rsi, 48(%rax)
	movq	-8(%rbp), %rax
	movabsq	$1230299281376055969, %rdi
	movq	%rdi, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-8(%rbp), %rax
	movl	$28, 212(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	sha512_224_init, .-sha512_224_init
	.globl	sha512_256_init
	.type	sha512_256_init, @function
sha512_256_init:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$2463787394917988140, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movabsq	$-6965556091613846334, %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movabsq	$2563595384472711505, %rsi
	movq	%rsi, 16(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-7622211418569250115, %rdi
	movq	%rdi, 24(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-7626776825740460061, %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-4729309413028513390, %rcx
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movabsq	$3098927326965381290, %rsi
	movq	%rsi, 48(%rax)
	movq	-8(%rbp), %rax
	movabsq	$1060366662362279074, %rdi
	movq	%rdi, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-8(%rbp), %rax
	movl	$32, 212(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	sha512_256_init, .-sha512_256_init
	.globl	SHA384_Init
	.type	SHA384_Init, @function
SHA384_Init:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-3766243637369397544, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movabsq	$7105036623409894663, %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-7973340178411365097, %rsi
	movq	%rsi, 16(%rax)
	movq	-8(%rbp), %rax
	movabsq	$1526699215303891257, %rdi
	movq	%rdi, 24(%rax)
	movq	-8(%rbp), %rax
	movabsq	$7436329637833083697, %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-8163818279084223215, %rcx
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-2662702644619276377, %rsi
	movq	%rsi, 48(%rax)
	movq	-8(%rbp), %rax
	movabsq	$5167115440072839076, %rdi
	movq	%rdi, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-8(%rbp), %rax
	movl	$48, 212(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	SHA384_Init, .-SHA384_Init
	.globl	SHA512_Init
	.type	SHA512_Init, @function
SHA512_Init:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$7640891576956012808, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movabsq	$-4942790177534073029, %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movabsq	$4354685564936845355, %rsi
	movq	%rsi, 16(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-6534734903238641935, %rdi
	movq	%rdi, 24(%rax)
	movq	-8(%rbp), %rax
	movabsq	$5840696475078001361, %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movabsq	$-7276294671716946913, %rcx
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movabsq	$2270897969802886507, %rsi
	movq	%rsi, 48(%rax)
	movq	-8(%rbp), %rax
	movabsq	$6620516959819538809, %rdi
	movq	%rdi, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-8(%rbp), %rax
	movl	$64, 212(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	SHA512_Init, .-SHA512_Init
	.globl	SHA512_Final
	.type	SHA512_Final, @function
SHA512_Final:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	movl	208(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$-128, (%rax)
	addq	$1, -8(%rbp)
	cmpq	$112, -8(%rbp)
	jbe	.L14
	movl	$128, %eax
	subq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha512_block_data_order@PLT
.L14:
	movl	$112, %eax
	subq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-80(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$127, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$126, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$125, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$124, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$123, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$122, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	shrq	$48, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$121, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	shrq	$56, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$120, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$119, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$118, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$117, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$116, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$115, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$114, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	shrq	$48, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$113, %rax
	movb	%dl, (%rax)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	shrq	$56, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$112, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha512_block_data_order@PLT
	cmpq	$0, -72(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-80(%rbp), %rax
	movl	212(%rax), %eax
	cmpl	$64, %eax
	je	.L17
	cmpl	$64, %eax
	ja	.L18
	cmpl	$48, %eax
	je	.L19
	cmpl	$48, %eax
	ja	.L18
	cmpl	$28, %eax
	je	.L20
	cmpl	$32, %eax
	je	.L21
	jmp	.L18
.L20:
	movq	$0, -8(%rbp)
	jmp	.L22
.L23:
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	shrq	$48, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	shrq	$40, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L22:
	cmpq	$2, -8(%rbp)
	jbe	.L23
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	shrq	$48, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	shrq	$40, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L24
.L21:
	movq	$0, -8(%rbp)
	jmp	.L25
.L26:
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$48, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$40, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-40(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L25:
	cmpq	$3, -8(%rbp)
	jbe	.L26
	jmp	.L24
.L19:
	movq	$0, -8(%rbp)
	jmp	.L27
.L28:
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$48, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$40, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-32(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L27:
	cmpq	$5, -8(%rbp)
	jbe	.L28
	jmp	.L24
.L17:
	movq	$0, -8(%rbp)
	jmp	.L29
.L30:
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$48, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$40, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L29:
	cmpq	$7, -8(%rbp)
	jbe	.L30
	jmp	.L24
.L18:
	movl	$0, %eax
	jmp	.L16
.L24:
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	SHA512_Final, .-SHA512_Final
	.globl	SHA384_Final
	.type	SHA384_Final, @function
SHA384_Final:
.LFB165:
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
	call	SHA512_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	SHA384_Final, .-SHA384_Final
	.globl	SHA512_Update
	.type	SHA512_Update, @function
SHA512_Update:
.LFB166:
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
	addq	$80, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L34
	movl	$1, %eax
	jmp	.L35
.L34:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L36
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 72(%rax)
.L36:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-56(%rbp), %rdx
	shrq	$61, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-40(%rbp), %rax
	movl	208(%rax), %eax
	testl	%eax, %eax
	je	.L37
	movq	-40(%rbp), %rax
	movl	208(%rax), %eax
	movl	%eax, %edx
	movl	$128, %eax
	subq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L38
	movq	-40(%rbp), %rax
	movl	208(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movl	208(%rax), %eax
	movq	-56(%rbp), %rdx
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 208(%rax)
	movl	$1, %eax
	jmp	.L35
.L38:
	movq	-40(%rbp), %rax
	movl	208(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-32(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha512_block_data_order@PLT
.L37:
	cmpq	$127, -56(%rbp)
	jbe	.L39
	movq	-56(%rbp), %rax
	shrq	$7, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha512_block_data_order@PLT
	movq	-56(%rbp), %rax
	addq	%rax, -8(%rbp)
	andq	$127, -56(%rbp)
	movq	-56(%rbp), %rax
	negq	%rax
	addq	%rax, -8(%rbp)
.L39:
	cmpq	$0, -56(%rbp)
	je	.L40
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 208(%rax)
.L40:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	SHA512_Update, .-SHA512_Update
	.globl	SHA384_Update
	.type	SHA384_Update, @function
SHA384_Update:
.LFB167:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA512_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	SHA384_Update, .-SHA384_Update
	.globl	SHA512_Transform
	.type	SHA512_Transform, @function
SHA512_Transform:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha512_block_data_order@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	SHA512_Transform, .-SHA512_Transform
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
