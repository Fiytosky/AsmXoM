	.file	"json_enc.c"
	.text
	.section	.rodata
.LC0:
	.string	"../ssl/quic/json_enc.c"
	.text
	.type	wbuf_init, @function
wbuf_init:
.LFB36:
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
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$23, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	wbuf_init, .-wbuf_init
	.type	wbuf_cleanup, @function
wbuf_cleanup:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$35, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	wbuf_cleanup, .-wbuf_cleanup
	.type	wbuf_set0_bio, @function
wbuf_set0_bio:
.LFB38:
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
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	wbuf_set0_bio, .-wbuf_set0_bio
	.type	wbuf_clean, @function
wbuf_clean:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	wbuf_clean, .-wbuf_clean
	.type	wbuf_avail, @function
wbuf_avail:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	wbuf_avail, .-wbuf_avail
	.type	wbuf_write_char, @function
wbuf_write_char:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	wbuf_avail
	testq	%rax, %rax
	jne	.L10
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	wbuf_flush
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	leaq	(%rsi,%rax), %rdx
	movzbl	-12(%rbp), %eax
	movb	%al, (%rdx)
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	wbuf_write_char, .-wbuf_write_char
	.type	wbuf_write_str, @function
wbuf_write_str:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L13
.L15:
	movsbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	wbuf_write_char
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	cmpb	$0, -1(%rbp)
	jne	.L15
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	wbuf_write_str, .-wbuf_write_str
	.type	wbuf_flush, @function
wbuf_flush:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L17
.L20:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-16(%rbp), %rcx
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	jne	.L18
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movl	$0, %eax
	jmp	.L22
.L18:
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L17:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L20
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	cmpl	$0, -28(%rbp)
	je	.L21
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L21:
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	wbuf_flush, .-wbuf_flush
	.type	json_ensure_stack_size, @function
