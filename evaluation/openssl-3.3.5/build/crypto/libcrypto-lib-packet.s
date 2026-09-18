	.file	"packet.c"
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
	.type	ossl_quic_vlint_encode_len, @function
ossl_quic_vlint_encode_len:
.LFB199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$63, -8(%rbp)
	ja	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	cmpq	$16383, -8(%rbp)
	ja	.L8
	movl	$2, %eax
	jmp	.L7
.L8:
	cmpq	$1073741823, -8(%rbp)
	ja	.L9
	movl	$4, %eax
	jmp	.L7
.L9:
	movabsq	$4611686018427387903, %rax
	cmpq	-8(%rbp), %rax
	jb	.L10
	movl	$8, %eax
	jmp	.L7
.L10:
	movl	$0, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	ossl_quic_vlint_encode_len, .-ossl_quic_vlint_encode_len
	.globl	WPACKET_allocate_bytes
	.type	WPACKET_allocate_bytes, @function
WPACKET_allocate_bytes:
.LFB206:
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
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	WPACKET_allocate_bytes, .-WPACKET_allocate_bytes
	.globl	WPACKET_sub_allocate_bytes__
	.type	WPACKET_sub_allocate_bytes__, @function
WPACKET_sub_allocate_bytes__:
.LFB207:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L15
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L16
.L15:
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	WPACKET_sub_allocate_bytes__, .-WPACKET_sub_allocate_bytes__
	.globl	WPACKET_reserve_bytes
	.type	WPACKET_reserve_bytes, @function
WPACKET_reserve_bytes:
.LFB208:
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
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L19
	cmpq	$0, -32(%rbp)
	je	.L19
	movl	$1, %eax
	jmp	.L20
.L19:
	movl	$0, %eax
.L20:
	cltq
	testq	%rax, %rax
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	cmpq	-32(%rbp), %rdx
	jnb	.L23
	movl	$0, %eax
	jmp	.L22
.L23:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	cmpq	-32(%rbp), %rdx
	jnb	.L24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	cmpq	%rax, %rdx
	cmovnb	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jns	.L25
	movq	$-1, -8(%rbp)
	jmp	.L26
