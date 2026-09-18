	.file	"tasn_new.c"
	.text
	.globl	ASN1_item_new
	.type	ASN1_item_new, @function
ASN1_item_new:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_ex_new@PLT
	testl	%eax, %eax
	jle	.L2
	movq	-8(%rbp), %rax
	jmp	.L4
.L2:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	ASN1_item_new, .-ASN1_item_new
	.globl	ASN1_item_new_ex
	.type	ASN1_item_new_ex, @function
ASN1_item_new_ex:
.LFB465:
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
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	leaq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	asn1_item_embed_new
	testl	%eax, %eax
	jle	.L6
	movq	-8(%rbp), %rax
	jmp	.L8
.L6:
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	ASN1_item_new_ex, .-ASN1_item_new_ex
	.globl	ossl_asn1_item_ex_new_intern
	.type	ossl_asn1_item_ex_new_intern, @function
ossl_asn1_item_ex_new_intern:
.LFB466:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	asn1_item_embed_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	ossl_asn1_item_ex_new_intern, .-ossl_asn1_item_ex_new_intern
	.globl	ASN1_item_ex_new
	.type	ASN1_item_ex_new, @function
ASN1_item_ex_new:
.LFB467:
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
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	asn1_item_embed_new
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	ASN1_item_ex_new, .-ASN1_item_ex_new
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/tasn_new.c"
	.text
	.type	asn1_item_embed_new, @function
asn1_item_embed_new:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L14
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L15
.L14:
	movq	$0, -16(%rbp)
.L15:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$6, %eax
	je	.L16
	cmpl	$6, %eax
	jg	.L17
	cmpl	$5, %eax
	je	.L18
	cmpl	$5, %eax
	jg	.L17
	cmpl	$4, %eax
	je	.L19
	cmpl	$4, %eax
	jg	.L17
	cmpl	$2, %eax
	je	.L20
	cmpl	$2, %eax
	jg	.L17
	testl	%eax, %eax
	je	.L21
	cmpl	$1, %eax
	je	.L16
	jmp	.L17
.L19:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L48
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-40(%rbp), %rax
	movq	56(%rax), %r8
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L48
	jmp	.L24
.L23:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L48
	jmp	.L24