json_ensure_stack_size:
.LFB44:
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
	movq	80(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	cmpq	$16, -32(%rbp)
	ja	.L26
	movq	-24(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -8(%rbp)
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$17, %rax
	cmpq	%rax, %rdx
	jne	.L28
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L28:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rsi
	movl	$129, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L25
.L27:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	json_ensure_stack_size, .-json_ensure_stack_size
	.type	json_push, @function
json_push:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jbe	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L32
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	addq	%rax, %rax
	movq	%rax, -8(%rbp)
	jmp	.L34
.L33:
	movq	$16, -8(%rbp)
.L34:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_ensure_stack_size
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L31
.L35:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 80(%rax)
.L32:
	cmpl	$0, -28(%rbp)
	je	.L36
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	movzbl	%al, %eax
	movl	-28(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	addq	%rdx, %rax
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	jmp	.L37
.L36:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	movzbl	%al, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	addq	%rdx, %rax
	andl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
.L37:
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	movzbl	%al, %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 5(%rax)
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	testb	%al, %al
	jne	.L38
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
.L38:
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	json_push, .-json_push
	.type	json_pop, @function
json_pop:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %eax
	testb	%al, %al
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %eax
	testb	%al, %al
	jne	.L42
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movb	$7, 5(%rax)
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, 5(%rax)
.L43:
	movl	$1, %eax
.L41:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	json_pop, .-json_pop
	.type	json_peek, @function
json_peek:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L45
	cmpq	$0, -8(%rbp)
	jne	.L46
	movl	$-1, %eax
	jmp	.L47
.L46:
	subq	$1, -8(%rbp)
	movq	$7, -16(%rbp)
	jmp	.L48
.L45:
	subq	$1, -16(%rbp)
.L48:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movl	%edx, %ecx
	shrl	%cl, %eax
	andl	$1, %eax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	json_peek, .-json_peek
	.type	in_ijson, @function
in_ijson:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	shrl	$2, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	in_ijson, .-in_ijson
	.type	in_seq, @function
in_seq:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	in_seq, .-in_seq
	.type	in_pretty, @function
in_pretty:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	in_pretty, .-in_pretty
	.globl	ossl_json_init
	.type	ossl_json_init, @function
ossl_json_init:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	$88, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movb	$0, 4(%rax)
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$4096, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	wbuf_init
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-8(%rbp), %rax
	movb	$2, 6(%rax)
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	ossl_json_init, .-ossl_json_init
	.globl	ossl_json_cleanup
	.type	ossl_json_cleanup, @function
ossl_json_cleanup:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	wbuf_cleanup
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$17, %rax
	cmpq	%rax, %rdx
	je	.L59
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$253, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L59:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	ossl_json_cleanup, .-ossl_json_cleanup
	.globl	ossl_json_flush_cleanup
	.type	ossl_json_flush_cleanup, @function
ossl_json_flush_cleanup:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_flush@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_cleanup@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	ossl_json_flush_cleanup, .-ossl_json_flush_cleanup
	.globl	ossl_json_reset
	.type	ossl_json_reset, @function
ossl_json_reset:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	wbuf_clean
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 5(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 4(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	ossl_json_reset, .-ossl_json_reset
	.globl	ossl_json_flush
	.type	ossl_json_flush, @function
ossl_json_flush:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	wbuf_flush
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	ossl_json_flush, .-ossl_json_flush
	.globl	ossl_json_set0_sink
	.type	ossl_json_set0_sink, @function
ossl_json_set0_sink:
.LFB56:
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
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	wbuf_set0_bio
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	ossl_json_set0_sink, .-ossl_json_set0_sink
	.globl	ossl_json_in_error
	.type	ossl_json_in_error, @function
ossl_json_in_error:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	ossl_json_in_error, .-ossl_json_in_error
	.type	json_raise_error, @function
json_raise_error:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	json_raise_error, .-json_raise_error
	.type	json_undefer, @function
json_undefer:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	testb	%al, %al
	je	.L74
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_indent
	jmp	.L71
.L74:
	nop
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	json_undefer, .-json_undefer
	.type	json_write_char, @function
json_write_char:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	jne	.L78
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_undefer
	movsbl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	wbuf_write_char
	testl	%eax, %eax
	jne	.L75
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
	jmp	.L75
.L78:
	nop
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	json_write_char, .-json_write_char
	.type	json_write_str, @function
json_write_str:
.LFB61:
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
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	jne	.L82
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_undefer
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	wbuf_write_str
	testl	%eax, %eax
	jne	.L79
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
	jmp	.L79
.L82:
	nop
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	json_write_str, .-json_write_str
	.section	.rodata
.LC1:
	.string	"    "
	.text
	.type	json_indent, @function
json_indent:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	in_pretty
	testl	%eax, %eax
	je	.L88
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	json_write_char
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L86
.L87:
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_write_str
	addq	$1, -8(%rbp)
.L86:
	movq	-16(%rbp), %rax
	salq	$2, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L87
	jmp	.L83
.L88:
	nop
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	json_indent, .-json_indent
	.type	json_pre_item, @function
json_pre_item:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	je	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	-24(%rbp), %rax
	movzbl	6(%rax), %eax
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.L99
	cmpl	$2, %eax
	jne	.L93
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_peek
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L94
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
	movl	$0, %eax
	jmp	.L91
.L94:
	cmpl	$1, -4(%rbp)
	jne	.L95
	movq	-24(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	json_write_char
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	je	.L96
	movl	$0, %eax
	jmp	.L91
.L96:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_indent
.L95:
	cmpl	$0, -4(%rbp)
	jns	.L97
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	in_seq
	testl	%eax, %eax
	je	.L97
	movq	-24(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	json_write_char
.L97:
	movq	-24(%rbp), %rax
	movb	$1, 6(%rax)
	jmp	.L98
.L93:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
	movl	$0, %eax
	jmp	.L91
.L99:
	nop
.L98:
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	json_pre_item, .-json_pre_item
	.type	json_post_item, @function
json_post_item:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_peek
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movb	$2, 6(%rax)
	cmpl	$0, -4(%rbp)
	jns	.L102
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	in_seq
	testl	%eax, %eax
	je	.L102
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	json_write_char
.L102:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	json_post_item, .-json_post_item
	.type	composite_begin, @function
composite_begin:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, %eax
	movb	%al, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_pre_item
	testl	%eax, %eax
	je	.L104
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	json_push
	testl	%eax, %eax
	jne	.L105
.L104:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
.L105:
	movsbl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	json_write_char
	movq	-8(%rbp), %rax
	movb	$1, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	composite_begin, .-composite_begin
	.type	composite_end, @function
composite_end:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movb	%al, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	jne	.L113
	movq	-24(%rbp), %rax
	movb	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_peek
	cmpl	%eax, -28(%rbp)
	je	.L109
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
	jmp	.L106
.L109:
	cmpl	$0, -28(%rbp)
	jne	.L110
	movq	-24(%rbp), %rax
	movzbl	6(%rax), %eax
	cmpb	$1, %al
	jne	.L110
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
	jmp	.L106
.L110:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_pop
	testl	%eax, %eax
	jne	.L111
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
	jmp	.L106
.L111:
	cmpl	$0, -4(%rbp)
	jne	.L112
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_indent
.L112:
	movsbl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	json_write_char
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_post_item
	jmp	.L106
.L113:
	nop
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	composite_end, .-composite_end
	.globl	ossl_json_object_begin
	.type	ossl_json_object_begin, @function
ossl_json_object_begin:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$123, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	composite_begin
	movq	-8(%rbp), %rax
	movb	$0, 6(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	ossl_json_object_begin, .-ossl_json_object_begin
	.globl	ossl_json_object_end
	.type	ossl_json_object_end, @function
ossl_json_object_end:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$125, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	composite_end
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	ossl_json_object_end, .-ossl_json_object_end
	.globl	ossl_json_array_begin
	.type	ossl_json_array_begin, @function
ossl_json_array_begin:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$91, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	composite_begin
	movq	-8(%rbp), %rax
	movb	$1, 6(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	ossl_json_array_begin, .-ossl_json_array_begin
	.globl	ossl_json_array_end
	.type	ossl_json_array_end, @function
ossl_json_array_end:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$93, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	composite_end
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	ossl_json_array_end, .-ossl_json_array_end
	.globl	ossl_json_key
	.type	ossl_json_key, @function
ossl_json_key:
.LFB71:
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
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	jne	.L126
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_peek
	testl	%eax, %eax
	je	.L121
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
	jmp	.L118
.L121:
	movq	-8(%rbp), %rax
	movzbl	6(%rax), %eax
	cmpb	$2, %al
	jne	.L122
	movq	-8(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	json_write_char
	movq	-8(%rbp), %rax
	movb	$0, 6(%rax)
.L122:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_indent
	movq	-8(%rbp), %rax
	movzbl	6(%rax), %eax
	testb	%al, %al
	je	.L123
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_raise_error
	jmp	.L118
.L123:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_write_qstring
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	jne	.L127
	movq	-8(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	json_write_char
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	in_pretty
	testl	%eax, %eax
	je	.L125
	movq	-8(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	json_write_char
.L125:
	movq	-8(%rbp), %rax
	movb	$1, 6(%rax)
	jmp	.L118
.L126:
	nop
	jmp	.L118
.L127:
	nop
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	ossl_json_key, .-ossl_json_key
	.section	.rodata
.LC2:
	.string	"null"
	.text
	.globl	ossl_json_null
	.type	ossl_json_null, @function
ossl_json_null:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_pre_item
	testl	%eax, %eax
	je	.L131
	leaq	.LC2(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_write_str
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_post_item
	jmp	.L128
.L131:
	nop
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	ossl_json_null, .-ossl_json_null
	.section	.rodata
.LC3:
	.string	"true"
.LC4:
	.string	"false"
	.text
	.globl	ossl_json_bool
	.type	ossl_json_bool, @function
ossl_json_bool:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_pre_item
	testl	%eax, %eax
	je	.L137
	cmpl	$0, -12(%rbp)
	jle	.L135
	leaq	.LC3(%rip), %rax
	jmp	.L136
.L135:
	leaq	.LC4(%rip), %rax
.L136:
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	json_write_str
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_post_item
	jmp	.L132
.L137:
	nop
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	ossl_json_bool, .-ossl_json_bool
	.section	.rodata
.LC5:
	.string	"0"
	.text
	.type	json_u64, @function
json_u64:
.LFB74:
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
	leaq	-48(%rbp), %rax
	addq	$21, %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L139
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	in_ijson
	testl	%eax, %eax
	je	.L139
	movabsq	$9007199254740991, %rax
	cmpq	-64(%rbp), %rax
	jnb	.L139
	movl	$1, %eax
	jmp	.L140
.L139:
	movl	$0, %eax
.L140:
	movl	%eax, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	json_pre_item
	testl	%eax, %eax
	je	.L149
	cmpl	$0, -12(%rbp)
	je	.L143
	movq	-56(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	json_write_char
.L143:
	cmpq	$0, -64(%rbp)
	jne	.L144
	leaq	.LC5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L145
.L144:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L146
.L147:
	movq	-64(%rbp), %rcx
	movabsq	$-3689348814741910323, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movl	%edx, %eax
	addl	$48, %eax
	subq	$1, -8(%rbp)
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -64(%rbp)
.L146:
	cmpq	$0, -64(%rbp)
	jne	.L147
.L145:
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_write_str
	cmpl	$0, -12(%rbp)
	je	.L148
	movq	-56(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	json_write_char
.L148:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	json_post_item
	jmp	.L138
.L149:
	nop
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	json_u64, .-json_u64
	.globl	ossl_json_u64
	.type	ossl_json_u64, @function
ossl_json_u64:
.LFB75:
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
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_u64
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	ossl_json_u64, .-ossl_json_u64
	.globl	ossl_json_i64
	.type	ossl_json_i64, @function
ossl_json_i64:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	js	.L152
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_json_u64@PLT
	jmp	.L151
.L152:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	json_pre_item
	testl	%eax, %eax
	je	.L161
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	in_ijson
	testl	%eax, %eax
	je	.L155
	movabsq	$9007199254740991, %rax
	cmpq	%rax, -32(%rbp)
	jg	.L156
	movabsq	$-9007199254740991, %rax
	cmpq	%rax, -32(%rbp)
	jge	.L155
.L156:
	movl	$1, %eax
	jmp	.L157
.L155:
	movl	$0, %eax
.L157:
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L158
	movq	-24(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	json_write_char
.L158:
	movq	-24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	json_write_char
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, -32(%rbp)
	je	.L159
	movq	-32(%rbp), %rax
	negq	%rax
	movq	%rax, -8(%rbp)
	jmp	.L160
.L159:
	movabsq	$-9223372036854775808, %rax
	movq	%rax, -8(%rbp)
.L160:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_u64
	cmpl	$0, -12(%rbp)
	je	.L151
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	jne	.L151
	movq	-24(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	json_write_char
	jmp	.L151
.L161:
	nop
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	ossl_json_i64, .-ossl_json_i64
	.type	hex_digit, @function
hex_digit:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	jle	.L163
	movl	-4(%rbp), %eax
	addl	$87, %eax
	jmp	.L165
.L163:
	movl	-4(%rbp), %eax
	addl	$48, %eax
.L165:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	hex_digit, .-hex_digit
	.section	.rodata
.LC6:
	.string	"\\n"
.LC7:
	.string	"\\r"
.LC8:
	.string	"\\t"
.LC9:
	.string	"\\b"
.LC10:
	.string	"\\f"
.LC11:
	.string	"\\\""
.LC12:
	.string	"\\\\"
	.text
	.type	json_write_qstring_inner, @function
json_write_qstring_inner:
.LFB78:
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
	movl	%ecx, -76(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	jne	.L194
	movq	-56(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	json_write_char
	cmpl	$0, -76(%rbp)
	je	.L169
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	jmp	.L171
.L169:
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L171
.L193:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsbl	-25(%rbp), %eax
	cmpl	$92, %eax
	je	.L172
	cmpl	$92, %eax
	jg	.L173
	cmpl	$34, %eax
	je	.L174
	cmpl	$34, %eax
	jg	.L173
	cmpl	$13, %eax
	je	.L175
	cmpl	$13, %eax
	jg	.L173
	cmpl	$12, %eax
	je	.L176
	cmpl	$12, %eax
	jg	.L173
	cmpl	$10, %eax
	je	.L177
	cmpl	$10, %eax
	jg	.L173
	cmpl	$8, %eax
	je	.L178
	cmpl	$9, %eax
	je	.L179
	jmp	.L173
.L177:
	leaq	.LC6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L175:
	leaq	.LC7(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L179:
	leaq	.LC8(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L178:
	leaq	.LC9(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L176:
	leaq	.LC10(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L174:
	leaq	.LC11(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L172:
	leaq	.LC12(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L173:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-63, %al
	jbe	.L181
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-33, %al
	ja	.L181
	cmpq	$1, -24(%rbp)
	jbe	.L181
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L181
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$-65, %al
	ja	.L181
	movq	-64(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, -47(%rbp)
	movb	$0, -45(%rbp)
	addq	$1, -64(%rbp)
	subq	$1, -24(%rbp)
	leaq	-47(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L181:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-33, %al
	jbe	.L182
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-17, %al
	ja	.L182
	cmpq	$2, -24(%rbp)
	jbe	.L182
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L182
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$-65, %al
	ja	.L182
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L182
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$-65, %al
	ja	.L182
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-32, %al
	jne	.L183
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$-97, %al
	jbe	.L182
.L183:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-19, %al
	jne	.L184
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$-97, %al
	ja	.L182
.L184:
	movq	-64(%rbp), %rcx
	leaq	-47(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movb	$0, -44(%rbp)
	addq	$2, -64(%rbp)
	subq	$2, -24(%rbp)
	leaq	-47(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L182:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-17, %al
	jbe	.L185
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-12, %al
	ja	.L185
	cmpq	$3, -24(%rbp)
	jbe	.L185
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L185
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$-65, %al
	ja	.L185
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L185
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$-65, %al
	ja	.L185
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L185
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$-65, %al
	ja	.L185
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-16, %al
	jne	.L186
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$-113, %al
	jbe	.L185
.L186:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-12, %al
	jne	.L187
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$-113, %al
	ja	.L185
.L187:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -47(%rbp)
	movb	$0, -43(%rbp)
	addq	$3, -64(%rbp)
	subq	$3, -24(%rbp)
	leaq	-47(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L185:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$31, %al
	jbe	.L188
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jbe	.L189
.L188:
	movb	$92, -47(%rbp)
	movb	$117, -46(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L190
.L191:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	$3, %eax
	subl	-12(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$15, %eax
	movl	%eax, %edi
	call	hex_digit
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	$2, %eax
	cltq
	movb	%dl, -47(%rbp,%rax)
	addl	$1, -12(%rbp)
.L190:
	cmpl	$3, -12(%rbp)
	jle	.L191
	movb	$0, -41(%rbp)
	leaq	-47(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L189:
	movsbl	-25(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	json_write_char
	jmp	.L192
.L180:
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_write_str
.L192:
	addq	$1, -64(%rbp)
	subq	$1, -24(%rbp)
.L171:
	cmpq	$0, -24(%rbp)
	jne	.L193
	movq	-56(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	json_write_char
	jmp	.L166
.L194:
	nop
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	json_write_qstring_inner, .-json_write_qstring_inner
	.type	json_write_qstring, @function
json_write_qstring:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	json_write_qstring_inner
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	json_write_qstring, .-json_write_qstring
	.type	json_write_qstring_len, @function
json_write_qstring_len:
.LFB80:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	json_write_qstring_inner
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	json_write_qstring_len, .-json_write_qstring_len
	.globl	ossl_json_str
	.type	ossl_json_str, @function
ossl_json_str:
.LFB81:
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
	movq	%rax, %rdi
	call	json_pre_item
	testl	%eax, %eax
	je	.L200
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	json_write_qstring
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_post_item
	jmp	.L197
.L200:
	nop
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	ossl_json_str, .-ossl_json_str
	.globl	ossl_json_str_len
	.type	ossl_json_str_len, @function
ossl_json_str_len:
.LFB82:
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
	movq	%rax, %rdi
	call	json_pre_item
	testl	%eax, %eax
	je	.L204
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	json_write_qstring_len
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	json_post_item
	jmp	.L201
.L204:
	nop
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	ossl_json_str_len, .-ossl_json_str_len
	.globl	ossl_json_str_hex
	.type	ossl_json_str_hex, @function
ossl_json_str_hex:
.LFB83:
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
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	json_pre_item
	testl	%eax, %eax
	je	.L210
	movq	-40(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	json_write_char
	jmp	.L208
.L209:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	movzbl	-17(%rbp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	hex_digit
	movsbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	json_write_char
	movzbl	-17(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edi
	call	hex_digit
	movsbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	json_write_char
	addq	$1, -8(%rbp)
.L208:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L209
	movq	-40(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	json_write_char
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	json_post_item
	jmp	.L205
.L210:
	nop
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	ossl_json_str_hex, .-ossl_json_str_hex
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
