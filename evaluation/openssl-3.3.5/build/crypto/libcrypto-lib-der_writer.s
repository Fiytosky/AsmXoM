	.file	"der_writer.c"
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
	.type	int_start_context, @function
int_start_context:
.LFB199:
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
	jns	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	cmpl	$30, -12(%rbp)
	setle	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	int_start_context, .-int_start_context
	.type	int_end_context, @function
int_end_context:
.LFB200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L10
	movl	$1, %eax
	jmp	.L16
.L10:
	cmpl	$30, -28(%rbp)
	setle	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	jmp	.L16
.L12:
	orl	$160, -28(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L13
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L14
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L13
.L14:
	movl	$1, %eax
	jmp	.L16
.L13:
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	int_end_context, .-int_end_context
	.globl	ossl_DER_w_precompiled
	.type	ossl_DER_w_precompiled, @function
ossl_DER_w_precompiled:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_start_context
	testl	%eax, %eax
	je	.L18
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L18
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_end_context
	testl	%eax, %eax
	je	.L18
	movl	$1, %eax
	jmp	.L20
.L18:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	ossl_DER_w_precompiled, .-ossl_DER_w_precompiled
	.globl	ossl_DER_w_boolean
	.type	ossl_DER_w_boolean, @function
ossl_DER_w_boolean:
.LFB202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_start_context
	testl	%eax, %eax
	je	.L22
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	je	.L22
	cmpl	$0, -16(%rbp)
	je	.L23
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L22
.L23:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L22
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L22
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_end_context
	testl	%eax, %eax
	je	.L22
	movl	$1, %eax
	jmp	.L25
.L22:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	ossl_DER_w_boolean, .-ossl_DER_w_boolean
	.globl	ossl_DER_w_octet_string
	.type	ossl_DER_w_octet_string, @function
ossl_DER_w_octet_string:
.LFB203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_start_context
	testl	%eax, %eax
	je	.L27
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	je	.L27
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L27
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L27
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L27
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_end_context
	testl	%eax, %eax
	je	.L27
	movl	$1, %eax
	jmp	.L29
.L27:
	movl	$0, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	ossl_DER_w_octet_string, .-ossl_DER_w_octet_string
	.globl	ossl_DER_w_octet_string_uint32
	.type	ossl_DER_w_octet_string_uint32, @function
ossl_DER_w_octet_string_uint32:
.LFB204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -8(%rbp)
	jmp	.L31
.L32:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-32(%rbp), %edx
	movb	%dl, (%rax)
	shrl	$8, -32(%rbp)
.L31:
	cmpl	$0, -32(%rbp)
	jne	.L32
	leaq	-12(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	ossl_DER_w_octet_string@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	ossl_DER_w_octet_string_uint32, .-ossl_DER_w_octet_string_uint32
	.type	int_der_w_integer, @function
int_der_w_integer:
.LFB205:
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
	movl	$0, -4(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_start_context
	testl	%eax, %eax
	je	.L35
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-4(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L35
	movl	-4(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L36
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L35
.L36:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L35
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L35
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_end_context
	testl	%eax, %eax
	je	.L35
	movl	$1, %eax
	jmp	.L38
.L35:
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	int_der_w_integer, .-int_der_w_integer
	.type	int_put_bytes_uint32, @function
int_put_bytes_uint32:
.LFB206:
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L40
.L41:
	addq	$1, -16(%rbp)
	movl	-4(%rbp), %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	shrl	$8, -4(%rbp)
.L40:
	cmpl	$0, -4(%rbp)
	jne	.L41
	cmpq	$0, -16(%rbp)
	jne	.L42
	movq	$1, -16(%rbp)
.L42:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	int_put_bytes_uint32, .-int_put_bytes_uint32
	.globl	ossl_DER_w_uint32
	.type	ossl_DER_w_uint32, @function
ossl_DER_w_uint32:
.LFB207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	int_put_bytes_uint32(%rip), %rdi
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	int_der_w_integer
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	ossl_DER_w_uint32, .-ossl_DER_w_uint32
	.type	int_put_bytes_bn, @function
int_put_bytes_bn:
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
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	-8(%rbp), %rdx
	subq	$1, %rdx
	andq	$-8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	subq	$1, %rax
	andl	$7, %eax
	sall	$3, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L50
.L47:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L49
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
.L49:
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	int_put_bytes_bn, .-int_put_bytes_bn
	.globl	ossl_DER_w_bn
	.type	ossl_DER_w_bn, @function
ossl_DER_w_bn:
.LFB209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L52
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L53
.L52:
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L55
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_uint32@PLT
	jmp	.L54
.L55:
	movq	-24(%rbp), %rdx
	leaq	int_put_bytes_bn(%rip), %rdi
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	int_der_w_integer
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	ossl_DER_w_bn, .-ossl_DER_w_bn
	.globl	ossl_DER_w_null
	.type	ossl_DER_w_null, @function
ossl_DER_w_null:
.LFB210:
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
	call	int_start_context
	testl	%eax, %eax
	je	.L57
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	je	.L57
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L57
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L57
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_end_context
	testl	%eax, %eax
	je	.L57
	movl	$1, %eax
	jmp	.L59
.L57:
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	ossl_DER_w_null, .-ossl_DER_w_null
	.globl	ossl_DER_w_begin_sequence
	.type	ossl_DER_w_begin_sequence, @function
ossl_DER_w_begin_sequence:
.LFB211:
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
	call	int_start_context
	testl	%eax, %eax
	je	.L61
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet@PLT
	testl	%eax, %eax
	je	.L61
	movl	$1, %eax
	jmp	.L63
.L61:
	movl	$0, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	ossl_DER_w_begin_sequence, .-ossl_DER_w_begin_sequence
	.globl	ossl_DER_w_end_sequence
	.type	ossl_DER_w_end_sequence, @function
ossl_DER_w_end_sequence:
.LFB212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L65
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L65
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L66
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	jne	.L67
	jmp	.L65
.L66:
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movl	$48, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L65
.L67:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	int_end_context
	testl	%eax, %eax
	je	.L65
	movl	$1, %eax
	jmp	.L69
.L65:
	movl	$0, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	ossl_DER_w_end_sequence, .-ossl_DER_w_end_sequence
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
