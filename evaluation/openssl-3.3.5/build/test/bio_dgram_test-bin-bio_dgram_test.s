	.file	"bio_dgram_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"1"
	.align 8
.LC1:
	.string	"BIO_ADDR_rawaddress(a, pa, &tmplen)"
.LC2:
	.string	"../test/bio_dgram_test.c"
	.align 8
.LC3:
	.string	"BIO_ADDR_rawaddress(b, pb, &tmplen)"
.LC4:
	.string	"pb"
.LC5:
	.string	"pa"
.LC6:
	.string	"BIO_ADDR_rawport(b)"
.LC7:
	.string	"BIO_ADDR_rawport(a)"
	.text
	.type	compare_addr, @function
compare_addr:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	movl	%eax, %ebx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	%eax, %ebx
	je	.L2
	movl	$0, %eax
	jmp	.L11
.L2:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	$2, %eax
	jne	.L4
	leaq	-44(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$4, -40(%rbp)
	jmp	.L5
.L4:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	$10, %eax
	jne	.L6
	leaq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$16, -40(%rbp)
	jmp	.L5
.L6:
	movl	$0, %eax
	jmp	.L11
.L5:
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L11
.L7:
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$52, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L11
.L8:
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L11
.L9:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %ebx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$58, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	$1, %eax
.L11:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	compare_addr, .-compare_addr
	.type	do_sendmmsg, @function
do_sendmmsg:
.LFB469:
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
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L13
.L16:
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, -8(%rbp)
.L13:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L16
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	do_sendmmsg, .-do_sendmmsg
	.type	do_recvmmsg, @function
do_recvmmsg:
.LFB470:
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
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L18
.L21:
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, -8(%rbp)
.L18:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L21
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	do_recvmmsg, .-do_recvmmsg
	.section	.rodata
	.align 8
.LC8:
	.string	"# Testing with AF_INET, local=%d\n"
	.align 8
.LC9:
	.string	"# Testing with AF_INET6, local=%d\n"
.LC10:
	.string	"addr1"
.LC11:
	.string	"addr2"
.LC12:
	.string	"addr3"
.LC13:
	.string	"addr4"
.LC14:
	.string	"addr5"
.LC15:
	.string	"addr6"
	.align 8
.LC16:
	.string	"BIO_ADDR_rawmake(addr1, af, pina, inal, 0)"
	.align 8
.LC17:
	.string	"BIO_ADDR_rawmake(addr2, af, pina, inal, 0)"
.LC18:
	.string	"0"
.LC19:
	.string	"fd1"
.LC20:
	.string	"fd2"
	.align 8
.LC21:
	.string	"BIO_bind() failed - assuming it's an unavailable address family"
	.align 8
.LC22:
	.string	"BIO_sock_info(fd1, BIO_SOCK_INFO_ADDRESS, &info1)"
	.align 8
.LC23:
	.string	"BIO_sock_info(fd2, BIO_SOCK_INFO_ADDRESS, &info2)"
.LC24:
	.string	"BIO_ADDR_rawport(addr1)"
.LC25:
	.string	"BIO_ADDR_rawport(addr2)"
.LC26:
	.string	"b1"
.LC27:
	.string	"b2"
.LC28:
	.string	"BIO_dgram_set_peer(b1, addr2)"
.LC29:
	.string	"hello"
.LC30:
	.string	"BIO_write(b1, \"hello\", 5)"
.LC31:
	.string	"5"
	.align 8
.LC32:
	.string	"BIO_read(b2, rx_buf, sizeof(rx_buf))"
.LC33:
	.string	"\"hello\""
.LC34:
	.string	"rx_buf"
.LC35:
	.string	"BIO_dgram_get_peer(b2, addr3)"
.LC36:
	.string	"compare_addr(addr3, addr1)"
	.align 8
.LC37:
	.string	"BIO_ADDR_rawmake(addr3, af, pina, inal, 0)"
.LC38:
	.string	"BIO_dgram_set_peer(b1, addr3)"
.LC39:
	.string	"BIO_dgram_set_peer(b2, addr3)"
.LC40:
	.string	"apple"
.LC41:
	.string	"orange"
	.align 8
.LC42:
	.string	"do_sendmmsg(b1, tx_msg, 2, 0, &num_processed)"
.LC43:
	.string	"num_processed"
	.align 8
.LC44:
	.string	"do_sendmmsg(b1, tx_msg, 2, 0, &num_processed) || !TEST_size_t_eq(num_processed, 0)"
	.align 8
.LC45:
	.string	"BIO_dgram_set_local_addr_enable(b1, 1)"
.LC46:
	.string	"2"
	.align 8
.LC47:
	.string	"do_recvmmsg(b2, rx_msg, 2, 0, &num_processed)"
.LC48:
	.string	"sizeof(rx_buf)"
.LC49:
	.string	"(int)rx_msg[0].data_len"
.LC50:
	.string	"sizeof(rx_buf2)"
.LC51:
	.string	"(int)rx_msg[1].data_len"
.LC52:
	.string	"1UL<<31"
	.align 8
.LC53:
	.string	"(unsigned long)rx_msg[0].flags"
	.align 8
.LC54:
	.string	"(unsigned long)rx_msg[1].flags"
	.align 8
.LC55:
	.string	"BIO_dgram_set_local_addr_enable(b2, 1)"
.LC56:
	.string	"6"
.LC57:
	.string	"(int)rx_msg[0].flags"
.LC58:
	.string	"(int)rx_msg[1].flags"
.LC59:
	.string	"compare_addr(addr5, addr1)"
.LC60:
	.string	"compare_addr(addr4, addr2)"
.LC61:
	.string	"compare_addr(addr6, addr2)"
	.align 8
.LC62:
	.string	"do_sendmmsg(b1, tx_msg, OSSL_NELEM(tx_msg), 0, &num_processed)"
.LC63:
	.string	"OSSL_NELEM(tx_msg)"
	.align 8
.LC64:
	.string	"do_recvmmsg(b2, rx_msg, OSSL_NELEM(rx_msg), 0, &num_processed)"
.LC65:
	.string	"OSSL_NELEM(rx_msg)"
.LC66:
	.string	"tx_buf"
	.text
	.type	test_bio_dgram_impl, @function
test_bio_dgram_impl:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$10808, %rsp
	.cfi_offset 3, -24
	movl	%edi, -10804(%rbp)
	movl	%esi, -10808(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$-1, -44(%rbp)
	movl	$-1, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -10792(%rbp)
	cmpl	$2, -10804(%rbp)
	jne	.L23
	movl	-10808(%rbp), %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$120, %esi
	movl	$0, %eax
	call	test_info@PLT
	leaq	-124(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$4, -112(%rbp)
	jmp	.L24
.L23:
	cmpl	$10, -10804(%rbp)
	jne	.L102
	movl	-10808(%rbp), %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$126, %esi
	movl	$0, %eax
	call	test_info@PLT
	leaq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$16, -112(%rbp)
.L24:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$2130706433, %edi
	call	htonl@PLT
	movl	%eax, -124(%rbp)
	movb	$1, -129(%rbp)
	call	BIO_ADDR_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$142, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L103
	call	BIO_ADDR_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L104
	call	BIO_ADDR_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$150, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L105
	call	BIO_ADDR_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$154, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L106
	call	BIO_ADDR_new@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$158, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L107
	call	BIO_ADDR_new@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$162, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-10804(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L109
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-10804(%rbp), %esi
	movq	-64(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$168, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L110
	movl	-10804(%rbp), %eax
	movl	$0, %ecx
	movl	$17, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	BIO_socket@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$172, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L111
	movl	-10804(%rbp), %eax
	movl	$0, %ecx
	movl	$17, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	BIO_socket@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$176, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L112
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_bind@PLT
	testl	%eax, %eax
	jle	.L37
	movq	-64(%rbp), %rcx
	movl	-48(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_bind@PLT
	testl	%eax, %eax
	jg	.L38
.L37:
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	%eax, -20(%rbp)
	jmp	.L26
.L38:
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rdx
	movl	-44(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_sock_info@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$186, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L113
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-160(%rbp), %rdx
	movl	-48(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_sock_info@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$190, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L114
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$193, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L115
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$196, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L116
	movl	-44(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$200, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L117
	movl	-48(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$204, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$207, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L119
	leaq	.LC29(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$210, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L120
	leaq	-288(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$214, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L121
	leaq	-288(%rbp), %rdi
	leaq	.LC33(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$5
	leaq	.LC29(%rip), %rsi
	pushq	%rsi
	movl	$5, %r9d
	movq	%rdi, %r8
	movl	$217, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L122
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$46, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$220, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L123
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare_addr
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$223, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L124
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-10804(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$227, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L125
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L126
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$233, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L127
	leaq	.LC40(%rip), %rax
	movq	%rax, -5536(%rbp)
	movq	$5, -5528(%rbp)
	movq	$0, -5520(%rbp)
	movq	$0, -5512(%rbp)
	movq	$0, -5504(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -5496(%rbp)
	movq	$6, -5488(%rbp)
	movq	$0, -5480(%rbp)
	movq	$0, -5472(%rbp)
	movq	$0, -5464(%rbp)
	leaq	-10792(%rbp), %rdx
	leaq	-5536(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	do_sendmmsg
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$250, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L128
	movq	-10792(%rbp), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$251, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L128
	movq	-64(%rbp), %rax
	movq	%rax, -5520(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -5512(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -5480(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -5472(%rbp)
	leaq	-10792(%rbp), %rdx
	leaq	-5536(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	do_sendmmsg
	testl	%eax, %eax
	jne	.L56
	movq	-10792(%rbp), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$263, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L57
.L56:
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$262, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L129
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$82, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jle	.L60
	cmpl	$0, -10808(%rbp)
	je	.L60
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$84, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L62
	jmp	.L26
.L60:
	movq	$0, -5512(%rbp)
	movq	$0, -5472(%rbp)
	movl	$0, -10808(%rbp)
.L62:
	leaq	-10792(%rbp), %rdx
	leaq	-5536(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	do_sendmmsg
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$277, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L130
	movq	-10792(%rbp), %rsi
	leaq	.LC46(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L130
	leaq	-288(%rbp), %rax
	movq	%rax, -10656(%rbp)
	movq	$128, -10648(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -10640(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -10632(%rbp)
	movl	$2147483648, %ebx
	movq	%rbx, -10624(%rbp)
	leaq	-288(%rbp), %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-416(%rbp), %rax
	movq	%rax, -10616(%rbp)
	movq	$128, -10608(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -10600(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -10592(%rbp)
	movq	%rbx, -10584(%rbp)
	leaq	-416(%rbp), %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-10792(%rbp), %rdx
	leaq	-10656(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	do_recvmmsg
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$300, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L131
	movq	-10792(%rbp), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$301, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L131
	movq	-10648(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$128, %r9d
	movl	%esi, %r8d
	movl	$305, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L132
	movq	-10608(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC50(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$128, %r9d
	movl	%esi, %r8d
	movl	$308, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L133
	movq	-10624(%rbp), %rsi
	leaq	.LC52(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2147483648, %r9d
	movq	%rsi, %r8
	movl	$311, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L134
	movq	-10584(%rbp), %rsi
	leaq	.LC52(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2147483648, %r9d
	movq	%rsi, %r8
	movl	$314, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L135
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$82, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jle	.L71
	cmpl	$0, -10808(%rbp)
	je	.L71
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$84, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$319, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L73
	jmp	.L26
.L71:
	movq	$0, -10632(%rbp)
	movq	$0, -10592(%rbp)
	movl	$0, -10808(%rbp)
.L73:
	leaq	-10792(%rbp), %rdx
	leaq	-10656(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	do_recvmmsg
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$328, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L136
	movq	-10792(%rbp), %rsi
	leaq	.LC46(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$329, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L136
	movq	-10648(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC31(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$333, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L137
	movq	-10608(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC56(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$336, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L138
	movq	-10624(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$340, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L139
	movq	-10584(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$343, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L140
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare_addr
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$347, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L141
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare_addr
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$350, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L142
	leaq	-10792(%rbp), %rdx
	leaq	-5536(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	do_sendmmsg
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$359, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L143
	movq	-10792(%rbp), %rsi
	leaq	.LC46(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$360, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L143
	movq	$128, -10648(%rbp)
	movq	$128, -10608(%rbp)
	leaq	-10792(%rbp), %rdx
	leaq	-10656(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	do_recvmmsg
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$367, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	movq	-10792(%rbp), %rsi
	leaq	.LC46(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$368, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L144
	movq	-10632(%rbp), %rax
	testq	%rax, %rax
	je	.L86
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare_addr
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$373, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L145
	movq	-64(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	compare_addr
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$376, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L146
.L86:
	movq	$0, -120(%rbp)
	jmp	.L88
.L91:
	movq	-120(%rbp), %rax
	movl	%eax, %ecx
	leaq	-10784(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movb	%cl, (%rax)
	leaq	-10784(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$5520, %rax
	movq	%rcx, (%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$5512, %rax
	movq	$1, (%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-5504(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	cmpl	$0, -10808(%rbp)
	je	.L89
	movq	-56(%rbp), %rcx
	jmp	.L90
.L89:
	movl	$0, %ecx
.L90:
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$5496, %rax
	movq	%rcx, (%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$5488, %rax
	movq	$0, (%rax)
	addq	$1, -120(%rbp)
.L88:
	cmpq	$127, -120(%rbp)
	jbe	.L91
	leaq	-10792(%rbp), %rdx
	leaq	-5536(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$128, %edx
	movq	%rax, %rdi
	call	do_sendmmsg
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC62(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$392, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L147
	movq	-10792(%rbp), %rsi
	leaq	.LC63(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$128, %r9d
	movq	%rsi, %r8
	movl	$393, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L147
	movq	$0, -120(%rbp)
	jmp	.L94
.L95:
	leaq	-288(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	-288(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$10640, %rax
	movq	%rcx, (%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$10632, %rax
	movq	$1, (%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$10624, %rax
	movq	$0, (%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$10616, %rax
	movq	$0, (%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$10608, %rax
	movq	$0, (%rax)
	addq	$1, -120(%rbp)
.L94:
	cmpq	$127, -120(%rbp)
	jbe	.L95
	leaq	-10792(%rbp), %rdx
	leaq	-10656(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$128, %edx
	movq	%rax, %rdi
	call	do_recvmmsg
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$408, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L148
	movq	-10792(%rbp), %rsi
	leaq	.LC65(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$128, %r9d
	movq	%rsi, %r8
	movl	$409, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L148
	leaq	-10784(%rbp), %rdi
	leaq	.LC34(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$128
	leaq	-288(%rbp), %rsi
	pushq	%rsi
	movl	$128, %r9d
	movq	%rdi, %r8
	movl	$412, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L149
	movl	$1, -20(%rbp)
	jmp	.L26
.L102:
	nop
	jmp	.L26
.L103:
	nop
	jmp	.L26
.L104:
	nop
	jmp	.L26
.L105:
	nop
	jmp	.L26
.L106:
	nop
	jmp	.L26
.L107:
	nop
	jmp	.L26
.L108:
	nop
	jmp	.L26
.L109:
	nop
	jmp	.L26
.L110:
	nop
	jmp	.L26
.L111:
	nop
	jmp	.L26
.L112:
	nop
	jmp	.L26
.L113:
	nop
	jmp	.L26
.L114:
	nop
	jmp	.L26
.L115:
	nop
	jmp	.L26
.L116:
	nop
	jmp	.L26
.L117:
	nop
	jmp	.L26
.L118:
	nop
	jmp	.L26
.L119:
	nop
	jmp	.L26
.L120:
	nop
	jmp	.L26
.L121:
	nop
	jmp	.L26
.L122:
	nop
	jmp	.L26
.L123:
	nop
	jmp	.L26
.L124:
	nop
	jmp	.L26
.L125:
	nop
	jmp	.L26
.L126:
	nop
	jmp	.L26
.L127:
	nop
	jmp	.L26
.L128:
	nop
	jmp	.L26
.L129:
	nop
	jmp	.L26
.L130:
	nop
	jmp	.L26
.L131:
	nop
	jmp	.L26
.L132:
	nop
	jmp	.L26
.L133:
	nop
	jmp	.L26
.L134:
	nop
	jmp	.L26
.L135:
	nop
	jmp	.L26
.L136:
	nop
	jmp	.L26
.L137:
	nop
	jmp	.L26
.L138:
	nop
	jmp	.L26
.L139:
	nop
	jmp	.L26
.L140:
	nop
	jmp	.L26
.L141:
	nop
	jmp	.L26
.L142:
	nop
	jmp	.L26
.L143:
	nop
	jmp	.L26
.L144:
	nop
	jmp	.L26
.L145:
	nop
	jmp	.L26
.L146:
	nop
	jmp	.L26
.L147:
	nop
	jmp	.L26
.L148:
	nop
	jmp	.L26
.L149:
	nop
.L26:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -44(%rbp)
	js	.L99
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L99:
	cmpl	$0, -48(%rbp)
	js	.L100
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
.L100:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_bio_dgram_impl, .-test_bio_dgram_impl
	.section	.rodata
	.align 32
	.type	bio_dgram_cases, @object
	.size	bio_dgram_cases, 32
bio_dgram_cases:
	.long	2
	.long	0
	.long	10
	.long	0
	.long	2
	.long	1
	.long	10
	.long	1
	.text
	.type	test_bio_dgram, @function
test_bio_dgram:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+bio_dgram_cases(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	bio_dgram_cases(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	test_bio_dgram_impl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_bio_dgram, .-test_bio_dgram
	.section	.rodata
.LC67:
	.string	"ChaCha20"
	.text
	.type	random_data, @function
random_data:
.LFB473:
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
	movq	%rcx, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-80(%rbp), %rax
	movl	%eax, -48(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L163
	leaq	.LC67(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L164
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex2@PLT
	testl	%eax, %eax
	je	.L165
	jmp	.L157
.L161:
	cmpq	$2048, -72(%rbp)
	ja	.L158
	movq	-72(%rbp), %rax
	jmp	.L159
.L158:
	movl	$2048, %eax
.L159:
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	leaq	zeroes.0(%rip), %rcx
	leaq	-28(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	cmpl	$1, %eax
	jne	.L166
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
	movl	-28(%rbp), %eax
	cltq
	subq	%rax, -72(%rbp)
.L157:
	cmpq	$0, -72(%rbp)
	jne	.L161
	movl	$1, -4(%rbp)
	jmp	.L154
.L163:
	nop
	jmp	.L154
.L164:
	nop
	jmp	.L154
.L165:
	nop
	jmp	.L154
.L166:
	nop
.L154:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	random_data, .-random_data
	.section	.rodata
	.align 8
.LC68:
	.string	"BIO_new_bio_dgram_pair(&bio1, 0, &bio2, 0)"
	.align 8
.LC69:
	.string	"bio1 = bio2 = BIO_new(BIO_s_dgram_mem())"
.LC70:
	.string	"1280"
.LC71:
	.string	"mtu1"
	.align 8
.LC72:
	.string	"BIO_set_write_buf_size(bio1, bufsz)"
.LC73:
	.string	"mtu2"
.LC74:
	.string	"sizeof(scratch) - 4"
	.align 8
.LC75:
	.string	"random_data(key, scratch, sizeof(scratch), i)"
.LC76:
	.string	"blen"
.LC77:
	.string	"r"
.LC78:
	.string	"1 * 1024 * 1024"
.LC79:
	.string	"total"
.LC80:
	.string	"9"
.LC81:
	.string	"i"
.LC82:
	.string	"scratch2"
.LC83:
	.string	"scratch + 4"
.LC84:
	.string	"-1"
	.align 8
.LC85:
	.string	"BIO_read(bio2, scratch2, sizeof(scratch2))"
	.align 8
.LC86:
	.string	"random_data(key, scratch, sizeof(scratch), 0)"
	.align 8
.LC87:
	.string	"BIO_sendmmsg(bio1, msgs, sizeof(BIO_MSG), OSSL_NELEM(msgs), 0, &num_processed)"
	.align 8
.LC88:
	.string	"BIO_recvmmsg(bio2, rmsgs, sizeof(BIO_MSG), OSSL_NELEM(rmsgs), 0, &num_processed)"
.LC89:
	.string	"scratch"
.LC90:
	.string	"rmsgs[0].data"
.LC91:
	.string	"scratch + 19"
.LC92:
	.string	"rmsgs[1].data"
	.align 8
.LC93:
	.string	"BIO_ADDR_rawmake(addr1, AF_INET, &in_local, sizeof(in_local), 1234)"
	.align 8
.LC94:
	.string	"BIO_ADDR_rawmake(addr2, AF_INET, &in_local, sizeof(in_local), 2345)"
	.align 8
.LC95:
	.string	"BIO_dgram_set_caps(bio2, ref_caps)"
.LC96:
	.string	"ref_caps"
.LC97:
	.string	"BIO_dgram_get_caps(bio2)"
	.align 8
.LC98:
	.string	"BIO_dgram_get_effective_caps(bio1)"
	.align 8
.LC99:
	.string	"BIO_dgram_get_effective_caps(bio2)"
	.align 8
.LC100:
	.string	"BIO_dgram_set_caps(bio1, ref_caps)"
	.align 8
.LC101:
	.string	"BIO_sendmmsg(bio1, msgs, sizeof(BIO_MSG), 1, 0, &num_processed)"
	.align 8
.LC102:
	.string	"BIO_dgram_set_local_addr_enable(bio2, 1)"
.LC103:
	.string	"msgs[0].data"
.LC104:
	.string	"BIO_ADDR_family(addr3)"
.LC105:
	.string	"AF_INET"
.LC106:
	.string	"BIO_ADDR_family(addr4)"
.LC107:
	.string	"1234"
.LC108:
	.string	"BIO_ADDR_rawport(addr4)"
	.align 8
.LC109:
	.string	"BIO_dgram_set_local_addr_enable(bio1, 1)"
.LC110:
	.string	"2345"
.LC111:
	.string	"BIO_ADDR_rawport(addr3)"
.LC112:
	.string	"64"
	.align 8
.LC113:
	.string	"BIO_dgram_set_no_trunc(bio2, 1)"
.LC114:
	.string	"BIO_read(bio2, scratch2, 32)"
.LC115:
	.string	"BIO_pending(bio2)"
	.align 8
.LC116:
	.string	"BIO_dgram_set_no_trunc(bio2, 0)"
.LC117:
	.string	"32"
	.text
	.type	test_bio_dgram_pair, @function
test_bio_dgram_pair:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4472, %rsp
	.cfi_offset 3, -24
	movl	%edi, -4468(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -4280(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$15, -76(%rbp)
	leaq	-4368(%rbp), %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-4448(%rbp), %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$2130706433, %edi
	call	ntohl@PLT
	movl	%eax, -4452(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L168
.L169:
	call	test_random@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, -4272(%rbp,%rdx,4)
	addq	$1, -32(%rbp)
.L168:
	cmpq	$7, -32(%rbp)
	jbe	.L169
	cmpl	$0, -4468(%rbp)
	jne	.L170
	leaq	-128(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_bio_dgram_pair@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$518, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L171
	jmp	.L172
.L170:
	call	BIO_s_dgram_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC69(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$521, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L241
.L171:
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$41, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %esi
	leaq	.LC70(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1280, %r9d
	movl	%esi, %r8d
	movl	$526, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L242
	cmpl	$1, -4468(%rbp)
	jne	.L174
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	$2088, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$136, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$537, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L243
.L174:
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$41, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %esi
	leaq	.LC70(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1280, %r9d
	movl	%esi, %r8d
	movl	$542, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L244
	movl	-92(%rbp), %edi
	movl	-80(%rbp), %esi
	leaq	.LC73(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$545, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L245
	movl	-80(%rbp), %esi
	leaq	.LC74(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2048, %r9d
	movl	%esi, %r8d
	movl	$548, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L246
	movq	$0, -32(%rbp)
	jmp	.L178
.L183:
	movq	-32(%rbp), %rdx
	leaq	-2192(%rbp), %rsi
	leaq	-4272(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2052, %edx
	movq	%rax, %rdi
	call	random_data
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$552, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L247
	leaq	-2192(%rbp), %rax
	movl	(%rax), %eax
	movl	-80(%rbp), %ebx
	movl	$0, %edx
	divl	%ebx
	movl	%edx, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	leaq	-2192(%rbp), %rax
	addq	$4, %rax
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	BIO_write@PLT
	movl	%eax, -100(%rbp)
	cmpl	$-1, -100(%rbp)
	je	.L248
	movl	-96(%rbp), %edi
	movl	-100(%rbp), %esi
	leaq	.LC76(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$560, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L249
	movl	-96(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	addq	$1, -32(%rbp)
.L178:
	cmpq	$1048575, -72(%rbp)
	jbe	.L183
	jmp	.L181
.L248:
	nop
.L181:
	cmpl	$1, -4468(%rbp)
	jg	.L184
	movq	-72(%rbp), %rsi
	leaq	.LC78(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1048576, %r9d
	movq	%rsi, %r8
	movl	$566, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	testl	%eax, %eax
	je	.L250
.L184:
	cmpl	$2, -4468(%rbp)
	jne	.L185
	movq	-72(%rbp), %rsi
	leaq	.LC78(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1048576, %r9d
	movq	%rsi, %r8
	movl	$569, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	je	.L251
.L185:
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC81(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$9, %r9d
	movl	%esi, %r8d
	movl	$579, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L252
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L187
.L191:
	movq	-32(%rbp), %rdx
	leaq	-2192(%rbp), %rsi
	leaq	-4272(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2052, %edx
	movq	%rax, %rdi
	call	random_data
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$585, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L253
	leaq	-2192(%rbp), %rax
	movl	(%rax), %eax
	movl	-80(%rbp), %ebx
	movl	$0, %edx
	divl	%ebx
	movl	%edx, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movq	-128(%rbp), %rax
	leaq	-4240(%rbp), %rcx
	movl	$2048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -100(%rbp)
	movl	-96(%rbp), %edi
	movl	-100(%rbp), %esi
	leaq	.LC76(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$590, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L254
	movl	-96(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %r8
	leaq	-2192(%rbp), %rax
	addq	$4, %rax
	leaq	.LC82(%rip), %rcx
	leaq	.LC83(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	%rsi
	leaq	-4240(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rax, %r8
	movl	$593, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L255
	addq	$1, -32(%rbp)
.L187:
	movq	-32(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L191
	movq	-128(%rbp), %rax
	leaq	-4240(%rbp), %rcx
	movl	$2048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC84(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$598, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L256
	leaq	-2192(%rbp), %rsi
	leaq	-4272(%rbp), %rax
	movl	$0, %ecx
	movl	$2052, %edx
	movq	%rax, %rdi
	call	random_data
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$602, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L257
	leaq	-2192(%rbp), %rax
	movq	%rax, -4368(%rbp)
	movq	$19, -4360(%rbp)
	leaq	-2192(%rbp), %rax
	addq	$19, %rax
	movq	%rax, -4328(%rbp)
	movq	$46, -4320(%rbp)
	movq	-120(%rbp), %rax
	leaq	-4280(%rbp), %rdx
	leaq	-4368(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$610, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L258
	movq	-4280(%rbp), %rsi
	leaq	.LC46(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$612, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L258
	leaq	-4240(%rbp), %rax
	movq	%rax, -4448(%rbp)
	movq	$64, -4440(%rbp)
	leaq	-4240(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -4408(%rbp)
	movq	$64, -4400(%rbp)
	movq	-128(%rbp), %rax
	leaq	-4280(%rbp), %rdx
	leaq	-4448(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$619, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L259
	movq	-4280(%rbp), %rsi
	leaq	.LC46(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$621, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L259
	movq	-4440(%rbp), %r8
	movq	-4448(%rbp), %rdi
	leaq	.LC89(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$19
	leaq	-2192(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$624, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L260
	leaq	-2192(%rbp), %rax
	addq	$19, %rax
	movq	-4400(%rbp), %r8
	movq	-4408(%rbp), %rsi
	leaq	.LC91(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	$46
	pushq	%rax
	movq	%r8, %r9
	movq	%rsi, %r8
	movl	$627, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L261
	call	BIO_ADDR_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$632, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L262
	leaq	-4452(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$1234, %r8d
	movl	$4, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$635, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L263
	call	BIO_ADDR_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$640, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L264
	leaq	-4452(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$2345, %r8d
	movl	$4, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC94(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$643, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L265
	call	BIO_ADDR_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$648, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L266
	call	BIO_ADDR_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$652, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L267
	movq	-40(%rbp), %rax
	movq	%rax, -4352(%rbp)
	movq	-120(%rbp), %rax
	leaq	-4280(%rbp), %rdx
	leaq	-4368(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$658, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L268
	movq	-4280(%rbp), %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$660, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L268
	movl	-76(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$87, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$663, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L269
	movl	-76(%rbp), %ebx
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC96(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$666, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L270
	movl	-76(%rbp), %ebx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC96(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$669, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L271
	cmpl	$0, -4468(%rbp)
	jne	.L211
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$672, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L272
.L211:
	movl	-76(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$87, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$675, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L273
	movq	-120(%rbp), %rax
	leaq	-4280(%rbp), %rdx
	leaq	-4368(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$679, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L274
	movq	-4280(%rbp), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$680, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L274
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$84, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$684, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L275
	leaq	-4240(%rbp), %rax
	movq	%rax, -4448(%rbp)
	movq	$64, -4440(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -4432(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -4424(%rbp)
	movq	-128(%rbp), %rax
	leaq	-4280(%rbp), %rdx
	leaq	-4448(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$691, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L276
	movq	-4280(%rbp), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$693, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L276
	movq	-4368(%rbp), %rsi
	movq	-4440(%rbp), %r8
	movq	-4448(%rbp), %rdi
	leaq	.LC103(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$19
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$696, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L277
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$700, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L278
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	movl	%eax, %esi
	leaq	.LC105(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$703, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L279
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %esi
	leaq	.LC107(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1234, %r9d
	movl	%esi, %r8d
	movl	$706, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L280
	movq	-48(%rbp), %rax
	movq	%rax, -4344(%rbp)
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$84, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$712, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L281
	movq	-120(%rbp), %rax
	leaq	-4280(%rbp), %rdx
	leaq	-4368(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$715, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L282
	movq	-4280(%rbp), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$716, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L282
	leaq	-4240(%rbp), %rax
	movq	%rax, -4448(%rbp)
	movq	$64, -4440(%rbp)
	movq	-128(%rbp), %rax
	leaq	-4280(%rbp), %rdx
	leaq	-4448(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$721, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L283
	movq	-4280(%rbp), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$722, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L283
	movq	-4360(%rbp), %rdi
	movq	-4368(%rbp), %rsi
	movq	-4440(%rbp), %r9
	movq	-4448(%rbp), %r8
	leaq	.LC103(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$725, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L284
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	movl	%eax, %esi
	leaq	.LC105(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$729, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L285
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %esi
	leaq	.LC110(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2345, %r9d
	movl	%esi, %r8d
	movl	$732, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L286
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	movl	%eax, %esi
	leaq	.LC105(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$735, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L287
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %esi
	leaq	.LC107(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1234, %r9d
	movl	%esi, %r8d
	movl	$738, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L288
	movq	-120(%rbp), %rax
	leaq	-2192(%rbp), %rcx
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %esi
	leaq	.LC112(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$64, %r9d
	movl	%esi, %r8d
	movl	$743, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L289
	leaq	-4240(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$89, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$747, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L290
	movq	-128(%rbp), %rax
	leaq	-4240(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC84(%rip), %rcx
	leaq	.LC114(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$750, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L291
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC112(%rip), %rcx
	leaq	.LC115(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$64, %r9d
	movl	%esi, %r8d
	movl	$753, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L292
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$89, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC116(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$756, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L293
	movq	-128(%rbp), %rax
	leaq	-4240(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC117(%rip), %rcx
	leaq	.LC114(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$32, %r9d
	movl	%esi, %r8d
	movl	$759, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L294
	leaq	-2192(%rbp), %rdi
	leaq	.LC82(%rip), %rcx
	leaq	.LC89(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$32
	leaq	-4240(%rbp), %rsi
	pushq	%rsi
	movl	$32, %r9d
	movq	%rdi, %r8
	movl	$762, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L295
	movl	$1, -20(%rbp)
	jmp	.L172
.L241:
	nop
	jmp	.L172
.L242:
	nop
	jmp	.L172
.L243:
	nop
	jmp	.L172
.L244:
	nop
	jmp	.L172
.L245:
	nop
	jmp	.L172
.L246:
	nop
	jmp	.L172
.L247:
	nop
	jmp	.L172
.L249:
	nop
	jmp	.L172
.L250:
	nop
	jmp	.L172
.L251:
	nop
	jmp	.L172
.L252:
	nop
	jmp	.L172
.L253:
	nop
	jmp	.L172
.L254:
	nop
	jmp	.L172
.L255:
	nop
	jmp	.L172
.L256:
	nop
	jmp	.L172
.L257:
	nop
	jmp	.L172
.L258:
	nop
	jmp	.L172
.L259:
	nop
	jmp	.L172
.L260:
	nop
	jmp	.L172
.L261:
	nop
	jmp	.L172
.L262:
	nop
	jmp	.L172
.L263:
	nop
	jmp	.L172
.L264:
	nop
	jmp	.L172
.L265:
	nop
	jmp	.L172
.L266:
	nop
	jmp	.L172
.L267:
	nop
	jmp	.L172
.L268:
	nop
	jmp	.L172
.L269:
	nop
	jmp	.L172
.L270:
	nop
	jmp	.L172
.L271:
	nop
	jmp	.L172
.L272:
	nop
	jmp	.L172
.L273:
	nop
	jmp	.L172
.L274:
	nop
	jmp	.L172
.L275:
	nop
	jmp	.L172
.L276:
	nop
	jmp	.L172
.L277:
	nop
	jmp	.L172
.L278:
	nop
	jmp	.L172
.L279:
	nop
	jmp	.L172
.L280:
	nop
	jmp	.L172
.L281:
	nop
	jmp	.L172
.L282:
	nop
	jmp	.L172
.L283:
	nop
	jmp	.L172
.L284:
	nop
	jmp	.L172
.L285:
	nop
	jmp	.L172
.L286:
	nop
	jmp	.L172
.L287:
	nop
	jmp	.L172
.L288:
	nop
	jmp	.L172
.L289:
	nop
	jmp	.L172
.L290:
	nop
	jmp	.L172
.L291:
	nop
	jmp	.L172
.L292:
	nop
	jmp	.L172
.L293:
	nop
	jmp	.L172
.L294:
	nop
	jmp	.L172
.L295:
	nop
.L172:
	cmpl	$0, -4468(%rbp)
	jne	.L239
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L239:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_bio_dgram_pair, .-test_bio_dgram_pair
	.section	.rodata
.LC118:
	.string	"Error parsing test options\n"
.LC119:
	.string	"test_bio_dgram"
.LC120:
	.string	"test_bio_dgram_pair"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L297
	leaq	.LC118(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$782, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L298
.L297:
	leaq	test_bio_dgram(%rip), %rsi
	leaq	.LC119(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bio_dgram_pair(%rip), %rsi
	leaq	.LC120(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L298:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 32
	.type	zeroes.0, @object
	.size	zeroes.0, 2048
zeroes.0:
	.zero	2048
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
