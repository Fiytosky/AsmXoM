	.file	"wpackettest.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jns	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	ossl_quic_vlint_decode_len, @function
ossl_quic_vlint_decode_len:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	ossl_quic_vlint_decode_len, .-ossl_quic_vlint_decode_len
	.type	PACKET_get_quic_vlint, @function
PACKET_get_quic_vlint:
.LFB361:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_vlint_decode_len
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-8(%rbp), %rax
	jnb	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_decode_unchecked@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	PACKET_get_quic_vlint, .-PACKET_get_quic_vlint
	.section	.rodata
	.type	simple1, @object
	.size	simple1, 1
simple1:
	.ascii	"\377"
	.type	simple2, @object
	.size	simple2, 2
simple2:
	.ascii	"\001\377"
	.type	simple3, @object
	.size	simple3, 5
simple3:
	.base64	"AAAAAf8="
	.type	nestedsub, @object
	.size	nestedsub, 4
nestedsub:
	.base64	"A/8B/w=="
	.type	seqsub, @object
	.size	seqsub, 4
seqsub:
	.base64	"Af8B/w=="
	.type	empty, @object
	.size	empty, 1
empty:
	.zero	1
	.type	alloc, @object
	.size	alloc, 3
alloc:
	.base64	"Av7/"
	.type	submem, @object
	.size	submem, 4
submem:
	.base64	"AwL+/w=="
	.type	fixed, @object
	.size	fixed, 3
fixed:
	.base64	"////"
	.align 8
	.type	simpleder, @object
	.size	simpleder, 9
simpleder:
	.base64	"/AQAAQID//79"
	.type	quic1, @object
	.size	quic1, 5
quic1:
	.base64	"gAAAAQk="
	.type	quic2, @object
	.size	quic2, 2
quic2:
	.ascii	"\001\t"
	.type	quic3, @object
	.size	quic3, 4
quic3:
	.ascii	"@\002@A"
	.align 8
	.type	quic4, @object
	.size	quic4, 12
quic4:
	.base64	"wAAAAAAAAASAATxq"
	.align 16
	.type	quic5, @object
	.size	quic5, 16
quic5:
	.base64	"wAAAAAAAAAjvdyE/P1BbpQ=="
	.type	quic6, @object
	.size	quic6, 4
quic6:
	.ascii	"\003Ufw"
	.align 16
	.type	quic7, @object
	.size	quic7, 19
quic7:
	.base64	"B4AAAAhlFEABBUABEUABEkABEw=="
	.local	buf
	.comm	buf,8,8
	.text
	.type	cleanup, @function
cleanup:
.LFB514:
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
	call	WPACKET_cleanup@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	cleanup, .-cleanup
	.section	.rodata
.LC0:
	.string	"WPACKET_init(&pkt, buf)"
.LC1:
	.string	"../test/wpackettest.c"
	.align 8
.LC2:
	.string	"WPACKET_put_bytes_u8(&pkt, 0xff)"
.LC3:
	.string	"WPACKET_close(&pkt)"
.LC4:
	.string	"WPACKET_finish(&pkt)"
	.align 8
.LC5:
	.string	"WPACKET_get_total_written(&pkt, &written)"
.LC6:
	.string	"simple1"
.LC7:
	.string	"buf->data"
	.align 8
.LC8:
	.string	"WPACKET_init_len(&pkt, buf, 1)"
.LC9:
	.string	"simple2"
	.align 8
.LC10:
	.string	"WPACKET_init_len(&pkt, buf, 4)"
.LC11:
	.string	"simple3"
.LC12:
	.string	"i < 256"
	.align 8
.LC13:
	.string	"WPACKET_init_static_len(&pkt, sbuf, sizeof(sbuf), 0)"
	.align 8
.LC14:
	.string	"WPACKET_put_bytes_u24(&pkt, 0xffffff)"
.LC15:
	.string	"fixed"
.LC16:
	.string	"sbuf"
	.align 8
.LC17:
	.string	"WPACKET_init_static_len(&pkt, sbuf, sizeof(sbuf), 1)"
	.align 8
.LC18:
	.string	"WPACKET_put_bytes_u16(&pkt, 0xfeff)"
.LC19:
	.string	"alloc"
	.text
	.type	test_WPACKET_init, @function
