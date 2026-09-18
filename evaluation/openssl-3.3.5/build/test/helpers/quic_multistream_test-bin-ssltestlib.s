	.file	"ssltestlib.c"
	.text
	.type	sk_MEMPACKET_num, @function
sk_MEMPACKET_num:
.LFB502:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	sk_MEMPACKET_num, .-sk_MEMPACKET_num
	.type	sk_MEMPACKET_value, @function
sk_MEMPACKET_value:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	sk_MEMPACKET_value, .-sk_MEMPACKET_value
	.type	sk_MEMPACKET_new_null, @function
sk_MEMPACKET_new_null:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	sk_MEMPACKET_new_null, .-sk_MEMPACKET_new_null
	.type	sk_MEMPACKET_delete, @function
sk_MEMPACKET_delete:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	sk_MEMPACKET_delete, .-sk_MEMPACKET_delete
	.type	sk_MEMPACKET_push, @function
sk_MEMPACKET_push:
.LFB512:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	sk_MEMPACKET_push, .-sk_MEMPACKET_push
	.type	sk_MEMPACKET_shift, @function
sk_MEMPACKET_shift:
.LFB515:
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
	call	OPENSSL_sk_shift@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	sk_MEMPACKET_shift, .-sk_MEMPACKET_shift
	.type	sk_MEMPACKET_pop_free, @function
sk_MEMPACKET_pop_free:
.LFB516:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	sk_MEMPACKET_pop_free, .-sk_MEMPACKET_pop_free
	.type	sk_MEMPACKET_insert, @function
sk_MEMPACKET_insert:
.LFB517:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	sk_MEMPACKET_insert, .-sk_MEMPACKET_insert
	.local	method_tls_dump
	.comm	method_tls_dump,8,8
	.local	meth_mem
	.comm	meth_mem,8,8
	.local	meth_always_retry
	.comm	meth_always_retry,8,8
	.local	meth_maybe_retry
	.comm	meth_maybe_retry,8,8
	.data
	.align 4
	.type	retry_err, @object
	.size	retry_err, 4
retry_err:
	.long	-1
	.section	.rodata
.LC0:
	.string	"TLS dump filter"
	.text
	.globl	bio_f_tls_dump_filter
	.type	bio_f_tls_dump_filter, @function
