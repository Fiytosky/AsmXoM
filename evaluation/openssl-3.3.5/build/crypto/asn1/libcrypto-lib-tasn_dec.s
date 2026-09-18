	.file	"tasn_dec.c"
	.text
	.type	ossl_check_ASN1_VALUE_type, @function
ossl_check_ASN1_VALUE_type:
.LFB78:
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
.LFE78:
	.size	ossl_check_ASN1_VALUE_type, .-ossl_check_ASN1_VALUE_type
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
	.section	.rodata
	.align 32
	.type	tag2bit, @object
	.size	tag2bit, 256
tag2bit:
	.quad	0
	.quad	0
	.quad	0
	.quad	1024
	.quad	512
	.quad	0
	.quad	0
	.quad	4096
	.quad	4096
	.quad	4096
	.quad	0
	.quad	4096
	.quad	8192
	.quad	4096
	.quad	4096
	.quad	4096
	.quad	65536
	.quad	0
	.quad	1
	.quad	2
	.quad	4
	.quad	8
	.quad	16
	.quad	16384
	.quad	32768
	.quad	32
	.quad	64
	.quad	128
	.quad	256
	.quad	4096
	.quad	2048
	.quad	4096
	.text
	.globl	ASN1_tag2bit
	.type	ASN1_tag2bit, @function
ASN1_tag2bit:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L8
	cmpl	$30, -4(%rbp)
	jle	.L9
.L8:
	movl	$0, %eax
	jmp	.L10
.L9:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tag2bit(%rip), %rax
	movq	(%rdx,%rax), %rax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	ASN1_tag2bit, .-ASN1_tag2bit
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/tasn_dec.c"
	.text
	.type	asn1_item_ex_d2i_intern, @function