.L25:
	movq	-16(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -8(%rbp)
	cmpq	$255, -8(%rbp)
	ja	.L26
	movq	$256, -8(%rbp)
.L26:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L24
	movl	$0, %eax
	jmp	.L22
.L24:
	cmpq	$0, -40(%rbp)
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L27
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	negq	%rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L27:
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	WPACKET_reserve_bytes, .-WPACKET_reserve_bytes
	.globl	WPACKET_sub_reserve_bytes__
	.type	WPACKET_sub_reserve_bytes__, @function
WPACKET_sub_reserve_bytes__:
.LFB209:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L29
	cmpq	$0, -32(%rbp)
	je	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L32:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	WPACKET_sub_reserve_bytes__, .-WPACKET_sub_reserve_bytes__
	.type	maxmaxsize, @function
maxmaxsize:
.LFB210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$7, -8(%rbp)
	ja	.L34
	cmpq	$0, -8(%rbp)
	jne	.L35
.L34:
	movq	$-1, %rax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	sall	$3, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
.L36:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	maxmaxsize, .-maxmaxsize
	.section	.rodata
.LC0:
	.string	"../crypto/packet.c"
	.text
	.type	wpacket_intern_init_len, @function
wpacket_intern_init_len:
.LFB211:
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
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	leaq	.LC0(%rip), %rax
	movl	$110, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	movl	$0, %eax
	jmp	.L42
.L38:
	cmpq	$0, -32(%rbp)
	jne	.L40
	movl	$1, %eax
	jmp	.L42
.L40:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L41
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	$0, 8(%rax)
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	wpacket_intern_init_len, .-wpacket_intern_init_len
	.globl	WPACKET_init_static_len
	.type	WPACKET_init_static_len, @function
WPACKET_init_static_len:
.LFB212:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	maxmaxsize
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L44
	cmpq	$0, -40(%rbp)
	je	.L44
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	cltq
	testq	%rax, %rax
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	cmova	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movzbl	48(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 48(%rax)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	wpacket_intern_init_len
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	WPACKET_init_static_len, .-WPACKET_init_static_len
	.globl	WPACKET_init_der
	.type	WPACKET_init_der, @function
WPACKET_init_der:
.LFB213:
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
	cmpq	$0, -16(%rbp)
	je	.L49
	cmpq	$0, -24(%rbp)
	je	.L49
	movl	$1, %eax
	jmp	.L50
.L49:
	movl	$0, %eax
.L50:
	cltq
	testq	%rax, %rax
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movzbl	48(%rax), %edx
	orl	$1, %edx
	movb	%dl, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	wpacket_intern_init_len
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	WPACKET_init_der, .-WPACKET_init_der
	.globl	WPACKET_init_len
	.type	WPACKET_init_len, @function
WPACKET_init_len:
.LFB214:
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
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	maxmaxsize
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movzbl	48(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 48(%rax)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	wpacket_intern_init_len
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	WPACKET_init_len, .-WPACKET_init_len
	.globl	WPACKET_init
	.type	WPACKET_init, @function
WPACKET_init:
.LFB215:
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
	call	WPACKET_init_len@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE215:
	.size	WPACKET_init, .-WPACKET_init
	.globl	WPACKET_init_null
	.type	WPACKET_init_null, @function
WPACKET_init_null:
.LFB216:
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
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	maxmaxsize
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movzbl	48(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	wpacket_intern_init_len
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE216:
	.size	WPACKET_init_null, .-WPACKET_init_null
	.globl	WPACKET_init_null_der
	.type	WPACKET_init_null_der, @function
WPACKET_init_null_der:
.LFB217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 32(%rax)
	movq	-8(%rbp), %rax
	movzbl	48(%rax), %edx
	orl	$1, %edx
	movb	%dl, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	wpacket_intern_init_len
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE217:
	.size	WPACKET_init_null_der, .-WPACKET_init_null_der
	.globl	WPACKET_set_flags
	.type	WPACKET_set_flags, @function
WPACKET_set_flags:
.LFB218:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 32(%rax)
	movl	$1, %eax
.L64:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE218:
	.size	WPACKET_set_flags, .-WPACKET_set_flags
	.type	put_value, @function
put_value:
.LFB219:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
	movq	-24(%rbp), %rax
	subq	$1, %rax
	addq	%rax, -8(%rbp)
	jmp	.L68
.L69:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	subq	$1, -8(%rbp)
	shrq	$8, -16(%rbp)
	subq	$1, -24(%rbp)
.L68:
	cmpq	$0, -24(%rbp)
	jne	.L69
	cmpq	$0, -16(%rbp)
	je	.L70
	movl	$0, %eax
	jmp	.L67
.L70:
	movl	$1, %eax
.L67:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE219:
	.size	put_value, .-put_value
	.type	put_quic_value, @function
put_quic_value:
.LFB220:
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
	cmpq	$0, -8(%rbp)
	jne	.L72
	movl	$1, %eax
	jmp	.L73
.L72:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	cmpq	%rax, -24(%rbp)
	jnb	.L74
	movl	$0, %eax
	jmp	.L73
.L74:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_n@PLT
	movl	$1, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE220:
	.size	put_quic_value, .-put_quic_value
	.type	wpacket_intern_close, @function
wpacket_intern_close:
.LFB221:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L76
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	cmpq	$0, -32(%rbp)
	jne	.L78
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L78
	cmpl	$0, -52(%rbp)
	jne	.L79
	movl	$0, %eax
	jmp	.L77
.L79:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L80
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
.L80:
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 16(%rax)
.L78:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L83
.L82:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L83
.L84:
	movq	$0, -8(%rbp)
.L83:
	cmpq	$0, -8(%rbp)
	je	.L85
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L86
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	put_value
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L77
.L86:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	put_quic_value
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L77
.L81:
	movq	-40(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L85
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L85
	cmpq	$0, -32(%rbp)
	jne	.L87
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L85
.L87:
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$1, -24(%rbp)
	jmp	.L88
.L89:
	addq	$1, -24(%rbp)
.L88:
	shrq	$8, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L89
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L90
	movl	$0, %eax
	jmp	.L77
.L90:
	cmpq	$127, -32(%rbp)
	jbe	.L85
	orq	$128, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L77
.L85:
	cmpl	$0, -52(%rbp)
	je	.L91
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$313, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L91:
	movl	$1, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE221:
	.size	wpacket_intern_close, .-wpacket_intern_close
	.globl	WPACKET_fill_lengths
	.type	WPACKET_fill_lengths, @function
WPACKET_fill_lengths:
.LFB222:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L95
.L97:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	wpacket_intern_close
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L94
.L96:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L95:
	cmpq	$0, -8(%rbp)
	jne	.L97
	movl	$1, %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE222:
	.size	WPACKET_fill_lengths, .-WPACKET_fill_lengths
	.globl	WPACKET_close
	.type	WPACKET_close, @function
WPACKET_close:
.LFB223:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L99
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L100
.L99:
	movl	$0, %eax
	jmp	.L101
.L100:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	wpacket_intern_close
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE223:
	.size	WPACKET_close, .-WPACKET_close
	.globl	WPACKET_finish
	.type	WPACKET_finish, @function
WPACKET_finish:
.LFB224:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L104
.L103:
	movl	$0, %eax
	jmp	.L105
.L104:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	wpacket_intern_close
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L106
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$359, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
.L106:
	movl	-4(%rbp), %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE224:
	.size	WPACKET_finish, .-WPACKET_finish
	.globl	WPACKET_start_sub_packet_len__
	.type	WPACKET_start_sub_packet_len__, @function
WPACKET_start_sub_packet_len__:
.LFB225:
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
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L108
	movl	$0, %eax
	jmp	.L114
.L108:
	cmpq	$0, -32(%rbp)
	je	.L110
	movq	-24(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L110
	movl	$0, %eax
	jmp	.L114
.L110:
	leaq	.LC0(%rip), %rax
	movl	$379, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L114
.L111:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpq	$0, -32(%rbp)
	jne	.L112
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movl	$1, %eax
	jmp	.L114
.L112:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L113
	movl	$0, %eax
	jmp	.L114
.L113:
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE225:
	.size	WPACKET_start_sub_packet_len__, .-WPACKET_start_sub_packet_len__
	.globl	WPACKET_start_sub_packet
	.type	WPACKET_start_sub_packet, @function
WPACKET_start_sub_packet:
.LFB226:
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
	call	WPACKET_start_sub_packet_len__@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE226:
	.size	WPACKET_start_sub_packet, .-WPACKET_start_sub_packet
	.globl	WPACKET_put_bytes__
	.type	WPACKET_put_bytes__, @function
WPACKET_put_bytes__:
.LFB227:
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
	cmpq	$8, -40(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L118
	leaq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L118
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	put_value
	testl	%eax, %eax
	jne	.L119
.L118:
	movl	$0, %eax
	jmp	.L121
.L119:
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE227:
	.size	WPACKET_put_bytes__, .-WPACKET_put_bytes__
	.globl	WPACKET_set_max_size
	.type	WPACKET_set_max_size, @function
WPACKET_set_max_size:
.LFB228:
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
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L123
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L125
.L131:
	nop
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L125:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L131
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L127
	movq	$8, -16(%rbp)
.L127:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	maxmaxsize
	cmpq	-32(%rbp), %rax
	jb	.L128
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L129
.L128:
	movl	$0, %eax
	jmp	.L124
.L129:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE228:
	.size	WPACKET_set_max_size, .-WPACKET_set_max_size
	.globl	WPACKET_memset
	.type	WPACKET_memset, @function
WPACKET_memset:
.LFB229:
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
	cmpq	$0, -40(%rbp)
	jne	.L133
	movl	$1, %eax
	jmp	.L137
.L133:
	leaq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L135
	movl	$0, %eax
	jmp	.L137
.L135:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L136
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L136:
	movl	$1, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE229:
	.size	WPACKET_memset, .-WPACKET_memset
	.globl	WPACKET_memcpy
	.type	WPACKET_memcpy, @function
WPACKET_memcpy:
.LFB230:
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
	cmpq	$0, -40(%rbp)
	jne	.L139
	movl	$1, %eax
	jmp	.L143
.L139:
	leaq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L141
	movl	$0, %eax
	jmp	.L143
.L141:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L142
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L142:
	movl	$1, %eax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE230:
	.size	WPACKET_memcpy, .-WPACKET_memcpy
	.globl	WPACKET_sub_memcpy__
	.type	WPACKET_sub_memcpy__, @function
WPACKET_sub_memcpy__:
.LFB231:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L145
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L145
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L146
.L145:
	movl	$0, %eax
	jmp	.L147
.L146:
	movl	$1, %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE231:
	.size	WPACKET_sub_memcpy__, .-WPACKET_sub_memcpy__
	.globl	WPACKET_get_total_written
	.type	WPACKET_get_total_written, @function
WPACKET_get_total_written:
.LFB232:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L149
	movl	$0, %eax
	jmp	.L150
.L149:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L150:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE232:
	.size	WPACKET_get_total_written, .-WPACKET_get_total_written
	.globl	WPACKET_get_length
	.type	WPACKET_get_length, @function
WPACKET_get_length:
.LFB233:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L152
	cmpq	$0, -16(%rbp)
	je	.L152
	movl	$1, %eax
	jmp	.L153
.L152:
	movl	$0, %eax
.L153:
	cltq
	testq	%rax, %rax
	jne	.L154
	movl	$0, %eax
	jmp	.L155
.L154:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L155:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE233:
	.size	WPACKET_get_length, .-WPACKET_get_length
	.globl	WPACKET_get_curr
	.type	WPACKET_get_curr, @function
WPACKET_get_curr:
.LFB234:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L158
.L157:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L159
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L158
.L159:
	movq	$0, -8(%rbp)
.L158:
	cmpq	$0, -8(%rbp)
	jne	.L160
	movl	$0, %eax
	jmp	.L161
.L160:
	movq	-24(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L162
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L161
.L162:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L161:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE234:
	.size	WPACKET_get_curr, .-WPACKET_get_curr
	.globl	WPACKET_is_null_buf
	.type	WPACKET_is_null_buf, @function
WPACKET_is_null_buf:
.LFB235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L164
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L164
	movl	$1, %eax
	jmp	.L166
.L164:
	movl	$0, %eax
.L166:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE235:
	.size	WPACKET_is_null_buf, .-WPACKET_is_null_buf
	.globl	WPACKET_cleanup
	.type	WPACKET_cleanup, @function
WPACKET_cleanup:
.LFB236:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L168
.L169:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$532, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L168:
	cmpq	$0, -8(%rbp)
	jne	.L169
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE236:
	.size	WPACKET_cleanup, .-WPACKET_cleanup
	.globl	WPACKET_start_quic_sub_packet_bound
	.type	WPACKET_start_quic_sub_packet_bound, @function
WPACKET_start_quic_sub_packet_bound:
.LFB237:
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
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L171
	movl	$0, %eax
	jmp	.L172
.L171:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L173
	movl	$0, %eax
	jmp	.L172
.L173:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movl	32(%rax), %edx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	orl	$4, %edx
	movl	%edx, 32(%rax)
	movl	$1, %eax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE237:
	.size	WPACKET_start_quic_sub_packet_bound, .-WPACKET_start_quic_sub_packet_bound
	.globl	WPACKET_start_quic_sub_packet
	.type	WPACKET_start_quic_sub_packet, @function
WPACKET_start_quic_sub_packet:
.LFB238:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE238:
	.size	WPACKET_start_quic_sub_packet, .-WPACKET_start_quic_sub_packet
	.globl	WPACKET_quic_sub_allocate_bytes
	.type	WPACKET_quic_sub_allocate_bytes, @function
WPACKET_quic_sub_allocate_bytes:
.LFB239:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_start_quic_sub_packet_bound@PLT
	testl	%eax, %eax
	je	.L177
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L177
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L178
.L177:
	movl	$0, %eax
	jmp	.L179
.L178:
	movl	$1, %eax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE239:
	.size	WPACKET_quic_sub_allocate_bytes, .-WPACKET_quic_sub_allocate_bytes
	.globl	WPACKET_quic_write_vlint
	.type	WPACKET_quic_write_vlint, @function
WPACKET_quic_write_vlint:
.LFB240:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L181
	movl	$0, %eax
	jmp	.L184
.L181:
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L183
	movl	$0, %eax
	jmp	.L184
.L183:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode@PLT
	movl	$1, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE240:
	.size	WPACKET_quic_write_vlint, .-WPACKET_quic_write_vlint
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
