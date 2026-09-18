	.file	"t1_lib.c"
	.text
	.type	ossl_check_const_X509_NAME_sk_type, @function
ossl_check_const_X509_NAME_sk_type:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	ossl_check_const_X509_NAME_sk_type, .-ossl_check_const_X509_NAME_sk_type
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_const_SSL_CIPHER_sk_type, @function
ossl_check_const_SSL_CIPHER_sk_type:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	ossl_check_const_SSL_CIPHER_sk_type, .-ossl_check_const_SSL_CIPHER_sk_type
	.type	packet_forward, @function
packet_forward:
.LFB631:
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
.LFE631:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB632:
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
.LFE632:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_data, @function
PACKET_data:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB640:
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
	call	PACKET_remaining
	cmpq	$1, %rax
	ja	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB641:
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
	call	PACKET_peek_net_2
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB709:
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
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB732:
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
.LFE732:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB733:
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
.LFE733:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB748:
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
.LFE748:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB749:
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
.LFE749:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB825:
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
.LFE825:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB826:
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
.LFE826:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	tls12_rpk_and_privkey, @function
tls12_rpk_and_privkey:
.LFB854:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L33
	movq	-8(%rbp), %rax
	movzbl	2746(%rax), %eax
	cmpb	$2, %al
	je	.L34
.L33:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L35
	movq	-8(%rbp), %rax
	movzbl	2744(%rax), %eax
	cmpb	$2, %al
	jne	.L35
.L34:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	movl	$1, %eax
	jmp	.L37
.L35:
	movl	$0, %eax
.L37:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE854:
	.size	tls12_rpk_and_privkey, .-tls12_rpk_and_privkey
	.type	ssl_has_cert_type, @function
