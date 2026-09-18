	.file	"tasn_enc.c"
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
	.type	sk_const_ASN1_VALUE_num, @function
sk_const_ASN1_VALUE_num:
.LFB433:
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
.LFE433:
	.size	sk_const_ASN1_VALUE_num, .-sk_const_ASN1_VALUE_num
	.type	sk_const_ASN1_VALUE_value, @function
sk_const_ASN1_VALUE_value:
.LFB434:
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
.LFE434:
	.size	sk_const_ASN1_VALUE_value, .-sk_const_ASN1_VALUE_value
	.type	sk_const_ASN1_VALUE_set, @function
sk_const_ASN1_VALUE_set:
.LFB449:
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
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	sk_const_ASN1_VALUE_set, .-sk_const_ASN1_VALUE_set
	.globl	ASN1_item_ndef_i2d
	.type	ASN1_item_ndef_i2d, @function
ASN1_item_ndef_i2d:
.LFB508:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	asn1_item_flags_i2d
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	ASN1_item_ndef_i2d, .-ASN1_item_ndef_i2d
	.globl	ASN1_item_i2d
	.type	ASN1_item_i2d, @function
ASN1_item_i2d:
.LFB509:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	asn1_item_flags_i2d
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	ASN1_item_i2d, .-ASN1_item_i2d
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/tasn_enc.c"
	.text
	.type	asn1_item_flags_i2d, @function
