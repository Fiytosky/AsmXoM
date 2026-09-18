	.file	"blake2s_prov.c"
	.text
	.type	load32, @function
load32:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L2
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	jmp	.L3
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	load32, .-load32
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
	.type	store48, @function
store48:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	store48, .-store48
	.type	rotr32, @function
rotr32:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	rotr32, .-rotr32
	.section	.rodata
	.align 32
	.type	blake2s_IV, @object
	.size	blake2s_IV, 32
blake2s_IV:
	.long	1779033703
	.long	-1150833019
	.long	1013904242
	.long	-1521486534
	.long	1359893119
	.long	-1694144372
	.long	528734635
	.long	1541459225
	.align 32
	.type	blake2s_sigma, @object
	.size	blake2s_sigma, 160
blake2s_sigma:
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
	.text
	.type	blake2s_set_lastblock, @function
blake2s_set_lastblock:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$-1, 40(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	blake2s_set_lastblock, .-blake2s_set_lastblock
	.type	blake2s_init0, @function
blake2s_init0:
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
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -4(%rbp)
	jmp	.L15
.L16:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	blake2s_IV(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -4(%rbp)
.L15:
	cmpl	$7, -4(%rbp)
	jle	.L16
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	blake2s_init0, .-blake2s_init0
	.type	blake2s_init_param, @function
blake2s_init_param:
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
	call	blake2s_init0
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	$0, -8(%rbp)
	jmp	.L18
.L19:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	load32
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	(%rdx,%rcx,4), %edx
	xorl	%edx, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
	addq	$1, -8(%rbp)
.L18:
	cmpq	$7, -8(%rbp)
	jbe	.L19
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	blake2s_init_param, .-blake2s_init_param
	.globl	ossl_blake2s_param_init
	.type	ossl_blake2s_param_init, @function
ossl_blake2s_param_init:
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
	movb	$32, (%rax)
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
	call	store48
	movq	-8(%rbp), %rax
	movb	$0, 14(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 15(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	ossl_blake2s_param_init, .-ossl_blake2s_param_init
	.globl	ossl_blake2s_param_set_digest_length
	.type	ossl_blake2s_param_set_digest_length, @function
ossl_blake2s_param_set_digest_length:
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
	.size	ossl_blake2s_param_set_digest_length, .-ossl_blake2s_param_set_digest_length
	.globl	ossl_blake2s_param_set_key_length
	.type	ossl_blake2s_param_set_key_length, @function
ossl_blake2s_param_set_key_length:
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
	.size	ossl_blake2s_param_set_key_length, .-ossl_blake2s_param_set_key_length
	.globl	ossl_blake2s_param_set_personal
	.type	ossl_blake2s_param_set_personal, @function
ossl_blake2s_param_set_personal:
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
	leaq	24(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$8, %eax
	subq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	24(%rdx), %rcx
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
	.size	ossl_blake2s_param_set_personal, .-ossl_blake2s_param_set_personal
	.globl	ossl_blake2s_param_set_salt
	.type	ossl_blake2s_param_set_salt, @function
ossl_blake2s_param_set_salt:
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
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$8, %eax
	subq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	16(%rdx), %rcx
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
	.size	ossl_blake2s_param_set_salt, .-ossl_blake2s_param_set_salt
	.globl	ossl_blake2s_init
	.type	ossl_blake2s_init, @function
ossl_blake2s_init:
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
	call	blake2s_init_param
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	ossl_blake2s_init, .-ossl_blake2s_init
	.globl	ossl_blake2s_init_key
	.type	ossl_blake2s_init_key, @function
ossl_blake2s_init_key:
.LFB430:
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
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	blake2s_init_param
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %edx
	movq	-88(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_blake2s_update@PLT
	leaq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	ossl_blake2s_init_key, .-ossl_blake2s_init_key
	.type	blake2s_compress, @function
blake2s_compress:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-168(%rbp), %rax
	movl	$64, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L30
.L31:
	movq	-152(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-8(%rbp), %rax
	movl	%edx, -144(%rbp,%rax,4)
	addq	$1, -8(%rbp)
.L30:
	cmpq	$7, -8(%rbp)
	jbe	.L31
.L36:
	movq	$0, -8(%rbp)
	jmp	.L32
.L33:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	load32
	movq	-8(%rbp), %rdx
	movl	%eax, -80(%rbp,%rdx,4)
	addq	$1, -8(%rbp)
.L32:
	cmpq	$15, -8(%rbp)
	jbe	.L33
	movq	-152(%rbp), %rax
	movl	32(%rax), %eax
	movq	-16(%rbp), %rdx
	addl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-152(%rbp), %rax
	movl	36(%rax), %edx
	movq	-152(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %eax
	cmpq	-16(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	$1779033703, %eax
	movl	%eax, -112(%rbp)
	movl	$-1150833019, %eax
	movl	%eax, -108(%rbp)
	movl	$1013904242, %eax
	movl	%eax, -104(%rbp)
	movl	$-1521486534, %eax
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movl	32(%rax), %eax
	movl	$1359893119, %edx
	xorl	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-152(%rbp), %rax
	movl	36(%rax), %eax
	movl	$-1694144372, %edx
	xorl	%edx, %eax
	movl	%eax, -92(%rbp)
	movq	-152(%rbp), %rax
	movl	40(%rax), %eax
	movl	$528734635, %edx
	xorl	%edx, %eax
	movl	%eax, -88(%rbp)
	movq	-152(%rbp), %rax
	movl	44(%rax), %eax
	movl	$1541459225, %edx
	xorl	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$10, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-144(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$2, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-96(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-112(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$8, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$4, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-92(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-124(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$7, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-88(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-104(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$1, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$5, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-84(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-100(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-116(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$15, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %edx
	movl	-124(%rbp), %eax
	addl	%eax, %edx
	movl	$11, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-84(%rbp), %edx
	movl	-144(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -84(%rbp)
	movl	-104(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-124(%rbp), %edx
	movl	-104(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -124(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$9, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-140(%rbp), %edx
	movl	-120(%rbp), %eax
	addl	%eax, %edx
	movl	$14, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-96(%rbp), %edx
	movl	-140(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-120(%rbp), %edx
	movl	-100(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$3, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %eax
	addl	%eax, %edx
	movl	$12, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -136(%rbp)
	movl	-92(%rbp), %edx
	movl	-136(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %edx
	movl	-112(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$13, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$12, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	$0, %eax
	movzbl	%al, %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %edx
	movl	-132(%rbp), %eax
	xorl	%edx, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -88(%rbp)
	movl	-108(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	-128(%rbp), %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	rotr32
	movl	%eax, -128(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L34
.L35:
	movq	-8(%rbp), %rax
	movl	-144(%rbp,%rax,4), %ecx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	-144(%rbp,%rax,4), %esi
	movq	-152(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	(%rax,%rdx,4), %eax
	xorl	%esi, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rax
	movl	%edx, -144(%rbp,%rax,4)
	movq	-8(%rbp), %rax
	movl	-144(%rbp,%rax,4), %ecx
	movq	-152(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
	addq	$1, -8(%rbp)
.L34:
	cmpq	$7, -8(%rbp)
	jbe	.L35
	movq	-16(%rbp), %rax
	addq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L36
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	blake2s_compress, .-blake2s_compress
	.globl	ossl_blake2s_update
	.type	ossl_blake2s_update, @function
ossl_blake2s_update:
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
	movq	112(%rax), %rax
	movl	$64, %edx
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	-56(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L38
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-40(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	blake2s_compress
	movq	-40(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
.L39:
	cmpq	$64, -56(%rbp)
	jbe	.L38
	movq	-56(%rbp), %rax
	andl	$63, %eax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L41
	movq	$64, -16(%rbp)
.L41:
	movq	-16(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	blake2s_compress
	movq	-56(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.L38:
	movq	-40(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 112(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ossl_blake2s_update, .-ossl_blake2s_update
	.globl	ossl_blake2s_final
	.type	ossl_blake2s_final, @function
ossl_blake2s_final:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	addq	$3, %rax
	shrq	$2, %rax
	movl	%eax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	andl	$3, %eax
	testq	%rax, %rax
	jne	.L44
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.L44:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	blake2s_set_lastblock
	movq	-64(%rbp), %rax
	movq	112(%rax), %rax
	movl	$64, %edx
	subq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	112(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-64(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	blake2s_compress
	movl	$0, -12(%rbp)
	jmp	.L45
.L46:
	movq	-64(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	store32
	addl	$1, -12(%rbp)
.L45:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L46
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L47
	movq	-64(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L47:
	movq	-64(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	ossl_blake2s_final, .-ossl_blake2s_final
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