bio_f_tls_dump_filter:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_tls_dump(%rip), %rax
	testq	%rax, %rax
	jne	.L17
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movl	$640, %edi
	call	BIO_meth_new@PLT
	movq	%rax, method_tls_dump(%rip)
	movq	method_tls_dump(%rip), %rax
	testq	%rax, %rax
	je	.L18
	movq	method_tls_dump(%rip), %rax
	leaq	tls_dump_write(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_write@PLT
	testl	%eax, %eax
	je	.L18
	movq	method_tls_dump(%rip), %rax
	leaq	tls_dump_read(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_read@PLT
	testl	%eax, %eax
	je	.L18
	movq	method_tls_dump(%rip), %rax
	leaq	tls_dump_puts(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_puts@PLT
	testl	%eax, %eax
	je	.L18
	movq	method_tls_dump(%rip), %rax
	leaq	tls_dump_gets(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_gets@PLT
	testl	%eax, %eax
	je	.L18
	movq	method_tls_dump(%rip), %rax
	leaq	tls_dump_ctrl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	je	.L18
	movq	method_tls_dump(%rip), %rax
	leaq	tls_dump_new(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_create@PLT
	testl	%eax, %eax
	je	.L18
	movq	method_tls_dump(%rip), %rax
	leaq	tls_dump_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_destroy@PLT
	testl	%eax, %eax
	jne	.L17
.L18:
	movl	$0, %eax
	jmp	.L19
.L17:
	movq	method_tls_dump(%rip), %rax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	bio_f_tls_dump_filter, .-bio_f_tls_dump_filter
	.globl	bio_f_tls_dump_filter_free
	.type	bio_f_tls_dump_filter_free, @function
bio_f_tls_dump_filter_free:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_tls_dump(%rip), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	bio_f_tls_dump_filter_free, .-bio_f_tls_dump_filter_free
	.type	tls_dump_new, @function
tls_dump_new:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	tls_dump_new, .-tls_dump_new
	.type	tls_dump_free, @function
tls_dump_free:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	tls_dump_free, .-tls_dump_free
	.type	copy_flags, @function
copy_flags:
.LFB534:
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
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	copy_flags, .-copy_flags
	.section	.rodata
.LC1:
	.string	"---- START OF PACKET ----"
.LC2:
	.string	"*"
.LC3:
	.string	"*---- START OF RECORD ----"
.LC4:
	.string	"*---- RECORD TRUNCATED ----"
.LC5:
	.string	"** Record Content-type: %d\n"
.LC6:
	.string	"** Record Version: %02x%02x\n"
.LC7:
	.string	"** Record Epoch: %d\n"
.LC8:
	.string	"** Record Sequence: "
.LC9:
	.string	"%02x"
.LC10:
	.string	"\n** Record Length: %d\n"
	.align 8
.LC11:
	.string	"**---- START OF HANDSHAKE MESSAGE FRAGMENT ----"
	.align 8
.LC12:
	.string	"**---- HANDSHAKE MESSAGE FRAGMENT ENCRYPTED ----"
	.align 8
.LC13:
	.string	"**---- HANDSHAKE MESSAGE FRAGMENT TRUNCATED ----"
.LC14:
	.string	"*** Message Type: %d\n"
.LC15:
	.string	"*** Message Length: %d\n"
.LC16:
	.string	"*** Message sequence: %d\n"
	.align 8
.LC17:
	.string	"*** Message Fragment offset: %d\n"
.LC18:
	.string	"*** Message Fragment len: %d\n"
	.align 8
.LC19:
	.string	"***---- HANDSHAKE MESSAGE FRAGMENT INVALID ----"
	.align 8
.LC20:
	.string	"**---- END OF HANDSHAKE MESSAGE FRAGMENT ----"
.LC21:
	.string	"*---- END OF RECORD ----"
.LC22:
	.string	"---- END OF PACKET ----\n"
	.text
	.type	dump_data, @function
dump_data:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L27
.L40:
	movl	-4(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.L28
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L28:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	cmpl	$12, -4(%rbp)
	jg	.L29
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L30
.L29:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	leaq	.LC5(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	leaq	.LC7(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$5, -8(%rbp)
	jmp	.L31
.L32:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -8(%rbp)
.L31:
	cmpl	$10, -8(%rbp)
	jle	.L32
	movq	-16(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$13, -16(%rbp)
	subl	$13, -4(%rbp)
	cmpl	$22, -20(%rbp)
	jne	.L33
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	cmpl	$0, -24(%rbp)
	jle	.L34
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L33
.L34:
	cmpl	$11, -4(%rbp)
	jle	.L35
	cmpl	$11, -28(%rbp)
	jg	.L36
.L35:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L33
.L36:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	leaq	.LC15(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	leaq	.LC16(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	leaq	.LC17(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	leaq	.LC18(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -32(%rbp)
	jge	.L37
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L33
.L37:
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.L38
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L33
.L38:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L33:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L39
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L27
.L39:
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -4(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L27:
	cmpl	$0, -4(%rbp)
	jg	.L40
.L30:
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	dump_data, .-dump_data
	.type	tls_dump_read, @function
tls_dump_read:
.LFB536:
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
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	copy_flags
	cmpl	$0, -12(%rbp)
	jle	.L42
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dump_data
.L42:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	tls_dump_read, .-tls_dump_read
	.type	tls_dump_write, @function
tls_dump_write:
.LFB537:
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
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	copy_flags
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	tls_dump_write, .-tls_dump_write
	.type	tls_dump_ctrl, @function
tls_dump_ctrl:
.LFB538:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	cmpl	$12, -28(%rbp)
	jne	.L49
	movq	$0, -8(%rbp)
	jmp	.L50
.L49:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	nop
.L50:
	movq	-8(%rbp), %rax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	tls_dump_ctrl, .-tls_dump_ctrl
	.type	tls_dump_gets, @function
tls_dump_gets:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	tls_dump_gets, .-tls_dump_gets
	.type	tls_dump_puts, @function
tls_dump_puts:
.LFB540:
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
	call	tls_dump_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	tls_dump_puts, .-tls_dump_puts
	.section	.rodata
.LC23:
	.string	"../test/helpers/ssltestlib.c"
	.text
	.type	mempacket_free, @function
mempacket_free:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC23(%rip), %rcx
	movl	$266, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L56:
	leaq	.LC23(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$267, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	mempacket_free, .-mempacket_free
	.section	.rodata
.LC24:
	.string	"Mem Packet Test"
	.align 8
.LC25:
	.string	"meth_mem = BIO_meth_new(BIO_TYPE_MEMPACKET_TEST, \"Mem Packet Test\")"
	.align 8
.LC26:
	.string	"BIO_meth_set_write(meth_mem, mempacket_test_write)"
	.align 8
.LC27:
	.string	"BIO_meth_set_read(meth_mem, mempacket_test_read)"
	.align 8
.LC28:
	.string	"BIO_meth_set_puts(meth_mem, mempacket_test_puts)"
	.align 8
.LC29:
	.string	"BIO_meth_set_gets(meth_mem, mempacket_test_gets)"
	.align 8
.LC30:
	.string	"BIO_meth_set_ctrl(meth_mem, mempacket_test_ctrl)"
	.align 8
.LC31:
	.string	"BIO_meth_set_create(meth_mem, mempacket_test_new)"
	.align 8
.LC32:
	.string	"BIO_meth_set_destroy(meth_mem, mempacket_test_free)"
	.text
	.globl	bio_s_mempacket_test
	.type	bio_s_mempacket_test, @function
bio_s_mempacket_test:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	meth_mem(%rip), %rax
	testq	%rax, %rax
	jne	.L58
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movl	$129, %edi
	call	BIO_meth_new@PLT
	movq	%rax, meth_mem(%rip)
	movq	meth_mem(%rip), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$294, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	movq	meth_mem(%rip), %rax
	leaq	mempacket_test_write(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$296, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	meth_mem(%rip), %rax
	leaq	mempacket_test_read(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_read@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$297, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	meth_mem(%rip), %rax
	leaq	mempacket_test_puts(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_puts@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$298, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	meth_mem(%rip), %rax
	leaq	mempacket_test_gets(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_gets@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$299, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	meth_mem(%rip), %rax
	leaq	mempacket_test_ctrl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$300, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	meth_mem(%rip), %rax
	leaq	mempacket_test_new(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_create@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$301, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	meth_mem(%rip), %rax
	leaq	mempacket_test_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_destroy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$302, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L58
.L59:
	movl	$0, %eax
	jmp	.L60
.L58:
	movq	meth_mem(%rip), %rax
.L60:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	bio_s_mempacket_test, .-bio_s_mempacket_test
	.globl	bio_s_mempacket_test_free
	.type	bio_s_mempacket_test_free, @function
bio_s_mempacket_test_free:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	meth_mem(%rip), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	bio_s_mempacket_test_free, .-bio_s_mempacket_test_free
	.section	.rodata
	.align 8
.LC33:
	.string	"ctx = OPENSSL_zalloc(sizeof(*ctx))"
	.align 8
.LC34:
	.string	"ctx->pkts = sk_MEMPACKET_new_null()"
	.text
	.type	mempacket_test_new, @function
mempacket_test_new:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC23(%rip), %rax
	movl	$317, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$317, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	call	sk_MEMPACKET_new_null
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$319, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L65
	leaq	.LC23(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$320, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L64
.L65:
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 36(%rax)
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	mempacket_test_new, .-mempacket_test_new
	.type	mempacket_test_free, @function
mempacket_test_free:
.LFB545:
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
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	mempacket_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MEMPACKET_pop_free
	leaq	.LC23(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$335, %edx
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
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	mempacket_test_free, .-mempacket_test_free
	.type	mempacket_test_read, @function
mempacket_test_read:
.LFB546:
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
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_MEMPACKET_value
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L69
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	je	.L70
.L69:
	movq	-56(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$-1, %eax
	jmp	.L71
.L70:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_MEMPACKET_shift
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L72
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -68(%rbp)
.L72:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.L73
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L74
	movq	-32(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	js	.L73
.L74:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L75
.L84:
	cmpl	$12, -12(%rbp)
	jg	.L76
	movl	$-1, %eax
	jmp	.L71
.L76:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -44(%rbp)
	je	.L77
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 12(%rax)
.L77:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -20(%rbp)
.L78:
	movl	$10, %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movb	%dl, (%rax)
	shrl	$8, -16(%rbp)
	addl	$1, -20(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L78
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	$13, %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L79
	movl	$-1, %eax
	jmp	.L71
.L79:
	movq	-32(%rbp), %rax
	movl	36(%rax), %edx
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	jne	.L80
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L80
	movl	-48(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L81
	movl	-12(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	-48(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L81:
	movl	-68(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rax
	movl	$-1, 36(%rax)
	cmpl	$0, -68(%rbp)
	jne	.L83
	movq	-56(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L83
.L80:
	movl	-48(%rbp), %eax
	addq	%rax, -8(%rbp)
.L83:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	-12(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
.L75:
	cmpl	$0, -12(%rbp)
	jg	.L84
.L73:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	mempacket_free
	movl	-68(%rbp), %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	mempacket_test_read, .-mempacket_test_read
	.globl	mempacket_swap_epoch
	.type	mempacket_swap_epoch, @function
mempacket_swap_epoch:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_MEMPACKET_num
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MEMPACKET_value
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L87
.L88:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L89
.L97:
	cmpl	$12, -4(%rbp)
	jg	.L90
	movl	$0, %eax
	jmp	.L87
.L90:
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	$13, %eax
	movl	%eax, -56(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.L91
	movl	$0, %eax
	jmp	.L87
.L91:
	movq	-32(%rbp), %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -52(%rbp)
	je	.L92
	cmpq	$0, -24(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L87
.L93:
	movl	-8(%rbp), %eax
	cltq
	leaq	.LC23(%rip), %rcx
	movl	$461, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L87
.L94:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -68(%rbp)
	leaq	.LC23(%rip), %rax
	movl	$478, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L95
	leaq	.LC23(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$480, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L87
.L95:
	movq	-48(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_MEMPACKET_insert
	testl	%eax, %eax
	jg	.L96
	leaq	.LC23(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$488, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC23(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$489, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L87
.L96:
	movl	$1, %eax
	jmp	.L87
.L92:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -4(%rbp)
	movl	-56(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
.L89:
	cmpl	$0, -4(%rbp)
	jg	.L97
	movl	$0, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	mempacket_swap_epoch, .-mempacket_swap_epoch
	.globl	mempacket_move_packet
	.type	mempacket_move_packet, @function
mempacket_move_packet:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_MEMPACKET_num
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.L101
	movl	$0, %eax
	jmp	.L100
.L101:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MEMPACKET_value
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L102
	movl	$0, %eax
	jmp	.L100
.L102:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MEMPACKET_delete
	cmpq	%rax, -32(%rbp)
	je	.L103
	movl	$0, %eax
	jmp	.L100
.L103:
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	movl	-48(%rbp), %eax
	subl	-44(%rbp), %eax
	subl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_MEMPACKET_insert
	testl	%eax, %eax
	jg	.L104
	movl	$0, %eax
	jmp	.L100
.L104:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L105
.L106:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MEMPACKET_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	addl	$1, -4(%rbp)
.L105:
	movl	-4(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.L106
	movl	$1, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	mempacket_move_packet, .-mempacket_move_packet
	.globl	mempacket_dup_last_packet
	.type	mempacket_dup_last_packet, @function
mempacket_dup_last_packet:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_MEMPACKET_num
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MEMPACKET_value
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L110
	movl	$0, %eax
	jmp	.L109
.L110:
	leaq	.LC23(%rip), %rax
	movl	$553, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L109
.L111:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC23(%rip), %rdx
	movl	$558, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L112
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mempacket_free
	movl	$0, %eax
	jmp	.L109
.L112:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_MEMPACKET_insert
	testl	%eax, %eax
	jg	.L113
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mempacket_free
	movl	$0, %eax
	jmp	.L109
.L113:
	movl	$1, %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	mempacket_dup_last_packet, .-mempacket_dup_last_packet
	.section	.rodata
	.align 8
.LC35:
	.string	"allpkts[i] = OPENSSL_malloc(sizeof(*thispkt))"
	.align 8
.LC36:
	.string	"thispkt->data = OPENSSL_malloc(inl)"
	.align 8
.LC37:
	.string	"looppkt = sk_MEMPACKET_value(ctx->pkts, i)"
	.text
	.globl	mempacket_test_inject
	.type	mempacket_test_inject, @function
mempacket_test_inject:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	%ecx, -104(%rbp)
	movl	%r8d, -108(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	addl	$13, %eax
	cltq
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L115
	movl	$-1, %eax
	jmp	.L155
.L115:
	movl	-100(%rbp), %eax
	cltq
	cmpq	-40(%rbp), %rax
	jnb	.L117
	movl	$-1, %eax
	jmp	.L155
.L117:
	movl	-100(%rbp), %eax
	cltq
	cmpq	%rax, -40(%rbp)
	jne	.L118
	movl	$0, -16(%rbp)
	jmp	.L119
.L118:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
.L119:
	cmpl	$0, -16(%rbp)
	je	.L120
	cmpl	$-1, -104(%rbp)
	je	.L120
	movl	$-1, %eax
	jmp	.L155
.L120:
	cmpl	$0, -104(%rbp)
	js	.L121
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L122
	movl	$-1, %eax
	jmp	.L155
.L122:
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
	jmp	.L123
.L121:
	movq	-24(%rbp), %rax
	movl	$1, 28(%rax)
.L123:
	movl	$0, -12(%rbp)
	jmp	.L124
.L134:
	leaq	.LC23(%rip), %rax
	movl	$607, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movq	%rdx, -80(%rbp,%rax,8)
	movl	-12(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$607, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L156
	movl	-12(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, -8(%rbp)
	movl	-100(%rbp), %eax
	cltq
	leaq	.LC23(%rip), %rcx
	movl	$611, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$611, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L157
	cmpl	$0, -16(%rbp)
	je	.L128
	cmpl	$2, -12(%rbp)
	je	.L128
	movl	-100(%rbp), %eax
	cltq
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-100(%rbp), %eax
	movq	-40(%rbp), %rdx
	subl	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L129
.L128:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	-100(%rbp), %edx
	movl	%edx, 8(%rax)
.L129:
	cmpl	$0, -104(%rbp)
	jns	.L130
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	jmp	.L131
.L130:
	movl	-104(%rbp), %eax
.L131:
	movq	-8(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movl	-108(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	addl	$1, -12(%rbp)
.L124:
	cmpl	$0, -16(%rbp)
	je	.L132
	movl	$3, %eax
	jmp	.L133
.L132:
	movl	$1, %eax
.L133:
	cmpl	-12(%rbp), %eax
	jg	.L134
	movl	$0, -12(%rbp)
	jmp	.L135
.L144:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MEMPACKET_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$632, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L158
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	movq	-8(%rbp), %rdx
	movl	12(%rdx), %edx
	cmpl	%eax, %edx
	jnb	.L137
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_MEMPACKET_insert
	testl	%eax, %eax
	je	.L159
	cmpl	$0, -104(%rbp)
	js	.L139
	movl	-100(%rbp), %eax
	jmp	.L155
.L139:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
.L141:
	addl	$1, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_MEMPACKET_value
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L140
	movq	-56(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, %edx
	jne	.L140
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	jmp	.L141
.L140:
	movl	-100(%rbp), %eax
	jmp	.L155
.L137:
	movq	-48(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	jne	.L142
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L160
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
.L142:
	addl	$1, -12(%rbp)
.L135:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_MEMPACKET_num
	cmpl	%eax, -12(%rbp)
	jl	.L144
	movl	$0, -12(%rbp)
	jmp	.L145
.L150:
	movl	-12(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_MEMPACKET_push
	testl	%eax, %eax
	je	.L161
	cmpl	$0, -104(%rbp)
	jns	.L147
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
.L147:
	addl	$1, -12(%rbp)
.L145:
	cmpl	$0, -16(%rbp)
	je	.L148
	movl	$3, %eax
	jmp	.L149
.L148:
	movl	$1, %eax
.L149:
	cmpl	-12(%rbp), %eax
	jg	.L150
	movl	-100(%rbp), %eax
	jmp	.L155
.L156:
	nop
	jmp	.L126
.L157:
	nop
	jmp	.L126
.L158:
	nop
	jmp	.L126
.L159:
	nop
	jmp	.L126
.L160:
	nop
	jmp	.L126
.L161:
	nop
.L126:
	movl	$0, -12(%rbp)
	jmp	.L151
.L154:
	movl	-12(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	mempacket_free
	addl	$1, -12(%rbp)
.L151:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jle	.L152
	movl	$3, %eax
	jmp	.L153
.L152:
	movl	$1, %eax
.L153:
	cmpl	-12(%rbp), %eax
	jg	.L154
	movl	$-1, %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	mempacket_test_inject, .-mempacket_test_inject
	.type	mempacket_test_write, @function
mempacket_test_write:
.LFB551:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	mempacket_test_inject@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	mempacket_test_write, .-mempacket_test_write
	.type	mempacket_test_ctrl, @function
mempacket_test_ctrl:
.LFB552:
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
	cmpl	$131072, -44(%rbp)
	je	.L165
	cmpl	$131072, -44(%rbp)
	jg	.L166
	cmpl	$98304, -44(%rbp)
	je	.L167
	cmpl	$98304, -44(%rbp)
	jg	.L166
	cmpl	$65536, -44(%rbp)
	je	.L168
	cmpl	$65536, -44(%rbp)
	jg	.L166
	cmpl	$32768, -44(%rbp)
	je	.L169
	cmpl	$32768, -44(%rbp)
	jg	.L166
	cmpl	$13, -44(%rbp)
	je	.L170
	cmpl	$13, -44(%rbp)
	jg	.L166
	cmpl	$11, -44(%rbp)
	je	.L171
	cmpl	$11, -44(%rbp)
	jg	.L166
	cmpl	$10, -44(%rbp)
	je	.L172
	cmpl	$10, -44(%rbp)
	jg	.L166
	cmpl	$9, -44(%rbp)
	je	.L173
	cmpl	$9, -44(%rbp)
	jg	.L166
	cmpl	$2, -44(%rbp)
	je	.L174
	cmpl	$8, -44(%rbp)
	je	.L175
	jmp	.L166
.L174:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_MEMPACKET_num
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L176
.L175:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_shutdown@PLT
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L176
.L173:
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_shutdown@PLT
	jmp	.L176
.L170:
	movq	$0, -8(%rbp)
	jmp	.L176
.L172:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_MEMPACKET_value
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L177
	movq	$0, -8(%rbp)
	jmp	.L176
.L177:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L176
.L171:
	movq	$1, -8(%rbp)
	jmp	.L176
.L169:
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L176
.L168:
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 36(%rax)
	jmp	.L176
.L167:
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L176
.L165:
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L176
.L166:
	movq	$0, -8(%rbp)
	nop
.L176:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	mempacket_test_ctrl, .-mempacket_test_ctrl
	.type	mempacket_test_gets, @function
mempacket_test_gets:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	mempacket_test_gets, .-mempacket_test_gets
	.type	mempacket_test_puts, @function
mempacket_test_puts:
.LFB554:
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
	call	mempacket_test_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	mempacket_test_puts, .-mempacket_test_puts
	.section	.rodata
.LC38:
	.string	"Always Retry"
	.align 8
.LC39:
	.string	"meth_always_retry = BIO_meth_new(BIO_TYPE_ALWAYS_RETRY, \"Always Retry\")"
	.align 8
.LC40:
	.string	"BIO_meth_set_write(meth_always_retry, always_retry_write)"
	.align 8
.LC41:
	.string	"BIO_meth_set_read(meth_always_retry, always_retry_read)"
	.align 8
.LC42:
	.string	"BIO_meth_set_puts(meth_always_retry, always_retry_puts)"
	.align 8
.LC43:
	.string	"BIO_meth_set_gets(meth_always_retry, always_retry_gets)"
	.align 8
.LC44:
	.string	"BIO_meth_set_ctrl(meth_always_retry, always_retry_ctrl)"
	.align 8
.LC45:
	.string	"BIO_meth_set_create(meth_always_retry, always_retry_new)"
	.align 8
.LC46:
	.string	"BIO_meth_set_destroy(meth_always_retry, always_retry_free)"
	.text
	.globl	bio_s_always_retry
	.type	bio_s_always_retry, @function
bio_s_always_retry:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	meth_always_retry(%rip), %rax
	testq	%rax, %rax
	jne	.L185
	leaq	.LC38(%rip), %rax
	movq	%rax, %rsi
	movl	$130, %edi
	call	BIO_meth_new@PLT
	movq	%rax, meth_always_retry(%rip)
	movq	meth_always_retry(%rip), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$764, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L186
	movq	meth_always_retry(%rip), %rax
	leaq	always_retry_write(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$766, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	meth_always_retry(%rip), %rax
	leaq	always_retry_read(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_read@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$768, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	meth_always_retry(%rip), %rax
	leaq	always_retry_puts(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_puts@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$770, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	meth_always_retry(%rip), %rax
	leaq	always_retry_gets(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_gets@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$772, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	meth_always_retry(%rip), %rax
	leaq	always_retry_ctrl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$774, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	meth_always_retry(%rip), %rax
	leaq	always_retry_new(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_create@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$776, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	meth_always_retry(%rip), %rax
	leaq	always_retry_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_destroy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$778, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L185
.L186:
	movl	$0, %eax
	jmp	.L187
.L185:
	movq	meth_always_retry(%rip), %rax
.L187:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	bio_s_always_retry, .-bio_s_always_retry
	.globl	bio_s_always_retry_free
	.type	bio_s_always_retry_free, @function
bio_s_always_retry_free:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	meth_always_retry(%rip), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	bio_s_always_retry_free, .-bio_s_always_retry_free
	.type	always_retry_new, @function
always_retry_new:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	always_retry_new, .-always_retry_new
	.type	always_retry_free, @function
always_retry_free:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	always_retry_free, .-always_retry_free
	.globl	set_always_retry_err_val
	.type	set_always_retry_err_val, @function
set_always_retry_err_val:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, retry_err(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	set_always_retry_err_val, .-set_always_retry_err_val
	.type	always_retry_read, @function
always_retry_read:
.LFB560:
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
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	retry_err(%rip), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	always_retry_read, .-always_retry_read
	.type	always_retry_write, @function
always_retry_write:
.LFB561:
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
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	retry_err(%rip), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	always_retry_write, .-always_retry_write
	.type	always_retry_ctrl, @function
always_retry_ctrl:
.LFB562:
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
	movq	$1, -8(%rbp)
	cmpl	$11, -28(%rbp)
	jne	.L199
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L199:
	movq	$0, -8(%rbp)
	nop
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	always_retry_ctrl, .-always_retry_ctrl
	.type	always_retry_gets, @function
always_retry_gets:
.LFB563:
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
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	retry_err(%rip), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	always_retry_gets, .-always_retry_gets
	.type	always_retry_puts, @function
always_retry_puts:
.LFB564:
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
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	retry_err(%rip), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	always_retry_puts, .-always_retry_puts
	.section	.rodata
.LC47:
	.string	"Maybe Retry"
	.align 8
.LC48:
	.string	"meth_maybe_retry = BIO_meth_new(BIO_TYPE_MAYBE_RETRY, \"Maybe Retry\")"
	.align 8
.LC49:
	.string	"BIO_meth_set_write(meth_maybe_retry, maybe_retry_write)"
	.align 8
.LC50:
	.string	"BIO_meth_set_ctrl(meth_maybe_retry, maybe_retry_ctrl)"
	.align 8
.LC51:
	.string	"BIO_meth_set_create(meth_maybe_retry, maybe_retry_new)"
	.align 8
.LC52:
	.string	"BIO_meth_set_destroy(meth_maybe_retry, maybe_retry_free)"
	.text
	.globl	bio_s_maybe_retry
	.type	bio_s_maybe_retry, @function
bio_s_maybe_retry:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	meth_maybe_retry(%rip), %rax
	testq	%rax, %rax
	jne	.L206
	leaq	.LC47(%rip), %rax
	movq	%rax, %rsi
	movl	$643, %edi
	call	BIO_meth_new@PLT
	movq	%rax, meth_maybe_retry(%rip)
	movq	meth_maybe_retry(%rip), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$864, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L207
	movq	meth_maybe_retry(%rip), %rax
	leaq	maybe_retry_write(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$866, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movq	meth_maybe_retry(%rip), %rax
	leaq	maybe_retry_ctrl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$868, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movq	meth_maybe_retry(%rip), %rax
	leaq	maybe_retry_new(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_create@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$870, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movq	meth_maybe_retry(%rip), %rax
	leaq	maybe_retry_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_destroy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$872, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L206
.L207:
	movl	$0, %eax
	jmp	.L208
.L206:
	movq	meth_maybe_retry(%rip), %rax
.L208:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	bio_s_maybe_retry, .-bio_s_maybe_retry
	.globl	bio_s_maybe_retry_free
	.type	bio_s_maybe_retry_free, @function
bio_s_maybe_retry_free:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	meth_maybe_retry(%rip), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	bio_s_maybe_retry_free, .-bio_s_maybe_retry_free
	.type	maybe_retry_new, @function
maybe_retry_new:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC23(%rip), %rax
	movl	$886, %edx
	movq	%rax, %rsi
	movl	$4, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L211
	movl	$0, %eax
	jmp	.L212
.L211:
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
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	maybe_retry_new, .-maybe_retry_new
	.type	maybe_retry_free, @function
maybe_retry_free:
.LFB568:
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
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC23(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$900, %edx
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
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	maybe_retry_free, .-maybe_retry_free
	.type	maybe_retry_write, @function
maybe_retry_write:
.LFB569:
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
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L216
	movl	$-1, %eax
	jmp	.L217
.L216:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L218
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$-1, %eax
	jmp	.L217
.L218:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	BIO_write@PLT
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	maybe_retry_write, .-maybe_retry_write
	.type	maybe_retry_ctrl, @function
maybe_retry_ctrl:
.LFB570:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L220
	movl	$0, %eax
	jmp	.L221
.L220:
	cmpl	$11, -28(%rbp)
	je	.L222
	cmpl	$32768, -28(%rbp)
	jne	.L223
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L221
.L222:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L224
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	$-1, %rax
	jmp	.L221
.L224:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
.L223:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	call	BIO_ctrl@PLT
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	maybe_retry_ctrl, .-maybe_retry_ctrl
	.section	.rodata
	.align 8
.LC53:
	.string	"serverctx = SSL_CTX_new_ex(libctx, NULL, sm)"
	.align 8
.LC54:
	.string	"SSL_CTX_set_options(serverctx, SSL_OP_ALLOW_CLIENT_RENEGOTIATION)"
	.align 8
.LC55:
	.string	"clientctx = SSL_CTX_new_ex(libctx, NULL, cm)"
	.align 8
.LC56:
	.string	"SSL_CTX_set_min_proto_version(serverctx, min_proto_version)"
	.align 8
.LC57:
	.string	"SSL_CTX_set_max_proto_version(serverctx, max_proto_version)"
	.align 8
.LC58:
	.string	"SSL_CTX_set_min_proto_version(clientctx, min_proto_version)"
	.align 8
.LC59:
	.string	"SSL_CTX_set_max_proto_version(clientctx, max_proto_version)"
.LC60:
	.string	"1"
	.align 8
.LC61:
	.string	"SSL_CTX_use_certificate_file(serverctx, certfile, SSL_FILETYPE_PEM)"
	.align 8
.LC62:
	.string	"SSL_CTX_use_PrivateKey_file(serverctx, privkeyfile, SSL_FILETYPE_PEM)"
	.align 8
.LC63:
	.string	"SSL_CTX_check_private_key(serverctx)"
	.text
	.globl	create_ssl_ctx_pair
	.type	create_ssl_ctx_pair, @function
create_ssl_ctx_pair:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L226
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L227
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L226
.L227:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$957, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L245
	movq	-8(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$958, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L245
.L226:
	cmpq	$0, 16(%rbp)
	je	.L230
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L231
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L230
.L231:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$966, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L246
.L230:
	cmpq	$0, -8(%rbp)
	je	.L232
	cmpl	$0, -44(%rbp)
	jle	.L233
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$984, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L247
.L233:
	cmpl	$0, -48(%rbp)
	jle	.L232
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$987, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L247
.L232:
	cmpq	$0, -16(%rbp)
	je	.L235
	cmpl	$0, -44(%rbp)
	jle	.L236
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC58(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$992, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L248
.L236:
	cmpl	$0, -48(%rbp)
	jle	.L235
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$995, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L248
.L235:
	cmpq	$0, -8(%rbp)
	je	.L238
	cmpq	$0, 24(%rbp)
	je	.L238
	cmpq	$0, 32(%rbp)
	je	.L238
	movq	24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_certificate_file@PLT
	movl	%eax, %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1000, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L249
	movq	32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_PrivateKey_file@PLT
	movl	%eax, %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1002, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L249
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_check_private_key@PLT
	movl	%eax, %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1005, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L249
.L238:
	cmpq	$0, -56(%rbp)
	je	.L240
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L240:
	cmpq	$0, 16(%rbp)
	je	.L241
	movq	16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L241:
	movl	$1, %eax
	jmp	.L242
.L245:
	nop
	jmp	.L229
.L246:
	nop
	jmp	.L229
.L247:
	nop
	jmp	.L229
.L248:
	nop
	jmp	.L229
.L249:
	nop
.L229:
	cmpq	$0, -56(%rbp)
	je	.L243
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L243
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
.L243:
	cmpq	$0, 16(%rbp)
	je	.L244
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L244
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
.L244:
	movl	$0, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	create_ssl_ctx_pair, .-create_ssl_ctx_pair
	.globl	wait_until_sock_readable
	.type	wait_until_sock_readable, @function
wait_until_sock_readable:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	$0, %eax
	movl	$16, %ecx
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rdi
#APP
# 1034 "../test/helpers/ssltestlib.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -12(%rbp)
	movl	-164(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movslq	%esi, %rax
	movq	-144(%rbp,%rax,8), %rax
	movl	-164(%rbp), %edx
	andl	$63, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rdx
	orq	%rax, %rdx
	movslq	%esi, %rax
	movq	%rdx, -144(%rbp,%rax,8)
	movq	$10, -160(%rbp)
	movq	$0, -152(%rbp)
	leaq	-160(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	movl	-4(%rbp), %eax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	select@PLT
	movl	-164(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rdx
	movl	-164(%rbp), %eax
	andl	$63, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	wait_until_sock_readable, .-wait_until_sock_readable
	.section	.rodata
.LC64:
	.string	"127.0.0.1"
	.text
	.globl	create_test_sockets
	.type	create_test_sockets, @function
create_test_sockets:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	leaq	.LC64(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$16, -52(%rbp)
	movl	$-1, -12(%rbp)
	movl	$-1, -16(%rbp)
	movl	$-1, -20(%rbp)
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movw	$2, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inet_addr@PLT
	movl	%eax, -44(%rbp)
	cmpl	$1, -84(%rbp)
	jne	.L253
	movl	$6, %edx
	jmp	.L254
.L253:
	movl	$17, %edx
.L254:
	movl	-84(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movl	$2, %edi
	call	BIO_socket@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L255
	movl	$0, %eax
	jmp	.L276
.L255:
	leaq	-48(%rbp), %rcx
	movl	-12(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind@PLT
	testl	%eax, %eax
	js	.L277
	leaq	-52(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movl	-12(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getsockname@PLT
	testl	%eax, %eax
	js	.L278
	cmpq	$0, -96(%rbp)
	je	.L260
	movzwl	-46(%rbp), %eax
	movzwl	%ax, %ecx
	movzwl	-48(%rbp), %eax
	movzwl	%ax, %esi
	leaq	-48(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-96(%rbp), %rax
	movl	%ecx, %r8d
	movl	$4, %ecx
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	testl	%eax, %eax
	je	.L279
.L260:
	cmpl	$1, -84(%rbp)
	jne	.L261
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	listen@PLT
	testl	%eax, %eax
	js	.L280
.L261:
	cmpl	$1, -84(%rbp)
	jne	.L262
	movl	$6, %edx
	jmp	.L263
.L262:
	movl	$17, %edx
.L263:
	movl	-84(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movl	$2, %edi
	call	BIO_socket@PLT
	movl	%eax, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	je	.L281
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	je	.L282
	cmpl	$2, -84(%rbp)
	jne	.L267
	movl	$1, -4(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$-1, -12(%rbp)
	jmp	.L267
.L270:
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	accept@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L268
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$11, %eax
	jne	.L283
.L268:
	cmpl	$0, -4(%rbp)
	jne	.L269
	leaq	-48(%rbp), %rcx
	movl	-16(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	connect@PLT
	testl	%eax, %eax
	js	.L284
.L269:
	movl	$1, -4(%rbp)
.L267:
	cmpl	$-1, -20(%rbp)
	je	.L270
	cmpl	$0, -4(%rbp)
	je	.L270
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	je	.L285
	movl	-20(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	je	.L285
	movl	$1, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L273
.L277:
	nop
	jmp	.L258
.L278:
	nop
	jmp	.L258
.L279:
	nop
	jmp	.L258
.L280:
	nop
	jmp	.L258
.L281:
	nop
	jmp	.L258
.L282:
	nop
	jmp	.L258
.L283:
	nop
	jmp	.L258
.L284:
	nop
	jmp	.L258
.L285:
	nop
.L258:
	cmpl	$-1, -16(%rbp)
	je	.L274
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L274:
	cmpl	$-1, -20(%rbp)
	je	.L286
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	jmp	.L273
.L286:
	nop
.L273:
	cmpl	$-1, -12(%rbp)
	je	.L275
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L275:
	movl	-8(%rbp), %eax
.L276:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	create_test_sockets, .-create_test_sockets
	.section	.rodata
	.align 8
.LC65:
	.string	"serverssl = SSL_new(serverctx)"
	.align 8
.LC66:
	.string	"clientssl = SSL_new(clientctx)"
	.align 8
.LC67:
	.string	"s_to_c_bio = BIO_new_socket(sfd, BIO_NOCLOSE)"
	.align 8
.LC68:
	.string	"c_to_s_bio = BIO_new_socket(cfd, BIO_NOCLOSE)"
	.align 8
.LC69:
	.string	"SSL_get_wpoll_descriptor(clientssl, &wdesc)"
	.align 8
.LC70:
	.string	"SSL_get_rpoll_descriptor(clientssl, &rdesc) || !TEST_false(SSL_get_wpoll_descriptor(clientssl, &wdesc))"
	.align 8
.LC71:
	.string	"SSL_get_rpoll_descriptor(clientssl, &rdesc)"
	.align 8
.LC72:
	.string	"BIO_POLL_DESCRIPTOR_TYPE_SOCK_FD"
.LC73:
	.string	"rdesc.type"
.LC74:
	.string	"wdesc.type"
.LC75:
	.string	"cfd"
.LC76:
	.string	"rdesc.value.fd"
.LC77:
	.string	"wdesc.value.fd"
	.align 8
.LC78:
	.string	"SSL_get_rpoll_descriptor(serverssl, &rdesc)"
	.align 8
.LC79:
	.string	"SSL_get_wpoll_descriptor(serverssl, &wdesc)"
.LC80:
	.string	"sfd"
	.text
	.globl	create_ssl_objects2
	.type	create_ssl_objects2, @function
create_ssl_objects2:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L288
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L289
.L288:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1131, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L305
.L289:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L291
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L292
.L291:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1135, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L306
.L292:
	movl	-100(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_socket@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1138, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L307
	movl	-104(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_socket@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC68(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1139, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L307
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_rpoll_descriptor@PLT
	testl	%eax, %eax
	jne	.L295
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_wpoll_descriptor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$1143, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L296
.L295:
	movl	$1, %eax
	jmp	.L297
.L296:
	movl	$0, %eax
.L297:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$1142, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L308
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_rpoll_descriptor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$1149, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L309
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_wpoll_descriptor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$1150, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L309
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC72(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1151, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L309
	movl	-64(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC72(%rip), %rcx
	leaq	.LC74(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1152, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L309
	movl	-40(%rbp), %esi
	movl	-104(%rbp), %edi
	leaq	.LC75(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1153, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L309
	movl	-56(%rbp), %esi
	movl	-104(%rbp), %edi
	leaq	.LC75(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1154, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L309
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_rpoll_descriptor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC78(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$1157, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L310
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_wpoll_descriptor@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$1158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L310
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC72(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1159, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L310
	movl	-64(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC72(%rip), %rcx
	leaq	.LC74(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1160, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L310
	movl	-40(%rbp), %esi
	movl	-100(%rbp), %edi
	leaq	.LC80(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1161, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L310
	movl	-56(%rbp), %esi
	movl	-100(%rbp), %edi
	leaq	.LC80(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1162, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L310
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L304
.L305:
	nop
	jmp	.L290
.L306:
	nop
	jmp	.L290
.L307:
	nop
	jmp	.L290
.L308:
	nop
	jmp	.L290
.L309:
	nop
	jmp	.L290
.L310:
	nop
.L290:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	create_ssl_objects2, .-create_ssl_objects2
	.section	.rodata
	.align 8
.LC81:
	.string	"s_to_c_bio = BIO_new(bio_s_mempacket_test())"
	.align 8
.LC82:
	.string	"c_to_s_bio = BIO_new(bio_s_mempacket_test())"
	.align 8
.LC83:
	.string	"s_to_c_bio = BIO_new(BIO_s_mem())"
	.align 8
.LC84:
	.string	"c_to_s_bio = BIO_new(BIO_s_mem())"
	.align 8
.LC85:
	.string	"s_to_c_bio = BIO_push(s_to_c_fbio, s_to_c_bio)"
	.align 8
.LC86:
	.string	"c_to_s_bio = BIO_push(c_to_s_fbio, c_to_s_bio)"
	.text
	.globl	create_ssl_objects
	.type	create_ssl_objects, @function
create_ssl_objects:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L312
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L313
.L312:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1197, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L324
.L313:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L315
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L316
.L315:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1201, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L325
.L316:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_dtls@PLT
	testl	%eax, %eax
	je	.L317
	call	bio_s_mempacket_test@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1205, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L326
	call	bio_s_mempacket_test@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1206, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L319
	jmp	.L326
.L317:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1209, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L327
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1210, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L327
.L319:
	cmpq	$0, -72(%rbp)
	je	.L321
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC85(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1215, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L328
.L321:
	cmpq	$0, -80(%rbp)
	je	.L322
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC86(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1218, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L329
.L322:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	$-1, %rdx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	$-1, %rdx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L323
.L324:
	nop
	jmp	.L314
.L325:
	nop
	jmp	.L314
.L326:
	nop
	jmp	.L314
.L327:
	nop
	jmp	.L314
.L328:
	nop
	jmp	.L314
.L329:
	nop
.L314:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L323:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	create_ssl_objects, .-create_ssl_objects
	.section	.rodata
	.align 8
.LC87:
	.string	"DTLSv1_listen requested for non-DTLS object\n"
.LC88:
	.string	"peer"
.LC89:
	.string	"SSL_connect() failed %d, %d"
.LC90:
	.string	"SSL_accept() failed %d, %d"
	.align 8
.LC91:
	.string	"Unexpected SSL_read() success!"
.LC92:
	.string	"No progress made"
	.text
	.globl	create_bare_ssl_connection
	.type	create_bare_ssl_connection, @function
create_bare_ssl_connection:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -88(%rbp)
	movl	%r8d, -92(%rbp)
	movl	$-1, -4(%rbp)
	movl	$-1, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_dtls@PLT
	movl	%eax, -44(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$0, -92(%rbp)
	je	.L357
	cmpl	$0, -44(%rbp)
	jne	.L332
	leaq	.LC87(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1266, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L333
.L332:
	call	BIO_ADDR_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC88(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1270, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L357
	movl	$0, %eax
	jmp	.L333
.L357:
	movl	$3, -12(%rbp)
	jmp	.L334
.L336:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L334
	movl	-4(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -12(%rbp)
.L334:
	cmpl	$0, -24(%rbp)
	jne	.L335
	cmpl	$0, -4(%rbp)
	jg	.L335
	cmpl	$3, -12(%rbp)
	je	.L336
.L335:
	cmpl	$0, -24(%rbp)
	jne	.L337
	cmpl	$0, -4(%rbp)
	jg	.L337
	cmpl	$2, -12(%rbp)
	je	.L337
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$1289, %esi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$1, -84(%rbp)
	je	.L338
	call	test_openssl_errors@PLT
.L338:
	movl	$1, -24(%rbp)
.L337:
	cmpl	$0, -84(%rbp)
	je	.L339
	movl	-12(%rbp), %eax
	cmpl	-84(%rbp), %eax
	je	.L358
.L339:
	movl	$3, -12(%rbp)
	jmp	.L341
.L346:
	cmpl	$0, -92(%rbp)
	je	.L342
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DTLSv1_listen@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L343
	movl	$1, -12(%rbp)
	jmp	.L341
.L343:
	cmpl	$0, -8(%rbp)
	jne	.L344
	movl	$2, -12(%rbp)
	jmp	.L341
.L344:
	movl	$0, -92(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L341
.L342:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_accept@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L341
	movl	-8(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -12(%rbp)
.L341:
	cmpl	$0, -28(%rbp)
	jne	.L345
	cmpl	$0, -8(%rbp)
	jg	.L345
	cmpl	$3, -12(%rbp)
	je	.L346
.L345:
	cmpl	$0, -28(%rbp)
	jne	.L347
	cmpl	$0, -8(%rbp)
	jg	.L347
	cmpl	$2, -12(%rbp)
	je	.L347
	cmpl	$4, -12(%rbp)
	je	.L347
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$1323, %esi
	movl	$0, %eax
	call	test_info@PLT
	cmpl	$1, -84(%rbp)
	je	.L348
	call	test_openssl_errors@PLT
.L348:
	movl	$1, -28(%rbp)
.L347:
	cmpl	$0, -84(%rbp)
	je	.L349
	movl	-12(%rbp), %eax
	cmpl	-84(%rbp), %eax
	je	.L359
.L349:
	cmpl	$0, -24(%rbp)
	je	.L350
	cmpl	$0, -28(%rbp)
	jne	.L360
.L350:
	cmpl	$0, -44(%rbp)
	je	.L351
	cmpl	$0, -88(%rbp)
	je	.L351
	cmpl	$0, -8(%rbp)
	jle	.L352
	cmpl	$0, -4(%rbp)
	jg	.L352
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	testl	%eax, %eax
	jle	.L352
	leaq	.LC91(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1339, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L340
.L352:
	cmpl	$0, -4(%rbp)
	jle	.L351
	cmpl	$0, -8(%rbp)
	jg	.L351
	leaq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	testl	%eax, %eax
	jle	.L351
	leaq	.LC91(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1346, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L340
.L351:
	addl	$1, -16(%rbp)
	cmpl	$1000000, -16(%rbp)
	jne	.L355
	leaq	.LC92(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$1352, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L340
.L355:
	cmpl	$0, -44(%rbp)
	je	.L356
	cmpl	$50, -16(%rbp)
	jg	.L356
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L356
	movl	$50, %edi
	call	OSSL_sleep@PLT
.L356:
	cmpl	$0, -4(%rbp)
	jle	.L357
	cmpl	$0, -8(%rbp)
	jle	.L357
	movl	$1, -20(%rbp)
	jmp	.L340
.L358:
	nop
	jmp	.L340
.L359:
	nop
	jmp	.L340
.L360:
	nop
.L340:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movl	-20(%rbp), %eax
.L333:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	create_bare_ssl_connection, .-create_bare_ssl_connection
	.section	.rodata
.LC93:
	.string	"0"
.LC94:
	.string	"readbytes"
.LC95:
	.string	"SSL_ERROR_WANT_READ"
.LC96:
	.string	"SSL_get_error(clientssl, 0)"
	.text
	.globl	create_ssl_connection
	.type	create_ssl_connection, @function
create_ssl_connection:
.LFB577:
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
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	create_bare_ssl_connection@PLT
	testl	%eax, %eax
	jne	.L362
	movl	$0, %eax
	jmp	.L368
.L362:
	movl	$0, -4(%rbp)
	jmp	.L364
.L367:
	leaq	-16(%rbp), %rdx
	leaq	-5(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	testl	%eax, %eax
	jle	.L365
	movq	-16(%rbp), %rsi
	leaq	.LC93(%rip), %rcx
	leaq	.LC94(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1393, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L366
	movl	$0, %eax
	jmp	.L368
.L365:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC95(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$1395, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L366
	movl	$0, %eax
	jmp	.L368
.L366:
	addl	$1, -4(%rbp)
.L364:
	cmpl	$1, -4(%rbp)
	jle	.L367
	movl	$1, %eax
.L368:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	create_ssl_connection, .-create_ssl_connection
	.globl	shutdown_ssl_connection
	.type	shutdown_ssl_connection, @function
shutdown_ssl_connection:
.LFB578:
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
	call	SSL_shutdown@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	shutdown_ssl_connection, .-shutdown_ssl_connection
	.section	.rodata
.LC97:
	.base64	"EwIA"
.LC98:
	.base64	"EwEA"
.LC99:
	.string	"sess"
.LC100:
	.string	"cipher"
	.align 8
.LC101:
	.string	"SSL_SESSION_set1_master_key(sess, key, mdsize)"
	.align 8
.LC102:
	.string	"SSL_SESSION_set_cipher(sess, cipher)"
	.align 8
.LC103:
	.string	"SSL_SESSION_set_protocol_version(sess, TLS1_3_VERSION)"
	.text
	.globl	create_a_psk
	.type	create_a_psk, @function
create_a_psk:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -8(%rbp)
	movabsq	$506097522914230528, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$1663540288323457296, %rax
	movabsq	$2242261671028070680, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$2820983053732684064, %rax
	movabsq	$3399704436437297448, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$48, -80(%rbp)
	jne	.L371
	leaq	.LC97(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CIPHER_find@PLT
	movq	%rax, -8(%rbp)
	jmp	.L372
.L371:
	cmpq	$32, -80(%rbp)
	jne	.L373
	leaq	.LC98(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CIPHER_find@PLT
	movq	%rax, -8(%rbp)
	jmp	.L372
.L373:
	movl	$0, %eax
	jmp	.L377
.L372:
	call	SSL_SESSION_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC99(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1437, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L375
	movq	-8(%rbp), %rax
	leaq	.LC100(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1438, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L375
	movq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set1_master_key@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$1439, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L375
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$1440, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L375
	movq	-16(%rbp), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	call	SSL_SESSION_set_protocol_version@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC103(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$1441, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L376
.L375:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movl	$0, %eax
	jmp	.L377
.L376:
	movq	-16(%rbp), %rax
.L377:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	create_a_psk, .-create_a_psk
	.section	.rodata
.LC104:
	.string	"r"
	.align 8
.LC105:
	.string	"certbio = BIO_new_file(cert_file, \"r\")"
	.align 8
.LC106:
	.string	"chaincert = X509_new_ex(libctx, NULL)"
	.align 8
.LC107:
	.string	"assertion failed: certlen * NUM_EXTRA_CERTS > (SSL3_RT_MAX_PLAIN_LENGTH * 4) / 3"
	.text
	.globl	ssl_ctx_add_large_cert_chain
	.type	ssl_ctx_add_large_cert_chain, @function
ssl_ctx_add_large_cert_chain:
.LFB580:
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
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -12(%rbp)
	leaq	.LC104(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC105(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1461, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L389
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$1464, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L390
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_X509@PLT
	testq	%rax, %rax
	je	.L391
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	cmpl	$21845, %eax
	jg	.L383
	leaq	.LC23(%rip), %rcx
	leaq	.LC107(%rip), %rax
	movl	$1480, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L383:
	movl	$0, -16(%rbp)
	jmp	.L384
.L387:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	je	.L392
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$14, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	jne	.L386
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L380
.L386:
	addl	$1, -16(%rbp)
.L384:
	cmpl	$39, -16(%rbp)
	jle	.L387
	movl	$1, -12(%rbp)
	jmp	.L380
.L389:
	nop
	jmp	.L380
.L390:
	nop
	jmp	.L380
.L391:
	nop
	jmp	.L380
.L392:
	nop
.L380:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	ssl_ctx_add_large_cert_chain, .-ssl_ctx_add_large_cert_chain
	.globl	load_dasync
	.type	load_dasync, @function
load_dasync:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	load_dasync, .-load_dasync
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