asn1_item_flags_i2d:
.LFB510:
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
	movl	%ecx, -60(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L16
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L17
	movl	-4(%rbp), %eax
	jmp	.L20
.L17:
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L19
	movl	$-1, %eax
	jmp	.L20
.L19:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	jmp	.L20
.L16:
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	asn1_item_flags_i2d, .-asn1_item_flags_i2d
	.globl	ASN1_item_ex_i2d
	.type	ASN1_item_ex_i2d, @function
ASN1_item_ex_i2d:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -140(%rbp)
	movl	%r8d, -144(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -16(%rbp)
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L22
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	movl	$0, %eax
	jmp	.L56
.L22:
	cmpq	$0, -32(%rbp)
	je	.L24
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L25
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L24
.L25:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.L24:
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$6, %eax
	je	.L26
	cmpl	$6, %eax
	jg	.L27
	cmpl	$5, %eax
	je	.L28
	cmpl	$5, %eax
	jg	.L27
	cmpl	$4, %eax
	je	.L29
	cmpl	$4, %eax
	jg	.L27
	cmpl	$2, %eax
	je	.L30
	cmpl	$2, %eax
	jg	.L27
	testl	%eax, %eax
	je	.L31
	cmpl	$1, %eax
	je	.L32
	jmp	.L27
.L31:
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-136(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-144(%rbp), %edi
	movl	-140(%rbp), %ecx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	asn1_template_ex_i2d
	jmp	.L56
.L33:
	movl	-144(%rbp), %edi
	movl	-140(%rbp), %ecx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	asn1_i2d_ex_primitive
	jmp	.L56
.L28:
	cmpl	$-1, -140(%rbp)
	je	.L34
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$230, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L56
.L34:
	movl	-144(%rbp), %ecx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	asn1_i2d_ex_primitive
	jmp	.L56
.L30:
	cmpl	$-1, -140(%rbp)
	je	.L35
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$230, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L56
.L35:
	cmpq	$0, -24(%rbp)
	je	.L36
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$6, %edi
	call	*%r8
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L56
.L36:
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_choice_selector_const@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L37
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L37
	movq	-136(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_const_field_ptr@PLT
	movq	%rax, -56(%rbp)
	movl	-144(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	asn1_template_ex_i2d
	jmp	.L56
.L37:
	cmpq	$0, -24(%rbp)
	je	.L57
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$7, %edi
	call	*%r8
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L56
.L29:
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %r9
	movl	-144(%rbp), %edi
	movl	-140(%rbp), %ecx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%r9
	jmp	.L56
.L26:
	movl	-144(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L32
	movl	$2, -16(%rbp)
.L32:
	movq	-136(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rsi
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_asn1_enc_restore@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L40
	movl	$0, %eax
	jmp	.L56
.L40:
	cmpl	$0, -12(%rbp)
	jle	.L41
	movl	-104(%rbp), %eax
	jmp	.L56
.L41:
	movl	$0, -104(%rbp)
	cmpl	$-1, -140(%rbp)
	jne	.L42
	movl	$16, -140(%rbp)
	andl	$-193, -144(%rbp)
.L42:
	cmpq	$0, -24(%rbp)
	je	.L43
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$6, %edi
	call	*%r8
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L56
.L43:
	movl	$0, -12(%rbp)
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L44
.L48:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_do_adb@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L56
.L45:
	movq	-88(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_const_field_ptr@PLT
	movq	%rax, -96(%rbp)
	movl	-144(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	asn1_template_ex_i2d
	movl	%eax, -100(%rbp)
	cmpl	$-1, -100(%rbp)
	je	.L46
	movl	-104(%rbp), %eax
	movl	$2147483647, %edx
	subl	%eax, %edx
	cmpl	%edx, -100(%rbp)
	jle	.L47
.L46:
	movl	$-1, %eax
	jmp	.L56
.L47:
	movl	-104(%rbp), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	addq	$40, -8(%rbp)
	addl	$1, -12(%rbp)
.L44:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L48
	movl	-104(%rbp), %ecx
	movl	-140(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ASN1_object_size@PLT
	movl	%eax, -60(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L49
	cmpl	$-1, -60(%rbp)
	jne	.L50
.L49:
	movl	-60(%rbp), %eax
	jmp	.L56
.L50:
	movl	-104(%rbp), %edx
	movl	-144(%rbp), %edi
	movl	-140(%rbp), %ecx
	movl	-16(%rbp), %esi
	movq	-128(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
	movl	$0, -12(%rbp)
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L51
.L53:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_do_adb@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L56
.L52:
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_const_field_ptr@PLT
	movq	%rax, -80(%rbp)
	movl	-144(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	asn1_template_ex_i2d
	addq	$40, -8(%rbp)
	addl	$1, -12(%rbp)
.L51:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L53
	cmpl	$2, -16(%rbp)
	jne	.L54
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_put_eoc@PLT
.L54:
	cmpq	$0, -24(%rbp)
	je	.L55
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$7, %edi
	call	*%r8
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movl	-60(%rbp), %eax
	jmp	.L56
.L27:
	movl	$0, %eax
	jmp	.L56
.L57:
	nop
	movl	$0, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	ASN1_item_ex_i2d, .-ASN1_item_ex_i2d
	.type	asn1_template_ex_i2d, @function
asn1_template_ex_i2d:
.LFB512:
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
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movl	%r8d, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L59
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
.L59:
	movl	-56(%rbp), %eax
	andl	$24, %eax
	testl	%eax, %eax
	je	.L60
	cmpl	$-1, -124(%rbp)
	je	.L61
	movl	$-1, %eax
	jmp	.L92
.L61:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, -28(%rbp)
	movl	-56(%rbp), %eax
	andl	$192, %eax
	movl	%eax, -32(%rbp)
	jmp	.L63
.L60:
	cmpl	$-1, -124(%rbp)
	je	.L64
	movl	-124(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-128(%rbp), %eax
	andl	$192, %eax
	movl	%eax, -32(%rbp)
	jmp	.L63
.L64:
	movl	$-1, -28(%rbp)
	movl	$0, -32(%rbp)
.L63:
	andl	$-193, -128(%rbp)
	movl	-56(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L65
	movl	-128(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L65
	movl	$2, -36(%rbp)
	jmp	.L66
.L65:
	movl	$1, -36(%rbp)
.L66:
	movl	-56(%rbp), %eax
	andl	$6, %eax
	testl	%eax, %eax
	je	.L67
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movl	$0, %eax
	jmp	.L92
.L68:
	movl	-56(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L70
	movl	$1, -40(%rbp)
	movl	-56(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L71
	movl	$2, -40(%rbp)
	jmp	.L71
.L70:
	movl	$0, -40(%rbp)
.L71:
	cmpl	$-1, -28(%rbp)
	je	.L72
	movl	-56(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L72
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L73
.L72:
	movl	$0, -48(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L74
	movl	$17, -44(%rbp)
	jmp	.L73
.L74:
	movl	$16, -44(%rbp)
.L73:
	movl	$0, -52(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L75
.L79:
	movl	-20(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_value
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	movl	-128(%rbp), %ecx
	leaq	-96(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	je	.L76
	movl	$2147483647, %eax
	subl	-60(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L77
.L76:
	movl	$-1, %eax
	jmp	.L92
.L77:
	cmpl	$0, -60(%rbp)
	jne	.L78
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L92
.L78:
	movl	-60(%rbp), %eax
	addl	%eax, -52(%rbp)
	addl	$1, -20(%rbp)
.L75:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_num
	cmpl	%eax, -20(%rbp)
	jl	.L79
	movl	-44(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ASN1_object_size@PLT
	movl	%eax, -76(%rbp)
	cmpl	$-1, -76(%rbp)
	jne	.L80
	movl	$-1, %eax
	jmp	.L92
.L80:
	movl	-56(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L81
	movl	-28(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ASN1_object_size@PLT
	movl	%eax, -24(%rbp)
	jmp	.L82
.L81:
	movl	-76(%rbp), %eax
	movl	%eax, -24(%rbp)
.L82:
	cmpq	$0, -112(%rbp)
	je	.L83
	cmpl	$-1, -24(%rbp)
	jne	.L84
.L83:
	movl	-24(%rbp), %eax
	jmp	.L92
.L84:
	movl	-56(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L85
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %ecx
	movl	-76(%rbp), %edx
	movl	-36(%rbp), %esi
	movq	-112(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
.L85:
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %ecx
	movl	-52(%rbp), %edx
	movl	-36(%rbp), %esi
	movq	-112(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rcx
	movl	-128(%rbp), %r8d
	movl	-40(%rbp), %edi
	movl	-52(%rbp), %edx
	movq	-112(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	asn1_set_seq_out
	cmpl	$2, -36(%rbp)
	jne	.L86
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_put_eoc@PLT
	movl	-56(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L86
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_put_eoc@PLT
.L86:
	movl	-24(%rbp), %eax
	jmp	.L92
.L67:
	movl	-56(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L87
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	movl	-128(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L88
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$351, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L92
.L89:
	movl	$0, %eax
	jmp	.L92
.L88:
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ASN1_object_size@PLT
	movl	%eax, -24(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L90
	cmpl	$-1, -24(%rbp)
	je	.L90
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-36(%rbp), %esi
	movq	-112(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	movl	-128(%rbp), %ecx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	cmpl	$2, -36(%rbp)
	jne	.L90
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_put_eoc@PLT
.L90:
	movl	-24(%rbp), %eax
	jmp	.L92
.L87:
	movl	-32(%rbp), %eax
	orl	-128(%rbp), %eax
	movl	%eax, %ebx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdi
	movl	-28(%rbp), %edx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L91
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$372, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L92
.L91:
	movl	-60(%rbp), %eax
.L92:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	asn1_template_ex_i2d, .-asn1_template_ex_i2d
	.type	der_cmp, @function
der_cmp:
.LFB513:
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
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L94
	movl	-24(%rbp), %eax
	jmp	.L95
.L94:
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	der_cmp, .-der_cmp
	.type	asn1_set_seq_out, @function
asn1_set_seq_out:
.LFB514:
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
	movl	%r8d, -72(%rbp)
	movl	%r9d, -84(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, -72(%rbp)
	je	.L97
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_num
	cmpl	$1, %eax
	jg	.L98
	movl	$0, -72(%rbp)
	jmp	.L97
.L98:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_num
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$414, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L112
.L99:
	movl	-68(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$418, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L113
.L97:
	cmpl	$0, -72(%rbp)
	jne	.L102
	movl	$0, -4(%rbp)
	jmp	.L103
.L104:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_value
	movq	%rax, -40(%rbp)
	movl	-84(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	addl	$1, -4(%rbp)
.L103:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L104
	movl	$1, %eax
	jmp	.L112
.L102:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L105
.L106:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_value
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-84(%rbp), %ecx
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	addl	$1, -4(%rbp)
	addq	$24, -32(%rbp)
.L105:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L106
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_num
	movslq	%eax, %rsi
	leaq	der_cmp(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$24, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L107
.L108:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	addl	$1, -4(%rbp)
	addq	$24, -32(%rbp)
.L107:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L108
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	cmpl	$2, -72(%rbp)
	jne	.L109
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L110
.L111:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_set
	addl	$1, -4(%rbp)
	addq	$24, -32(%rbp)
.L110:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_const_ASN1_VALUE_num
	cmpl	%eax, -4(%rbp)
	jl	.L111
.L109:
	movl	$1, -8(%rbp)
	jmp	.L101
.L113:
	nop
.L101:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$457, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$458, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-8(%rbp), %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	asn1_set_seq_out, .-asn1_set_seq_out
	.type	asn1_i2d_ex_primitive, @function
asn1_i2d_ex_primitive:
.LFB515:
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
	movl	%r8d, -48(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	asn1_ex_i2c
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	cmpl	$16, %eax
	je	.L115
	movl	-16(%rbp), %eax
	cmpl	$17, %eax
	je	.L115
	movl	-16(%rbp), %eax
	cmpl	$-3, %eax
	jne	.L116
.L115:
	movl	$0, -8(%rbp)
	jmp	.L117
.L116:
	movl	$1, -8(%rbp)
.L117:
	cmpl	$-1, -4(%rbp)
	jne	.L118
	movl	$0, %eax
	jmp	.L126
.L118:
	cmpl	$-2, -4(%rbp)
	jne	.L120
	movl	$2, -12(%rbp)
	movl	$0, -4(%rbp)
.L120:
	cmpl	$-1, -44(%rbp)
	jne	.L121
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
.L121:
	cmpq	$0, -32(%rbp)
	je	.L122
	cmpl	$0, -8(%rbp)
	je	.L123
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
.L123:
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	asn1_ex_i2c
	cmpl	$0, -12(%rbp)
	je	.L124
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_put_eoc@PLT
	jmp	.L122
.L124:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L122:
	cmpl	$0, -8(%rbp)
	je	.L125
	movl	-44(%rbp), %edx
	movl	-4(%rbp), %ecx
	movl	-12(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ASN1_object_size@PLT
	jmp	.L126
.L125:
	movl	-4(%rbp), %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	asn1_i2d_ex_primitive, .-asn1_i2d_ex_primitive
	.type	asn1_ex_i2c, @function
asn1_ex_i2c:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	$0, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L128
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-40(%rbp), %rax
	movq	48(%rax), %r8
	movq	-96(%rbp), %rsi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L155
.L128:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L130
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$1, %rax
	je	.L131
.L130:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L131
	movl	$-1, %eax
	jmp	.L155
.L131:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L132
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-104(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L133
.L132:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$-4, %rax
	jne	.L134
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-104(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	jmp	.L133
.L134:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L133:
	cmpl	$10, -4(%rbp)
	je	.L135
	cmpl	$10, -4(%rbp)
	jg	.L136
	cmpl	$6, -4(%rbp)
	je	.L137
	cmpl	$6, -4(%rbp)
	jg	.L136
	cmpl	$5, -4(%rbp)
	je	.L138
	cmpl	$5, -4(%rbp)
	jg	.L136
	cmpl	$3, -4(%rbp)
	je	.L139
	cmpl	$3, -4(%rbp)
	jg	.L136
	cmpl	$2, -4(%rbp)
	je	.L135
	cmpl	$2, -4(%rbp)
	jg	.L136
	cmpl	$-1, -4(%rbp)
	je	.L140
	cmpl	$1, -4(%rbp)
	je	.L141
	jmp	.L136
.L137:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L142
	cmpl	$0, -20(%rbp)
	jne	.L156
.L142:
	movl	$-1, %eax
	jmp	.L155
.L140:
	movl	$-2, %eax
	jmp	.L155
.L138:
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L144
.L141:
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L145
	movl	$-1, %eax
	jmp	.L155
.L145:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$-4, %rax
	je	.L146
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L147
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jle	.L147
	movl	$-1, %eax
	jmp	.L155
.L147:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L146
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L146
	movl	$-1, %eax
	jmp	.L155
.L146:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movb	%al, -65(%rbp)
	leaq	-65(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L144
.L139:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L148
	leaq	-96(%rbp), %rax
	jmp	.L149
.L148:
	movl	$0, %eax
.L149:
	movq	-88(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_i2c_ASN1_BIT_STRING@PLT
	jmp	.L155
.L135:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L150
	leaq	-96(%rbp), %rax
	jmp	.L151
.L150:
	movl	$0, %eax
.L151:
	movq	-88(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_i2c_ASN1_INTEGER@PLT
	jmp	.L155
.L136:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$2048, %rax
	jne	.L152
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L152
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L153
	movq	-96(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.L153:
	movl	$-2, %eax
	jmp	.L155
.L152:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L144
.L156:
	nop
.L144:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L154
	cmpl	$0, -20(%rbp)
	je	.L154
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L154:
	movl	-20(%rbp), %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	asn1_ex_i2c, .-asn1_ex_i2c
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"ASN1_item_ex_i2d"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"asn1_template_ex_i2d"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
