	.file	"tasn_fre.c"
	.text
	.type	ossl_check_const_ASN1_VALUE_sk_type, @function
ossl_check_const_ASN1_VALUE_sk_type:
.LFB79:
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
.LFE79:
	.size	ossl_check_const_ASN1_VALUE_sk_type, .-ossl_check_const_ASN1_VALUE_sk_type
	.type	ossl_check_ASN1_VALUE_sk_type, @function
ossl_check_ASN1_VALUE_sk_type:
.LFB80:
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
.LFE80:
	.size	ossl_check_ASN1_VALUE_sk_type, .-ossl_check_ASN1_VALUE_sk_type
	.globl	ASN1_item_free
	.type	ASN1_item_free, @function
ASN1_item_free:
.LFB426:
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
	leaq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_item_embed_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	ASN1_item_free, .-ASN1_item_free
	.globl	ASN1_item_ex_free
	.type	ASN1_item_ex_free, @function
ASN1_item_ex_free:
.LFB427:
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
	call	ossl_asn1_item_embed_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	ASN1_item_ex_free, .-ASN1_item_ex_free
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/tasn_fre.c"
.LC1:
	.string	"assertion failed: embed == 0"
	.text
	.globl	ossl_asn1_item_embed_free
	.type	ossl_asn1_item_embed_free, @function
ossl_asn1_item_embed_free:
.LFB428:
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
	movq	$0, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L34
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L10
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L35
.L10:
	cmpq	$0, -32(%rbp)
	je	.L11
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L12
.L11:
	movq	$0, -16(%rbp)
.L12:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$6, %eax
	je	.L13
	cmpl	$6, %eax
	jg	.L7
	cmpl	$5, %eax
	je	.L14
	cmpl	$5, %eax
	jg	.L7
	cmpl	$4, %eax
	je	.L15
	cmpl	$4, %eax
	jg	.L7
	cmpl	$2, %eax
	je	.L16
	cmpl	$2, %eax
	jg	.L7
	testl	%eax, %eax
	je	.L17
	cmpl	$1, %eax
	je	.L13
	jmp	.L7
.L17:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_template_free@PLT
	jmp	.L7
.L18:
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_primitive_free@PLT
	jmp	.L7
.L14:
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_primitive_free@PLT
	jmp	.L7
.L16:
	cmpq	$0, -16(%rbp)
	je	.L20
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$2, %edi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$2, -20(%rbp)
	je	.L36
.L20:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_choice_selector@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L21
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L21
	movq	-80(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_field_ptr@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_template_free@PLT
.L21:
	cmpq	$0, -16(%rbp)
	je	.L22
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$3, %edi
	call	*%r8
.L22:
	cmpl	$0, -84(%rbp)
	jne	.L37
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$75, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L37
.L15:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L38
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L38
.L13:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_asn1_do_lock@PLT
	testl	%eax, %eax
	je	.L25
	cmpl	$0, -84(%rbp)
	je	.L26
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$90, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L26:
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L7
.L25:
	cmpq	$0, -16(%rbp)
	je	.L27
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$2, %edi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$2, -20(%rbp)
	je	.L39
.L27:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_enc_free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L28
.L31:
	subq	$40, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_do_adb@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L40
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_field_ptr@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_template_free@PLT
	jmp	.L30
.L40:
	nop
.L30:
	addl	$1, -20(%rbp)
.L28:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L31
	cmpq	$0, -16(%rbp)
	je	.L32
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$3, %edi
	call	*%r8
.L32:
	cmpl	$0, -84(%rbp)
	jne	.L41
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L41
.L34:
	nop
	jmp	.L7
.L35:
	nop
	jmp	.L7
.L36:
	nop
	jmp	.L7
.L37:
	nop
	jmp	.L7
.L38:
	nop
	jmp	.L7
.L39:
	nop
	jmp	.L7
.L41:
	nop
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	ossl_asn1_item_embed_free, .-ossl_asn1_item_embed_free
	.globl	ossl_asn1_template_free
	.type	ossl_asn1_template_free, @function
ossl_asn1_template_free:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	andl	$4096, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L43
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.L43:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	andl	$6, %eax
	testq	%rax, %rax
	je	.L44
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L45
.L46:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rcx
	movl	-8(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_item_embed_free@PLT
	addl	$1, -4(%rbp)
.L45:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L46
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L48
.L44:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rcx
	movl	-8(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_item_embed_free@PLT
.L48:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	ossl_asn1_template_free, .-ossl_asn1_template_free
	.globl	ossl_asn1_primitive_free
	.type	ossl_asn1_primitive_free, @function
ossl_asn1_primitive_free:
.LFB430:
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
	je	.L50
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L51
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L49
.L51:
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L49
.L50:
	cmpq	$0, -48(%rbp)
	jne	.L53
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	jmp	.L49
.L53:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L55
	movl	$-1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	jmp	.L49
.L55:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L54
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L64
.L54:
	cmpl	$6, -4(%rbp)
	je	.L56
	cmpl	$6, -4(%rbp)
	jg	.L57
	cmpl	$5, -4(%rbp)
	je	.L65
	cmpl	$5, -4(%rbp)
	jg	.L57
	cmpl	$-4, -4(%rbp)
	je	.L59
	cmpl	$1, -4(%rbp)
	je	.L60
	jmp	.L57
.L56:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	jmp	.L61
.L60:
	cmpq	$0, -48(%rbp)
	je	.L62
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L49
.L62:
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L49
.L59:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_primitive_free.localalias
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$204, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L61
.L57:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_embed_free@PLT
	jmp	.L61
.L65:
	nop
.L61:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L49
.L64:
	nop
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	ossl_asn1_primitive_free, .-ossl_asn1_primitive_free
	.set	ossl_asn1_primitive_free.localalias,ossl_asn1_primitive_free
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