ssl_has_cert_type:
.LFB855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L39
	movq	-24(%rbp), %rax
	movq	5384(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	5392(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L40
.L39:
	movq	-24(%rbp), %rax
	movq	5368(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	5376(%rax), %rax
	movq	%rax, -16(%rbp)
.L40:
	cmpq	$0, -8(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movzbl	-28(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE855:
	.size	ssl_has_cert_type, .-ssl_has_cert_type
	.type	ssl_has_cert, @function
ssl_has_cert:
.LFB856:
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
	js	.L44
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	cmpl	%eax, -12(%rbp)
	jl	.L45
.L44:
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ssl_has_cert_type
	testl	%eax, %eax
	je	.L47
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L46
.L47:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movl	$1, %eax
	jmp	.L46
.L48:
	movl	$0, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE856:
	.size	ssl_has_cert, .-ssl_has_cert
	.type	tls1_get_peer_groups, @function
tls1_get_peer_groups:
.LFB857:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	2600(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	2592(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE857:
	.size	tls1_get_peer_groups, .-tls1_get_peer_groups
	.globl	TLSv1_enc_data
	.section	.rodata
.LC0:
	.string	"client finished"
.LC1:
	.string	"server finished"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	TLSv1_enc_data, @object
	.size	TLSv1_enc_data, 112
TLSv1_enc_data:
	.quad	tls1_setup_key_block
	.quad	tls1_generate_master_secret
	.quad	tls1_change_cipher_state
	.quad	tls1_final_finish_mac
	.quad	.LC0
	.quad	15
	.quad	.LC1
	.quad	15
	.quad	tls1_alert_code
	.quad	tls1_export_keying_material
	.long	0
	.zero	4
	.quad	ssl3_set_handshake_header
	.quad	tls_close_construct_packet
	.quad	ssl3_handshake_write
	.globl	TLSv1_1_enc_data
	.align 32
	.type	TLSv1_1_enc_data, @object
	.size	TLSv1_1_enc_data, 112
TLSv1_1_enc_data:
	.quad	tls1_setup_key_block
	.quad	tls1_generate_master_secret
	.quad	tls1_change_cipher_state
	.quad	tls1_final_finish_mac
	.quad	.LC0
	.quad	15
	.quad	.LC1
	.quad	15
	.quad	tls1_alert_code
	.quad	tls1_export_keying_material
	.long	1
	.zero	4
	.quad	ssl3_set_handshake_header
	.quad	tls_close_construct_packet
	.quad	ssl3_handshake_write
	.globl	TLSv1_2_enc_data
	.align 32
	.type	TLSv1_2_enc_data, @object
	.size	TLSv1_2_enc_data, 112
TLSv1_2_enc_data:
	.quad	tls1_setup_key_block
	.quad	tls1_generate_master_secret
	.quad	tls1_change_cipher_state
	.quad	tls1_final_finish_mac
	.quad	.LC0
	.quad	15
	.quad	.LC1
	.quad	15
	.quad	tls1_alert_code
	.quad	tls1_export_keying_material
	.long	23
	.zero	4
	.quad	ssl3_set_handshake_header
	.quad	tls_close_construct_packet
	.quad	ssl3_handshake_write
	.globl	TLSv1_3_enc_data
	.align 32
	.type	TLSv1_3_enc_data, @object
	.size	TLSv1_3_enc_data, 112
TLSv1_3_enc_data:
	.quad	tls13_setup_key_block
	.quad	tls13_generate_master_secret
	.quad	tls13_change_cipher_state
	.quad	tls13_final_finish_mac
	.quad	.LC0
	.quad	15
	.quad	.LC1
	.quad	15
	.quad	tls13_alert_code
	.quad	tls13_export_keying_material
	.long	6
	.zero	4
	.quad	ssl3_set_handshake_header
	.quad	tls_close_construct_packet
	.quad	ssl3_handshake_write
	.text
	.globl	tls1_default_timeout
	.type	tls1_default_timeout, @function
tls1_default_timeout:
.LFB861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movabsq	$7200000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	tls1_default_timeout, .-tls1_default_timeout
	.globl	tls1_new
	.type	tls1_new, @function
tls1_new:
.LFB862:
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
	call	ssl3_new@PLT
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L55
.L56:
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	tls1_new, .-tls1_new
	.section	.rodata
.LC2:
	.string	"../ssl/t1_lib.c"
	.text
	.globl	tls1_free
	.type	tls1_free, @function
tls1_free:
.LFB863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L58
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L59
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L60
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L61
.L60:
	movq	$0, -8(%rbp)
	jmp	.L61
.L59:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L61
.L58:
	movq	$0, -8(%rbp)
.L61:
	cmpq	$0, -8(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	2608(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_free@PLT
	jmp	.L57
.L64:
	nop
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	tls1_free, .-tls1_free
	.globl	tls1_clear
	.type	tls1_clear, @function
tls1_clear:
.LFB864:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L66
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L67
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L68
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L69
.L68:
	movq	$0, -8(%rbp)
	jmp	.L69
.L67:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L69
.L66:
	movq	$0, -8(%rbp)
.L69:
	cmpq	$0, -8(%rbp)
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_clear@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L71
.L72:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L73
	movq	-8(%rbp), %rax
	movl	$772, 72(%rax)
	jmp	.L74
.L73:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 72(%rax)
.L74:
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE864:
	.size	tls1_clear, .-tls1_clear
	.section	.rodata
	.align 32
	.type	nid_to_group, @object
	.size	nid_to_group, 360
nid_to_group:
	.long	721
	.value	1
	.zero	2
	.long	722
	.value	2
	.zero	2
	.long	723
	.value	3
	.zero	2
	.long	724
	.value	4
	.zero	2
	.long	725
	.value	5
	.zero	2
	.long	726
	.value	6
	.zero	2
	.long	727
	.value	7
	.zero	2
	.long	728
	.value	8
	.zero	2
	.long	729
	.value	9
	.zero	2
	.long	730
	.value	10
	.zero	2
	.long	731
	.value	11
	.zero	2
	.long	732
	.value	12
	.zero	2
	.long	733
	.value	13
	.zero	2
	.long	734
	.value	14
	.zero	2
	.long	708
	.value	15
	.zero	2
	.long	709
	.value	16
	.zero	2
	.long	710
	.value	17
	.zero	2
	.long	711
	.value	18
	.zero	2
	.long	409
	.value	19
	.zero	2
	.long	712
	.value	20
	.zero	2
	.long	713
	.value	21
	.zero	2
	.long	714
	.value	22
	.zero	2
	.long	415
	.value	23
	.zero	2
	.long	715
	.value	24
	.zero	2
	.long	716
	.value	25
	.zero	2
	.long	927
	.value	26
	.zero	2
	.long	931
	.value	27
	.zero	2
	.long	933
	.value	28
	.zero	2
	.long	1034
	.value	29
	.zero	2
	.long	1035
	.value	30
	.zero	2
	.long	1285
	.value	31
	.zero	2
	.long	1286
	.value	32
	.zero	2
	.long	1287
	.value	33
	.zero	2
	.long	1148
	.value	34
	.zero	2
	.long	1184
	.value	35
	.zero	2
	.long	1185
	.value	36
	.zero	2
	.long	1186
	.value	37
	.zero	2
	.long	998
	.value	38
	.zero	2
	.long	999
	.value	39
	.zero	2
	.long	1149
	.value	40
	.zero	2
	.long	1126
	.value	256
	.zero	2
	.long	1127
	.value	257
	.zero	2
	.long	1128
	.value	258
	.zero	2
	.long	1129
	.value	259
	.zero	2
	.long	1130
	.value	260
	.zero	2
	.type	ecformats_default, @object
	.size	ecformats_default, 3
ecformats_default:
	.base64	"AAEC"
	.align 32
	.type	supported_groups_default, @object
	.size	supported_groups_default, 34
supported_groups_default:
	.value	29
	.value	23
	.value	30
	.value	25
	.value	24
	.value	34
	.value	35
	.value	36
	.value	37
	.value	38
	.value	39
	.value	40
	.value	256
	.value	257
	.value	258
	.value	259
	.value	260
	.align 2
	.type	suiteb_curves, @object
	.size	suiteb_curves, 4
suiteb_curves:
	.value	23
	.value	24
.LC3:
	.string	"tls-group-name"
.LC4:
	.string	"tls-group-name-internal"
.LC5:
	.string	"tls-group-id"
.LC6:
	.string	"tls-group-alg"
.LC7:
	.string	"tls-group-sec-bits"
.LC8:
	.string	"tls-group-is-kem"
.LC9:
	.string	"tls-min-tls"
.LC10:
	.string	"tls-max-tls"
.LC11:
	.string	"tls-min-dtls"
.LC12:
	.string	"tls-max-dtls"
	.text
	.type	add_provider_groups, @function
add_provider_groups:
.LFB865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	1616(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	1608(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L76
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	1616(%rax), %rax
	testq	%rax, %rax
	jne	.L77
	leaq	.LC2(%rip), %rax
	movl	$249, %edx
	movq	%rax, %rsi
	movl	$560, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	jmp	.L78
.L77:
	movq	-40(%rbp), %rax
	movq	1616(%rax), %rax
	imulq	$56, %rax, %rax
	leaq	560(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	1600(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$252, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
.L78:
	cmpq	$0, -24(%rbp)
	jne	.L79
	movl	$0, %eax
	jmp	.L108
.L79:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1600(%rax)
	movq	-40(%rbp), %rax
	movq	1616(%rax), %rax
	imulq	$56, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$560, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rax
	movq	1616(%rax), %rax
	leaq	10(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 1616(%rax)
.L76:
	movq	-40(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	1608(%rax), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L81
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L82
.L81:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$269, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L82:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$272, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L109
	leaq	.LC4(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L85
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L86
.L85:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$278, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L86:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$281, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L110
	leaq	.LC5(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L88
	leaq	-68(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	je	.L88
	movl	-68(%rbp), %eax
	cmpl	$65535, %eax
	jbe	.L89
.L88:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L89:
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, 28(%rax)
	leaq	.LC6(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L90
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L91
.L90:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L91:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$297, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L111
	leaq	.LC7(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L93
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L94
.L93:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$303, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L94:
	leaq	.LC8(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L95
	leaq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	je	.L96
	movl	-72(%rbp), %eax
	cmpl	$1, %eax
	jbe	.L95
.L96:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L95:
	movl	-72(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 48(%rax)
	leaq	.LC9(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L97
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L98
.L97:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L98:
	leaq	.LC10(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L99
	movq	-8(%rbp), %rax
	leaq	36(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L100
.L99:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$322, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L100:
	leaq	.LC11(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L101
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L102
.L101:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L102:
	leaq	.LC12(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L103
	movq	-8(%rbp), %rax
	leaq	44(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L104
.L103:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$334, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L104:
	movl	$1, -12(%rbp)
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L105
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	cmpq	%rax, -48(%rbp)
	jne	.L106
	movq	-40(%rbp), %rax
	movq	1608(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 1608(%rax)
	movq	$0, -8(%rbp)
.L106:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
.L105:
	call	ERR_pop_to_mark@PLT
	jmp	.L83
.L109:
	nop
	jmp	.L83
.L110:
	nop
	jmp	.L83
.L111:
	nop
.L83:
	cmpq	$0, -8(%rbp)
	je	.L107
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$369, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$370, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$371, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
.L107:
	movl	-12(%rbp), %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	add_provider_groups, .-add_provider_groups
	.section	.rodata
.LC13:
	.string	"TLS-GROUP"
	.text
	.type	discover_provider_groups, @function
discover_provider_groups:
.LFB866:
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
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	add_provider_groups(%rip), %rdi
	leaq	.LC13(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_capabilities@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	discover_provider_groups, .-discover_provider_groups
	.globl	ssl_load_groups
	.type	ssl_load_groups, @function
ssl_load_groups:
.LFB867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	discover_provider_groups(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_do_all@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L125
.L115:
	movq	$0, -8(%rbp)
	jmp	.L117
.L122:
	movq	$0, -16(%rbp)
	jmp	.L118
.L121:
	movq	-72(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-16(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movzwl	28(%rax), %edx
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	leaq	supported_groups_default(%rip), %rax
	movzwl	(%rcx,%rax), %eax
	cmpw	%ax, %dx
	jne	.L119
	movq	-72(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-16(%rbp), %rax
	imulq	$56, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzwl	28(%rcx), %edx
	movw	%dx, -64(%rbp,%rax,2)
	jmp	.L120
.L119:
	addq	$1, -16(%rbp)
.L118:
	movq	-72(%rbp), %rax
	movq	1608(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L121
.L120:
	addq	$1, -8(%rbp)
.L117:
	cmpq	$16, -8(%rbp)
	jbe	.L122
	cmpq	$0, -24(%rbp)
	jne	.L123
	movl	$1, %eax
	jmp	.L125
.L123:
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC2(%rip), %rcx
	movl	$408, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 656(%rax)
	movq	-72(%rbp), %rax
	movq	656(%rax), %rax
	testq	%rax, %rax
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-24(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-72(%rbp), %rax
	movq	656(%rax), %rax
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 664(%rax)
	movl	$1, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	ssl_load_groups, .-ssl_load_groups
	.section	.rodata
.LC14:
	.string	"tls-sigalg-name"
.LC15:
	.string	"tls-sigalg-iana-name"
.LC16:
	.string	"tls-sigalg-code-point"
.LC17:
	.string	"tls-sigalg-sec-bits"
.LC18:
	.string	"tls-sigalg-oid"
.LC19:
	.string	"tls-sigalg-sig-name"
.LC20:
	.string	"tls-sigalg-sig-oid"
.LC21:
	.string	"tls-sigalg-hash-name"
.LC22:
	.string	"tls-sigalg-hash-oid"
.LC23:
	.string	"tls-sigalg-keytype"
.LC24:
	.string	"tls-sigalg-keytype-oid"
	.text
	.type	add_provider_sigalgs, @function
add_provider_sigalgs:
.LFB868:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -36(%rbp)
	movq	-64(%rbp), %rax
	movq	1640(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L127
	movq	$0, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	1640(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	leaq	.LC2(%rip), %rax
	movl	$439, %edx
	movq	%rax, %rsi
	movl	$960, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	jmp	.L129
.L128:
	movq	-64(%rbp), %rax
	movq	1640(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	960(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	1624(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$442, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -48(%rbp)
.L129:
	cmpq	$0, -48(%rbp)
	jne	.L130
	movl	$0, %eax
	jmp	.L184
.L130:
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 1624(%rax)
	movq	-64(%rbp), %rax
	movq	1640(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$960, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-64(%rbp), %rax
	movq	1640(%rax), %rax
	leaq	10(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 1640(%rax)
.L127:
	movq	-64(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	1632(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	leaq	.LC14(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L132
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L133
.L132:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$459, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L133:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$462, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$463, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L185
	leaq	.LC15(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L136
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L137
.L136:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$469, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L137:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$472, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$473, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L186
	leaq	.LC16(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L139
	leaq	-92(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	je	.L139
	movl	-92(%rbp), %eax
	cmpl	$65535, %eax
	jbe	.L140
.L139:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$482, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L140:
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 8(%rax)
	leaq	.LC17(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L141
	movq	-24(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L142
.L141:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$490, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L142:
	leaq	.LC18(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L143
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L144
.L143:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L187
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$501, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$502, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L188
.L144:
	leaq	.LC19(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L146
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	jmp	.L147
.L146:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L189
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$513, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$514, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L190
.L147:
	leaq	.LC20(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L149
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L150
.L149:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L191
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$525, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$526, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L192
.L150:
	leaq	.LC21(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L152
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	jmp	.L153
.L152:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L193
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$537, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$538, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L194
.L153:
	leaq	.LC22(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L155
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	jmp	.L156
.L155:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L195
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$549, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$550, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L196
.L156:
	leaq	.LC23(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L158
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	jmp	.L159
.L158:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L197
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$561, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$562, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L198
.L159:
	leaq	.LC24(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L161
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
	jmp	.L162
.L161:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L199
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$573, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$574, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L200
.L162:
	leaq	.LC9(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L164
	movq	-24(%rbp), %rax
	leaq	84(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L165
.L164:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$582, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L165:
	movq	-24(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L166
	movq	-24(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	$-1, %eax
	je	.L166
	movq	-24(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	$771, %eax
	jg	.L166
	movl	$1, -36(%rbp)
	jmp	.L134
.L166:
	leaq	.LC10(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L167
	movq	-24(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L168
.L167:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$594, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L168:
	movq	-24(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	.L169
	movq	-24(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$-1, %eax
	je	.L169
	movq	-24(%rbp), %rax
	movl	88(%rax), %edx
	movq	-24(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, %edx
	jge	.L169
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$599, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L169:
	movq	-24(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	.L170
	movq	-24(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$-1, %eax
	je	.L170
	movq	-24(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$771, %eax
	jg	.L170
	movl	$1, -36(%rbp)
	jmp	.L134
.L170:
	movl	$1, -36(%rbp)
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L171
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L172
.L171:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L173
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L172
.L173:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.L172:
	movq	-64(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_fetch@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L174
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	cmpq	%rax, -72(%rbp)
	jne	.L175
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	testl	%eax, %eax
	je	.L176
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	testq	%rax, %rax
	jne	.L177
.L176:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$648, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L134
.L177:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L178
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
.L178:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L179
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
.L179:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L180
	movq	-24(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
.L180:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, %r12d
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L181
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, %ebx
	jmp	.L182
.L181:
	movl	$0, %ebx
.L182:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	OBJ_add_sigid@PLT
	movq	-64(%rbp), %rax
	movq	1632(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 1632(%rax)
	movq	$0, -24(%rbp)
.L175:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
.L174:
	call	ERR_pop_to_mark@PLT
	jmp	.L134
.L185:
	nop
	jmp	.L134
.L186:
	nop
	jmp	.L134
.L187:
	nop
	jmp	.L134
.L188:
	nop
	jmp	.L134
.L189:
	nop
	jmp	.L134
.L190:
	nop
	jmp	.L134
.L191:
	nop
	jmp	.L134
.L192:
	nop
	jmp	.L134
.L193:
	nop
	jmp	.L134
.L194:
	nop
	jmp	.L134
.L195:
	nop
	jmp	.L134
.L196:
	nop
	jmp	.L134
.L197:
	nop
	jmp	.L134
.L198:
	nop
	jmp	.L134
.L199:
	nop
	jmp	.L134
.L200:
	nop
.L134:
	cmpq	$0, -24(%rbp)
	je	.L183
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$670, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$672, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$674, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$676, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$678, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$680, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$682, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$684, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$686, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
.L183:
	movl	-36(%rbp), %eax
.L184:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	add_provider_sigalgs, .-add_provider_sigalgs
	.section	.rodata
.LC25:
	.string	"TLS-SIGALG"
	.text
	.type	discover_provider_sigalgs, @function
discover_provider_sigalgs:
.LFB869:
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
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	add_provider_sigalgs(%rip), %rdi
	leaq	.LC25(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_capabilities@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	discover_provider_sigalgs, .-discover_provider_sigalgs
	.globl	ssl_load_sigalgs
	.type	ssl_load_sigalgs, @function
ssl_load_sigalgs:
.LFB870:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	discover_provider_sigalgs(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_do_all@PLT
	testl	%eax, %eax
	jne	.L204
	movl	$0, %eax
	jmp	.L210
.L204:
	movq	-40(%rbp), %rax
	movq	1632(%rax), %rax
	testq	%rax, %rax
	je	.L206
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$717, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1632(%rax), %rax
	salq	$3, %rax
	leaq	.LC2(%rip), %rcx
	movl	$718, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 352(%rax)
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	jne	.L207
	movl	$0, %eax
	jmp	.L210
.L207:
	movq	$0, -24(%rbp)
	jmp	.L208
.L209:
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	352(%rdx), %rdx
	movq	-24(%rbp), %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rbx
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, (%rbx)
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	$0, 4(%rax)
	addq	$1, -24(%rbp)
.L208:
	movq	-40(%rbp), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L209
.L206:
	movl	$1, %eax
.L210:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	ssl_load_sigalgs, .-ssl_load_sigalgs
	.type	tls1_group_name2id, @function
tls1_group_name2id:
.LFB871:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L212
.L216:
	movq	-24(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L213
	movq	-24(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L214
.L213:
	movq	-24(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movzwl	28(%rax), %eax
	jmp	.L215
.L214:
	addq	$1, -8(%rbp)
.L212:
	movq	-24(%rbp), %rax
	movq	1608(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L216
	movl	$0, %eax
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	tls1_group_name2id, .-tls1_group_name2id
	.globl	tls1_group_id_lookup
	.type	tls1_group_id_lookup, @function
tls1_group_id_lookup:
.LFB872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movw	%ax, -28(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L218
.L221:
	movq	-24(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movzwl	28(%rax), %eax
	cmpw	%ax, -28(%rbp)
	jne	.L219
	movq	-24(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	jmp	.L220
.L219:
	addq	$1, -8(%rbp)
.L218:
	movq	-24(%rbp), %rax
	movq	1608(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L221
	movl	$0, %eax
.L220:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	tls1_group_id_lookup, .-tls1_group_id_lookup
	.globl	tls1_group_id2name
	.type	tls1_group_id2name, @function
tls1_group_id2name:
.LFB873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movw	%ax, -28(%rbp)
	movzwl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_group_id_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L223
	movl	$0, %eax
	jmp	.L224
.L223:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	tls1_group_id2name, .-tls1_group_id2name
	.globl	tls1_group_id2nid
	.type	tls1_group_id2nid, @function
tls1_group_id2nid:
.LFB874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movl	%esi, -24(%rbp)
	movw	%ax, -20(%rbp)
	cmpw	$0, -20(%rbp)
	jne	.L226
	movl	$0, %eax
	jmp	.L227
.L226:
	movq	$0, -8(%rbp)
	jmp	.L228
.L230:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+nid_to_group(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cmpw	%ax, -20(%rbp)
	jne	.L229
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	nid_to_group(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L227
.L229:
	addq	$1, -8(%rbp)
.L228:
	cmpq	$44, -8(%rbp)
	jbe	.L230
	cmpl	$0, -24(%rbp)
	jne	.L231
	movl	$0, %eax
	jmp	.L227
.L231:
	movzwl	-20(%rbp), %eax
	orl	$16777216, %eax
.L227:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	tls1_group_id2nid, .-tls1_group_id2nid
	.globl	tls1_nid2group_id
	.type	tls1_nid2group_id, @function
tls1_nid2group_id:
.LFB875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L233
.L236:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	nid_to_group(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L234
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+nid_to_group(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	jmp	.L235
.L234:
	addq	$1, -8(%rbp)
.L233:
	cmpq	$44, -8(%rbp)
	jbe	.L236
	movl	$0, %eax
.L235:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE875:
	.size	tls1_nid2group_id, .-tls1_nid2group_id
	.globl	tls1_get_supported_groups
	.type	tls1_get_supported_groups, @function
tls1_get_supported_groups:
.LFB876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	cmpl	$196608, %eax
	je	.L238
	cmpl	$196608, %eax
	ja	.L239
	cmpl	$65536, %eax
	je	.L240
	cmpl	$131072, %eax
	je	.L241
	jmp	.L239
.L238:
	movq	-32(%rbp), %rax
	leaq	suiteb_curves(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	$2, (%rax)
	jmp	.L242
.L240:
	movq	-32(%rbp), %rax
	leaq	suiteb_curves(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	$1, (%rax)
	jmp	.L242
.L241:
	leaq	2+suiteb_curves(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	$1, (%rax)
	jmp	.L242
.L239:
	movq	-24(%rbp), %rax
	movq	2584(%rax), %rax
	testq	%rax, %rax
	jne	.L243
	movq	-8(%rbp), %rax
	movq	656(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	664(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L245
.L243:
	movq	-24(%rbp), %rax
	movq	2584(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	2576(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L245:
	nop
.L242:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE876:
	.size	tls1_get_supported_groups, .-tls1_get_supported_groups
	.section	.rodata
.LC26:
	.string	"EC"
.LC27:
	.string	"X25519"
.LC28:
	.string	"X448"
	.text
	.globl	tls_valid_group
	.type	tls_valid_group, @function
tls_valid_group:
.LFB877:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movq	%r9, -64(%rbp)
	movw	%ax, -44(%rbp)
	movzwl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_group_id_lookup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L247
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
.L247:
	cmpq	$0, -24(%rbp)
	jne	.L248
	movl	$0, %eax
	jmp	.L249
.L248:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L250
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L251
.L250:
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -8(%rbp)
.L251:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L252
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.L253
.L252:
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -12(%rbp)
.L253:
	cmpl	$0, -8(%rbp)
	js	.L254
	cmpl	$0, -12(%rbp)
	jns	.L255
.L254:
	movl	$0, %eax
	jmp	.L249
.L255:
	cmpl	$0, -12(%rbp)
	jne	.L256
	movl	$1, -4(%rbp)
	jmp	.L257
.L256:
	movl	-12(%rbp), %edx
	movl	-48(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L257:
	cmpl	$0, -8(%rbp)
	jle	.L258
	movl	-8(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	andl	%eax, -4(%rbp)
.L258:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L259
	cmpl	$0, -4(%rbp)
	je	.L259
	cmpq	$0, -64(%rbp)
	je	.L259
	cmpl	$772, -52(%rbp)
	jne	.L259
	cmpl	$0, -12(%rbp)
	je	.L260
	cmpl	$771, -12(%rbp)
	jle	.L261
.L260:
	movl	$1, %edx
	jmp	.L262
.L261:
	movl	$0, %edx
.L262:
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L259:
	cmpl	$0, -56(%rbp)
	je	.L263
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L263
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L263
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L264
.L263:
	movl	$1, %eax
	jmp	.L265
.L264:
	movl	$0, %eax
.L265:
	andl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE877:
	.size	tls_valid_group, .-tls_valid_group
	.globl	tls_group_allowed
	.type	tls_group_allowed, @function
tls_group_allowed:
.LFB878:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movl	%edx, -32(%rbp)
	movw	%ax, -28(%rbp)
	movzwl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_group_id_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L267
	movl	$0, %eax
	jmp	.L269
.L267:
	movzwl	-28(%rbp), %eax
	shrw	$8, %ax
	movb	%al, -10(%rbp)
	movzwl	-28(%rbp), %eax
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	tls1_group_id2nid@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %edi
	leaq	-10(%rbp), %rcx
	movl	-32(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ssl_security@PLT
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE878:
	.size	tls_group_allowed, .-tls_group_allowed
	.type	tls1_in_list, @function
tls1_in_list:
.LFB879:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movw	%ax, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L271
.L274:
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, -20(%rbp)
	jne	.L272
	movl	$1, %eax
	jmp	.L273
.L272:
	addq	$1, -8(%rbp)
.L271:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L274
	movl	$0, %eax
.L273:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE879:
	.size	tls1_in_list, .-tls1_in_list
	.globl	tls1_shared_group
	.type	tls1_shared_group, @function
tls1_shared_group:
.LFB880:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L276
	movl	$0, %eax
	jmp	.L300
.L276:
	cmpl	$-2, -108(%rbp)
	jne	.L278
	movq	-104(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L279
	movq	-104(%rbp), %rax
	movq	704(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -40(%rbp)
	cmpq	$50380843, -40(%rbp)
	jne	.L280
	movl	$23, %eax
	jmp	.L300
.L280:
	cmpq	$50380844, -40(%rbp)
	jne	.L281
	movl	$24, %eax
	jmp	.L300
.L281:
	movl	$0, %eax
	jmp	.L300
.L279:
	movl	$0, -108(%rbp)
.L278:
	movq	-104(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$4194304, %eax
	testq	%rax, %rax
	je	.L282
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
	leaq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_peer_groups
	jmp	.L283
.L282:
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_peer_groups
	leaq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
.L283:
	movl	$0, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L284
.L298:
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -42(%rbp)
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movzwl	-42(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	tls1_in_list
	testl	%eax, %eax
	je	.L301
	movzwl	-42(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	$131077, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	je	.L301
	movzwl	-42(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_group_id_lookup@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L288
	movl	$0, %eax
	jmp	.L300
.L288:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L289
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.L290
.L289:
	movq	-56(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -16(%rbp)
.L290:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L291
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L292
.L291:
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -20(%rbp)
.L292:
	cmpl	$-1, -20(%rbp)
	je	.L302
	cmpl	$0, -16(%rbp)
	je	.L294
	movq	-104(%rbp), %rax
	movl	72(%rax), %ecx
	movl	-16(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	js	.L303
.L294:
	cmpl	$0, -20(%rbp)
	je	.L296
	movq	-104(%rbp), %rax
	movl	72(%rax), %ecx
	movl	-20(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jg	.L303
.L296:
	movl	-108(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.L297
	movzwl	-42(%rbp), %eax
	jmp	.L300
.L297:
	addl	$1, -12(%rbp)
	jmp	.L287
.L301:
	nop
	jmp	.L287
.L302:
	nop
	jmp	.L287
.L303:
	nop
.L287:
	addq	$1, -8(%rbp)
.L284:
	movq	-80(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L298
	cmpl	$-1, -108(%rbp)
	jne	.L299
	movl	-12(%rbp), %eax
	jmp	.L300
.L299:
	movl	$0, %eax
.L300:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	tls1_shared_group, .-tls1_shared_group
	.globl	tls1_set_groups
	.type	tls1_set_groups, @function
tls1_set_groups:
.LFB881:
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
	movq	%rcx, -96(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L305
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1006, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$271, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L316
.L305:
	movq	-96(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC2(%rip), %rcx
	movl	$1009, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L307
	movl	$0, %eax
	jmp	.L316
.L307:
	movq	$0, -8(%rbp)
	jmp	.L308
.L315:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	tls1_nid2group_id@PLT
	movw	%ax, -26(%rbp)
	movzwl	-26(%rbp), %eax
	andl	$192, %eax
	testl	%eax, %eax
	jne	.L317
	movzwl	-26(%rbp), %eax
	movzbl	%al, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -40(%rbp)
	cmpw	$255, -26(%rbp)
	ja	.L311
	leaq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L312
.L311:
	leaq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L312:
	cmpw	$0, -26(%rbp)
	je	.L318
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	andq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L318
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	orq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzwl	-26(%rbp), %eax
	movw	%ax, (%rdx)
	addq	$1, -8(%rbp)
.L308:
	movq	-8(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L315
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L316
.L317:
	nop
	jmp	.L310
.L318:
	nop
.L310:
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1029, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L316:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE881:
	.size	tls1_set_groups, .-tls1_set_groups
	.type	gid_cb, @function
gid_cb:
.LFB882:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -24(%rbp)
	movw	$0, -26(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L320
	movl	$0, %eax
	jmp	.L330
.L320:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L322
	movl	$1, -12(%rbp)
	addq	$1, -120(%rbp)
	subl	$1, -124(%rbp)
.L322:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L323
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	$40, %rax
	leaq	(%rax,%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movl	$1059, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L324
	movl	$0, %eax
	jmp	.L330
.L324:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L323:
	cmpl	$63, -124(%rbp)
	jle	.L325
	movl	$0, %eax
	jmp	.L330
.L325:
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-124(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls1_group_name2id
	movw	%ax, -26(%rbp)
	cmpw	$0, -26(%rbp)
	jne	.L326
	movl	-12(%rbp), %eax
	jmp	.L330
.L326:
	movq	$0, -8(%rbp)
	jmp	.L327
.L329:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, -26(%rbp)
	jne	.L328
	movl	$1, %eax
	jmp	.L330
.L328:
	addq	$1, -8(%rbp)
.L327:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L329
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	addq	%rax, %rax
	leaq	(%rsi,%rax), %rdx
	movzwl	-26(%rbp), %eax
	movw	%ax, (%rdx)
	movl	$1, %eax
.L330:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE882:
	.size	gid_cb, .-gid_cb
	.section	.rodata
.LC29:
	.string	"No valid groups in '%s'"
	.text
	.globl	tls1_set_groups_list
	.type	tls1_set_groups_list, @function
tls1_set_groups_list:
.LFB883:
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
	movq	$0, -40(%rbp)
	movq	$40, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC2(%rip), %rcx
	movl	$1095, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L332
	movl	$0, %eax
	jmp	.L339
.L332:
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rcx
	leaq	gid_cb(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$58, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
	testl	%eax, %eax
	je	.L340
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L336
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-80(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rcx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L335
.L336:
	cmpq	$0, -64(%rbp)
	jne	.L337
	movl	$1, -4(%rbp)
	jmp	.L335
.L337:
	movq	-40(%rbp), %rax
	leaq	(%rax,%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movl	$1115, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L341
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1118, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L335
.L340:
	nop
	jmp	.L335
.L341:
	nop
.L335:
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$1123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE883:
	.size	tls1_set_groups_list, .-tls1_set_groups_list
	.globl	tls1_check_group_id
	.type	tls1_check_group_id, @function
tls1_check_group_id:
.LFB884:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movl	%edx, -48(%rbp)
	movw	%ax, -44(%rbp)
	cmpw	$0, -44(%rbp)
	jne	.L343
	movl	$0, %eax
	jmp	.L352
.L343:
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L345
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	je	.L345
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	cmpq	$50380843, -8(%rbp)
	jne	.L346
	cmpw	$23, -44(%rbp)
	je	.L345
	movl	$0, %eax
	jmp	.L352
.L346:
	cmpq	$50380844, -8(%rbp)
	jne	.L347
	cmpw	$24, -44(%rbp)
	je	.L345
	movl	$0, %eax
	jmp	.L352
.L347:
	movl	$0, %eax
	jmp	.L352
.L345:
	cmpl	$0, -48(%rbp)
	je	.L348
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movzwl	-44(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	tls1_in_list
	testl	%eax, %eax
	jne	.L348
	movl	$0, %eax
	jmp	.L352
.L348:
	movzwl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$131078, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	jne	.L349
	movl	$0, %eax
	jmp	.L352
.L349:
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L350
	movl	$1, %eax
	jmp	.L352
.L350:
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_peer_groups
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L351
	movl	$1, %eax
	jmp	.L352
.L351:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movzwl	-44(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	tls1_in_list
.L352:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE884:
	.size	tls1_check_group_id, .-tls1_check_group_id
	.globl	tls1_get_formatlist
	.type	tls1_get_formatlist, @function
tls1_get_formatlist:
.LFB885:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	2552(%rax), %rax
	testq	%rax, %rax
	je	.L354
	movq	-8(%rbp), %rax
	movq	2552(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	2544(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L357
.L354:
	movq	-16(%rbp), %rax
	leaq	ecformats_default(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L356
	movq	-24(%rbp), %rax
	movq	$2, (%rax)
	jmp	.L357
.L356:
	movq	-24(%rbp), %rax
	movq	$3, (%rax)
.L357:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE885:
	.size	tls1_get_formatlist, .-tls1_get_formatlist
	.type	tls1_check_pkey_comp, @function
tls1_check_pkey_comp:
.LFB886:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	.LC26(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L359
	movl	$1, %eax
	jmp	.L360
.L359:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_ec_point_conv_form@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L361
	movl	$0, %eax
	jmp	.L360
.L361:
	cmpl	$4, -20(%rbp)
	jne	.L362
	movb	$0, -1(%rbp)
	jmp	.L363
.L362:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L364
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L364
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L364
	movl	$1, %eax
	jmp	.L360
.L364:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_field_type@PLT
	movl	%eax, -24(%rbp)
	cmpl	$406, -24(%rbp)
	jne	.L365
	movb	$1, -1(%rbp)
	jmp	.L363
.L365:
	cmpl	$407, -24(%rbp)
	jne	.L366
	movb	$2, -1(%rbp)
	jmp	.L363
.L366:
	movl	$0, %eax
	jmp	.L360
.L363:
	movq	-40(%rbp), %rax
	movq	2568(%rax), %rax
	testq	%rax, %rax
	jne	.L367
	movl	$1, %eax
	jmp	.L360
.L367:
	movq	$0, -16(%rbp)
	jmp	.L368
.L370:
	movq	-40(%rbp), %rax
	movq	2568(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -1(%rbp)
	jne	.L369
	movl	$1, %eax
	jmp	.L360
.L369:
	addq	$1, -16(%rbp)
.L368:
	movq	-40(%rbp), %rax
	movq	2560(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L370
	movl	$0, %eax
.L360:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE886:
	.size	tls1_check_pkey_comp, .-tls1_check_pkey_comp
	.type	tls1_get_group_id, @function
tls1_get_group_id:
.LFB887:
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
	call	ssl_get_EC_curve_nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L372
	movl	$0, %eax
	jmp	.L373
.L372:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	tls1_nid2group_id@PLT
.L373:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE887:
	.size	tls1_get_group_id, .-tls1_get_group_id
	.type	tls1_check_cert_param, @function
tls1_check_cert_param:
.LFB888:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L375
	movl	$0, %eax
	jmp	.L376
.L375:
	leaq	.LC26(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L377
	movl	$1, %eax
	jmp	.L376
.L377:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls1_check_pkey_comp
	testl	%eax, %eax
	jne	.L378
	movl	$0, %eax
	jmp	.L376
.L378:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tls1_get_group_id
	movw	%ax, -26(%rbp)
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movzwl	-26(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls1_check_group_id@PLT
	testl	%eax, %eax
	jne	.L379
	movl	$0, %eax
	jmp	.L376
.L379:
	cmpl	$0, -52(%rbp)
	je	.L380
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L380
	cmpw	$23, -26(%rbp)
	jne	.L381
	movl	$794, -4(%rbp)
	jmp	.L382
.L381:
	cmpw	$24, -26(%rbp)
	jne	.L383
	movl	$795, -4(%rbp)
	jmp	.L382
.L383:
	movl	$0, %eax
	jmp	.L376
.L382:
	movq	$0, -16(%rbp)
	jmp	.L384
.L386:
	movq	-40(%rbp), %rax
	movq	5352(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L385
	movl	$1, %eax
	jmp	.L376
.L385:
	addq	$1, -16(%rbp)
.L384:
	movq	-40(%rbp), %rax
	movq	5360(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L386
	movl	$0, %eax
	jmp	.L376
.L380:
	movl	$1, %eax
.L376:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE888:
	.size	tls1_check_cert_param, .-tls1_check_cert_param
	.globl	tls1_check_ec_tmp_key
	.type	tls1_check_ec_tmp_key, @function
tls1_check_ec_tmp_key:
.LFB889:
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
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	jne	.L388
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_shared_group@PLT
	testw	%ax, %ax
	setne	%al
	movzbl	%al, %eax
	jmp	.L389
.L388:
	cmpq	$50380843, -16(%rbp)
	jne	.L390
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$23, %esi
	movq	%rax, %rdi
	call	tls1_check_group_id@PLT
	jmp	.L389
.L390:
	cmpq	$50380844, -16(%rbp)
	jne	.L391
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	tls1_check_group_id@PLT
	jmp	.L389
.L391:
	movl	$0, %eax
.L389:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE889:
	.size	tls1_check_ec_tmp_key, .-tls1_check_ec_tmp_key
	.section	.rodata
	.align 32
	.type	tls12_sigalgs, @object
	.size	tls12_sigalgs, 62
tls12_sigalgs:
	.value	1027
	.value	1283
	.value	1539
	.value	2055
	.value	2056
	.value	2074
	.value	2075
	.value	2076
	.value	2057
	.value	2058
	.value	2059
	.value	2052
	.value	2053
	.value	2054
	.value	1025
	.value	1281
	.value	1537
	.value	771
	.value	515
	.value	769
	.value	513
	.value	770
	.value	514
	.value	1026
	.value	1282
	.value	1538
	.value	2112
	.value	2113
	.value	-4370
	.value	-4113
	.value	-4627
	.align 2
	.type	suiteb_sigalgs, @object
	.size	suiteb_sigalgs, 4
suiteb_sigalgs:
	.value	1027
	.value	1283
.LC30:
	.string	"ecdsa_secp256r1_sha256"
.LC31:
	.string	"ecdsa_secp384r1_sha384"
.LC32:
	.string	"ecdsa_secp521r1_sha512"
.LC33:
	.string	"ed25519"
.LC34:
	.string	"ed448"
.LC35:
	.string	"ecdsa_brainpoolP256r1_sha256"
.LC36:
	.string	"ecdsa_brainpoolP384r1_sha384"
.LC37:
	.string	"ecdsa_brainpoolP512r1_sha512"
.LC38:
	.string	"rsa_pss_rsae_sha256"
.LC39:
	.string	"rsa_pss_rsae_sha384"
.LC40:
	.string	"rsa_pss_rsae_sha512"
.LC41:
	.string	"rsa_pss_pss_sha256"
.LC42:
	.string	"rsa_pss_pss_sha384"
.LC43:
	.string	"rsa_pss_pss_sha512"
.LC44:
	.string	"rsa_pkcs1_sha256"
.LC45:
	.string	"rsa_pkcs1_sha384"
.LC46:
	.string	"rsa_pkcs1_sha512"
.LC47:
	.string	"rsa_pkcs1_sha224"
.LC48:
	.string	"rsa_pkcs1_sha1"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	sigalg_lookup_tbl, @object
	.size	sigalg_lookup_tbl, 1240
sigalg_lookup_tbl:
	.quad	.LC30
	.value	1027
	.zero	2
	.long	672
	.long	4
	.long	408
	.long	3
	.long	794
	.long	415
	.long	1
	.quad	.LC31
	.value	1283
	.zero	2
	.long	673
	.long	5
	.long	408
	.long	3
	.long	795
	.long	715
	.long	1
	.quad	.LC32
	.value	1539
	.zero	2
	.long	674
	.long	11
	.long	408
	.long	3
	.long	796
	.long	716
	.long	1
	.quad	.LC33
	.value	2055
	.zero	2
	.long	0
	.long	-1
	.long	1087
	.long	7
	.long	0
	.long	0
	.long	1
	.quad	.LC34
	.value	2056
	.zero	2
	.long	0
	.long	-1
	.long	1088
	.long	8
	.long	0
	.long	0
	.long	1
	.quad	0
	.value	771
	.zero	2
	.long	675
	.long	10
	.long	408
	.long	3
	.long	793
	.long	0
	.long	1
	.quad	0
	.value	515
	.zero	2
	.long	64
	.long	1
	.long	408
	.long	3
	.long	416
	.long	0
	.long	1
	.quad	.LC35
	.value	2074
	.zero	2
	.long	672
	.long	4
	.long	408
	.long	3
	.long	794
	.long	927
	.long	1
	.quad	.LC36
	.value	2075
	.zero	2
	.long	673
	.long	5
	.long	408
	.long	3
	.long	795
	.long	931
	.long	1
	.quad	.LC37
	.value	2076
	.zero	2
	.long	674
	.long	11
	.long	408
	.long	3
	.long	796
	.long	933
	.long	1
	.quad	.LC38
	.value	2052
	.zero	2
	.long	672
	.long	4
	.long	912
	.long	0
	.long	0
	.long	0
	.long	1
	.quad	.LC39
	.value	2053
	.zero	2
	.long	673
	.long	5
	.long	912
	.long	0
	.long	0
	.long	0
	.long	1
	.quad	.LC40
	.value	2054
	.zero	2
	.long	674
	.long	11
	.long	912
	.long	0
	.long	0
	.long	0
	.long	1
	.quad	.LC41
	.value	2057
	.zero	2
	.long	672
	.long	4
	.long	912
	.long	1
	.long	0
	.long	0
	.long	1
	.quad	.LC42
	.value	2058
	.zero	2
	.long	673
	.long	5
	.long	912
	.long	1
	.long	0
	.long	0
	.long	1
	.quad	.LC43
	.value	2059
	.zero	2
	.long	674
	.long	11
	.long	912
	.long	1
	.long	0
	.long	0
	.long	1
	.quad	.LC44
	.value	1025
	.zero	2
	.long	672
	.long	4
	.long	6
	.long	0
	.long	668
	.long	0
	.long	1
	.quad	.LC45
	.value	1281
	.zero	2
	.long	673
	.long	5
	.long	6
	.long	0
	.long	669
	.long	0
	.long	1
	.quad	.LC46
	.value	1537
	.zero	2
	.long	674
	.long	11
	.long	6
	.long	0
	.long	670
	.long	0
	.long	1
	.quad	.LC47
	.value	769
	.zero	2
	.long	675
	.long	10
	.long	6
	.long	0
	.long	671
	.long	0
	.long	1
	.quad	.LC48
	.value	513
	.zero	2
	.long	64
	.long	1
	.long	6
	.long	0
	.long	65
	.long	0
	.long	1
	.quad	0
	.value	1026
	.zero	2
	.long	672
	.long	4
	.long	116
	.long	2
	.long	803
	.long	0
	.long	1
	.quad	0
	.value	1282
	.zero	2
	.long	673
	.long	5
	.long	116
	.long	2
	.long	0
	.long	0
	.long	1
	.quad	0
	.value	1538
	.zero	2
	.long	674
	.long	11
	.long	116
	.long	2
	.long	0
	.long	0
	.long	1
	.quad	0
	.value	770
	.zero	2
	.long	675
	.long	10
	.long	116
	.long	2
	.long	0
	.long	0
	.long	1
	.quad	0
	.value	514
	.zero	2
	.long	64
	.long	1
	.long	116
	.long	2
	.long	113
	.long	0
	.long	1
	.quad	0
	.value	2112
	.zero	2
	.long	982
	.long	6
	.long	979
	.long	5
	.long	0
	.long	0
	.long	1
	.quad	0
	.value	2113
	.zero	2
	.long	983
	.long	8
	.long	980
	.long	6
	.long	0
	.long	0
	.long	1
	.quad	0
	.value	-4370
	.zero	2
	.long	982
	.long	6
	.long	979
	.long	5
	.long	0
	.long	0
	.long	1
	.quad	0
	.value	-4113
	.zero	2
	.long	983
	.long	8
	.long	980
	.long	6
	.long	0
	.long	0
	.long	1
	.quad	0
	.value	-4627
	.zero	2
	.long	809
	.long	2
	.long	811
	.long	4
	.long	0
	.long	0
	.long	1
	.section	.rodata
.LC49:
	.string	"rsa_pkcs1_md5_sha1"
	.section	.data.rel.ro.local
	.align 32
	.type	legacy_rsa_sigalg, @object
	.size	legacy_rsa_sigalg, 40
legacy_rsa_sigalg:
	.quad	.LC49
	.value	0
	.zero	2
	.long	114
	.long	9
	.long	6
	.long	0
	.long	0
	.long	0
	.long	1
	.section	.rodata
	.align 16
	.type	tls_default_sigalg, @object
	.size	tls_default_sigalg, 18
tls_default_sigalg:
	.value	513
	.value	0
	.value	514
	.value	515
	.value	-4627
	.value	2112
	.value	2113
	.value	0
	.value	0
	.text
	.globl	ssl_setup_sigalgs
	.type	ssl_setup_sigalgs, @function
ssl_setup_sigalgs:
.LFB890:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	call	EVP_PKEY_new@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -60(%rbp)
	cmpq	$0, -200(%rbp)
	je	.L409
	movq	-200(%rbp), %rax
	movq	1632(%rax), %rax
	addq	$31, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movl	$1523, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L410
	cmpq	$0, -72(%rbp)
	je	.L410
	movq	-80(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC2(%rip), %rcx
	movl	$1527, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L411
	call	ERR_set_mark@PLT
	movq	$0, -24(%rbp)
	leaq	sigalg_lookup_tbl(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L398
.L403:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	32(%rax), %rax
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	leaq	tls12_sigalgs(%rip), %rax
	movzwl	(%rcx,%rax), %eax
	movw	%ax, (%rdx)
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L399
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movq	-200(%rbp), %rax
	movslq	%edx, %rdx
	addq	$168, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L399
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, 36(%rax)
	jmp	.L400
.L399:
	movq	-40(%rbp), %rax
	movl	20(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	testl	%eax, %eax
	jne	.L401
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, 36(%rax)
	jmp	.L400
.L401:
	movq	-200(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L402
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, 36(%rax)
.L402:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L400:
	addq	$40, -40(%rbp)
	addq	$1, -24(%rbp)
.L398:
	cmpq	$30, -24(%rbp)
	jbe	.L403
	movq	$31, -32(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L404
.L407:
	movq	-200(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -192(%rbp)
	movq	%rbx, -184(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -176(%rbp)
	movq	%rbx, -168(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -160(%rbp)
	movq	%rbx, -152(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	88(%rax), %rdx
	movq	80(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-192(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movzwl	-184(%rbp), %eax
	movw	%ax, 8(%rdx)
	movq	-32(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movzwl	-184(%rbp), %eax
	movw	%ax, (%rdx)
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	je	.L405
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, %edx
	jmp	.L406
.L405:
	movl	$0, %edx
.L406:
	movq	-32(%rbp), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, 12(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	%ecx, %edi
	call	ssl_get_md_idx@PLT
	movl	%eax, 16(%rbx)
	movq	-176(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rcx, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, 20(%rbx)
	movq	-24(%rbp), %rax
	leal	9(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movl	%edx, 24(%rax)
	movq	-176(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rcx, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, 28(%rbx)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, 32(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, 36(%rax)
	addq	$1, -32(%rbp)
	addq	$1, -24(%rbp)
.L404:
	movq	-200(%rbp), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L407
	call	ERR_pop_to_mark@PLT
	movq	-200(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 1584(%rax)
	movq	-200(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 1592(%rax)
	movq	-200(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 1576(%rax)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$1, -60(%rbp)
	jmp	.L394
.L409:
	nop
	jmp	.L394
.L410:
	nop
	jmp	.L394
.L411:
	nop
.L394:
	leaq	.LC2(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$1591, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1592, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE890:
	.size	ssl_setup_sigalgs, .-ssl_setup_sigalgs
	.type	tls1_lookup_sigalg, @function
tls1_lookup_sigalg:
.LFB891:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movw	%ax, -28(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	1584(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L413
.L417:
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %eax
	cmpw	%ax, -28(%rbp)
	jne	.L414
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L415
	movl	$0, %eax
	jmp	.L416
.L415:
	movq	-16(%rbp), %rax
	jmp	.L416
.L414:
	addq	$40, -16(%rbp)
	addq	$1, -8(%rbp)
.L413:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	1576(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L417
	movl	$0, %eax
.L416:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE891:
	.size	tls1_lookup_sigalg, .-tls1_lookup_sigalg
	.globl	tls1_lookup_md
	.type	tls1_lookup_md, @function
tls1_lookup_md:
.LFB892:
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
	cmpq	$0, -32(%rbp)
	jne	.L419
	movl	$0, %eax
	jmp	.L420
.L419:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L421
	movq	$0, -8(%rbp)
	jmp	.L422
.L421:
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L422
	movl	$0, %eax
	jmp	.L420
.L422:
	cmpq	$0, -40(%rbp)
	je	.L423
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L423:
	movl	$1, %eax
.L420:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE892:
	.size	tls1_lookup_md, .-tls1_lookup_md
	.type	rsa_pss_check_min_key_size, @function
rsa_pss_check_min_key_size:
.LFB893:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L425
	movl	$0, %eax
	jmp	.L430
.L425:
	leaq	-24(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_lookup_md@PLT
	testl	%eax, %eax
	je	.L427
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L428
.L427:
	movl	$0, %eax
	jmp	.L430
.L428:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	addl	$1, %eax
	addl	%eax, %eax
	cmpl	%eax, %ebx
	jge	.L429
	movl	$0, %eax
	jmp	.L430
.L429:
	movl	$1, %eax
.L430:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE893:
	.size	rsa_pss_check_min_key_size, .-rsa_pss_check_min_key_size
	.type	tls1_get_legacy_sigalg, @function
tls1_get_legacy_sigalg:
.LFB894:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	jne	.L432
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L433
	movq	$0, -8(%rbp)
	jmp	.L434
.L438:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_idx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L457
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L436
	movq	-8(%rbp), %rax
	movl	%eax, -44(%rbp)
	jmp	.L437
.L457:
	nop
.L436:
	addq	$1, -8(%rbp)
.L434:
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L438
.L437:
	cmpl	$4, -44(%rbp)
	jne	.L439
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	cmpl	$32, %eax
	je	.L439
	movl	$6, -12(%rbp)
	jmp	.L440
.L443:
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L441
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	nop
	jmp	.L432
.L441:
	subl	$1, -12(%rbp)
.L440:
	cmpl	$3, -12(%rbp)
	jg	.L443
	jmp	.L432
.L439:
	cmpl	$5, -44(%rbp)
	jne	.L432
	movl	$6, -16(%rbp)
	jmp	.L445
.L447:
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L446
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L432
.L446:
	subl	$1, -16(%rbp)
.L445:
	cmpl	$4, -16(%rbp)
	jg	.L447
	jmp	.L432
.L433:
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movl	%eax, -44(%rbp)
.L432:
	cmpl	$0, -44(%rbp)
	js	.L448
	cmpl	$8, -44(%rbp)
	jle	.L449
.L448:
	movl	$0, %eax
	jmp	.L450
.L449:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L451
	cmpl	$0, -44(%rbp)
	je	.L452
.L451:
	movl	-44(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	tls_default_sigalg(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L453
	movl	$0, %eax
	jmp	.L450
.L453:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_lookup_md@PLT
	testl	%eax, %eax
	jne	.L454
	movl	$0, %eax
	jmp	.L450
.L454:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$327691, %esi
	movq	%rax, %rdi
	call	tls12_sigalg_allowed
	testl	%eax, %eax
	jne	.L455
	movl	$0, %eax
	jmp	.L450
.L455:
	movq	-32(%rbp), %rax
	jmp	.L450
.L452:
	leaq	legacy_rsa_sigalg(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$327691, %esi
	movq	%rax, %rdi
	call	tls12_sigalg_allowed
	testl	%eax, %eax
	jne	.L456
	movl	$0, %eax
	jmp	.L450
.L456:
	leaq	legacy_rsa_sigalg(%rip), %rax
.L450:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE894:
	.size	tls1_get_legacy_sigalg, .-tls1_get_legacy_sigalg
	.globl	tls1_set_peer_legacy_sigalg
	.type	tls1_set_peer_legacy_sigalg, @function
tls1_set_peer_legacy_sigalg:
.LFB895:
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
	movq	8(%rax), %rdx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	testq	%rax, %rax
	jne	.L459
	movl	$0, %eax
	jmp	.L462
.L459:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_get_legacy_sigalg
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L461
	movl	$0, %eax
	jmp	.L462
.L461:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 912(%rax)
	movl	$1, %eax
.L462:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE895:
	.size	tls1_set_peer_legacy_sigalg, .-tls1_set_peer_legacy_sigalg
	.globl	tls12_get_psigalgs
	.type	tls12_get_psigalgs, @function
tls12_get_psigalgs:
.LFB896:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	cmpl	$196608, %eax
	je	.L464
	cmpl	$196608, %eax
	ja	.L465
	cmpl	$65536, %eax
	je	.L466
	cmpl	$131072, %eax
	je	.L467
	jmp	.L465
.L464:
	movq	-24(%rbp), %rax
	leaq	suiteb_sigalgs(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$2, %eax
	jmp	.L468
.L466:
	movq	-24(%rbp), %rax
	leaq	suiteb_sigalgs(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L468
.L467:
	leaq	2+suiteb_sigalgs(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L468
.L465:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L469
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L469
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	88(%rax), %rax
	jmp	.L468
.L469:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L470
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	72(%rax), %rax
	jmp	.L468
.L470:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	1592(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	1576(%rax), %rax
.L468:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE896:
	.size	tls12_get_psigalgs, .-tls12_get_psigalgs
	.globl	tls_check_sigalg_curve
	.type	tls_check_sigalg_curve, @function
tls_check_sigalg_curve:
.LFB897:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L472
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L473
.L472:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	1592(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	1576(%rax), %rax
	movq	%rax, -16(%rbp)
.L473:
	movq	$0, -24(%rbp)
	jmp	.L474
.L478:
	movq	-24(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L479
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$408, %eax
	jne	.L476
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L476
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L476
	movl	$1, %eax
	jmp	.L477
.L479:
	nop
.L476:
	addq	$1, -24(%rbp)
.L474:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L478
	movl	$0, %eax
.L477:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE897:
	.size	tls_check_sigalg_curve, .-tls_check_sigalg_curve
	.type	sigalg_security_bits, @function
sigalg_security_bits:
.LFB898:
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
	movl	$0, -4(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_lookup_md@PLT
	testl	%eax, %eax
	jne	.L481
	movl	$0, %eax
	jmp	.L489
.L481:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L483
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	sall	$2, %eax
	movl	%eax, -4(%rbp)
	cmpl	$64, -8(%rbp)
	jne	.L484
	movl	$64, -4(%rbp)
	jmp	.L485
.L484:
	cmpl	$114, -8(%rbp)
	jne	.L486
	movl	$67, -4(%rbp)
	jmp	.L485
.L486:
	cmpl	$4, -8(%rbp)
	jne	.L485
	movl	$39, -4(%rbp)
	jmp	.L485
.L483:
	movq	-32(%rbp), %rax
	movzwl	8(%rax), %eax
	cmpw	$2055, %ax
	jne	.L487
	movl	$128, -4(%rbp)
	jmp	.L485
.L487:
	movq	-32(%rbp), %rax
	movzwl	8(%rax), %eax
	cmpw	$2056, %ax
	jne	.L485
	movl	$224, -4(%rbp)
.L485:
	cmpl	$0, -4(%rbp)
	jne	.L488
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$8, %eax
	jle	.L488
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	leal	-8(%rax), %edx
	movq	-24(%rbp), %rax
	movq	1632(%rax), %rax
	cmpl	%eax, %edx
	jg	.L488
	movq	-24(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	subq	$864, %rax
	addq	%rcx, %rax
	movl	80(%rax), %eax
	movl	%eax, -4(%rbp)
.L488:
	movl	-4(%rbp), %eax
.L489:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE898:
	.size	sigalg_security_bits, .-sigalg_security_bits
	.globl	tls12_check_peer_sigalg
	.type	tls12_check_peer_sigalg, @function
tls12_check_peer_sigalg:
.LFB899:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, %eax
	movq	%rdx, -120(%rbp)
	movw	%ax, -108(%rbp)
	movq	$0, -72(%rbp)
	movl	$-1, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, -28(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L491
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L491
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L491
	cmpl	$116, -28(%rbp)
	jne	.L492
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1888, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$370, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L492:
	cmpl	$6, -28(%rbp)
	jne	.L491
	movl	$912, -28(%rbp)
.L491:
	movzwl	-108(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -40(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L494
	cmpq	$0, -40(%rbp)
	je	.L494
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -28(%rbp)
.L494:
	cmpl	$-1, -28(%rbp)
	jne	.L495
	movl	$-1, %eax
	jmp	.L522
.L495:
	cmpq	$0, -40(%rbp)
	je	.L496
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L497
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L497
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L497
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$64, %eax
	je	.L496
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$675, %eax
	je	.L496
.L497:
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L498
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$912, %eax
	jne	.L496
	cmpl	$6, -28(%rbp)
	je	.L498
.L496:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1913, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$370, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L498:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rbx
	cmpl	$912, -28(%rbp)
	jne	.L499
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	jmp	.L500
.L499:
	movl	-28(%rbp), %eax
.L500:
	leaq	-88(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	ssl_cert_lookup_by_nid@PLT
	testl	%eax, %eax
	je	.L501
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movq	-88(%rbp), %rdx
	cmpl	%edx, %eax
	je	.L502
.L501:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1921, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$370, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L502:
	cmpl	$408, -28(%rbp)
	jne	.L503
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls1_check_pkey_comp
	testl	%eax, %eax
	jne	.L504
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1929, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$162, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L504:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L505
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L505
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L506
.L505:
	movq	-104(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L507
.L506:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_EC_curve_nid@PLT
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L507
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	%eax, -44(%rbp)
	je	.L507
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1939, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$378, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L507:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L508
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L508
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L509
.L508:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	tls1_get_group_id
	movzwl	%ax, %ecx
	movq	-104(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls1_check_group_id@PLT
	testl	%eax, %eax
	jne	.L510
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1946, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$378, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L510:
	movq	-104(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L509
	cmpw	$1027, -108(%rbp)
	je	.L509
	cmpw	$1283, -108(%rbp)
	je	.L509
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1953, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$370, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L503:
	movq	-104(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L509
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1960, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$370, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L509:
	leaq	-64(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls12_get_psigalgs@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L511
.L514:
	movq	-64(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, -108(%rbp)
	je	.L523
	addq	$1, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
.L511:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L514
	jmp	.L513
.L523:
	nop
.L513:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L515
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$64, %eax
	jne	.L516
	movq	-104(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196609, %eax
	testl	%eax, %eax
	je	.L515
.L516:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1973, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$370, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L515:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_lookup_md@PLT
	testl	%eax, %eax
	jne	.L517
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1977, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$368, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L517:
	movzwl	-108(%rbp), %eax
	shrw	$8, %ax
	movb	%al, -74(%rbp)
	movzwl	-108(%rbp), %eax
	movb	%al, -73(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sigalg_security_bits
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L518
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L519
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %ecx
	jmp	.L520
.L519:
	movl	$0, %ecx
.L520:
	leaq	-74(%rbp), %rsi
	movl	-32(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rsi, %r8
	movl	$327693, %esi
	movq	%rax, %rdi
	call	ssl_security@PLT
	testl	%eax, %eax
	jne	.L521
.L518:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1991, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$370, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L522
.L521:
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 912(%rax)
	movl	$1, %eax
.L522:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE899:
	.size	tls12_check_peer_sigalg, .-tls12_check_peer_sigalg
	.globl	SSL_get_peer_signature_type_nid
	.type	SSL_get_peer_signature_type_nid, @function
SSL_get_peer_signature_type_nid:
.LFB900:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L525
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L526
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L527
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L528
.L527:
	movq	$0, -8(%rbp)
	jmp	.L528
.L526:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L528
.L525:
	movq	$0, -8(%rbp)
.L528:
	cmpq	$0, -8(%rbp)
	jne	.L529
	movl	$0, %eax
	jmp	.L530
.L529:
	movq	-8(%rbp), %rax
	movq	912(%rax), %rax
	testq	%rax, %rax
	jne	.L531
	movl	$0, %eax
	jmp	.L530
.L531:
	movq	-8(%rbp), %rax
	movq	912(%rax), %rax
	movl	20(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L530:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE900:
	.size	SSL_get_peer_signature_type_nid, .-SSL_get_peer_signature_type_nid
	.globl	SSL_get_signature_type_nid
	.type	SSL_get_signature_type_nid, @function
SSL_get_signature_type_nid:
.LFB901:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L533
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L534
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L535
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L536
.L535:
	movq	$0, -8(%rbp)
	jmp	.L536
.L534:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L536
.L533:
	movq	$0, -8(%rbp)
.L536:
	cmpq	$0, -8(%rbp)
	jne	.L537
	movl	$0, %eax
	jmp	.L538
.L537:
	movq	-8(%rbp), %rax
	movq	864(%rax), %rax
	testq	%rax, %rax
	jne	.L539
	movl	$0, %eax
	jmp	.L538
.L539:
	movq	-8(%rbp), %rax
	movq	864(%rax), %rax
	movl	20(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L538:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE901:
	.size	SSL_get_signature_type_nid, .-SSL_get_signature_type_nid
	.globl	ssl_set_client_disabled
	.type	ssl_set_client_disabled, @function
ssl_set_client_disabled:
.LFB902:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 932(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 928(%rax)
	movq	-8(%rbp), %rax
	leaq	932(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$327694, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ssl_set_sig_mask@PLT
	movq	-8(%rbp), %rax
	leaq	940(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	936(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_get_min_max_version@PLT
	testl	%eax, %eax
	je	.L541
	movl	$0, %eax
	jmp	.L542
.L541:
	movq	-8(%rbp), %rax
	movq	2296(%rax), %rax
	testq	%rax, %rax
	jne	.L543
	movq	-8(%rbp), %rax
	movl	932(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 932(%rax)
	movq	-8(%rbp), %rax
	movl	928(%rax), %eax
	orl	$456, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 928(%rax)
.L543:
	movq	-8(%rbp), %rax
	movq	2992(%rax), %rax
	andl	$32, %eax
	testq	%rax, %rax
	jne	.L544
	movq	-8(%rbp), %rax
	movl	932(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 932(%rax)
	movq	-8(%rbp), %rax
	movl	928(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 928(%rax)
.L544:
	movl	$1, %eax
.L542:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE902:
	.size	ssl_set_client_disabled, .-ssl_set_client_disabled
	.globl	ssl_cipher_disabled
	.type	ssl_cipher_disabled, @function
ssl_cipher_disabled:
.LFB903:
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
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L546
	movq	-32(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L547
.L546:
	movq	-32(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -4(%rbp)
.L547:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L548
	movq	-32(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L549
.L548:
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -8(%rbp)
.L549:
	movq	-32(%rbp), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rax
	movl	928(%rax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L550
	movq	-32(%rbp), %rax
	movl	32(%rax), %edx
	movq	-24(%rbp), %rax
	movl	932(%rax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L551
.L550:
	movl	$1, %eax
	jmp	.L552
.L551:
	movq	-24(%rbp), %rax
	movl	940(%rax), %eax
	testl	%eax, %eax
	jne	.L553
	movl	$1, %eax
	jmp	.L552
.L553:
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L554
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_id@PLT
	subl	$50336513, %eax
	cmpl	$2, %eax
	jbe	.L559
	movl	$1, %eax
	jmp	.L552
.L559:
	nop
.L554:
	cmpl	$769, -4(%rbp)
	jne	.L556
	cmpl	$0, -40(%rbp)
	je	.L556
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L556
	movl	$768, -4(%rbp)
.L556:
	movq	-24(%rbp), %rax
	movl	940(%rax), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jg	.L557
	movq	-24(%rbp), %rax
	movl	936(%rax), %edx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jns	.L558
.L557:
	movl	$1, %eax
	jmp	.L552
.L558:
	movq	-32(%rbp), %rax
	movl	68(%rax), %edx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_security@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L552:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE903:
	.size	ssl_cipher_disabled, .-ssl_cipher_disabled
	.globl	tls_use_ticket
	.type	tls_use_ticket, @function
tls_use_ticket:
.LFB904:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$16384, %eax
	testq	%rax, %rax
	je	.L561
	movl	$0, %eax
	jmp	.L562
.L561:
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	ssl_security@PLT
.L562:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE904:
	.size	tls_use_ticket, .-tls_use_ticket
	.globl	tls1_set_server_sigalgs
	.type	tls1_set_server_sigalgs, @function
tls1_set_server_sigalgs:
.LFB905:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	5352(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 5352(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 5360(%rax)
	movq	-56(%rbp), %rax
	movq	920(%rax), %rax
	testq	%rax, %rax
	je	.L564
	movq	-56(%rbp), %rax
	movq	280(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	movq	920(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L565
.L564:
	movq	-56(%rbp), %rax
	movq	280(%rax), %rax
	salq	$2, %rax
	leaq	.LC2(%rip), %rcx
	movl	$2127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 920(%rax)
.L565:
	movq	-56(%rbp), %rax
	movq	920(%rax), %rax
	testq	%rax, %rax
	jne	.L566
	movl	$0, %eax
	jmp	.L567
.L566:
	movq	-56(%rbp), %rax
	movq	888(%rax), %rax
	testq	%rax, %rax
	jne	.L568
	movq	-56(%rbp), %rax
	movq	880(%rax), %rax
	testq	%rax, %rax
	jne	.L568
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls12_get_psigalgs@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L569
.L575:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_get_legacy_sigalg
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L578
	movq	$0, -16(%rbp)
	jmp	.L572
.L574:
	movq	-32(%rbp), %rax
	movzwl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L573
	movq	-56(%rbp), %rax
	movq	920(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$2, (%rax)
	jmp	.L571
.L573:
	addq	$1, -16(%rbp)
.L572:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L574
	jmp	.L571
.L578:
	nop
.L571:
	addq	$1, -8(%rbp)
.L569:
	movq	-56(%rbp), %rax
	movq	280(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L575
	movl	$1, %eax
	jmp	.L567
.L568:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tls1_process_sigalgs@PLT
	testl	%eax, %eax
	jne	.L576
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L567
.L576:
	movq	-56(%rbp), %rax
	movq	5352(%rax), %rax
	testq	%rax, %rax
	je	.L577
	movl	$1, %eax
	jmp	.L567
.L577:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$376, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
.L567:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE905:
	.size	tls1_set_server_sigalgs, .-tls1_set_server_sigalgs
	.globl	tls_get_ticket_from_client
	.type	tls_get_ticket_from_client, @function
tls_get_ticket_from_client:
.LFB906:
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
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, 2536(%rax)
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jle	.L580
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tls_use_ticket@PLT
	testl	%eax, %eax
	jne	.L581
.L580:
	movl	$2, %eax
	jmp	.L582
.L581:
	movq	-48(%rbp), %rax
	movq	648(%rax), %rax
	addq	$240, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L583
	movl	$2, %eax
	jmp	.L582
.L583:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %r12
	movq	-48(%rbp), %rax
	leaq	48(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rsi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	tls_decrypt_ticket@PLT
.L582:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE906:
	.size	tls_get_ticket_from_client, .-tls_get_ticket_from_client
	.section	.rodata
.LC50:
	.string	"AES-256-CBC"
.LC51:
	.string	"SHA256"
	.text
	.globl	tls_decrypt_ticket
	.type	tls_decrypt_ticket, @function
tls_decrypt_ticket:
.LFB907:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -248(%rbp)
	movq	%r9, -256(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-216(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.L585
	movl	$3, -32(%rbp)
	jmp	.L586
.L585:
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L587
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L587
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L588
.L587:
	movq	-216(%rbp), %rax
	movq	2632(%rax), %rax
	testq	%rax, %rax
	je	.L588
	movl	$4, -32(%rbp)
	jmp	.L586
.L588:
	cmpq	$31, -232(%rbp)
	ja	.L589
	movl	$4, -32(%rbp)
	jmp	.L586
.L589:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L590
	movl	$0, -32(%rbp)
	jmp	.L586
.L590:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L591
	movl	$0, -32(%rbp)
	jmp	.L586
.L591:
	movq	-72(%rbp), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	jne	.L592
	movq	-72(%rbp), %rax
	movq	584(%rax), %rax
	testq	%rax, %rax
	je	.L593
.L592:
	movq	-224(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	je	.L594
	movq	-72(%rbp), %rax
	movq	592(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_get0_EVP_MAC_CTX@PLT
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-216(%rbp), %rax
	movq	64(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%rbx
	movl	%eax, -52(%rbp)
	jmp	.L595
.L594:
	movq	-72(%rbp), %rax
	movq	584(%rax), %rax
	testq	%rax, %rax
	je	.L595
	movq	-72(%rbp), %rax
	movq	584(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_get0_HMAC_CTX@PLT
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-216(%rbp), %rax
	movq	64(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	*%rbx
	movl	%eax, -52(%rbp)
.L595:
	cmpl	$0, -52(%rbp)
	jns	.L596
	movl	$1, -32(%rbp)
	jmp	.L586
.L596:
	cmpl	$0, -52(%rbp)
	jne	.L597
	movl	$4, -32(%rbp)
	jmp	.L586
.L597:
	cmpl	$2, -52(%rbp)
	jne	.L634
	movl	$1, -28(%rbp)
	jmp	.L634
.L593:
	movq	$0, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	560(%rax), %rcx
	movq	-224(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L600
	movl	$4, -32(%rbp)
	jmp	.L586
.L600:
	movq	-80(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC50(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L601
	movq	-72(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC51(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	ssl_hmac_init@PLT
	testl	%eax, %eax
	jle	.L601
	movq	-224(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	576(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	jg	.L602
.L601:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movl	$1, -32(%rbp)
	jmp	.L586
.L602:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L599
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L599
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L599
	movl	$1, -28(%rbp)
	jmp	.L599
.L634:
	nop
.L599:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_size@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L603
	movl	$1, -32(%rbp)
	jmp	.L586
.L603:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jns	.L604
	movl	$1, -32(%rbp)
	jmp	.L586
.L604:
	movl	-108(%rbp), %eax
	addl	$16, %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-232(%rbp), %rax
	jb	.L605
	movl	$4, -32(%rbp)
	jmp	.L586
.L605:
	movq	-104(%rbp), %rax
	subq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_hmac_update@PLT
	testl	%eax, %eax
	jle	.L606
	leaq	-208(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$64, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ssl_hmac_final@PLT
	testl	%eax, %eax
	jg	.L607
.L606:
	movl	$1, -32(%rbp)
	jmp	.L586
.L607:
	movq	-224(%rbp), %rdx
	movq	-232(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-104(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L608
	movl	$4, -32(%rbp)
	jmp	.L586
.L608:
	movl	-108(%rbp), %eax
	cltq
	leaq	16(%rax), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movl	-108(%rbp), %eax
	addl	$16, %eax
	cltq
	subq	%rax, -232(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-232(%rbp), %rax
	movl	$2378, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L609
	movq	-232(%rbp), %rax
	movl	%eax, %edi
	movq	-136(%rbp), %rcx
	leaq	-140(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	jg	.L610
.L609:
	leaq	.LC2(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$2381, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, -32(%rbp)
	jmp	.L586
.L610:
	movl	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-144(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal@PLT
	testl	%eax, %eax
	jg	.L611
	leaq	.LC2(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$2386, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$4, -32(%rbp)
	jmp	.L586
.L611:
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-80(%rbp), %rax
	movq	1096(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movl	-140(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-136(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_SSL_SESSION_ex@PLT
	movq	%rax, -24(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, %ecx
	movq	-136(%rbp), %rax
	subq	-120(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -140(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$2395, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L612
	movl	-140(%rbp), %eax
	testl	%eax, %eax
	je	.L613
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	$0, -24(%rbp)
	movl	$4, -32(%rbp)
	jmp	.L586
.L613:
	cmpq	$0, -248(%rbp)
	je	.L614
	movq	-24(%rbp), %rax
	leaq	600(%rax), %rcx
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 592(%rax)
.L614:
	cmpl	$0, -28(%rbp)
	je	.L615
	movl	$6, -32(%rbp)
	jmp	.L586
.L615:
	movl	$5, -32(%rbp)
	jmp	.L586
.L612:
	call	ERR_clear_error@PLT
	movl	$4, -32(%rbp)
.L586:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_free@PLT
	movq	-216(%rbp), %rax
	movq	2800(%rax), %rax
	movq	1032(%rax), %rax
	testq	%rax, %rax
	je	.L617
	cmpl	$3, -32(%rbp)
	je	.L618
	cmpl	$4, -32(%rbp)
	je	.L618
	cmpl	$5, -32(%rbp)
	je	.L618
	cmpl	$6, -32(%rbp)
	jne	.L617
.L618:
	movq	-232(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpq	$16, -64(%rbp)
	jbe	.L619
	movq	$16, -64(%rbp)
.L619:
	movq	-216(%rbp), %rax
	movq	2800(%rax), %rax
	movq	1032(%rax), %r10
	movq	-216(%rbp), %rax
	movq	2800(%rax), %rax
	movq	1040(%rax), %r8
	movq	-216(%rbp), %rax
	movl	-32(%rbp), %edi
	movq	-64(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -124(%rbp)
	cmpl	$4, -124(%rbp)
	jg	.L620
	cmpl	$3, -124(%rbp)
	jge	.L621
	cmpl	$2, -124(%rbp)
	je	.L622
	cmpl	$2, -124(%rbp)
	jg	.L620
	cmpl	$0, -124(%rbp)
	je	.L623
	cmpl	$1, -124(%rbp)
	je	.L624
	jmp	.L620
.L623:
	movl	$1, -32(%rbp)
	jmp	.L617
.L624:
	movl	$2, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L617
.L622:
	cmpl	$3, -32(%rbp)
	je	.L625
	cmpl	$4, -32(%rbp)
	je	.L625
	movl	$4, -32(%rbp)
.L625:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L617
.L621:
	cmpl	$5, -32(%rbp)
	je	.L626
	cmpl	$6, -32(%rbp)
	je	.L626
	movl	$1, -32(%rbp)
	jmp	.L617
.L626:
	cmpl	$3, -124(%rbp)
	jne	.L628
	movl	$5, -32(%rbp)
	jmp	.L617
.L628:
	movl	$6, -32(%rbp)
	jmp	.L617
.L620:
	movl	$1, -32(%rbp)
.L617:
	movq	-216(%rbp), %rax
	movq	2632(%rax), %rax
	testq	%rax, %rax
	je	.L629
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L630
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L630
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L630
.L629:
	cmpl	$4, -32(%rbp)
	jg	.L631
	cmpl	$3, -32(%rbp)
	jge	.L632
	jmp	.L630
.L631:
	cmpl	$6, -32(%rbp)
	jne	.L630
.L632:
	movq	-216(%rbp), %rax
	movl	$1, 2536(%rax)
.L630:
	movq	-256(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE907:
	.size	tls_decrypt_ticket, .-tls_decrypt_ticket
	.type	tls12_sigalg_allowed, @function
tls12_sigalg_allowed:
.LFB908:
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
	cmpq	$0, -56(%rbp)
	je	.L636
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L637
.L636:
	movl	$0, %eax
	jmp	.L654
.L637:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L639
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L639
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L639
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$116, %eax
	jne	.L639
	movl	$0, %eax
	jmp	.L654
.L639:
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L640
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L640
	movq	-40(%rbp), %rax
	movl	936(%rax), %eax
	cmpl	$771, %eax
	jle	.L640
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$116, %eax
	je	.L641
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L641
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L641
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$10, %eax
	jne	.L640
.L641:
	movl	$0, %eax
	jmp	.L654
.L640:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_is_disabled@PLT
	testl	%eax, %eax
	je	.L642
	movl	$0, %eax
	jmp	.L654
.L642:
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$979, %eax
	je	.L643
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$980, %eax
	je	.L643
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$811, %eax
	jne	.L644
.L643:
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L645
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L645
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L645
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L645
	movl	$0, %eax
	jmp	.L654
.L645:
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L644
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L644
	movq	-40(%rbp), %rax
	movl	940(%rax), %eax
	cmpl	$771, %eax
	jle	.L644
	movq	-40(%rbp), %rax
	movl	936(%rax), %eax
	cmpl	$771, %eax
	jle	.L646
	movl	$0, %eax
	jmp	.L654
.L646:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L647
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	jmp	.L648
.L647:
	movl	$0, -8(%rbp)
.L648:
	movl	$0, -4(%rbp)
	jmp	.L649
.L653:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$65537, %edx
	movq	%rax, %rdi
	call	ssl_cipher_disabled@PLT
	testl	%eax, %eax
	jne	.L655
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	andl	$528, %eax
	testl	%eax, %eax
	jne	.L656
	jmp	.L651
.L655:
	nop
.L651:
	addl	$1, -4(%rbp)
.L649:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L653
	jmp	.L652
.L656:
	nop
.L652:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L644
	movl	$0, %eax
	jmp	.L654
.L644:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sigalg_security_bits
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	shrw	$8, %ax
	movb	%al, -30(%rbp)
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	movb	%al, -29(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %ecx
	leaq	-30(%rbp), %rdi
	movl	-28(%rbp), %edx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_security@PLT
.L654:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE908:
	.size	tls12_sigalg_allowed, .-tls12_sigalg_allowed
	.globl	ssl_set_sig_mask
	.type	ssl_set_sig_mask, @function
ssl_set_sig_mask:
.LFB909:
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
	movl	$11, -12(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls12_get_psigalgs@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L658
.L662:
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L663
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_idx@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L664
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	andl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L660
	movq	-32(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls12_sigalg_allowed
	testl	%eax, %eax
	je	.L660
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	notl	%eax
	andl	%eax, -12(%rbp)
	jmp	.L660
.L663:
	nop
	jmp	.L660
.L664:
	nop
.L660:
	addq	$1, -8(%rbp)
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
.L658:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L662
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE909:
	.size	ssl_set_sig_mask, .-ssl_set_sig_mask
	.globl	tls12_copy_sigalgs
	.type	tls12_copy_sigalgs, @function
tls12_copy_sigalgs:
.LFB910:
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
	movq	%rcx, -64(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L666
.L673:
	movq	-56(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L675
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$327691, %esi
	movq	%rax, %rdi
	call	tls12_sigalg_allowed
	testl	%eax, %eax
	je	.L675
	movq	-56(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L670
	movl	$0, %eax
	jmp	.L671
.L670:
	cmpl	$0, -12(%rbp)
	jne	.L669
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L672
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L672
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L672
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$6, %eax
	je	.L669
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$64, %eax
	je	.L669
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$675, %eax
	je	.L669
.L672:
	movl	$1, -12(%rbp)
	jmp	.L669
.L675:
	nop
.L669:
	addq	$1, -8(%rbp)
	addq	$2, -56(%rbp)
.L666:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L673
	cmpl	$0, -12(%rbp)
	jne	.L674
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2632, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L674:
	movl	-12(%rbp), %eax
.L671:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE910:
	.size	tls12_copy_sigalgs, .-tls12_copy_sigalgs
	.type	tls12_shared_sigalgs, @function
tls12_shared_sigalgs:
.LFB911:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L677
.L685:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L687
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$327692, %esi
	movq	%rax, %rdi
	call	tls12_sigalg_allowed
	testl	%eax, %eax
	je	.L687
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L681
.L684:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L682
	addq	$1, -40(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L688
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L688
.L682:
	addq	$1, -32(%rbp)
	addq	$2, -16(%rbp)
.L681:
	movq	-32(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L684
	jmp	.L680
.L687:
	nop
	jmp	.L680
.L688:
	nop
.L680:
	addq	$1, -24(%rbp)
	addq	$2, -8(%rbp)
.L677:
	movq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L685
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE911:
	.size	tls12_shared_sigalgs, .-tls12_shared_sigalgs
	.type	tls1_set_shared_sigalgs, @function
tls1_set_shared_sigalgs:
.LFB912:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	$0, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	5352(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2673, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	movq	$0, 5352(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 5360(%rax)
	movq	-88(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L690
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L690
	cmpl	$0, -68(%rbp)
	jne	.L690
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L691
.L690:
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L692
	cmpl	$0, -68(%rbp)
	jne	.L692
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L691
.L692:
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls12_get_psigalgs@PLT
	movq	%rax, -40(%rbp)
.L691:
	movq	-88(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$4194304, %eax
	testq	%rax, %rax
	jne	.L693
	cmpl	$0, -68(%rbp)
	je	.L694
.L693:
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	880(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	896(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L695
.L694:
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	880(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	896(%rax), %rax
	movq	%rax, -24(%rbp)
.L695:
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls12_shared_sigalgs
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L696
	movq	-48(%rbp), %rax
	salq	$3, %rax
	leaq	.LC2(%rip), %rcx
	movl	$2698, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L697
	movl	$0, %eax
	jmp	.L700
.L697:
	movq	-32(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls12_shared_sigalgs
	movq	%rax, -48(%rbp)
	jmp	.L699
.L696:
	movq	$0, -56(%rbp)
.L699:
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 5352(%rax)
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 5360(%rax)
	movl	$1, %eax
.L700:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE912:
	.size	tls1_set_shared_sigalgs, .-tls1_set_shared_sigalgs
	.globl	tls1_save_u16
	.type	tls1_save_u16, @function
tls1_save_u16:
.LFB913:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L702
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L703
.L702:
	movl	$0, %eax
	jmp	.L710
.L703:
	shrq	-16(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC2(%rip), %rcx
	movl	$2723, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L705
	movl	$0, %eax
	jmp	.L710
.L705:
	movq	$0, -8(%rbp)
	jmp	.L706
.L708:
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movw	%dx, (%rax)
	addq	$1, -8(%rbp)
.L706:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L707
	leaq	-28(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L708
.L707:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L709
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2729, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L710
.L709:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$2733, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L710:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE913:
	.size	tls1_save_u16, .-tls1_save_u16
	.globl	tls1_save_sigalgs
	.type	tls1_save_sigalgs, @function
tls1_save_sigalgs:
.LFB914:
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
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L712
	movl	$1, %eax
	jmp	.L713
.L712:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	testq	%rax, %rax
	jne	.L714
	movl	$0, %eax
	jmp	.L713
.L714:
	cmpl	$0, -20(%rbp)
	je	.L715
	movq	-8(%rbp), %rax
	leaq	904(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	888(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_save_u16@PLT
	jmp	.L713
.L715:
	movq	-8(%rbp), %rax
	leaq	896(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	880(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_save_u16@PLT
.L713:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE914:
	.size	tls1_save_sigalgs, .-tls1_save_sigalgs
	.globl	tls1_process_sigalgs
	.type	tls1_process_sigalgs, @function
tls1_process_sigalgs:
.LFB915:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	920(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tls1_set_shared_sigalgs
	testl	%eax, %eax
	jne	.L717
	movl	$0, %eax
	jmp	.L718
.L717:
	movq	$0, -8(%rbp)
	jmp	.L719
.L720:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addq	$1, -8(%rbp)
.L719:
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L720
	movq	$0, -8(%rbp)
	jmp	.L721
.L724:
	movq	-40(%rbp), %rax
	movq	5352(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L722
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L722
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L722
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$6, %eax
	je	.L725
.L722:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L723
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_is_disabled@PLT
	testl	%eax, %eax
	jne	.L723
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$258, (%rax)
	jmp	.L723
.L725:
	nop
.L723:
	addq	$1, -8(%rbp)
.L721:
	movq	-40(%rbp), %rax
	movq	5360(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L724
	movl	$1, %eax
.L718:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE915:
	.size	tls1_process_sigalgs, .-tls1_process_sigalgs
	.globl	SSL_get_sigalgs
	.type	SSL_get_sigalgs, @function
SSL_get_sigalgs:
.LFB916:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L727
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L728
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L729
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L730
.L729:
	movq	$0, -8(%rbp)
	jmp	.L730
.L728:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L730
.L727:
	movq	$0, -8(%rbp)
.L730:
	cmpq	$0, -8(%rbp)
	jne	.L731
	movl	$0, %eax
	jmp	.L732
.L731:
	movq	-8(%rbp), %rax
	movq	880(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	896(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L733
	cmpq	$2147483647, -24(%rbp)
	jbe	.L734
.L733:
	movl	$0, %eax
	jmp	.L732
.L734:
	cmpl	$0, -44(%rbp)
	js	.L735
	movq	-24(%rbp), %rax
	cmpl	%eax, -44(%rbp)
	jl	.L736
	movl	$0, %eax
	jmp	.L732
.L736:
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rax, -16(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L737
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	shrw	$8, %ax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movb	%dl, (%rax)
.L737:
	cmpq	$0, -80(%rbp)
	je	.L738
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L738:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -32(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L739
	cmpq	$0, -32(%rbp)
	je	.L740
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	jmp	.L741
.L740:
	movl	$0, %eax
.L741:
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx)
.L739:
	cmpq	$0, -64(%rbp)
	je	.L742
	cmpq	$0, -32(%rbp)
	je	.L743
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	jmp	.L744
.L743:
	movl	$0, %eax
.L744:
	movq	-64(%rbp), %rdx
	movl	%eax, (%rdx)
.L742:
	cmpq	$0, -72(%rbp)
	je	.L735
	cmpq	$0, -32(%rbp)
	je	.L745
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	jmp	.L746
.L745:
	movl	$0, %eax
.L746:
	movq	-72(%rbp), %rdx
	movl	%eax, (%rdx)
.L735:
	movq	-24(%rbp), %rax
.L732:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE916:
	.size	SSL_get_sigalgs, .-SSL_get_sigalgs
	.globl	SSL_get_shared_sigalgs
	.type	SSL_get_shared_sigalgs, @function
SSL_get_shared_sigalgs:
.LFB917:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L748
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L749
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L750
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L751
.L750:
	movq	$0, -8(%rbp)
	jmp	.L751
.L749:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L751
.L748:
	movq	$0, -8(%rbp)
.L751:
	cmpq	$0, -8(%rbp)
	jne	.L752
	movl	$0, %eax
	jmp	.L753
.L752:
	movq	-8(%rbp), %rax
	movq	5352(%rax), %rax
	testq	%rax, %rax
	je	.L754
	cmpl	$0, -28(%rbp)
	js	.L754
	movq	-8(%rbp), %rax
	movq	5360(%rax), %rax
	cmpl	%eax, -28(%rbp)
	jge	.L754
	movq	-8(%rbp), %rax
	movq	5360(%rax), %rax
	cmpq	$2147483647, %rax
	jbe	.L755
.L754:
	movl	$0, %eax
	jmp	.L753
.L755:
	movq	-8(%rbp), %rax
	movq	5352(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L756
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L756:
	cmpq	$0, -40(%rbp)
	je	.L757
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L757:
	cmpq	$0, -56(%rbp)
	je	.L758
	movq	-16(%rbp), %rax
	movl	28(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L758:
	cmpq	$0, -64(%rbp)
	je	.L759
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movb	%dl, (%rax)
.L759:
	cmpq	$0, 16(%rbp)
	je	.L760
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %eax
	shrw	$8, %ax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movb	%dl, (%rax)
.L760:
	movq	-8(%rbp), %rax
	movq	5360(%rax), %rax
.L753:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE917:
	.size	SSL_get_shared_sigalgs, .-SSL_get_shared_sigalgs
	.section	.rodata
.LC52:
	.string	"RSA"
.LC53:
	.string	"RSA-PSS"
.LC54:
	.string	"PSS"
.LC55:
	.string	"DSA"
.LC56:
	.string	"ECDSA"
	.text
	.type	get_sigorhash, @function
get_sigorhash:
.LFB918:
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
	leaq	.LC52(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L762
	movq	-8(%rbp), %rax
	movl	$6, (%rax)
	jmp	.L768
.L762:
	leaq	.LC53(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L764
	leaq	.LC54(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L765
.L764:
	movq	-8(%rbp), %rax
	movl	$912, (%rax)
	jmp	.L768
.L765:
	leaq	.LC55(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L766
	movq	-8(%rbp), %rax
	movl	$116, (%rax)
	jmp	.L768
.L766:
	leaq	.LC56(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L767
	movq	-8(%rbp), %rax
	movl	$408, (%rax)
	jmp	.L768
.L767:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L768
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
.L768:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE918:
	.size	get_sigorhash, .-get_sigorhash
	.type	sig_cb, @function
sig_cb:
.LFB919:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L770
	movl	$0, %eax
	jmp	.L796
.L770:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L772
	movl	$1, -20(%rbp)
	addq	$1, -104(%rbp)
	subl	$1, -108(%rbp)
.L772:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$62, %rax
	jne	.L773
	movl	$0, %eax
	jmp	.L796
.L773:
	cmpl	$39, -108(%rbp)
	jle	.L774
	movl	$0, %eax
	jmp	.L796
.L774:
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-108(%rbp), %eax
	cltq
	movb	$0, -80(%rbp,%rax)
	leaq	-80(%rbp), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L775
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L776
	movq	$0, -8(%rbp)
	jmp	.L777
.L779:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	1624(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L778
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	1624(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L778
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	1624(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	(%rcx,%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	movzwl	8(%rsi), %ecx
	movq	-32(%rbp), %rdx
	movw	%cx, 8(%rdx,%rax,2)
	jmp	.L776
.L778:
	addq	$1, -8(%rbp)
.L777:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L779
.L776:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L780
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L781
.L780:
	movq	$0, -8(%rbp)
	leaq	sigalg_lookup_tbl(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L782
.L785:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L783
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L783
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-16(%rbp), %rdx
	movzwl	8(%rdx), %ecx
	movq	-32(%rbp), %rdx
	movw	%cx, 8(%rdx,%rax,2)
	jmp	.L784
.L783:
	addq	$1, -8(%rbp)
	addq	$40, -16(%rbp)
.L782:
	cmpq	$30, -8(%rbp)
	jbe	.L785
.L784:
	cmpq	$31, -8(%rbp)
	jne	.L781
	movl	-20(%rbp), %eax
	jmp	.L796
.L775:
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L786
	movl	$0, %eax
	jmp	.L796
.L786:
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-84(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_sigorhash
	movq	-40(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-84(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_sigorhash
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	je	.L787
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jne	.L788
.L787:
	movl	-20(%rbp), %eax
	jmp	.L796
.L788:
	movq	$0, -8(%rbp)
	leaq	sigalg_lookup_tbl(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L789
.L792:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movl	-88(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L790
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L790
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-16(%rbp), %rdx
	movzwl	8(%rdx), %ecx
	movq	-32(%rbp), %rdx
	movw	%cx, 8(%rdx,%rax,2)
	jmp	.L791
.L790:
	addq	$1, -8(%rbp)
	addq	$40, -16(%rbp)
.L789:
	cmpq	$30, -8(%rbp)
	jbe	.L792
.L791:
	cmpq	$31, -8(%rbp)
	jne	.L781
	movl	-20(%rbp), %eax
	jmp	.L796
.L781:
	movq	$0, -8(%rbp)
	jmp	.L793
.L795:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzwl	8(%rax,%rdx,2), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rcx
	movq	-32(%rbp), %rax
	movzwl	8(%rax,%rcx,2), %eax
	cmpw	%ax, %dx
	jne	.L794
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L796
.L794:
	addq	$1, -8(%rbp)
.L793:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L795
	movl	$1, %eax
.L796:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE919:
	.size	sig_cb, .-sig_cb
	.section	.rodata
	.align 8
.LC57:
	.string	"No valid signature algorithms in '%s'"
	.text
	.globl	tls1_set_sigalgs_list
	.type	tls1_set_sigalgs_list, @function
tls1_set_sigalgs_list:
.LFB920:
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
	movl	%ecx, -172(%rbp)
	movq	$0, -144(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L798
	movq	-152(%rbp), %rax
	movq	%rax, -8(%rbp)
.L798:
	leaq	-144(%rbp), %rcx
	leaq	sig_cb(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$58, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
	testl	%eax, %eax
	jne	.L799
	movl	$0, %eax
	jmp	.L803
.L799:
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	jne	.L801
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2989, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	leaq	.LC57(%rip), %rdx
	movq	%rax, %rcx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L803
.L801:
	cmpq	$0, -160(%rbp)
	jne	.L802
	movl	$1, %eax
	jmp	.L803
.L802:
	movq	-144(%rbp), %rdx
	movl	-172(%rbp), %ecx
	leaq	-144(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	tls1_set_raw_sigalgs@PLT
.L803:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE920:
	.size	tls1_set_sigalgs_list, .-tls1_set_sigalgs_list
	.globl	tls1_set_raw_sigalgs
	.type	tls1_set_raw_sigalgs, @function
tls1_set_raw_sigalgs:
.LFB921:
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
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC2(%rip), %rcx
	movl	$3003, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L805
	movl	$0, %eax
	jmp	.L806
.L805:
	movq	-40(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	cmpl	$0, -44(%rbp)
	je	.L807
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3008, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 88(%rax)
	jmp	.L808
.L807:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3012, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 72(%rax)
.L808:
	movl	$1, %eax
.L806:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE921:
	.size	tls1_set_raw_sigalgs, .-tls1_set_raw_sigalgs
	.globl	tls1_set_sigalgs
	.type	tls1_set_sigalgs, @function
tls1_set_sigalgs:
.LFB922:
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
	movq	-72(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L810
	movl	$0, %eax
	jmp	.L811
.L810:
	movq	-72(%rbp), %rax
	shrq	%rax
	addq	%rax, %rax
	leaq	.LC2(%rip), %rcx
	movl	$3027, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L812
	movl	$0, %eax
	jmp	.L811
.L812:
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L813
.L820:
	movq	-64(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-64(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	$0, -24(%rbp)
	leaq	sigalg_lookup_tbl(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L814
.L817:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L815
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jne	.L815
	movq	-8(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movw	%dx, (%rax)
	jmp	.L816
.L815:
	addq	$1, -24(%rbp)
	addq	$40, -32(%rbp)
.L814:
	cmpq	$30, -24(%rbp)
	jbe	.L817
.L816:
	cmpq	$31, -24(%rbp)
	je	.L824
	addq	$2, -16(%rbp)
.L813:
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L820
	cmpl	$0, -76(%rbp)
	je	.L821
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-72(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L822
.L821:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$3052, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-72(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 72(%rax)
.L822:
	movl	$1, %eax
	jmp	.L811
.L824:
	nop
.L819:
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$3060, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L811:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE922:
	.size	tls1_set_sigalgs, .-tls1_set_sigalgs
	.type	tls1_check_sig_alg, @function
tls1_check_sig_alg:
.LFB923:
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
	movl	$0, -4(%rbp)
	cmpl	$-1, -68(%rbp)
	jne	.L826
	movl	$1, %eax
	jmp	.L827
.L826:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_signature_nid@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L828
	movl	-36(%rbp), %eax
	cmpl	-68(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L827
.L828:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L829
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L829
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L829
	movq	-56(%rbp), %rax
	movq	888(%rax), %rax
	testq	%rax, %rax
	je	.L829
	movq	-56(%rbp), %rax
	movq	904(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L830
.L829:
	movq	-56(%rbp), %rax
	movq	5360(%rax), %rax
	movq	%rax, -32(%rbp)
.L830:
	movq	$0, -16(%rbp)
	jmp	.L831
.L835:
	cmpl	$0, -4(%rbp)
	je	.L832
	movq	-56(%rbp), %rax
	movq	888(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -24(%rbp)
	jmp	.L833
.L832:
	movq	-56(%rbp), %rax
	movq	5352(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L833:
	cmpq	$0, -24(%rbp)
	je	.L834
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L834
	movl	$1, %eax
	jmp	.L827
.L834:
	addq	$1, -16(%rbp)
.L831:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L835
	movl	$0, %eax
.L827:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE923:
	.size	tls1_check_sig_alg, .-tls1_check_sig_alg
	.type	ssl_check_ca_name, @function
ssl_check_ca_name:
.LFB924:
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
	call	X509_get_issuer_name@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L837
.L840:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L838
	movl	$1, %eax
	jmp	.L839
.L838:
	addl	$1, -4(%rbp)
.L837:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L840
	movl	$0, %eax
.L839:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE924:
	.size	ssl_check_ca_name, .-ssl_check_ca_name
	.globl	tls1_check_chain
	.type	tls1_check_chain, @function
tls1_check_chain:
.LFB925:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	%r8d, -180(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	movl	%eax, -92(%rbp)
	cmpl	$-1, -180(%rbp)
	je	.L842
	cmpl	$-2, -180(%rbp)
	jne	.L843
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movl	%eax, -180(%rbp)
	jmp	.L844
.L843:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rcx
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.L844:
	movq	-152(%rbp), %rax
	movq	920(%rax), %rax
	movl	-180(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-88(%rbp), %rax
	movl	28(%rax), %eax
	andl	$196609, %eax
	movl	%eax, -16(%rbp)
	movl	-180(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls12_rpk_and_privkey
	testl	%eax, %eax
	je	.L845
	leaq	.LC26(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L846
	movq	-168(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls1_check_pkey_comp
	testl	%eax, %eax
	jne	.L846
	movl	$0, %eax
	jmp	.L847
.L846:
	movl	$4096, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$4096, (%rax)
	movl	-8(%rbp), %eax
	jmp	.L847
.L845:
	cmpq	$0, -160(%rbp)
	je	.L918
	cmpq	$0, -168(%rbp)
	jne	.L849
	jmp	.L918
.L842:
	cmpq	$0, -160(%rbp)
	je	.L851
	cmpq	$0, -168(%rbp)
	jne	.L852
.L851:
	movl	$0, %eax
	jmp	.L847
.L852:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-136(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	testq	%rax, %rax
	jne	.L854
	movl	$0, %eax
	jmp	.L847
.L854:
	movq	-136(%rbp), %rax
	movl	%eax, -180(%rbp)
	movq	-152(%rbp), %rax
	movq	920(%rax), %rax
	movl	-180(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movl	28(%rax), %eax
	andl	$196609, %eax
	testl	%eax, %eax
	je	.L855
	movl	$1776, -12(%rbp)
	jmp	.L856
.L855:
	movl	$80, -12(%rbp)
.L856:
	movl	$1, -16(%rbp)
.L849:
	cmpl	$0, -92(%rbp)
	je	.L857
	cmpl	$0, -12(%rbp)
	je	.L858
	orl	$2048, -12(%rbp)
.L858:
	movl	-92(%rbp), %ecx
	movq	-176(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_chain_check_suiteb@PLT
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jne	.L859
	orl	$2048, -8(%rbp)
	jmp	.L857
.L859:
	cmpl	$0, -12(%rbp)
	je	.L919
.L857:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L860
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$770, %eax
	jle	.L860
	cmpl	$0, -16(%rbp)
	je	.L860
	movl	$0, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	888(%rax), %rax
	testq	%rax, %rax
	jne	.L861
	movq	-152(%rbp), %rax
	movq	880(%rax), %rax
	testq	%rax, %rax
	je	.L862
.L861:
	movl	$0, -36(%rbp)
	jmp	.L863
.L862:
	cmpl	$6, -180(%rbp)
	je	.L864
	cmpl	$6, -180(%rbp)
	jg	.L865
	cmpl	$5, -180(%rbp)
	je	.L866
	cmpl	$5, -180(%rbp)
	jg	.L865
	cmpl	$4, -180(%rbp)
	je	.L867
	cmpl	$4, -180(%rbp)
	jg	.L865
	cmpl	$3, -180(%rbp)
	je	.L868
	cmpl	$3, -180(%rbp)
	jg	.L865
	cmpl	$0, -180(%rbp)
	je	.L869
	cmpl	$2, -180(%rbp)
	je	.L870
	jmp	.L865
.L869:
	movl	$6, -40(%rbp)
	movl	$65, -36(%rbp)
	jmp	.L863
.L870:
	movl	$116, -40(%rbp)
	movl	$113, -36(%rbp)
	jmp	.L863
.L868:
	movl	$408, -40(%rbp)
	movl	$416, -36(%rbp)
	jmp	.L863
.L867:
	movl	$811, -40(%rbp)
	movl	$807, -36(%rbp)
	jmp	.L863
.L866:
	movl	$979, -40(%rbp)
	movl	$985, -36(%rbp)
	jmp	.L863
.L864:
	movl	$980, -40(%rbp)
	movl	$986, -36(%rbp)
	jmp	.L863
.L865:
	movl	$-1, -36(%rbp)
	nop
.L863:
	cmpl	$0, -36(%rbp)
	jle	.L871
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L871
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L872
.L875:
	movq	-56(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L873
	movq	-104(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$64, %eax
	jne	.L873
	movq	-104(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -40(%rbp)
	je	.L920
.L873:
	addq	$1, -48(%rbp)
	addq	$2, -56(%rbp)
.L872:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L875
	jmp	.L874
.L920:
	nop
.L874:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L871
	cmpl	$0, -12(%rbp)
	je	.L921
	jmp	.L877
.L871:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L878
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L878
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L878
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_sig_alg
	testq	%rax, %rax
	je	.L880
	orl	$16, -8(%rbp)
	jmp	.L880
.L878:
	movl	-36(%rbp), %edx
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_check_sig_alg
	testl	%eax, %eax
	jne	.L881
	cmpl	$0, -12(%rbp)
	jne	.L880
	jmp	.L850
.L881:
	orl	$16, -8(%rbp)
.L880:
	orl	$32, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L882
.L886:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rcx
	movl	-36(%rbp), %edx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_check_sig_alg
	testl	%eax, %eax
	jne	.L883
	cmpl	$0, -12(%rbp)
	je	.L922
	andl	$-33, -8(%rbp)
	nop
	jmp	.L877
.L883:
	addl	$1, -4(%rbp)
.L882:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L886
	jmp	.L877
.L860:
	cmpl	$0, -12(%rbp)
	je	.L923
	orl	$48, -8(%rbp)
	jmp	.L877
.L923:
	nop
.L877:
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_check_cert_param
	testl	%eax, %eax
	je	.L887
	orl	$64, -8(%rbp)
	jmp	.L888
.L887:
	cmpl	$0, -12(%rbp)
	je	.L924
.L888:
	movq	-152(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L889
	orl	$128, -8(%rbp)
	jmp	.L890
.L889:
	cmpl	$0, -16(%rbp)
	je	.L890
	orl	$128, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L891
.L894:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	-152(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_check_cert_param
	testl	%eax, %eax
	jne	.L892
	cmpl	$0, -12(%rbp)
	je	.L925
	andl	$-129, -8(%rbp)
	jmp	.L890
.L892:
	addl	$1, -4(%rbp)
.L891:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L894
.L890:
	movq	-152(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L895
	cmpl	$0, -16(%rbp)
	je	.L895
	movl	$0, -60(%rbp)
	leaq	.LC52(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L896
	movl	$1, -60(%rbp)
	jmp	.L897
.L896:
	leaq	.LC55(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L898
	movl	$2, -60(%rbp)
	jmp	.L897
.L898:
	leaq	.LC26(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L897
	movl	$64, -60(%rbp)
.L897:
	cmpl	$0, -60(%rbp)
	je	.L899
	movq	-152(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L900
.L903:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -60(%rbp)
	jne	.L901
	orl	$1024, -8(%rbp)
	jmp	.L902
.L901:
	addq	$1, -80(%rbp)
	addq	$1, -72(%rbp)
.L900:
	movq	-152(%rbp), %rax
	movq	736(%rax), %rax
	cmpq	%rax, -80(%rbp)
	jb	.L903
.L902:
	movl	-8(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L904
	cmpl	$0, -12(%rbp)
	jne	.L904
	jmp	.L850
.L899:
	orl	$1024, -8(%rbp)
.L904:
	movq	-152(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L905
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L905
	movq	-160(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_check_ca_name
	testl	%eax, %eax
	je	.L906
.L905:
	orl	$512, -8(%rbp)
	jmp	.L907
.L906:
	movl	$0, -4(%rbp)
	jmp	.L908
.L910:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_check_ca_name
	testl	%eax, %eax
	je	.L909
	orl	$512, -8(%rbp)
	jmp	.L907
.L909:
	addl	$1, -4(%rbp)
.L908:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L910
.L907:
	cmpl	$0, -12(%rbp)
	jne	.L926
	movl	-8(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L926
	jmp	.L850
.L895:
	orl	$1536, -8(%rbp)
	jmp	.L912
.L926:
	nop
.L912:
	cmpl	$0, -12(%rbp)
	je	.L913
	movl	-8(%rbp), %eax
	andl	-12(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L927
.L913:
	orl	$1, -8(%rbp)
	jmp	.L850
.L918:
	nop
	jmp	.L850
.L919:
	nop
	jmp	.L850
.L921:
	nop
	jmp	.L850
.L922:
	nop
	jmp	.L850
.L924:
	nop
	jmp	.L850
.L925:
	nop
	jmp	.L850
.L927:
	nop
.L850:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L914
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$770, %eax
	jle	.L914
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	andl	$258, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -8(%rbp)
	jmp	.L915
.L914:
	orl	$258, -8(%rbp)
.L915:
	cmpl	$0, -12(%rbp)
	jne	.L916
	movl	-8(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L917
	movl	-8(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L916
.L917:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	andl	$258, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L847
.L916:
	movl	-8(%rbp), %eax
.L847:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE925:
	.size	tls1_check_chain, .-tls1_check_chain
	.globl	tls1_set_cert_validity
	.type	tls1_set_cert_validity, @function
tls1_set_cert_validity:
.LFB926:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	movq	-8(%rbp), %rax
	movl	$3, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	movq	-8(%rbp), %rax
	movl	$4, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	movq	-8(%rbp), %rax
	movl	$5, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	movq	-8(%rbp), %rax
	movl	$6, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	movq	-8(%rbp), %rax
	movl	$7, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	movq	-8(%rbp), %rax
	movl	$8, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE926:
	.size	tls1_set_cert_validity, .-tls1_set_cert_validity
	.globl	SSL_check_chain
	.type	SSL_check_chain, @function
SSL_check_chain:
.LFB927:
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
	cmpq	$0, -24(%rbp)
	je	.L930
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L931
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L932
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L933
.L932:
	movq	$0, -8(%rbp)
	jmp	.L933
.L931:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L933
.L930:
	movq	$0, -8(%rbp)
.L933:
	cmpq	$0, -8(%rbp)
	jne	.L934
	movl	$0, %eax
	jmp	.L935
.L934:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$-1, %r8d
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
.L935:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE927:
	.size	SSL_check_chain, .-SSL_check_chain
	.section	.rodata
.LC58:
	.string	"DH"
.LC59:
	.string	"p"
.LC60:
	.string	"g"
	.text
	.globl	ssl_get_auto_dh
	.type	ssl_get_auto_dh, @function
ssl_get_auto_dh:
.LFB928:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$80, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	je	.L937
	movq	-72(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$20, %eax
	testl	%eax, %eax
	je	.L938
	movq	-72(%rbp), %rax
	movq	704(%rax), %rax
	movl	68(%rax), %eax
	cmpl	$256, %eax
	jne	.L939
	movl	$128, -12(%rbp)
	jmp	.L937
.L939:
	movl	$80, -12(%rbp)
	jmp	.L937
.L938:
	movq	-72(%rbp), %rax
	movq	872(%rax), %rax
	testq	%rax, %rax
	jne	.L940
	movl	$0, %eax
	jmp	.L955
.L940:
	movq	-72(%rbp), %rax
	movq	872(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, -12(%rbp)
.L937:
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_get_security_level_bits@PLT
	movl	%eax, -52(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L942
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
.L942:
	cmpl	$191, -12(%rbp)
	jle	.L943
	movl	$0, %edi
	call	BN_get_rfc3526_prime_8192@PLT
	movq	%rax, -8(%rbp)
	jmp	.L944
.L943:
	cmpl	$151, -12(%rbp)
	jle	.L945
	movl	$0, %edi
	call	BN_get_rfc3526_prime_4096@PLT
	movq	%rax, -8(%rbp)
	jmp	.L944
.L945:
	cmpl	$127, -12(%rbp)
	jle	.L946
	movl	$0, %edi
	call	BN_get_rfc3526_prime_3072@PLT
	movq	%rax, -8(%rbp)
	jmp	.L944
.L946:
	cmpl	$111, -12(%rbp)
	jle	.L947
	movl	$0, %edi
	call	BN_get_rfc3526_prime_2048@PLT
	movq	%rax, -8(%rbp)
	jmp	.L944
.L947:
	movl	$0, %edi
	call	BN_get_rfc2409_prime_1024@PLT
	movq	%rax, -8(%rbp)
.L944:
	cmpq	$0, -8(%rbp)
	je	.L956
	movq	-48(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC58(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L957
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	cmpl	$1, %eax
	jne	.L957
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L958
	movq	-8(%rbp), %rdx
	leaq	.LC59(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L958
	leaq	.LC60(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_uint@PLT
	testl	%eax, %eax
	je	.L958
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L959
	movq	-40(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$132, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	cmpl	$1, %eax
	jmp	.L949
.L956:
	nop
	jmp	.L949
.L957:
	nop
	jmp	.L949
.L958:
	nop
	jmp	.L949
.L959:
	nop
.L949:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
.L955:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE928:
	.size	ssl_get_auto_dh, .-ssl_get_auto_dh
	.type	ssl_security_cert_key, @function
ssl_security_cert_key:
.LFB929:
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
	movl	%ecx, -44(%rbp)
	movl	$-1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L961
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, -4(%rbp)
.L961:
	cmpq	$0, -24(%rbp)
	je	.L962
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %edx
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_security@PLT
	jmp	.L963
.L962:
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %edx
	movl	-44(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_ctx_security@PLT
.L963:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE929:
	.size	ssl_security_cert_key, .-ssl_security_cert_key
	.type	ssl_security_cert_sig, @function
ssl_security_cert_sig:
.LFB930:
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
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_extension_flags@PLT
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L965
	movl	$1, %eax
	jmp	.L970
.L965:
	leaq	-4(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	X509_get_signature_info@PLT
	testl	%eax, %eax
	jne	.L967
	movl	$-1, -4(%rbp)
.L967:
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jne	.L968
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
.L968:
	cmpq	$0, -24(%rbp)
	je	.L969
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_security@PLT
	jmp	.L970
.L969:
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_ctx_security@PLT
.L970:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE930:
	.size	ssl_security_cert_sig, .-ssl_security_cert_sig
	.globl	ssl_security_cert
	.type	ssl_security_cert, @function
ssl_security_cert:
.LFB931:
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
	cmpl	$0, -28(%rbp)
	je	.L972
	movl	$4096, -28(%rbp)
.L972:
	cmpl	$0, -32(%rbp)
	je	.L973
	movl	-28(%rbp), %eax
	orl	$393232, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_security_cert_key
	testl	%eax, %eax
	jne	.L974
	movl	$399, %eax
	jmp	.L975
.L973:
	movl	-28(%rbp), %eax
	orl	$393233, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_security_cert_key
	testl	%eax, %eax
	jne	.L974
	movl	$397, %eax
	jmp	.L975
.L974:
	movl	-28(%rbp), %eax
	orl	$393234, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_security_cert_sig
	testl	%eax, %eax
	jne	.L976
	movl	$398, %eax
	jmp	.L975
.L976:
	movl	$1, %eax
.L975:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE931:
	.size	ssl_security_cert, .-ssl_security_cert
	.globl	ssl_security_cert_chain
	.type	ssl_security_cert_chain, @function
ssl_security_cert_chain:
.LFB932:
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
	movl	%ecx, -44(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L978
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L979
	movl	$786691, %eax
	jmp	.L980
.L979:
	movl	$1, -4(%rbp)
	jmp	.L981
.L978:
	movl	$0, -4(%rbp)
.L981:
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_security_cert@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L982
	movl	-12(%rbp), %eax
	jmp	.L980
.L982:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L983
.L985:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_security_cert@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L984
	movl	-12(%rbp), %eax
	jmp	.L980
.L984:
	addl	$1, -8(%rbp)
.L983:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L985
	movl	$1, %eax
.L980:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE932:
	.size	ssl_security_cert_chain, .-ssl_security_cert_chain
	.type	tls12_get_cert_sigalg_idx, @function
tls12_get_cert_sigalg_idx:
.LFB933:
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
	movl	24(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_idx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L987
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L987
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	jne	.L988
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L988
.L987:
	movl	$-1, %eax
	jmp	.L989
.L988:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls12_rpk_and_privkey
	testl	%eax, %eax
	je	.L990
	movq	-24(%rbp), %rax
	movq	920(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L991
	movl	-4(%rbp), %eax
	jmp	.L989
.L991:
	movl	$-1, %eax
	jmp	.L989
.L990:
	movq	-24(%rbp), %rax
	movq	920(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L993
	movl	-4(%rbp), %eax
	jmp	.L989
.L993:
	movl	$-1, %eax
.L989:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE933:
	.size	tls12_get_cert_sigalg_idx, .-tls12_get_cert_sigalg_idx
	.type	check_cert_usable, @function
check_cert_usable:
.LFB934:
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
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L996
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -16(%rbp)
.L996:
	movq	-24(%rbp), %rax
	movq	1096(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_digestsign_supports_digest@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L997
	movl	$0, %eax
	jmp	.L1005
.L997:
	movq	-56(%rbp), %rax
	movq	888(%rax), %rax
	testq	%rax, %rax
	je	.L999
	leaq	-48(%rbp), %rdx
	leaq	-44(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_get_signature_info@PLT
	testl	%eax, %eax
	jne	.L1000
	movl	$0, %eax
	jmp	.L1005
.L1000:
	movq	$0, -8(%rbp)
	jmp	.L1001
.L1004:
	movq	-56(%rbp), %rax
	movq	888(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_lookup_sigalg
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L1006
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L1003
	movq	-40(%rbp), %rax
	movl	20(%rax), %edx
	movl	-48(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L1003
	movl	$1, %eax
	jmp	.L1005
.L1006:
	nop
.L1003:
	addq	$1, -8(%rbp)
.L1001:
	movq	-56(%rbp), %rax
	movq	904(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L1004
	movl	$0, %eax
	jmp	.L1005
.L999:
	movl	$1, %eax
.L1005:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE934:
	.size	check_cert_usable, .-check_cert_usable
	.type	has_usable_cert, @function
has_usable_cert:
.LFB935:
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
	cmpl	$-1, -20(%rbp)
	jne	.L1008
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -20(%rbp)
.L1008:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_has_cert
	testl	%eax, %eax
	jne	.L1009
	movl	$0, %eax
	jmp	.L1010
.L1009:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_cert_usable
.L1010:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE935:
	.size	has_usable_cert, .-has_usable_cert
	.type	is_cert_usable, @function
is_cert_usable:
.LFB936:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-8(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	testq	%rax, %rax
	jne	.L1012
	movl	$0, %eax
	jmp	.L1015
.L1012:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L1014
	movl	$0, %eax
	jmp	.L1015
.L1014:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_cert_usable
.L1015:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE936:
	.size	is_cert_usable, .-is_cert_usable
	.type	find_sig_alg, @function
find_sig_alg:
.LFB937:
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
	movq	$0, -8(%rbp)
	movl	$-1, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L1017
.L1031:
	movq	-56(%rbp), %rax
	movq	5352(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$64, %eax
	je	.L1034
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$675, %eax
	je	.L1034
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$116, %eax
	je	.L1034
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$6, %eax
	je	.L1034
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_lookup_md@PLT
	testl	%eax, %eax
	je	.L1035
	cmpq	$0, -72(%rbp)
	jne	.L1022
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	has_usable_cert
	testl	%eax, %eax
	je	.L1036
.L1022:
	cmpq	$0, -72(%rbp)
	je	.L1024
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	is_cert_usable
	testl	%eax, %eax
	je	.L1036
.L1024:
	cmpq	$0, -72(%rbp)
	jne	.L1025
	movq	-56(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L1026
.L1025:
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
.L1026:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$408, %eax
	jne	.L1027
	cmpl	$-1, -20(%rbp)
	jne	.L1028
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_EC_curve_nid@PLT
	movl	%eax, -20(%rbp)
.L1028:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L1037
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	%eax, -20(%rbp)
	je	.L1037
	jmp	.L1020
.L1027:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$912, %eax
	jne	.L1037
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_pss_check_min_key_size
	testl	%eax, %eax
	jne	.L1037
	jmp	.L1020
.L1034:
	nop
	jmp	.L1020
.L1035:
	nop
	jmp	.L1020
.L1036:
	nop
.L1020:
	addq	$1, -16(%rbp)
.L1017:
	movq	-56(%rbp), %rax
	movq	5360(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L1031
	jmp	.L1030
.L1037:
	nop
.L1030:
	movq	-56(%rbp), %rax
	movq	5360(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L1032
	movl	$0, %eax
	jmp	.L1033
.L1032:
	movq	-8(%rbp), %rax
.L1033:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE937:
	.size	find_sig_alg, .-find_sig_alg
	.globl	tls_choose_sigalg
	.type	tls_choose_sigalg, @function
tls_choose_sigalg:
.LFB938:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movq	-88(%rbp), %rax
	movq	$0, 872(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 864(%rax)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1039
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L1039
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L1039
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	find_sig_alg
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1043
	cmpl	$0, -92(%rbp)
	jne	.L1041
	movl	$1, %eax
	jmp	.L1042
.L1041:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3769, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$118, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L1042
.L1039:
	movq	-88(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$171, %eax
	testl	%eax, %eax
	jne	.L1044
	movl	$1, %eax
	jmp	.L1042
.L1044:
	movq	-88(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L1045
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_has_cert
	testl	%eax, %eax
	jne	.L1045
	movl	$1, %eax
	jmp	.L1042
.L1045:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1046
	movq	-88(%rbp), %rax
	movq	880(%rax), %rax
	testq	%rax, %rax
	je	.L1047
	movl	$-1, -28(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L1048
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	addq	$120, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ssl_get_EC_curve_nid@PLT
	movl	%eax, -28(%rbp)
.L1048:
	movq	$0, -24(%rbp)
	jmp	.L1049
.L1056:
	movq	-88(%rbp), %rax
	movq	5352(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L1050
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls12_get_cert_sigalg_idx
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L1051
	jmp	.L1052
.L1050:
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.L1072
.L1051:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	has_usable_cert
	testl	%eax, %eax
	je	.L1073
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$912, %eax
	jne	.L1054
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_pss_check_min_key_size
	testl	%eax, %eax
	je	.L1074
.L1054:
	cmpl	$-1, -28(%rbp)
	je	.L1055
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L1055
	jmp	.L1052
.L1072:
	nop
	jmp	.L1052
.L1073:
	nop
	jmp	.L1052
.L1074:
	nop
.L1052:
	addq	$1, -24(%rbp)
.L1049:
	movq	-88(%rbp), %rax
	movq	5360(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L1056
.L1055:
	movq	-88(%rbp), %rax
	movq	5360(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L1057
	movq	-88(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$160, %eax
	testl	%eax, %eax
	je	.L1057
	movq	-88(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	tls1_get_legacy_sigalg
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1058
	cmpl	$0, -92(%rbp)
	jne	.L1059
	movl	$1, %eax
	jmp	.L1042
.L1059:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3833, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$118, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L1042
.L1058:
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -12(%rbp)
.L1057:
	movq	-88(%rbp), %rax
	movq	5360(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L1043
	cmpl	$0, -92(%rbp)
	jne	.L1060
	movl	$1, %eax
	jmp	.L1042
.L1060:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3845, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$118, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L1042
.L1047:
	movq	-88(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	tls1_get_legacy_sigalg
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1061
	cmpl	$0, -92(%rbp)
	jne	.L1062
	movl	$1, %eax
	jmp	.L1042
.L1062:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3859, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$118, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L1042
.L1061:
	leaq	-72(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls12_get_psigalgs@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L1064
.L1067:
	movq	-8(%rbp), %rax
	movzwl	8(%rax), %edx
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L1065
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	-8(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	has_usable_cert
	testl	%eax, %eax
	jne	.L1075
.L1065:
	addq	$1, -24(%rbp)
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
.L1064:
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L1067
	jmp	.L1066
.L1075:
	nop
.L1066:
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L1043
	cmpl	$0, -92(%rbp)
	jne	.L1069
	movl	$1, %eax
	jmp	.L1042
.L1069:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3874, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$370, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L1042
.L1046:
	movq	-88(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	tls1_get_legacy_sigalg
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1043
	cmpl	$0, -92(%rbp)
	jne	.L1070
	movl	$1, %eax
	jmp	.L1042
.L1070:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3883, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$118, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L1042
.L1043:
	cmpl	$-1, -12(%rbp)
	jne	.L1071
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -12(%rbp)
.L1071:
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 872(%rax)
	movq	-88(%rbp), %rax
	movq	2056(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	872(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 864(%rax)
	movl	$1, %eax
.L1042:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE938:
	.size	tls_choose_sigalg, .-tls_choose_sigalg
	.globl	SSL_CTX_set_tlsext_max_fragment_length
	.type	SSL_CTX_set_tlsext_max_fragment_length, @function
SSL_CTX_set_tlsext_max_fragment_length:
.LFB939:
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
	cmpb	$0, -12(%rbp)
	je	.L1077
	cmpb	$0, -12(%rbp)
	je	.L1078
	cmpb	$4, -12(%rbp)
	jbe	.L1077
.L1078:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3901, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$232, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1079
.L1077:
	movq	-8(%rbp), %rax
	movzbl	-12(%rbp), %edx
	movb	%dl, 620(%rax)
	movl	$1, %eax
.L1079:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE939:
	.size	SSL_CTX_set_tlsext_max_fragment_length, .-SSL_CTX_set_tlsext_max_fragment_length
	.globl	SSL_set_tlsext_max_fragment_length
	.type	SSL_set_tlsext_max_fragment_length, @function
SSL_set_tlsext_max_fragment_length:
.LFB940:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1081
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1082
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1083
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1084
.L1083:
	movq	$0, -8(%rbp)
	jmp	.L1084
.L1082:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1084
.L1081:
	movq	$0, -8(%rbp)
.L1084:
	cmpq	$0, -8(%rbp)
	je	.L1085
	cmpq	$0, -24(%rbp)
	je	.L1086
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1087
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1086
.L1087:
	cmpb	$0, -28(%rbp)
	je	.L1086
.L1085:
	movl	$0, %eax
	jmp	.L1088
.L1086:
	cmpb	$0, -28(%rbp)
	je	.L1089
	cmpb	$0, -28(%rbp)
	je	.L1090
	cmpb	$4, -28(%rbp)
	jbe	.L1089
.L1090:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3919, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$232, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1088
.L1089:
	movq	-8(%rbp), %rax
	movzbl	-28(%rbp), %edx
	movb	%dl, 2716(%rax)
	movl	$1, %eax
.L1088:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE940:
	.size	SSL_set_tlsext_max_fragment_length, .-SSL_set_tlsext_max_fragment_length
	.globl	SSL_SESSION_get_max_fragment_length
	.type	SSL_SESSION_get_max_fragment_length, @function
SSL_SESSION_get_max_fragment_length:
.LFB941:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	856(%rax), %eax
	cmpb	$-1, %al
	jne	.L1092
	movl	$0, %eax
	jmp	.L1093
.L1092:
	movq	-8(%rbp), %rax
	movzbl	856(%rax), %eax
.L1093:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE941:
	.size	SSL_SESSION_get_max_fragment_length, .-SSL_SESSION_get_max_fragment_length
	.section	.rodata
.LC61:
	.string	"HMAC"
	.text
	.globl	ssl_hmac_new
	.type	ssl_hmac_new, @function
ssl_hmac_new:
.LFB942:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$3939, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1095
	movl	$0, %eax
	jmp	.L1096
.L1095:
	movq	-24(%rbp), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	jne	.L1097
	movq	-24(%rbp), %rax
	movq	584(%rax), %rax
	testq	%rax, %rax
	je	.L1097
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_old_new@PLT
	testl	%eax, %eax
	je	.L1102
	movq	-16(%rbp), %rax
	jmp	.L1096
.L1097:
	movq	-24(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC61(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1103
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1103
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-16(%rbp), %rax
	jmp	.L1096
.L1102:
	nop
	jmp	.L1099
.L1103:
	nop
.L1099:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3960, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L1096:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE942:
	.size	ssl_hmac_new, .-ssl_hmac_new
	.globl	ssl_hmac_free
	.type	ssl_hmac_free, @function
ssl_hmac_free:
.LFB943:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1106
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_old_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3971, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L1106:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE943:
	.size	ssl_hmac_free, .-ssl_hmac_free
	.globl	ssl_hmac_get0_EVP_MAC_CTX
	.type	ssl_hmac_get0_EVP_MAC_CTX, @function
ssl_hmac_get0_EVP_MAC_CTX:
.LFB944:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE944:
	.size	ssl_hmac_get0_EVP_MAC_CTX, .-ssl_hmac_get0_EVP_MAC_CTX
	.section	.rodata
.LC62:
	.string	"digest"
	.text
	.globl	ssl_hmac_init
	.type	ssl_hmac_init, @function
ssl_hmac_init:
.LFB945:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1110
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC62(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	-112(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L1110
	movl	$1, %eax
	jmp	.L1113
.L1110:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1112
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_old_init@PLT
	jmp	.L1113
.L1112:
	movl	$0, %eax
.L1113:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE945:
	.size	ssl_hmac_init, .-ssl_hmac_init
	.globl	ssl_hmac_update
	.type	ssl_hmac_update, @function
ssl_hmac_update:
.LFB946:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1115
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	jmp	.L1116
.L1115:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1117
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_hmac_old_update@PLT
	jmp	.L1116
.L1117:
	movl	$0, %eax
.L1116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE946:
	.size	ssl_hmac_update, .-ssl_hmac_update
	.globl	ssl_hmac_final
	.type	ssl_hmac_final, @function
ssl_hmac_final:
.LFB947:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1119
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	jmp	.L1120
.L1119:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1121
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_hmac_old_final@PLT
	jmp	.L1120
.L1121:
	movl	$0, %eax
.L1120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE947:
	.size	ssl_hmac_final, .-ssl_hmac_final
	.globl	ssl_hmac_size
	.type	ssl_hmac_size, @function
ssl_hmac_size:
.LFB948:
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
	je	.L1123
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get_mac_size@PLT
	jmp	.L1124
.L1123:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1125
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_old_size@PLT
	jmp	.L1124
.L1125:
	movl	$0, %eax
.L1124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE948:
	.size	ssl_hmac_size, .-ssl_hmac_size
	.globl	ssl_get_EC_curve_nid
	.type	ssl_get_EC_curve_nid, @function
ssl_get_EC_curve_nid:
.LFB949:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	leaq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_get_group_name@PLT
	testl	%eax, %eax
	jle	.L1127
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	jmp	.L1129
.L1127:
	movl	$0, %eax
.L1129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE949:
	.size	ssl_get_EC_curve_nid, .-ssl_get_EC_curve_nid
	.globl	tls13_set_encoded_pub_key
	.type	tls13_set_encoded_pub_key, @function
tls13_set_encoded_pub_key:
.LFB950:
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
	leaq	.LC58(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L1131
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L1132
	movl	-4(%rbp), %eax
	cltq
	shrq	$3, %rax
	cmpq	%rax, -40(%rbp)
	je	.L1133
.L1132:
	movl	$0, %eax
	jmp	.L1134
.L1131:
	leaq	.LC26(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L1133
	cmpq	$2, -40(%rbp)
	jbe	.L1135
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	je	.L1133
.L1135:
	movl	$0, %eax
	jmp	.L1134
.L1133:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_encoded_public_key@PLT
.L1134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE950:
	.size	tls13_set_encoded_pub_key, .-tls13_set_encoded_pub_key
	.section	.rodata
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 20
__func__.10:
	.string	"add_provider_groups"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 21
__func__.9:
	.string	"add_provider_sigalgs"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 16
__func__.8:
	.string	"tls1_set_groups"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 21
__func__.7:
	.string	"tls1_set_groups_list"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 24
__func__.6:
	.string	"tls12_check_peer_sigalg"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 24
__func__.5:
	.string	"tls1_set_server_sigalgs"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"tls12_copy_sigalgs"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 22
__func__.3:
	.string	"tls1_set_sigalgs_list"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"tls_choose_sigalg"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 39
__func__.1:
	.string	"SSL_CTX_set_tlsext_max_fragment_length"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 35
__func__.0:
	.string	"SSL_set_tlsext_max_fragment_length"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
