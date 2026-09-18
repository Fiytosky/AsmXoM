	.file	"blake2b_prov.c"
	.text
	.type	load64, @function
load64:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	jmp	.L3
.L2:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-40(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	load64, .-load64
	.type	store32, @function
store32:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$1, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L5
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L9
.L5:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	movl	-28(%rbp), %edx
	movl	-4(%rbp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L7:
	cmpl	$3, -4(%rbp)
	jle	.L8
.L9:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	store32, .-store32
	.type	store64, @function
store64:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L11
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L15
.L11:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L13
.L14:
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L13:
	cmpl	$7, -4(%rbp)
	jle	.L14
.L15:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	store64, .-store64
	.type	rotr64, @function
rotr64:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %ecx
	rorq	%cl, %rdx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	rotr64, .-rotr64
	.section	.rodata
	.align 32
	.type	blake2b_IV, @object
	.size	blake2b_IV, 64
blake2b_IV:
	.quad	7640891576956012808
	.quad	-4942790177534073029
	.quad	4354685564936845355
	.quad	-6534734903238641935
	.quad	5840696475078001361
	.quad	-7276294671716946913
	.quad	2270897969802886507
	.quad	6620516959819538809
	.align 32
	.type	blake2b_sigma, @object
	.size	blake2b_sigma, 192
blake2b_sigma:
	.base64	"AAECAwQFBgcICQoLDA0ODw=="
	.base64	"DgoECAkPDQYBDAACCwcFAw=="
	.string	"\013\b\f"
	.base64	"BQIPDQoOAwYHAQkE"
	.base64	"BwkDAQ0MCw4CBgUKBAAPCA=="
	.string	"\t"
	.base64	"BQcCBAoPDgELDAYIAw0="
	.base64	"AgwGCgALCAMEDQcFDw4BCQ=="
	.base64	"DAUBDw4NBAoABwYDCQIICw=="
	.base64	"DQsHDgwBAwkFAA8ECAYCCg=="
	.base64	"Bg8OCQsDAAgMAg0HAQQKBQ=="
	.base64	"CgIIBAcGAQUPCwkOAwwNAA=="
	.base64	"AAECAwQFBgcICQoLDA0ODw=="
	.base64	"DgoECAkPDQYBDAACCwcFAw=="
	.text
	.type	blake2b_set_lastblock, @function
blake2b_set_lastblock:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$-1, 80(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	blake2b_set_lastblock, .-blake2b_set_lastblock
	.type	blake2b_init0, @function
blake2b_init0:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$240, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -4(%rbp)
	jmp	.L20
.L21:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	blake2b_IV(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -4(%rbp)
.L20:
	cmpl	$7, -4(%rbp)
	jle	.L21
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	blake2b_init0, .-blake2b_init0
	.type	blake2b_init_param, @function
blake2b_init_param:
.LFB423:
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
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	blake2b_init0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	$0, -8(%rbp)
	jmp	.L23
.L24:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	load64
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	(%rdx,%rcx,8), %rdx
	xorq	%rdx, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -8(%rbp)
.L23:
	cmpq	$7, -8(%rbp)
	jbe	.L24
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	blake2b_init_param, .-blake2b_init_param
	.globl	ossl_blake2b_param_init
	.type	ossl_blake2b_param_init, @function
ossl_blake2b_param_init:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$64, (%rax)
	movq	-8(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 2(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 3(%rax)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	store32
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	store64
	movq	-8(%rbp), %rax
	movb	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 17(%rax)
	movq	-8(%rbp), %rax
	addq	$18, %rax
	movl	$14, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	ossl_blake2b_param_init, .-ossl_blake2b_param_init
	.globl	ossl_blake2b_param_set_digest_length
	.type	ossl_blake2b_param_set_digest_length, @function
ossl_blake2b_param_set_digest_length:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-12(%rbp), %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	ossl_blake2b_param_set_digest_length, .-ossl_blake2b_param_set_digest_length
	.globl	ossl_blake2b_param_set_key_length
	.type	ossl_blake2b_param_set_key_length, @function
ossl_blake2b_param_set_key_length:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-12(%rbp), %edx
	movb	%dl, 1(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	ossl_blake2b_param_set_key_length, .-ossl_blake2b_param_set_key_length
	.globl	ossl_blake2b_param_set_personal
	.type	ossl_blake2b_param_set_personal, @function
ossl_blake2b_param_set_personal:
.LFB427:
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
	leaq	48(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$16, %eax
	subq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	ossl_blake2b_param_set_personal, .-ossl_blake2b_param_set_personal
	.globl	ossl_blake2b_param_set_salt
	.type	ossl_blake2b_param_set_salt, @function
ossl_blake2b_param_set_salt:
.LFB428:
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
	leaq	32(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$16, %eax
	subq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	32(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ossl_blake2b_param_set_salt, .-ossl_blake2b_param_set_salt
	.globl	ossl_blake2b_init
	.type	ossl_blake2b_init, @function
ossl_blake2b_init:
.LFB429:
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
	call	blake2b_init_param
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	ossl_blake2b_init, .-ossl_blake2b_init
	.globl	ossl_blake2b_init_key
	.type	ossl_blake2b_init_key, @function
ossl_blake2b_init_key:
.LFB430:
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
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	blake2b_init_param
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-144(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %edx
	movq	-152(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-128(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2b_update@PLT
	leaq	-128(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	ossl_blake2b_init_key, .-ossl_blake2b_init_key
	.type	blake2b_compress, @function
blake2b_compress:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-296(%rbp), %rax
	movl	$128, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L35
.L36:
	movq	-280(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, -272(%rbp,%rax,8)
	addl	$1, -4(%rbp)
.L35:
	cmpl	$7, -4(%rbp)
	jle	.L36
.L41:
	movl	$0, -4(%rbp)
	jmp	.L37
.L38:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	load64
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -144(%rbp,%rdx,8)
	addl	$1, -4(%rbp)
.L37:
	cmpl	$15, -4(%rbp)
	jle	.L38
	movq	-280(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-280(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	-16(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, 72(%rax)
	movabsq	$7640891576956012808, %rax
	movq	%rax, -208(%rbp)
	movabsq	$-4942790177534073029, %rax
	movq	%rax, -200(%rbp)
	movabsq	$4354685564936845355, %rax
	movq	%rax, -192(%rbp)
	movabsq	$-6534734903238641935, %rax
	movq	%rax, -184(%rbp)
	movq	-280(%rbp), %rax
	movq	64(%rax), %rax
	movabsq	$5840696475078001361, %rdx
	xorq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-280(%rbp), %rax
	movq	72(%rax), %rax
	movabsq	$-7276294671716946913, %rdx
	xorq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-280(%rbp), %rax
	movq	80(%rax), %rax
	movabsq	$2270897969802886507, %rdx
	xorq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-280(%rbp), %rax
	movq	88(%rax), %rax
	movabsq	$6620516959819538809, %rdx
	xorq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-240(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-168(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	-272(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -232(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-264(%rbp), %rdx
	movq	-224(%rbp), %rax
	addq	%rax, %rdx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-176(%rbp), %rdx
	movq	-264(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-224(%rbp), %rdx
	movq	-184(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -224(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -168(%rbp)
	movq	-208(%rbp), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rdx
	movq	-248(%rbp), %rax
	xorq	%rdx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rdx
	movq	-200(%rbp), %rax
	xorq	%rdx, %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, -240(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L39
.L40:
	movl	-4(%rbp), %eax
	cltq
	movq	-272(%rbp,%rax,8), %rcx
	movl	-4(%rbp), %eax
	addl	$8, %eax
	cltq
	movq	-272(%rbp,%rax,8), %rsi
	movq	-280(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	xorq	%rsi, %rax
	xorq	%rax, %rcx
	movq	%rcx, %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, -272(%rbp,%rax,8)
	movl	-4(%rbp), %eax
	cltq
	movq	-272(%rbp,%rax,8), %rcx
	movq	-280(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -4(%rbp)
.L39:
	cmpl	$7, -4(%rbp)
	jle	.L40
	movq	-16(%rbp), %rax
	addq	%rax, -288(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -296(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.L41
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	blake2b_compress, .-blake2b_compress
	.globl	ossl_blake2b_update
	.type	ossl_blake2b_update, @function
ossl_blake2b_update:
.LFB432:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movl	$128, %edx
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	-56(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L43
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-40(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	blake2b_compress
	movq	-40(%rbp), %rax
	movq	$0, 224(%rax)
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
.L44:
	cmpq	$128, -56(%rbp)
	jbe	.L43
	movq	-56(%rbp), %rax
	andl	$127, %eax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L46
	movq	$128, -16(%rbp)
.L46:
	movq	-16(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	blake2b_compress
	movq	-56(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.L43:
	movq	-40(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	224(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 224(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ossl_blake2b_update, .-ossl_blake2b_update
	.globl	ossl_blake2b_final
	.type	ossl_blake2b_final, @function
ossl_blake2b_final:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movq	232(%rax), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movl	%eax, -16(%rbp)
	movq	-96(%rbp), %rax
	movq	232(%rax), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.L49
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
.L49:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	blake2b_set_lastblock
	movq	-96(%rbp), %rax
	movq	224(%rax), %rax
	movl	$128, %edx
	subq	%rax, %rdx
	movq	-96(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	224(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-96(%rbp), %rax
	movq	224(%rax), %rdx
	movq	-96(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	blake2b_compress
	movl	$0, -12(%rbp)
	jmp	.L50
.L51:
	movq	-96(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store64
	addl	$1, -12(%rbp)
.L50:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L51
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L52
	movq	-96(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L52:
	movq	-96(%rbp), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	ossl_blake2b_final, .-ossl_blake2b_final
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
