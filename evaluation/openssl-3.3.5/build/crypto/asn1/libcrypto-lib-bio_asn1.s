	.file	"bio_asn1.c"
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
	.string	"asn1"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_asn1, @object
	.size	methods_asn1, 112
methods_asn1:
	.long	534
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	asn1_bio_write
	.quad	bread_conv
	.quad	asn1_bio_read
	.quad	asn1_bio_puts
	.quad	asn1_bio_gets
	.quad	asn1_bio_ctrl
	.quad	asn1_bio_new
	.quad	asn1_bio_free
	.quad	asn1_bio_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_asn1
	.type	BIO_f_asn1, @function
BIO_f_asn1:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_asn1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	BIO_f_asn1, .-BIO_f_asn1
	.section	.rodata
.LC1:
	.string	"../crypto/asn1/bio_asn1.c"
	.text
	.type	asn1_bio_new, @function
asn1_bio_new:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$101, %edx
	movq	%rax, %rsi
	movl	$96, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	asn1_bio_init
	testl	%eax, %eax
	jne	.L10
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$106, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	asn1_bio_new, .-asn1_bio_new
	.type	asn1_bio_init, @function
asn1_bio_init:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L12
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L12:
	movl	-12(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movl	$0, %eax
	jmp	.L13
.L14:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 36(%rax)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	asn1_bio_init, .-asn1_bio_init
	.type	asn1_bio_free, @function
asn1_bio_free:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L17
.L18:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-8(%rbp), %rax
	movq	48(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L19:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	64(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L20:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$146, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$147, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	asn1_bio_free, .-asn1_bio_free
	.type	asn1_bio_write, @function
asn1_bio_write:
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
	movl	%edx, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L22
	cmpl	$0, -68(%rbp)
	js	.L22
	cmpq	$0, -24(%rbp)
	je	.L22
	cmpq	$0, -32(%rbp)
	jne	.L23
.L22:
	movl	$0, %eax
	jmp	.L47
.L23:
	movl	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
.L44:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	ja	.L44
	cmpl	$5, %eax
	jnb	.L26
	cmpl	$4, %eax
	je	.L27
	cmpl	$4, %eax
	ja	.L44
	cmpl	$3, %eax
	je	.L28
	cmpl	$3, %eax
	ja	.L44
	cmpl	$2, %eax
	je	.L29
	cmpl	$2, %eax
	ja	.L44
	testl	%eax, %eax
	je	.L30
	cmpl	$1, %eax
	je	.L31
	jmp	.L44
.L30:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$2, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	asn1_bio_setup_ex
	testl	%eax, %eax
	jne	.L48
	movl	$-1, %eax
	jmp	.L47
.L31:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	asn1_bio_flush_ex
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L49
	jmp	.L34
.L29:
	movq	-24(%rbp), %rax
	movl	36(%rax), %edx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	ASN1_object_size@PLT
	subl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L35
	movl	$-1, %eax
	jmp	.L47
.L35:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %esi
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	movl	-68(%rbp), %edx
	leaq	-40(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
	movq	-24(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-24(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L25
.L28:
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L50
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	jmp	.L25
.L37:
	movq	-24(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L25
.L27:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L39
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L40
.L39:
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.L40:
	movl	-4(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L51
	movl	-12(%rbp), %eax
	addl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
	movl	-12(%rbp), %eax
	subl	%eax, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
.L42:
	cmpl	$0, -68(%rbp)
	jne	.L52
	jmp	.L34
.L26:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
	jmp	.L47
.L48:
	nop
	jmp	.L44
.L49:
	nop
	jmp	.L44
.L52:
	nop
.L25:
	jmp	.L44
.L50:
	nop
	jmp	.L34
.L51:
	nop
.L34:
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	cmpl	$0, -8(%rbp)
	jle	.L45
	movl	-8(%rbp), %eax
	jmp	.L47
.L45:
	movl	-12(%rbp), %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	asn1_bio_write, .-asn1_bio_write
	.type	asn1_bio_flush_ex, @function
asn1_bio_flush_ex:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jg	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movq	-48(%rbp), %rax
	movl	80(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	84(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L62
	movq	-48(%rbp), %rax
	movl	80(%rax), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 80(%rax)
	movq	-48(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jle	.L58
	movq	-48(%rbp), %rax
	movl	84(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 84(%rax)
	jmp	.L54
.L58:
	cmpq	$0, -56(%rbp)
	je	.L60
	movq	-48(%rbp), %rax
	leaq	88(%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	72(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
.L60:
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	$0, 84(%rax)
	jmp	.L57
.L62:
	nop
.L57:
	movl	-20(%rbp), %eax
.L55:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	asn1_bio_flush_ex, .-asn1_bio_flush_ex
	.type	asn1_bio_setup_ex, @function
asn1_bio_setup_ex:
.LFB166:
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
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L64
	movq	-16(%rbp), %rax
	leaq	88(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	72(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L64
	movq	-8(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-16(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jle	.L66
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L67
.L66:
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
.L67:
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	asn1_bio_setup_ex, .-asn1_bio_setup_ex
	.type	asn1_bio_read, @function
asn1_bio_read:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	asn1_bio_read, .-asn1_bio_read
	.type	asn1_bio_puts, @function
asn1_bio_puts:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_bio_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	asn1_bio_puts, .-asn1_bio_puts
	.type	asn1_bio_gets, @function
asn1_bio_gets:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L74
	movl	$0, %eax
	jmp	.L75
.L74:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	asn1_bio_gets, .-asn1_bio_gets
	.type	asn1_bio_callback_ctrl, @function
asn1_bio_callback_ctrl:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	asn1_bio_callback_ctrl, .-asn1_bio_callback_ctrl
	.type	asn1_bio_ctrl, @function
asn1_bio_ctrl:
.LFB171:
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
	movq	%rcx, -64(%rbp)
	movq	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpl	$154, -44(%rbp)
	je	.L82
	cmpl	$154, -44(%rbp)
	jg	.L83
	cmpl	$153, -44(%rbp)
	je	.L84
	cmpl	$153, -44(%rbp)
	jg	.L83
	cmpl	$152, -44(%rbp)
	je	.L85
	cmpl	$152, -44(%rbp)
	jg	.L83
	cmpl	$151, -44(%rbp)
	je	.L86
	cmpl	$151, -44(%rbp)
	jg	.L83
	cmpl	$150, -44(%rbp)
	je	.L87
	cmpl	$150, -44(%rbp)
	jg	.L83
	cmpl	$11, -44(%rbp)
	je	.L88
	cmpl	$149, -44(%rbp)
	jne	.L83
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L89
.L87:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L89
.L86:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L89
.L85:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L89
.L84:
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 88(%rax)
	jmp	.L89
.L82:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L89
.L88:
	cmpq	$0, -24(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L81
.L90:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L91
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$6, %r8d
	movl	$5, %ecx
	movq	%rax, %rdi
	call	asn1_bio_setup_ex
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L81
.L91:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	.L92
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$6, %ecx
	movq	%rax, %rdi
	call	asn1_bio_flush_ex
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L92
	movq	-8(%rbp), %rax
	jmp	.L81
.L92:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	jne	.L93
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	jmp	.L81
.L93:
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
	jmp	.L81
.L83:
	cmpq	$0, -24(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L81
.L94:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	jmp	.L81
.L89:
	movq	-8(%rbp), %rax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	asn1_bio_ctrl, .-asn1_bio_ctrl
	.type	asn1_bio_set_ex, @function
asn1_bio_set_ex:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	asn1_bio_set_ex, .-asn1_bio_set_ex
	.type	asn1_bio_get_ex, @function
asn1_bio_get_ex:
.LFB173:
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
	movq	%rcx, -64(%rbp)
	leaq	-32(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L98
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L98:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	asn1_bio_get_ex, .-asn1_bio_get_ex
	.globl	BIO_asn1_set_prefix
	.type	BIO_asn1_set_prefix, @function
BIO_asn1_set_prefix:
.LFB174:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$149, %esi
	movq	%rax, %rdi
	call	asn1_bio_set_ex
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BIO_asn1_set_prefix, .-BIO_asn1_set_prefix
	.globl	BIO_asn1_get_prefix
	.type	BIO_asn1_get_prefix, @function
BIO_asn1_get_prefix:
.LFB175:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	asn1_bio_get_ex
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	BIO_asn1_get_prefix, .-BIO_asn1_get_prefix
	.globl	BIO_asn1_set_suffix
	.type	BIO_asn1_set_suffix, @function
BIO_asn1_set_suffix:
.LFB176:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	asn1_bio_set_ex
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	BIO_asn1_set_suffix, .-BIO_asn1_set_suffix
	.globl	BIO_asn1_get_suffix
	.type	BIO_asn1_get_suffix, @function
BIO_asn1_get_suffix:
.LFB177:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	asn1_bio_get_ex
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	BIO_asn1_get_suffix, .-BIO_asn1_get_suffix
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"asn1_bio_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