.L21:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-64(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	asn1_template_new
	testl	%eax, %eax
	jne	.L49
	jmp	.L24
.L25:
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_primitive_new
	testl	%eax, %eax
	jne	.L49
	jmp	.L24
.L18:
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_primitive_new
	testl	%eax, %eax
	jne	.L50
	jmp	.L24
.L20:
	cmpq	$0, -16(%rbp)
	je	.L28
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L51
	cmpl	$2, -20(%rbp)
	jne	.L28
	movl	$1, %eax
	jmp	.L31
.L28:
	cmpl	$0, -68(%rbp)
	je	.L32
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L33
.L32:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	movl	$0, %eax
	jmp	.L31
.L33:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_asn1_set_choice_selector@PLT
	cmpq	$0, -16(%rbp)
	je	.L52
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$1, %edi
	call	*%r8
	testl	%eax, %eax
	jne	.L52
	jmp	.L35
.L16:
	cmpq	$0, -16(%rbp)
	je	.L36
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L53
	cmpl	$2, -20(%rbp)
	jne	.L36
	movl	$1, %eax
	jmp	.L31
.L36:
	cmpl	$0, -68(%rbp)
	je	.L38
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L39
.L38:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$136, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movl	$0, %eax
	jmp	.L31
.L39:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_do_lock@PLT
	testl	%eax, %eax
	jns	.L40
	cmpl	$0, -68(%rbp)
	jne	.L54
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$143, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L54
.L40:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_enc_init@PLT
	movl	$0, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L42
.L45:
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_field_ptr@PLT
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	asn1_template_new
	testl	%eax, %eax
	je	.L55
	addq	$40, -8(%rbp)
	addl	$1, -20(%rbp)
.L42:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L45
	cmpq	$0, -16(%rbp)
	je	.L56
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$1, %edi
	call	*%r8
	testl	%eax, %eax
	je	.L57
	jmp	.L56
.L48:
	nop
	jmp	.L17
.L49:
	nop
	jmp	.L17
.L50:
	nop
	jmp	.L17
.L52:
	nop
	jmp	.L17
.L56:
	nop
.L17:
	movl	$1, %eax
	jmp	.L31
.L55:
	nop
.L44:
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_item_embed_free@PLT
	jmp	.L24
.L54:
	nop
.L24:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L31
.L57:
	nop
.L35:
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_item_embed_free@PLT
	jmp	.L30
.L51:
	nop
	jmp	.L30
.L53:
	nop
.L30:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	asn1_item_embed_new, .-asn1_item_embed_new
	.type	asn1_item_clear, @function
asn1_item_clear:
.LFB469:
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
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$6, %eax
	je	.L59
	cmpl	$6, %eax
	jg	.L68
	cmpl	$5, %eax
	je	.L61
	cmpl	$5, %eax
	jg	.L68
	cmpl	$4, %eax
	je	.L62
	cmpl	$4, %eax
	jg	.L68
	testl	%eax, %eax
	je	.L63
	testl	%eax, %eax
	js	.L68
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L68
	jmp	.L59
.L62:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L60
.L64:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L60
.L63:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_template_clear
	jmp	.L60
.L66:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_primitive_clear
	jmp	.L60
.L61:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_primitive_clear
	jmp	.L60
.L59:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
.L60:
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	asn1_item_clear, .-asn1_item_clear
	.type	asn1_template_new, @function
asn1_template_new:
.LFB470:
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
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	andl	$4096, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L70
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
.L70:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L71
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_template_clear
	movl	$1, %eax
	jmp	.L77
.L71:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	andl	$768, %eax
	testq	%rax, %rax
	je	.L73
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L77
.L73:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	andl	$6, %eax
	testq	%rax, %rax
	je	.L74
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$233, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L76
.L75:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L76
.L74:
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	asn1_item_embed_new
	movl	%eax, -4(%rbp)
.L76:
	movl	-4(%rbp), %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	asn1_template_new, .-asn1_template_new
	.type	asn1_template_clear, @function
asn1_template_clear:
.LFB471:
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
	movq	(%rax), %rax
	andl	$774, %eax
	testq	%rax, %rax
	je	.L79
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L81
.L79:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_item_clear
.L81:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	asn1_template_clear, .-asn1_template_clear
	.type	asn1_primitive_new, @function
asn1_primitive_new:
.LFB472:
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
	cmpq	$0, -48(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L86
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	$1, %eax
	jmp	.L84
.L86:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L84
.L85:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L87
	movl	$-1, -12(%rbp)
	jmp	.L88
.L87:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, -12(%rbp)
.L88:
	cmpl	$6, -12(%rbp)
	je	.L89
	cmpl	$6, -12(%rbp)
	jg	.L90
	cmpl	$5, -12(%rbp)
	je	.L91
	cmpl	$5, -12(%rbp)
	jg	.L90
	cmpl	$-4, -12(%rbp)
	je	.L92
	cmpl	$1, -12(%rbp)
	je	.L93
	jmp	.L90
.L89:
	movl	$0, %edi
	call	OBJ_nid2obj@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
	jmp	.L84
.L93:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L84
.L91:
	movq	-40(%rbp), %rax
	movq	$1, (%rax)
	movl	$1, %eax
	jmp	.L84
.L92:
	leaq	.LC0(%rip), %rax
	movl	$301, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L84
.L94:
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, (%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L95
.L90:
	cmpl	$0, -52(%rbp)
	je	.L96
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	$128, 16(%rax)
	jmp	.L97
.L96:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_type_new@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L97:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L100
	cmpq	$0, -8(%rbp)
	je	.L100
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	orq	$64, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
.L100:
	nop
.L95:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L99
	movl	$1, %eax
	jmp	.L84
.L99:
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	asn1_primitive_new, .-asn1_primitive_new
	.type	asn1_primitive_clear, @function
asn1_primitive_clear:
.LFB473:
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
	je	.L102
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L101
.L103:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L101
.L102:
	cmpq	$0, -32(%rbp)
	je	.L106
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L107
.L106:
	movl	$-1, -4(%rbp)
	jmp	.L108
.L107:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, -4(%rbp)
.L108:
	cmpl	$1, -4(%rbp)
	jne	.L109
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L101
.L109:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	asn1_primitive_clear, .-asn1_primitive_clear
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"asn1_item_embed_new"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"asn1_template_new"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