asn1_item_ex_d2i_intern:
.LFB465:
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
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -60(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L12
	cmpq	$0, -48(%rbp)
	jne	.L13
.L12:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$115, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L13:
	movsbl	-60(%rbp), %edi
	movl	-56(%rbp), %r9d
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	$0
	pushq	24(%rbp)
	pushq	%rdi
	movq	%rax, %rdi
	call	asn1_item_embed_d2i
	addq	$48, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L15
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_ex_free@PLT
.L15:
	movl	-4(%rbp), %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	asn1_item_ex_d2i_intern, .-asn1_item_ex_d2i_intern
	.globl	ASN1_item_ex_d2i
	.type	ASN1_item_ex_d2i, @function
ASN1_item_ex_d2i:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -44(%rbp)
	movsbl	-44(%rbp), %edi
	movl	-40(%rbp), %r9d
	movl	-36(%rbp), %r8d
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	24(%rbp)
	pushq	%rdi
	movq	%rax, %rdi
	call	asn1_item_ex_d2i_intern
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	ASN1_item_ex_d2i, .-ASN1_item_ex_d2i
	.globl	ASN1_item_d2i_ex
	.type	ASN1_item_d2i_ex, @function
ASN1_item_d2i_ex:
.LFB467:
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
	cmpq	$0, -56(%rbp)
	jne	.L19
	leaq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
.L19:
	movb	$0, -32(%rbp)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	leaq	-32(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	movl	$0, %r9d
	movl	$-1, %r8d
	movq	%rax, %rdi
	call	asn1_item_ex_d2i_intern
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L20
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L22
.L20:
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	ASN1_item_d2i_ex, .-ASN1_item_d2i_ex
	.globl	ASN1_item_d2i
	.type	ASN1_item_d2i, @function
ASN1_item_d2i:
.LFB468:
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
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASN1_item_d2i_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	ASN1_item_d2i, .-ASN1_item_d2i
	.section	.rodata
.LC1:
	.string	", Type="
.LC2:
	.string	"Field="
.LC3:
	.string	"Type="
	.text
	.type	asn1_item_embed_d2i, @function
asn1_item_embed_d2i:
.LFB469:
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
	movl	%r9d, -184(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -188(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L26
	cmpq	$0, -176(%rbp)
	jne	.L27
.L26:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$182, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L27:
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	jg	.L29
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L29:
	movq	-176(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L30
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L31
.L30:
	movq	$0, -24(%rbp)
.L31:
	addl	$1, 32(%rbp)
	cmpl	$30, 32(%rbp)
	jle	.L32
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$201, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L32:
	movq	-176(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$6, %eax
	je	.L34
	cmpl	$6, %eax
	jg	.L35
	cmpl	$5, %eax
	je	.L36
	cmpl	$5, %eax
	jg	.L35
	cmpl	$4, %eax
	je	.L37
	cmpl	$4, %eax
	jg	.L35
	cmpl	$2, %eax
	je	.L38
	cmpl	$2, %eax
	jg	.L35
	testl	%eax, %eax
	je	.L39
	cmpl	$1, %eax
	je	.L34
	jmp	.L35
.L39:
	movq	-176(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L40
	cmpl	$-1, -180(%rbp)
	jne	.L41
	cmpb	$0, -188(%rbp)
	je	.L42
.L41:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$170, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L42:
	movsbl	-188(%rbp), %r8d
	movq	-176(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-168(%rbp), %rdx
	movq	24(%rbp), %r9
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	subq	$8, %rsp
	pushq	48(%rbp)
	pushq	40(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	asn1_template_ex_d2i
	addq	$32, %rsp
	jmp	.L99
.L40:
	movsbl	-188(%rbp), %edi
	movq	-168(%rbp), %rdx
	movl	-184(%rbp), %r9d
	movl	-180(%rbp), %r8d
	movq	-176(%rbp), %rcx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	pushq	24(%rbp)
	pushq	%rdi
	movq	%rax, %rdi
	call	asn1_d2i_ex_primitive
	addq	$16, %rsp
	jmp	.L99
.L36:
	cmpl	$-1, -180(%rbp)
	je	.L43
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$226, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$230, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L43:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rcx
	leaq	-136(%rbp), %rsi
	leaq	-137(%rbp), %rdx
	leaq	-144(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	$1
	pushq	$0
	pushq	$-1
	pushq	%rcx
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	asn1_check_tlen
	addq	$48, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L44:
	movzbl	-137(%rbp), %eax
	testb	%al, %al
	je	.L45
	cmpb	$0, -188(%rbp)
	je	.L46
	movl	$-1, %eax
	jmp	.L99
.L46:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L45:
	movl	-144(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_tag2bit@PLT
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	.L47
	cmpb	$0, -188(%rbp)
	je	.L48
	movl	$-1, %eax
	jmp	.L99
.L48:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L47:
	movl	-144(%rbp), %edi
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	pushq	24(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	asn1_d2i_ex_primitive
	addq	$16, %rsp
	jmp	.L99
.L37:
	movq	-176(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-56(%rbp), %rax
	movq	64(%rax), %r10
	movsbl	-188(%rbp), %edi
	movq	-168(%rbp), %rdx
	movl	-184(%rbp), %r9d
	movl	-180(%rbp), %r8d
	movq	-176(%rbp), %rcx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	24(%rbp)
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	jmp	.L99
.L49:
	movq	-56(%rbp), %rax
	movq	32(%rax), %r10
	movsbl	-188(%rbp), %edi
	movq	-168(%rbp), %rdx
	movl	-184(%rbp), %r9d
	movl	-180(%rbp), %r8d
	movq	-176(%rbp), %rcx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	pushq	24(%rbp)
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L99
.L38:
	cmpl	$-1, -180(%rbp)
	je	.L50
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$272, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$230, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L50:
	cmpq	$0, -24(%rbp)
	je	.L51
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	-24(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$4, %edi
	call	*%r8
	testl	%eax, %eax
	je	.L102
.L51:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_choice_selector@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	js	.L54
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L54
	movq	-176(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_field_ptr@PLT
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_template_free@PLT
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_asn1_set_choice_selector@PLT
	jmp	.L54
.L53:
	movq	48(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_asn1_item_ex_new_intern@PLT
	testl	%eax, %eax
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$288, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L54:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movl	$0, -32(%rbp)
	movq	-176(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L55
.L60:
	movq	-8(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_field_ptr@PLT
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rdx
	movq	24(%rbp), %r8
	movq	-8(%rbp), %rcx
	leaq	-136(%rbp), %rsi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	48(%rbp)
	pushq	40(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	movq	%r8, %r9
	movl	$1, %r8d
	movq	%rax, %rdi
	call	asn1_template_ex_d2i
	addq	$32, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	je	.L103
	cmpl	$0, -36(%rbp)
	jg	.L104
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_template_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$312, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L103:
	nop
	addl	$1, -32(%rbp)
	addq	$40, -8(%rbp)
.L55:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L60
	jmp	.L59
.L104:
	nop
.L59:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L61
	cmpb	$0, -188(%rbp)
	je	.L62
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_ex_free@PLT
	movl	$-1, %eax
	jmp	.L99
.L62:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$324, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L61:
	movq	-176(%rbp), %rdx
	movl	-32(%rbp), %ecx
	movq	-152(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_asn1_set_choice_selector@PLT
	cmpq	$0, -24(%rbp)
	je	.L63
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	-24(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$5, %edi
	call	*%r8
	testl	%eax, %eax
	je	.L105
.L63:
	movq	-136(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L99
.L34:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpl	$-1, -180(%rbp)
	jne	.L64
	movl	$16, -180(%rbp)
	movl	$0, -184(%rbp)
.L64:
	movsbl	-188(%rbp), %esi
	movq	-168(%rbp), %rcx
	leaq	-136(%rbp), %r8
	leaq	-139(%rbp), %rdi
	leaq	-138(%rbp), %rdx
	leaq	-168(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	%rsi
	movl	-184(%rbp), %esi
	pushq	%rsi
	movl	-180(%rbp), %esi
	pushq	%rsi
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	asn1_check_tlen
	addq	$48, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L65
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L65:
	cmpl	$-1, -36(%rbp)
	jne	.L66
	movl	$-1, %eax
	jmp	.L99
.L66:
	cmpq	$0, -48(%rbp)
	je	.L67
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L67
	movq	-136(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-72(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movb	$1, -25(%rbp)
	jmp	.L68
.L67:
	movzbl	-138(%rbp), %eax
	movb	%al, -25(%rbp)
.L68:
	movzbl	-139(%rbp), %eax
	testb	%al, %al
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$361, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L69:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movq	48(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_asn1_item_ex_new_intern@PLT
	testl	%eax, %eax
	jne	.L70
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L70:
	cmpq	$0, -24(%rbp)
	je	.L71
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	-24(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$4, %edi
	call	*%r8
	testl	%eax, %eax
	je	.L106
.L71:
	movl	$0, -32(%rbp)
	movq	-176(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L72
.L75:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	andl	$768, %eax
	testq	%rax, %rax
	je	.L73
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_do_adb@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L107
	movq	-120(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_field_ptr@PLT
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_template_free@PLT
	jmp	.L73
.L107:
	nop
.L73:
	addl	$1, -32(%rbp)
	addq	$40, -8(%rbp)
.L72:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L75
	movl	$0, -32(%rbp)
	movq	-176(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L76
.L87:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_do_adb@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L108
	movq	-80(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_field_ptr@PLT
	movq	%rax, -88(%rbp)
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	je	.L109
	movq	-136(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-168(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_check_eoc
	testl	%eax, %eax
	je	.L80
	movzbl	-138(%rbp), %eax
	testb	%al, %al
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$401, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L81:
	movq	-168(%rbp), %rdx
	movq	-136(%rbp), %rax
	subq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -168(%rbp)
	movb	$0, -138(%rbp)
	jmp	.L79
.L80:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L82
	movb	$0, -26(%rbp)
	jmp	.L83
.L82:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	movb	%al, -26(%rbp)
.L83:
	movsbl	-26(%rbp), %r8d
	movq	-168(%rbp), %rdx
	movq	24(%rbp), %r9
	movq	-80(%rbp), %rcx
	leaq	-136(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	48(%rbp)
	pushq	40(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	asn1_template_ex_d2i
	addq	$32, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L84
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L33
.L84:
	cmpl	$-1, -36(%rbp)
	jne	.L85
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_template_free@PLT
	jmp	.L86
.L85:
	movq	-168(%rbp), %rdx
	movq	-136(%rbp), %rax
	subq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -168(%rbp)
.L86:
	addl	$1, -32(%rbp)
	addq	$40, -8(%rbp)
.L76:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L87
	jmp	.L79
.L109:
	nop
.L79:
	movzbl	-138(%rbp), %eax
	testb	%al, %al
	je	.L88
	movq	-168(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_check_eoc
	testl	%eax, %eax
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$440, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L88:
	cmpb	$0, -25(%rbp)
	jne	.L90
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	je	.L90
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$445, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L94:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_do_adb@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L110
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L92
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_get_field_ptr@PLT
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_template_free@PLT
	jmp	.L101
.L92:
	movq	-104(%rbp), %rax
	movq	%rax, -16(%rbp)
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L101:
	addq	$40, -8(%rbp)
	addl	$1, -32(%rbp)
.L90:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L94
	movq	-136(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movl	%edx, %edi
	movq	-160(%rbp), %rax
	movq	(%rax), %rsi
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ossl_asn1_enc_save@PLT
	testl	%eax, %eax
	je	.L111
	cmpq	$0, -24(%rbp)
	je	.L96
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	-24(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$5, %edi
	call	*%r8
	testl	%eax, %eax
	je	.L112
.L96:
	movq	-136(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L99
.L35:
	movl	$0, %eax
	jmp	.L99
.L102:
	nop
	jmp	.L52
.L105:
	nop
	jmp	.L52
.L106:
	nop
	jmp	.L52
.L111:
	nop
	jmp	.L52
.L112:
	nop
.L52:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$481, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L108:
	nop
	jmp	.L33
.L110:
	nop
.L33:
	cmpq	$0, -16(%rbp)
	je	.L97
	movq	-176(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L98
.L97:
	movq	-176(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L98:
	movl	$0, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	asn1_item_embed_d2i, .-asn1_item_embed_d2i
	.type	asn1_template_ex_d2i, @function
asn1_template_ex_d2i:
.LFB470:
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
	movl	%r8d, %eax
	movq	%r9, -96(%rbp)
	movb	%al, -84(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L114
	movl	$0, %eax
	jmp	.L127
.L114:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$192, %eax
	movl	%eax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L116
	movsbl	-84(%rbp), %ecx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %r8d
	leaq	-40(%rbp), %rdi
	leaq	-42(%rbp), %rsi
	leaq	-41(%rbp), %rdx
	leaq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	-96(%rbp)
	pushq	%rcx
	movl	-8(%rbp), %ecx
	pushq	%rcx
	pushq	%r8
	pushq	-72(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	asn1_check_tlen
	addq	$48, %rsp
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L117
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$525, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L127
.L117:
	cmpl	$-1, -12(%rbp)
	jne	.L119
	movl	$-1, %eax
	jmp	.L127
.L119:
	movzbl	-42(%rbp), %eax
	testb	%al, %al
	jne	.L120
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$530, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L127
.L120:
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	asn1_template_noexp_d2i
	addq	$32, %rsp
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L121
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$537, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L127
.L121:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	-41(%rbp), %eax
	testb	%al, %al
	je	.L122
	movq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_check_eoc
	testl	%eax, %eax
	jne	.L125
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$545, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L124
.L122:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L125
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$553, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L124:
.L126:
	movl	$0, %eax
	jmp	.L127
.L116:
	movsbl	-84(%rbp), %r8d
	movq	-96(%rbp), %r9
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	asn1_template_noexp_d2i
	addq	$32, %rsp
	jmp	.L127
.L125:
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	asn1_template_ex_d2i, .-asn1_template_ex_d2i
	.type	asn1_template_noexp_d2i, @function
asn1_template_noexp_d2i:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	%r8d, %eax
	movq	%r9, -144(%rbp)
	movb	%al, -132(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L129
	movl	$0, %eax
	jmp	.L159
.L129:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$192, %eax
	movl	%eax, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	andl	$4096, %eax
	testq	%rax, %rax
	je	.L131
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
.L131:
	movl	-28(%rbp), %eax
	andl	$6, %eax
	testl	%eax, %eax
	je	.L132
	movl	-28(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L133
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L134
.L133:
	movl	$0, -24(%rbp)
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L135
	movl	$17, -20(%rbp)
	jmp	.L134
.L135:
	movl	$16, -20(%rbp)
.L134:
	movsbl	-132(%rbp), %esi
	movq	-120(%rbp), %rcx
	leaq	-72(%rbp), %rdi
	leaq	-73(%rbp), %rdx
	leaq	-120(%rbp), %rax
	subq	$8, %rsp
	pushq	-144(%rbp)
	pushq	%rsi
	movl	-24(%rbp), %esi
	pushq	%rsi
	movl	-20(%rbp), %esi
	pushq	%rsi
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	asn1_check_tlen
	addq	$48, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$613, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L159
.L136:
	cmpl	$-1, -36(%rbp)
	jne	.L138
	movl	$-1, %eax
	jmp	.L159
.L138:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L139
	call	OPENSSL_sk_new_null@PLT
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L140
.L139:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L141
.L142:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_ex_free@PLT
.L141:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L142
.L140:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L145
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$632, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L155
.L152:
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_check_eoc
	testl	%eax, %eax
	je	.L146
	movzbl	-73(%rbp), %eax
	testb	%al, %al
	jne	.L147
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$643, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L148
.L147:
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -120(%rbp)
	movb	$0, -73(%rbp)
	jmp	.L149
.L146:
	movq	$0, -96(%rbp)
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	leaq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %ecx
	pushq	%rcx
	pushq	-144(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$-1, %r8d
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	asn1_item_embed_d2i
	addq	$48, %rsp
	testl	%eax, %eax
	jg	.L150
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$654, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	jmp	.L148
.L150:
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_VALUE_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L145
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$661, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
.L148:
	jmp	.L155
.L145:
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jg	.L152
.L149:
	movzbl	-73(%rbp), %eax
	testb	%al, %al
	je	.L154
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$667, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L155
.L132:
	movl	-28(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L156
	movsbl	-132(%rbp), %ebx
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %r12d
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx
	movl	-32(%rbp), %r8d
	leaq	-72(%rbp), %rsi
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %ecx
	pushq	%rcx
	pushq	-144(%rbp)
	pushq	%rbx
	movl	%r8d, %r9d
	movl	%r12d, %r8d
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	asn1_item_embed_d2i
	addq	$48, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$676, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L155
.L157:
	cmpl	$-1, -36(%rbp)
	jne	.L154
	movl	$-1, %eax
	jmp	.L159
.L156:
	movsbl	-132(%rbp), %ebx
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %ecx
	pushq	%rcx
	pushq	-144(%rbp)
	pushq	%rbx
	movl	$0, %r9d
	movl	$-1, %r8d
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	asn1_item_embed_d2i
	addq	$48, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L158
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$685, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L155
.L158:
	cmpl	$-1, -36(%rbp)
	jne	.L154
	movl	$-1, %eax
	jmp	.L159
.L154:
	movq	-72(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L159
.L155:
	movl	$0, %eax
.L159:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	asn1_template_noexp_d2i, .-asn1_template_noexp_d2i
	.type	asn1_d2i_ex_primitive, @function
asn1_d2i_ex_primitive:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	%r8d, -148(%rbp)
	movl	%r9d, -152(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -156(%rbp)
	movl	$0, -4(%rbp)
	movb	$0, -43(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L161
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$712, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L161:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L163
	movl	-148(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$-1, -148(%rbp)
	jmp	.L164
.L163:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, -28(%rbp)
.L164:
	movl	-28(%rbp), %eax
	cmpl	$-4, %eax
	jne	.L165
	cmpl	$0, -148(%rbp)
	js	.L166
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$726, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L166:
	cmpb	$0, -156(%rbp)
	je	.L168
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$730, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L168:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rcx
	leaq	-97(%rbp), %rdx
	leaq	-28(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	$0
	pushq	$0
	pushq	$-1
	pushq	-136(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	asn1_check_tlen
	addq	$48, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L169
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$737, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L169:
	movzbl	-97(%rbp), %eax
	testb	%al, %al
	je	.L165
	movl	$-3, -28(%rbp)
.L165:
	cmpl	$-1, -148(%rbp)
	jne	.L171
	movl	-28(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	$0, -152(%rbp)
.L171:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movsbl	-156(%rbp), %ecx
	leaq	-56(%rbp), %rdi
	leaq	-41(%rbp), %rsi
	leaq	-42(%rbp), %rdx
	leaq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	%rcx
	movl	-152(%rbp), %ecx
	pushq	%rcx
	movl	-148(%rbp), %ecx
	pushq	%rcx
	pushq	-136(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	asn1_check_tlen
	addq	$48, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L172
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L172:
	cmpl	$-1, -4(%rbp)
	jne	.L173
	movl	$-1, %eax
	jmp	.L190
.L173:
	movl	$0, -4(%rbp)
	movl	-28(%rbp), %eax
	cmpl	$16, %eax
	je	.L174
	movl	-28(%rbp), %eax
	cmpl	$17, %eax
	je	.L174
	movl	-28(%rbp), %eax
	cmpl	$-3, %eax
	jne	.L175
.L174:
	movl	-28(%rbp), %eax
	cmpl	$-3, %eax
	jne	.L176
	cmpq	$0, 24(%rbp)
	je	.L177
	movq	24(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L177
.L176:
	movzbl	-41(%rbp), %eax
	testb	%al, %al
	jne	.L177
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L177:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movzbl	-42(%rbp), %eax
	testb	%al, %al
	je	.L178
	movzbl	-42(%rbp), %eax
	movsbl	%al, %edx
	movq	-40(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_find_end
	testl	%eax, %eax
	je	.L191
	movq	-56(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L182
.L178:
	movq	-56(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.L182
.L175:
	movzbl	-41(%rbp), %eax
	testb	%al, %al
	je	.L183
	movl	-28(%rbp), %eax
	cmpl	$5, %eax
	je	.L184
	movl	-28(%rbp), %eax
	cmpl	$1, %eax
	je	.L184
	movl	-28(%rbp), %eax
	cmpl	$6, %eax
	je	.L184
	movl	-28(%rbp), %eax
	cmpl	$2, %eax
	je	.L184
	movl	-28(%rbp), %eax
	cmpl	$10, %eax
	jne	.L185
.L184:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$195, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L185:
	movb	$1, -43(%rbp)
	movzbl	-42(%rbp), %eax
	movsbl	%al, %ecx
	movq	-40(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	leaq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$-1, %r8d
	movq	%rax, %rdi
	call	asn1_collect
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L192
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	jne	.L187
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L180
.L187:
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L182
.L183:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
.L182:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%eax, %r10d
	movq	-144(%rbp), %rdi
	leaq	-43(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	asn1_ex_c2i
	testl	%eax, %eax
	je	.L193
	movq	-56(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L180
.L191:
	nop
	jmp	.L180
.L192:
	nop
	jmp	.L180
.L193:
	nop
.L180:
	movzbl	-43(%rbp), %eax
	testb	%al, %al
	je	.L189
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$825, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L189:
	movl	-4(%rbp), %eax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	asn1_d2i_ex_primitive, .-asn1_d2i_ex_primitive
	.type	asn1_ex_c2i, @function
asn1_ex_c2i:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L195
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-40(%rbp), %rax
	movq	40(%rax), %r10
	movq	-80(%rbp), %rsi
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %rdi
	movl	-88(%rbp), %ecx
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	jmp	.L196
.L195:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$-4, %rax
	jne	.L197
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L198
	call	ASN1_TYPE_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L226
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L201
.L198:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L201:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -88(%rbp)
	je	.L202
	movl	-88(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
.L202:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
.L197:
	cmpl	$10, -88(%rbp)
	je	.L203
	cmpl	$10, -88(%rbp)
	jg	.L204
	cmpl	$6, -88(%rbp)
	je	.L205
	cmpl	$6, -88(%rbp)
	jg	.L204
	cmpl	$5, -88(%rbp)
	je	.L206
	cmpl	$5, -88(%rbp)
	jg	.L204
	cmpl	$3, -88(%rbp)
	je	.L207
	cmpl	$3, -88(%rbp)
	jg	.L204
	cmpl	$1, -88(%rbp)
	je	.L208
	cmpl	$2, -88(%rbp)
	je	.L203
	jmp	.L204
.L205:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_c2i_ASN1_OBJECT@PLT
	testq	%rax, %rax
	jne	.L227
	jmp	.L200
.L206:
	cmpl	$0, -84(%rbp)
	je	.L211
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$867, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L200
.L211:
	movq	-72(%rbp), %rax
	movq	$1, (%rax)
	jmp	.L210
.L208:
	cmpl	$1, -84(%rbp)
	je	.L212
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$875, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L200
.L212:
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L210
.L207:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_c2i_ASN1_BIT_STRING@PLT
	testq	%rax, %rax
	jne	.L228
	jmp	.L200
.L203:
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_c2i_ASN1_INTEGER@PLT
	testq	%rax, %rax
	je	.L229
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	andl	$256, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	orl	-88(%rbp), %edx
	movl	%edx, 4(%rax)
	jmp	.L210
.L204:
	cmpl	$30, -88(%rbp)
	jne	.L215
	movl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L215
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$917, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$214, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L200
.L215:
	cmpl	$28, -88(%rbp)
	jne	.L216
	movl	-84(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L216
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$921, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$215, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L200
.L216:
	cmpl	$24, -88(%rbp)
	jne	.L217
	cmpl	$14, -84(%rbp)
	jg	.L217
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$925, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$232, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L200
.L217:
	cmpl	$23, -88(%rbp)
	jne	.L218
	cmpl	$12, -84(%rbp)
	jg	.L218
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$929, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$233, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L200
.L218:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L219
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_type_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L220
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$936, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L200
.L220:
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L221
.L219:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-88(%rbp), %edx
	movl	%edx, 4(%rax)
.L221:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L222
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L230
.L222:
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L230
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$950, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L200
.L227:
	nop
	jmp	.L210
.L228:
	nop
	jmp	.L210
.L230:
	nop
.L210:
	cmpq	$0, -24(%rbp)
	je	.L224
	cmpl	$5, -88(%rbp)
	jne	.L224
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L224:
	movl	$1, -28(%rbp)
	jmp	.L200
.L226:
	nop
	jmp	.L200
.L229:
	nop
.L200:
	cmpl	$0, -28(%rbp)
	jne	.L225
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	cmpq	$0, -8(%rbp)
	je	.L225
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L225:
	movl	-28(%rbp), %eax
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	asn1_ex_c2i, .-asn1_ex_c2i
	.type	asn1_find_end, @function
asn1_find_end:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movb	%al, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movzbl	-52(%rbp), %eax
	testb	%al, %al
	jne	.L232
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L244
.L232:
	movl	$1, -4(%rbp)
	jmp	.L234
.L242:
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_check_eoc
	testl	%eax, %eax
	je	.L235
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L245
	subq	$2, -48(%rbp)
	jmp	.L234
.L235:
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-52(%rbp), %rdx
	leaq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$-1
	pushq	-48(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	asn1_check_tlen
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L238
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1008, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L244
.L238:
	movzbl	-52(%rbp), %eax
	testb	%al, %al
	je	.L239
	cmpl	$-1, -4(%rbp)
	jne	.L240
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1013, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L244
.L240:
	addl	$1, -4(%rbp)
	jmp	.L241
.L239:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.L241:
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	subq	%rax, -48(%rbp)
.L234:
	cmpq	$0, -48(%rbp)
	jg	.L242
	jmp	.L237
.L245:
	nop
.L237:
	cmpl	$0, -4(%rbp)
	je	.L243
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1023, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L244
.L243:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	asn1_find_end, .-asn1_find_end
	.type	asn1_collect, @function
asn1_collect:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, %eax
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movb	%al, -60(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	andb	$1, -60(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L249
	cmpb	$0, -60(%rbp)
	jne	.L249
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L259
.L257:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_check_eoc
	testl	%eax, %eax
	je	.L250
	cmpb	$0, -60(%rbp)
	jne	.L251
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1070, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L259
.L251:
	movb	$0, -60(%rbp)
	jmp	.L252
.L250:
	leaq	-16(%rbp), %rdi
	leaq	-25(%rbp), %rsi
	leaq	-26(%rbp), %rdx
	leaq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	movl	-68(%rbp), %ecx
	pushq	%rcx
	movl	-64(%rbp), %ecx
	pushq	%rcx
	pushq	-56(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	asn1_check_tlen
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L253
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1079, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524554, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L259
.L253:
	movzbl	-25(%rbp), %eax
	testb	%al, %al
	je	.L254
	cmpl	$4, 16(%rbp)
	jle	.L255
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1086, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$197, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L259
.L255:
	movl	16(%rbp), %eax
	leal	1(%rax), %edi
	movzbl	-26(%rbp), %eax
	movsbl	%al, %ecx
	movq	-24(%rbp), %rdx
	movl	-68(%rbp), %r9d
	movl	-64(%rbp), %r8d
	leaq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	asn1_collect
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L256
	movl	$0, %eax
	jmp	.L259
.L254:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L256
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	collect_data
	testl	%eax, %eax
	jne	.L256
	movl	$0, %eax
	jmp	.L259
.L256:
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	%rax, -56(%rbp)
.L249:
	cmpq	$0, -56(%rbp)
	jg	.L257
.L252:
	cmpb	$0, -60(%rbp)
	je	.L258
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1096, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L259
.L258:
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	asn1_collect, .-asn1_collect
	.type	collect_data, @function
collect_data:
.LFB476:
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
	cmpq	$0, -24(%rbp)
	je	.L261
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	jne	.L262
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L263
.L262:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L261:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L263:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	collect_data, .-collect_data
	.type	asn1_check_eoc, @function
asn1_check_eoc:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$1, -32(%rbp)
	jg	.L265
	movl	$0, %eax
	jmp	.L266
.L265:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L267
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L267
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L266
.L267:
	movl	$0, %eax
.L266:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	asn1_check_eoc, .-asn1_check_eoc
	.type	asn1_check_tlen, @function
asn1_check_tlen:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movl	40(%rbp), %eax
	movb	%al, -100(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, 16(%rbp)
	jg	.L269
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L270
.L269:
	cmpq	$0, 48(%rbp)
	je	.L271
	movq	48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L271
	movq	48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	48(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	48(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rdx
	movq	48(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.L272
.L271:
	movq	16(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_get_object@PLT
	movl	%eax, -4(%rbp)
	cmpq	$0, 48(%rbp)
	je	.L272
	movq	48(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-32(%rbp), %rdx
	movq	48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-24(%rbp), %edx
	movq	48(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	-20(%rbp), %edx
	movq	48(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	subq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	48(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	48(%rbp), %rax
	movb	$1, (%rax)
	movl	-4(%rbp), %eax
	andl	$129, %eax
	testl	%eax, %eax
	jne	.L272
	movq	48(%rbp), %rax
	movl	24(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, 16(%rbp)
	jge	.L272
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L270
.L272:
	movl	-4(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L273
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L270
.L273:
	cmpl	$0, 24(%rbp)
	js	.L274
	movl	-20(%rbp), %eax
	cmpl	%eax, 24(%rbp)
	jne	.L275
	movl	-24(%rbp), %eax
	cmpl	%eax, 32(%rbp)
	je	.L276
.L275:
	cmpb	$0, -100(%rbp)
	je	.L277
	movl	$-1, %eax
	jmp	.L286
.L277:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L270
.L276:
	cmpq	$0, 48(%rbp)
	je	.L274
	movq	48(%rbp), %rax
	movb	$0, (%rax)
.L274:
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L279
	movq	-40(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
.L279:
	cmpq	$0, -80(%rbp)
	je	.L280
	movl	-4(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, (%rax)
.L280:
	cmpq	$0, -88(%rbp)
	je	.L281
	movl	-4(%rbp), %eax
	andl	$32, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
.L281:
	cmpq	$0, -56(%rbp)
	je	.L282
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L282:
	cmpq	$0, -72(%rbp)
	je	.L283
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movb	%dl, (%rax)
.L283:
	cmpq	$0, -64(%rbp)
	je	.L284
	movl	-20(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L284:
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L286
.L270:
	cmpq	$0, 48(%rbp)
	je	.L285
	movq	48(%rbp), %rax
	movb	$0, (%rax)
.L285:
	movl	$0, %eax
.L286:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	asn1_check_tlen, .-asn1_check_tlen
	.section	.rodata
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 24
__func__.9:
	.string	"asn1_item_ex_d2i_intern"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 20
__func__.8:
	.string	"asn1_item_embed_d2i"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 21
__func__.7:
	.string	"asn1_template_ex_d2i"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 24
__func__.6:
	.string	"asn1_template_noexp_d2i"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 22
__func__.5:
	.string	"asn1_d2i_ex_primitive"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 12
__func__.4:
	.string	"asn1_ex_c2i"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 14
__func__.3:
	.string	"asn1_find_end"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"asn1_collect"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"collect_data"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"asn1_check_tlen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
