	.file	"quic_txpim_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"txpim = ossl_quic_txpim_new()"
.LC1:
	.string	"../test/quic_txpim_test.c"
	.align 8
.LC2:
	.string	"pkts[i] = ossl_quic_txpim_pkt_alloc(txpim)"
.LC3:
	.string	"0"
	.align 8
.LC4:
	.string	"ossl_quic_txpim_pkt_get_num_chunks(pkts[i])"
	.align 8
.LC5:
	.string	"ossl_quic_txpim_pkt_append_chunk(pkts[i], chunks + j)"
.LC6:
	.string	"OSSL_NELEM(chunks)"
.LC7:
	.string	"98"
.LC8:
	.string	"rchunks[0].stream_id"
.LC9:
	.string	"99"
.LC10:
	.string	"rchunks[1].stream_id"
.LC11:
	.string	"100"
.LC12:
	.string	"rchunks[2].stream_id"
	.text
	.type	test_txpim, @function
test_txpim:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	$0, -4(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	call	ossl_quic_txpim_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	movq	$0, -16(%rbp)
	jmp	.L4
.L13:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_alloc@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, -128(%rbp,%rdx,8)
	movq	-16(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$27, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_get_num_chunks@PLT
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$30, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L20
	movq	$0, -24(%rbp)
	jmp	.L7
.L9:
	movl	$100, %eax
	subq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	salq	$5, %rdx
	addq	%rbp, %rdx
	subq	$224, %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	imulq	$1000, %rax, %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-24(%rbp), %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movq	(%rax), %rax
	leaq	5(%rax), %rdx
	movq	-24(%rbp), %rax
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$208, %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	-224(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_append_chunk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$38, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	addq	$1, -24(%rbp)
.L7:
	cmpq	$2, -24(%rbp)
	jbe	.L9
	movq	-16(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_get_num_chunks@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L22
	movq	-16(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_get_chunks@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$98, %r9d
	movq	%rsi, %r8
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L23
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$99, %r9d
	movq	%rsi, %r8
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L23
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$100, %r9d
	movq	%rsi, %r8
	movl	$49, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L23
	addq	$1, -16(%rbp)
.L4:
	cmpq	$9, -16(%rbp)
	jbe	.L13
	movl	$1, -4(%rbp)
	jmp	.L3
.L18:
	nop
	jmp	.L3
.L19:
	nop
	jmp	.L3
.L20:
	nop
	jmp	.L3
.L21:
	nop
	jmp	.L3
.L22:
	nop
	jmp	.L3
.L23:
	nop
.L3:
	movq	$0, -16(%rbp)
	jmp	.L14
.L16:
	cmpq	$0, -32(%rbp)
	je	.L15
	movq	-16(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	.L15
	movq	-16(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txpim_pkt_release@PLT
.L15:
	addq	$1, -16(%rbp)
.L14:
	cmpq	$9, -16(%rbp)
	jbe	.L16
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	test_txpim, .-test_txpim
	.section	.rodata
.LC13:
	.string	"test_txpim"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_txpim(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