test_WPACKET_init:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	buf(%rip), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$72, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$75, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L16
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$77, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L16
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$83, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L16
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L16
	movq	-88(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$1
	leaq	simple1(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L17
.L16:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L30
.L17:
	movq	buf(%rip), %rcx
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$89, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$90, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$91, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$92, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movq	-88(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$2
	leaq	simple2(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L20
.L19:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L30
.L20:
	movq	buf(%rip), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$97, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$98, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$99, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-88(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$5
	leaq	simple3(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L22
.L21:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L30
.L22:
	movq	buf(%rip), %rcx
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L23
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L30
.L23:
	movl	$1, -20(%rbp)
	jmp	.L24
.L26:
	cmpl	$255, -20(%rbp)
	setle	%al
	movzbl	%al, %ebx
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L25
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L30
.L25:
	addl	$1, -20(%rbp)
.L24:
	cmpl	$256, -20(%rbp)
	jle	.L26
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$114, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L27
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L30
.L27:
	leaq	-91(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-80(%rbp), %rax
	movl	$3, %edx
	movl	$16777215, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$120, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$124, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$125, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-88(%rbp), %r8
	leaq	-91(%rbp), %rdi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$3
	leaq	fixed(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$126, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L28
	leaq	-91(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-80(%rbp), %rax
	movl	$2, %edx
	movl	$65279, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$130, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$132, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$134, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-88(%rbp), %r8
	leaq	-91(%rbp), %rdi
	leaq	.LC19(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$3
	leaq	alloc(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L29
.L28:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L30
.L29:
	movl	$1, %eax
.L30:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	test_WPACKET_init, .-test_WPACKET_init
	.section	.rodata
	.align 8
.LC20:
	.string	"WPACKET_set_max_size(&pkt, SIZE_MAX)"
	.align 8
.LC21:
	.string	"WPACKET_set_max_size(&pkt, SIZE_MAX -1)"
.LC22:
	.string	"WPACKET_set_max_size(&pkt, 0)"
	.align 8
.LC23:
	.string	"WPACKET_set_max_size(&pkt, 0x0101)"
	.align 8
.LC24:
	.string	"WPACKET_set_max_size(&pkt, 0x0100)"
	.align 8
.LC25:
	.string	"WPACKET_set_max_size(&pkt, 0x01)"
	.align 8
.LC26:
	.string	"WPACKET_set_max_size(&pkt, 0x02)"
	.text
	.type	test_WPACKET_set_max_size, @function
test_WPACKET_set_max_size:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$146, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	leaq	-64(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	WPACKET_set_max_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$151, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	leaq	-64(%rbp), %rax
	movq	$-2, %rsi
	movq	%rax, %rdi
	call	WPACKET_set_max_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$153, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	leaq	-64(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	WPACKET_set_max_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$155, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$156, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L33
.L32:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L37
.L33:
	movq	buf(%rip), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$159, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_set_max_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	WPACKET_set_max_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	WPACKET_set_max_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$171, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_set_max_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$173, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$175, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_set_max_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$177, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$178, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$179, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$180, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$181, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$2
	leaq	simple2(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$182, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L36
.L35:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L37
.L36:
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	test_WPACKET_set_max_size, .-test_WPACKET_set_max_size
	.section	.rodata
	.align 8
.LC27:
	.string	"WPACKET_start_sub_packet(&pkt)"
	.align 8
.LC28:
	.string	"WPACKET_start_sub_packet_u8(&pkt)"
	.align 8
.LC29:
	.string	"WPACKET_get_length(&pkt, &len)"
.LC30:
	.string	"1"
.LC31:
	.string	"len"
.LC32:
	.string	"3"
.LC33:
	.string	"nestedsub"
.LC34:
	.string	"seqsub"
.LC35:
	.string	"WPACKET_fill_lengths(&pkt)"
	.text
	.type	test_WPACKET_start_sub_packet, @function
test_WPACKET_start_sub_packet:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$194, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$195, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$196, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$198, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$201, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$203, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$204, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$1
	leaq	simple1(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$205, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L40
.L39:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L50
.L40:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$209, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$210, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$212, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$213, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$214, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$2
	leaq	simple2(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$215, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L43
.L42:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L50
.L43:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$219, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$220, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$221, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$222, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$223, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$224, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	-80(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$225, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	-80(%rbp), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$229, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$230, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$231, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC33(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	leaq	nestedsub(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$232, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L45
.L44:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L50
.L45:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$236, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$237, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$238, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$239, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$240, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$241, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$242, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$243, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$244, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L46
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC34(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	leaq	seqsub(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$245, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L47
.L46:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L50
.L47:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$249, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$250, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$251, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$252, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$253, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	movq	-80(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$255, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	movq	-80(%rbp), %rsi
	leaq	.LC32(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$259, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_fill_lengths@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$260, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$261, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC33(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	leaq	nestedsub(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$262, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$263, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L49
.L48:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L50
.L49:
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	test_WPACKET_start_sub_packet, .-test_WPACKET_start_sub_packet
	.section	.rodata
	.align 8
.LC36:
	.string	"WPACKET_set_flags(&pkt, WPACKET_FLAGS_NON_ZERO_LENGTH)"
	.align 8
.LC37:
	.string	"WPACKET_set_flags(&pkt, WPACKET_FLAGS_ABANDON_ON_ZERO_LENGTH)"
.LC38:
	.string	"0"
.LC39:
	.string	"written"
.LC40:
	.string	"empty"
	.text
	.type	test_WPACKET_set_flags, @function
test_WPACKET_set_flags:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$276, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$277, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$279, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L52
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$280, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$281, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$282, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$1
	leaq	simple1(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$283, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L53
.L52:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L63
.L53:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$287, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$288, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$289, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$291, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$292, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$293, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$294, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$295, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$1
	leaq	simple1(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$296, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L56
.L55:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L63
.L56:
	movq	buf(%rip), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$300, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	leaq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$301, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$302, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L57
	movq	-72(%rbp), %rsi
	leaq	.LC38(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$304, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L58
.L57:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L63
.L58:
	movq	buf(%rip), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$308, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$309, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$310, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$311, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$312, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$313, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC40(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$1
	leaq	empty(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$314, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L60
.L59:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L63
.L60:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$318, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$319, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$320, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$321, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$322, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$323, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$324, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$2
	leaq	simple2(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$325, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L62
.L61:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L63
.L62:
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	test_WPACKET_set_flags, .-test_WPACKET_set_flags
	.section	.rodata
	.align 8
.LC41:
	.string	"WPACKET_allocate_bytes(&pkt, 2, &bytes)"
	.align 8
.LC42:
	.string	"WPACKET_sub_allocate_bytes_u8(&pkt, 2, &bytes)"
.LC43:
	.string	"submem"
	.text
	.type	test_WPACKET_allocate_bytes, @function
test_WPACKET_allocate_bytes:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	buf(%rip), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$336, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$337, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L66
.L65:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L74
.L66:
	movq	-80(%rbp), %rax
	movb	$-2, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$-1, (%rax)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$341, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L68
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$342, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L68
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC19(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$3
	leaq	alloc(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$343, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L69
.L68:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L74
.L69:
	movq	buf(%rip), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$347, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$1, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$348, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L71
.L70:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L74
.L71:
	movq	-80(%rbp), %rax
	movb	$-2, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movb	$-1, (%rax)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$352, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L72
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$353, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L72
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC43(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	leaq	submem(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$354, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L73
.L72:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L74
.L73:
	movl	$1, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	test_WPACKET_allocate_bytes, .-test_WPACKET_allocate_bytes
	.section	.rodata
	.align 8
.LC44:
	.string	"WPACKET_memcpy(&pkt, bytes, sizeof(bytes))"
	.align 8
.LC45:
	.string	"WPACKET_sub_memcpy_u8(&pkt, bytes, sizeof(bytes))"
	.text
	.type	test_WPACKET_memcpy, @function
test_WPACKET_memcpy:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movw	$-2, -74(%rbp)
	movq	buf(%rip), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$366, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	leaq	-74(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$367, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$368, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$369, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC19(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$3
	leaq	alloc(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$370, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L77
.L76:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L81
.L77:
	movq	buf(%rip), %rcx
	leaq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$374, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	leaq	-74(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$375, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$376, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$377, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC43(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	leaq	submem(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$378, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L80
.L79:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L81
.L80:
	movl	$1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	test_WPACKET_memcpy, .-test_WPACKET_memcpy
	.section	.rodata
	.align 8
.LC46:
	.string	"WPACKET_init_der(&pkt, sbuf, sizeof(sbuf))"
	.align 8
.LC47:
	.string	"WPACKET_put_bytes_u24(&pkt, 0xfffefd)"
	.align 8
.LC48:
	.string	"WPACKET_memcpy(&pkt, testdata, sizeof(testdata))"
	.align 8
.LC49:
	.string	"WPACKET_put_bytes_u8(&pkt, 0xfc)"
	.align 8
.LC50:
	.string	"WPACKET_set_flags(&pkt, flags)"
	.align 8
.LC51:
	.string	"WPACKET_get_total_written(&pkt, &size1)"
	.align 8
.LC52:
	.string	"WPACKET_get_total_written(&pkt, &size2)"
.LC53:
	.string	"size2"
.LC54:
	.string	"size1"
	.align 8
.LC55:
	.string	"WPACKET_get_total_written(&pkt, &written[0])"
.LC56:
	.string	"simpleder"
.LC57:
	.string	"WPACKET_get_curr(&pkt)"
	.align 8
.LC58:
	.string	"RAND_bytes(&testdata2[3], sizeof(testdata2) - 3)"
.LC59:
	.string	"WPACKET_init_null_der(&pkt)"
	.align 8
.LC60:
	.string	"WPACKET_memcpy(&pkt, &testdata2[3], sizeof(testdata2) - 3)"
	.align 8
.LC61:
	.string	"WPACKET_get_total_written(&pkt, &written[i])"
.LC62:
	.string	"written[1]"
.LC63:
	.string	"written[0]"
.LC64:
	.string	"testdata2"
	.text
	.type	test_WPACKET_init_der, @function
test_WPACKET_init_der:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1400, %rsp
	.cfi_offset 3, -24
	movl	$50462976, -1108(%rbp)
	movq	$386, -1376(%rbp)
	movq	$0, -1368(%rbp)
	leaq	-1360(%rbp), %rdx
	movl	$0, %eax
	movl	$30, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movl	$2, -24(%rbp)
	leaq	-1104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_der@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$396, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-80(%rbp), %rax
	movl	$3, %edx
	movl	$16776957, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$397, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$399, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-1108(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$400, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$401, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-80(%rbp), %rax
	movl	$1, %edx
	movl	$252, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$402, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$404, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movl	-24(%rbp), %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$405, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-1400(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$406, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$407, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-1408(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$408, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movq	-1408(%rbp), %rdi
	movq	-1400(%rbp), %rsi
	leaq	.LC53(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$409, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$410, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-1392(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$411, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L83
	movq	-1392(%rbp), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	%rax, %rsi
	leaq	.LC56(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$9
	leaq	simpleder(%rip), %rdi
	pushq	%rdi
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$412, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L84
.L83:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L95
.L84:
	leaq	-1376(%rbp), %rax
	addq	$3, %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC38(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$417, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L86
	movl	$0, %eax
	jmp	.L95
.L86:
	movl	$0, -20(%rbp)
	jmp	.L87
.L92:
	cmpl	$0, -20(%rbp)
	jne	.L88
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_init_null_der@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$427, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$0, %eax
	jmp	.L95
.L88:
	leaq	-1104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_der@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$430, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$0, %eax
	jmp	.L95
.L89:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$433, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	leaq	-1376(%rbp), %rax
	leaq	3(%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$434, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$436, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$437, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
	leaq	-1392(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$438, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L91
.L90:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L95
.L91:
	addl	$1, -20(%rbp)
.L87:
	cmpl	$1, -20(%rbp)
	jle	.L92
	movq	-1384(%rbp), %rdi
	movq	-1392(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$447, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L93
	movq	-1384(%rbp), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	%rax, %rdi
	leaq	.LC64(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$259
	leaq	-1376(%rbp), %rsi
	pushq	%rsi
	movq	%rbx, %r9
	movq	%rdi, %r8
	movl	$448, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L94
.L93:
	movl	$0, %eax
	jmp	.L95
.L94:
	movl	$1, %eax
.L95:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	test_WPACKET_init_der, .-test_WPACKET_init_der
	.section	.rodata
	.align 8
.LC65:
	.string	"WPACKET_start_quic_sub_packet(&pkt)"
	.align 8
.LC66:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x09)"
.LC67:
	.string	"quic1"
	.align 8
.LC68:
	.string	"WPACKET_start_quic_sub_packet_bound(&pkt, OSSL_QUIC_VLINT_1B_MAX)"
.LC69:
	.string	"quic2"
	.align 8
.LC70:
	.string	"WPACKET_start_quic_sub_packet_bound(&pkt, OSSL_QUIC_VLINT_2B_MIN)"
	.align 8
.LC71:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x41)"
.LC72:
	.string	"quic3"
	.align 8
.LC73:
	.string	"WPACKET_start_quic_sub_packet_bound(&pkt, OSSL_QUIC_VLINT_8B_MIN)"
	.align 8
.LC74:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x13c6a)"
.LC75:
	.string	"quic4"
	.align 8
.LC76:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x2f77213f3f505ba5ULL)"
.LC77:
	.string	"quic5"
	.align 8
.LC78:
	.string	"WPACKET_quic_sub_allocate_bytes(&pkt, 3, &bytes)"
.LC79:
	.string	"quic6"
	.align 8
.LC80:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x07)"
	.align 8
.LC81:
	.string	"WPACKET_start_quic_sub_packet_bound(&pkt, OSSL_QUIC_VLINT_4B_MIN)"
	.align 8
.LC82:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x2514)"
.LC83:
	.string	"2"
	.align 8
.LC84:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x05)"
	.align 8
.LC85:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x11)"
.LC86:
	.string	"8"
	.align 8
.LC87:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x12)"
	.align 8
.LC88:
	.string	"WPACKET_quic_write_vlint(&pkt, 0x13)"
.LC89:
	.string	"quic7"
	.align 8
.LC90:
	.string	"WPACKET_quic_write_vlint(&pkt, OSSL_QUIC_VLINT_MAX+1)"
	.align 8
.LC91:
	.string	"WPACKET_quic_write_vlint(&pkt, OSSL_QUIC_VLINT_MAX)"
	.text
	.type	test_WPACKET_quic, @function
test_WPACKET_quic:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$464, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$465, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-64(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$466, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$468, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$469, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$471, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$473, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$474, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC67(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$5
	leaq	quic1(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$475, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L98
.L97:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L116
.L98:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$479, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L100
	leaq	-64(%rbp), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$480, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L100
	leaq	-64(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$481, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L100
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$482, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L100
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$483, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L100
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$484, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L100
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$485, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L100
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$486, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L100
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC69(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$2
	leaq	quic2(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$487, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L101
.L100:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L116
.L101:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$491, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	leaq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$492, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	leaq	-64(%rbp), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$493, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$494, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L102
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$495, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$496, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L102
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$497, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$498, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC72(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	leaq	quic3(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$499, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L103
.L102:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L116
.L103:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$503, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	leaq	-64(%rbp), %rax
	movl	$1073741824, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$504, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	leaq	-64(%rbp), %rax
	movl	$81002, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$505, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$506, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L104
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$507, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$508, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L104
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$509, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$510, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L104
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC75(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$12
	leaq	quic4(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$511, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L105
.L104:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L116
.L105:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$515, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	leaq	-64(%rbp), %rax
	movl	$1073741824, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$516, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	movabsq	$3420238997540068261, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$517, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$518, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L106
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$519, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$520, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L106
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$521, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$522, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L106
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC77(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	leaq	quic5(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$523, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L107
.L106:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L116
.L107:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$527, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L108
	leaq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_sub_allocate_bytes@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$528, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L109
.L108:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L116
.L109:
	movq	-88(%rbp), %rax
	movb	$85, (%rax)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movb	$102, (%rax)
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movb	$119, (%rax)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$535, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L110
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$536, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L110
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC79(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$4
	leaq	quic6(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$537, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L111
.L110:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L116
.L111:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$541, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$542, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$543, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-80(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$544, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$545, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$9492, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$546, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$547, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-80(%rbp), %rsi
	leaq	.LC83(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$548, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$549, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$550, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$551, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-80(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$552, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$553, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$554, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$555, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$556, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$557, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-80(%rbp), %rsi
	leaq	.LC86(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$558, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$559, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$560, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$561, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$562, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$563, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movl	$19, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$564, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$565, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$566, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$567, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-72(%rbp), %r8
	movq	buf(%rip), %rax
	movq	8(%rax), %rdi
	leaq	.LC89(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$19
	leaq	quic7(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$568, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L113
.L112:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L116
.L113:
	movq	buf(%rip), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$572, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
	movabsq	$4611686018427387904, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$573, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L114
	movabsq	$4611686018427387903, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC91(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$574, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L115
.L114:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L116
.L115:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$1, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	test_WPACKET_quic, .-test_WPACKET_quic
	.section	.rodata
	.align 8
.LC92:
	.string	"RAND_bytes(rand_data, sizeof(rand_data))"
	.align 8
.LC93:
	.string	"WPACKET_quic_write_vlint(&pkt, expected)"
	.align 8
.LC94:
	.string	"PACKET_buf_init(&read_pkt, (unsigned char *)buf->data, written)"
	.align 8
.LC95:
	.string	"PACKET_get_quic_vlint(&read_pkt, &actual)"
.LC96:
	.string	"actual"
.LC97:
	.string	"expected"
	.text
	.type	test_WPACKET_quic_vlint_random, @function
test_WPACKET_quic_vlint_random:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L118
.L130:
	leaq	-41(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC38(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$590, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L119
	movl	$0, %eax
	jmp	.L131
.L119:
	movq	-41(%rbp), %rax
	movq	%rax, -24(%rbp)
	movzbl	-33(%rbp), %eax
	movzbl	%al, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.L121
	cmpl	$3, %eax
	jg	.L122
	cmpl	$2, %eax
	je	.L123
	cmpl	$2, %eax
	jg	.L122
	testl	%eax, %eax
	je	.L124
	cmpl	$1, %eax
	je	.L125
	jmp	.L122
.L124:
	movq	-24(%rbp), %rax
	andl	$63, %eax
	movq	%rax, -24(%rbp)
	jmp	.L122
.L125:
	movq	-24(%rbp), %rax
	andl	$16383, %eax
	movq	%rax, -24(%rbp)
	jmp	.L122
.L123:
	movq	-24(%rbp), %rax
	andl	$1073741823, %eax
	movq	%rax, -24(%rbp)
	jmp	.L122
.L121:
	movq	-24(%rbp), %rax
	movabsq	$4611686018427387903, %rdx
	andq	%rdx, %rax
	movq	%rax, -24(%rbp)
	nop
.L122:
	movq	buf(%rip), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$613, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	-24(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$614, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	leaq	-16(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$615, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L127
.L126:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L131
.L127:
	movq	-16(%rbp), %rdx
	movq	buf(%rip), %rax
	movq	8(%rax), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$618, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L128
	leaq	-32(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$619, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L128
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC96(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$620, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L129
.L128:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	cleanup
	jmp	.L131
.L129:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	addq	$1, -8(%rbp)
.L118:
	cmpq	$9999, -8(%rbp)
	jbe	.L130
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$1, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	test_WPACKET_quic_vlint_random, .-test_WPACKET_quic_vlint_random
	.section	.rodata
.LC98:
	.string	"buf = BUF_MEM_new()"
.LC99:
	.string	"test_WPACKET_init"
.LC100:
	.string	"test_WPACKET_set_max_size"
.LC101:
	.string	"test_WPACKET_start_sub_packet"
.LC102:
	.string	"test_WPACKET_set_flags"
.LC103:
	.string	"test_WPACKET_allocate_bytes"
.LC104:
	.string	"test_WPACKET_memcpy"
.LC105:
	.string	"test_WPACKET_init_der"
.LC106:
	.string	"test_WPACKET_quic"
	.align 8
.LC107:
	.string	"test_WPACKET_quic_vlint_random"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	BUF_MEM_new@PLT
	movq	%rax, buf(%rip)
	movq	buf(%rip), %rax
	leaq	.LC98(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$634, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L134
.L133:
	leaq	test_WPACKET_init(%rip), %rdx
	leaq	.LC99(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_WPACKET_set_max_size(%rip), %rdx
	leaq	.LC100(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_WPACKET_start_sub_packet(%rip), %rdx
	leaq	.LC101(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_WPACKET_set_flags(%rip), %rdx
	leaq	.LC102(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_WPACKET_allocate_bytes(%rip), %rdx
	leaq	.LC103(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_WPACKET_memcpy(%rip), %rdx
	leaq	.LC104(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_WPACKET_init_der(%rip), %rdx
	leaq	.LC105(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_WPACKET_quic(%rip), %rdx
	leaq	.LC106(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_WPACKET_quic_vlint_random(%rip), %rdx
	leaq	.LC107(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L134:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	buf(%rip), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	cleanup_tests, .-cleanup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
