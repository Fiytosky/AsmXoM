	.file	"quic_txpim.c"
	.text
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_txpim.c"
	.text
	.globl	ossl_quic_txpim_new
	.type	ossl_quic_txpim_new, @function
ossl_quic_txpim_new:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$36, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	ossl_quic_txpim_new, .-ossl_quic_txpim_new
	.type	free_list, @function
free_list:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L5
.L6:
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$52, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L5:
	cmpq	$0, -8(%rbp)
	jne	.L6
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	free_list, .-free_list
	.globl	ossl_quic_txpim_free
	.type	ossl_quic_txpim_free, @function
ossl_quic_txpim_free:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_list
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L7
.L10:
	nop
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	ossl_quic_txpim_free, .-ossl_quic_txpim_free
	.type	list_remove, @function
list_remove:
.LFB563:
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
	cmpq	%rax, -16(%rbp)
	jne	.L12
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L12:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L13
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L13:
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	%rdx, 136(%rax)
.L14:
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, 128(%rax)
.L15:
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 128(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	list_remove, .-list_remove
	.type	list_insert_tail, @function
list_insert_tail:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 136(%rax)
.L17:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L19:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	list_insert_tail, .-list_insert_tail
	.type	txpim_get_free, @function
txpim_get_free:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	jmp	.L22
.L21:
	leaq	.LC0(%rip), %rax
	movl	$99, %edx
	movq	%rax, %rsi
	movl	$176, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L22
.L23:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_insert_tail
	movq	-8(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	txpim_get_free, .-txpim_get_free
	.type	txpim_clear, @function
txpim_clear:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_clear_chunks@PLT
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movzbl	121(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 121(%rax)
	movq	-8(%rbp), %rax
	movzbl	121(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 121(%rax)
	movq	-8(%rbp), %rax
	movzbl	121(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 121(%rax)
	movq	-8(%rbp), %rax
	movzbl	121(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 121(%rax)
	movq	-8(%rbp), %rax
	movzbl	121(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 121(%rax)
	movq	-8(%rbp), %rax
	movzbl	121(%rax), %edx
	andl	$-33, %edx
	movb	%dl, 121(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	txpim_clear, .-txpim_clear
	.globl	ossl_quic_txpim_pkt_alloc
	.type	ossl_quic_txpim_pkt_alloc, @function
ossl_quic_txpim_pkt_alloc:
.LFB567:
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
	call	txpim_get_free
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	txpim_clear
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_remove
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	ossl_quic_txpim_pkt_alloc, .-ossl_quic_txpim_pkt_alloc
	.globl	ossl_quic_txpim_pkt_release
	.type	ossl_quic_txpim_pkt_release, @function
ossl_quic_txpim_pkt_release:
.LFB568:
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
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_insert_tail
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	ossl_quic_txpim_pkt_release, .-ossl_quic_txpim_pkt_release
	.globl	ossl_quic_txpim_pkt_add_cfq_item
	.type	ossl_quic_txpim_pkt_add_cfq_item, @function
ossl_quic_txpim_pkt_add_cfq_item:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 104(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	ossl_quic_txpim_pkt_add_cfq_item, .-ossl_quic_txpim_pkt_add_cfq_item
	.globl	ossl_quic_txpim_pkt_clear_chunks
	.type	ossl_quic_txpim_pkt_clear_chunks, @function
ossl_quic_txpim_pkt_clear_chunks:
.LFB570:
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
	movq	$0, 152(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	ossl_quic_txpim_pkt_clear_chunks, .-ossl_quic_txpim_pkt_clear_chunks
	.globl	ossl_quic_txpim_pkt_append_chunk
	.type	ossl_quic_txpim_pkt_append_chunk, @function
ossl_quic_txpim_pkt_append_chunk:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L32
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	salq	$3, %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.L34
.L33:
	movq	$4, -8(%rbp)
.L34:
	cmpq	$512, -8(%rbp)
	jbe	.L35
	movq	$512, -8(%rbp)
.L35:
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$172, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L37
.L38:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 160(%rax)
.L32:
	movq	-16(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 152(%rdx)
	salq	$5, %rax
	addq	%rax, %rsi
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, 16(%rsi)
	movq	%rdx, 24(%rsi)
	movq	-16(%rbp), %rax
	movzbl	168(%rax), %edx
	orl	$1, %edx
	movb	%dl, 168(%rax)
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	ossl_quic_txpim_pkt_append_chunk, .-ossl_quic_txpim_pkt_append_chunk
	.type	compare, @function
compare:
.LFB572:
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
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L40
	movl	$-1, %eax
	jmp	.L41
.L40:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L42
	movl	$1, %eax
	jmp	.L41
.L42:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L43
	movl	$-1, %eax
	jmp	.L41
.L43:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L44
	movl	$1, %eax
	jmp	.L41
.L44:
	movl	$0, %eax
.L41:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	compare, .-compare
	.globl	ossl_quic_txpim_pkt_get_chunks
	.type	ossl_quic_txpim_pkt_get_chunks, @function
ossl_quic_txpim_pkt_get_chunks:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	168(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L46
	movq	-8(%rbp), %rax
	movq	152(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	leaq	compare(%rip), %rdx
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movq	-8(%rbp), %rax
	movzbl	168(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 168(%rax)
.L46:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	ossl_quic_txpim_pkt_get_chunks, .-ossl_quic_txpim_pkt_get_chunks
	.globl	ossl_quic_txpim_pkt_get_num_chunks
	.type	ossl_quic_txpim_pkt_get_num_chunks, @function
ossl_quic_txpim_pkt_get_num_chunks:
.LFB574:
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
	movq	152(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	ossl_quic_txpim_pkt_get_num_chunks, .-ossl_quic_txpim_pkt_get_num_chunks
	.globl	ossl_quic_txpim_get_in_use
	.type	ossl_quic_txpim_get_in_use, @function
ossl_quic_txpim_get_in_use:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	ossl_quic_txpim_get_in_use, .-ossl_quic_txpim_get_in_use
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
