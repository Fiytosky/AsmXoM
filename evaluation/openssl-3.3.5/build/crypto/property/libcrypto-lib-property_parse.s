	.file	"property_parse.c"
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
	.type	sk_OSSL_PROPERTY_DEFINITION_num, @function
sk_OSSL_PROPERTY_DEFINITION_num:
.LFB160:
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
.LFE160:
	.size	sk_OSSL_PROPERTY_DEFINITION_num, .-sk_OSSL_PROPERTY_DEFINITION_num
	.type	sk_OSSL_PROPERTY_DEFINITION_value, @function
sk_OSSL_PROPERTY_DEFINITION_value:
.LFB161:
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
.LFE161:
	.size	sk_OSSL_PROPERTY_DEFINITION_value, .-sk_OSSL_PROPERTY_DEFINITION_value
	.type	sk_OSSL_PROPERTY_DEFINITION_new, @function
sk_OSSL_PROPERTY_DEFINITION_new:
.LFB162:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	sk_OSSL_PROPERTY_DEFINITION_new, .-sk_OSSL_PROPERTY_DEFINITION_new
	.type	sk_OSSL_PROPERTY_DEFINITION_push, @function
sk_OSSL_PROPERTY_DEFINITION_push:
.LFB170:
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
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	sk_OSSL_PROPERTY_DEFINITION_push, .-sk_OSSL_PROPERTY_DEFINITION_push
	.type	sk_OSSL_PROPERTY_DEFINITION_pop_free, @function
sk_OSSL_PROPERTY_DEFINITION_pop_free:
.LFB174:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	sk_OSSL_PROPERTY_DEFINITION_pop_free, .-sk_OSSL_PROPERTY_DEFINITION_pop_free
	.type	sk_OSSL_PROPERTY_DEFINITION_sort, @function
sk_OSSL_PROPERTY_DEFINITION_sort:
.LFB180:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	sk_OSSL_PROPERTY_DEFINITION_sort, .-sk_OSSL_PROPERTY_DEFINITION_sort
	.type	skip_space, @function
skip_space:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L16
.L17:
	addq	$1, -8(%rbp)
.L16:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L17
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	skip_space, .-skip_space
	.type	match_ch, @function
match_ch:
.LFB186:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, -28(%rbp)
	jne	.L20
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	match_ch, .-match_ch
	.type	match, @function
match:
.LFB187:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L23
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
	jmp	.L24
.L23:
	movl	$0, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	match, .-match
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/property/property_parse.c"
.LC1:
	.string	"HERE-->%s"
	.text
	.type	parse_name, @function
parse_name:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.L34:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$103, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L26:
	cmpq	$98, -16(%rbp)
	ja	.L28
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, -128(%rbp,%rax)
	jmp	.L29
.L28:
	movl	$1, -4(%rbp)
.L29:
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L26
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L40
	movl	$1, -28(%rbp)
	cmpq	$98, -16(%rbp)
	ja	.L32
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, -128(%rbp,%rax)
	jmp	.L33
.L32:
	movl	$1, -4(%rbp)
.L33:
	addq	$1, -24(%rbp)
	jmp	.L34
.L40:
	nop
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpl	$0, -4(%rbp)
	je	.L35
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$100, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L35:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	-144(%rbp), %rdx
	movq	%rax, (%rdx)
	cmpl	$0, -28(%rbp)
	je	.L36
	cmpl	$0, -148(%rbp)
	je	.L36
	movl	$1, %edx
	jmp	.L37
.L36:
	movl	$0, %edx
.L37:
	leaq	-128(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_name@PLT
	movq	-160(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	parse_name, .-parse_name
	.section	.rodata
.LC2:
	.string	"Property %s overflows"
	.text
	.type	parse_number, @function
parse_number:
.LFB189:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
.L45:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$105, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	movabsq	$9223372036854775807, %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	sarq	$63, %rcx
	movq	%rcx, %rdx
	subq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jle	.L44
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$108, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L43
.L44:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L46
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L46
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L46
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$105, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L43
.L46:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	parse_number, .-parse_number
	.section	.rodata
.LC3:
	.string	"%s"
	.text
	.type	parse_hex, @function
parse_hex:
.LFB190:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
.L53:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	je	.L48
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -20(%rbp)
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L50
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	subl	$87, %eax
	movl	%eax, -20(%rbp)
	jmp	.L49
.L50:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$138, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	movl	$102, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L49:
	movl	-20(%rbp), %eax
	cltq
	movabsq	$9223372036854775807, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	leaq	15(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$4, %rax
	cmpq	%rax, -16(%rbp)
	jle	.L52
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$108, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L52:
	salq	$4, -16(%rbp)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L53
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L54
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L54
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L54
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$153, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$102, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L54:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	parse_hex, .-parse_hex
	.type	parse_oct, @function
parse_oct:
.LFB191:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
.L61:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	je	.L56
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$56, %al
	je	.L56
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	jne	.L57
.L56:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$104, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	movabsq	$9223372036854775807, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	leaq	7(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$3, %rax
	cmpq	%rax, -16(%rbp)
	jle	.L59
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$108, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	je	.L60
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	je	.L60
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$56, %al
	jne	.L61
.L60:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L62
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L62
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L62
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$104, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L62:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	parse_oct, .-parse_oct
	.section	.rodata
.LC4:
	.string	"HERE-->%c%s"
	.text
	.type	parse_string, @function
parse_string:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movq	%rdi, -1032(%rbp)
	movq	%rsi, -1040(%rbp)
	movl	%edx, %eax
	movq	%rcx, -1056(%rbp)
	movl	%r8d, -1048(%rbp)
	movb	%al, -1044(%rbp)
	movq	-1040(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L64
.L68:
	cmpq	$998, -16(%rbp)
	ja	.L65
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, -1024(%rbp,%rax)
	jmp	.L66
.L65:
	movl	$1, -20(%rbp)
.L66:
	addq	$1, -8(%rbp)
.L64:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L67
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, -1044(%rbp)
	jne	.L68
.L67:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1040(%rbp), %rax
	movq	(%rax), %rcx
	movsbl	-1044(%rbp), %eax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$106, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L73
.L69:
	leaq	-1024(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpl	$0, -20(%rbp)
	je	.L71
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1040(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$109, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L71:
	movl	-1048(%rbp), %edx
	leaq	-1024(%rbp), %rcx
	movq	-1032(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movq	-1056(%rbp), %rdx
	movl	%eax, 16(%rdx)
.L72:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	skip_space
	movq	-1040(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-1056(%rbp), %rax
	movl	$0, 4(%rax)
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	parse_string, .-parse_string
	.type	parse_unquoted, @function
parse_unquoted:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movq	%rdi, -1032(%rbp)
	movq	%rsi, -1040(%rbp)
	movq	%rdx, -1048(%rbp)
	movl	%ecx, -1052(%rbp)
	movq	-1040(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L75
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L78
.L75:
	movl	$0, %eax
	jmp	.L86
.L82:
	cmpq	$998, -16(%rbp)
	ja	.L79
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_tolower@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, -1024(%rbp,%rax)
	jmp	.L80
.L79:
	movl	$1, -20(%rbp)
.L80:
	addq	$1, -8(%rbp)
.L78:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$256, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L81
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L81
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L82
.L81:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L83
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L83
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L83
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$101, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L83:
	leaq	-1024(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpl	$0, -20(%rbp)
	je	.L84
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-1040(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$109, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L85
.L84:
	movl	-1052(%rbp), %edx
	leaq	-1024(%rbp), %rcx
	movq	-1032(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movq	-1048(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-1048(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L85
	movl	$1, -20(%rbp)
.L85:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	-1040(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-1048(%rbp), %rax
	movl	$0, 4(%rax)
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	parse_unquoted, .-parse_unquoted
	.type	parse_value, @function
parse_value:
.LFB194:
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	je	.L88
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$39, %al
	jne	.L89
.L88:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rcx
	leaq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	parse_string
	movl	%eax, -4(%rbp)
	jmp	.L90
.L89:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L91
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_number
	movl	%eax, -4(%rbp)
	jmp	.L90
.L91:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L92
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_number
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L90
.L92:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L93
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	jne	.L93
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_hex
	movl	%eax, -4(%rbp)
	jmp	.L90
.L93:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L94
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_oct
	movl	%eax, -4(%rbp)
	jmp	.L90
.L94:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	je	.L95
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_number
	jmp	.L98
.L95:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L90
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	parse_unquoted
	jmp	.L98
.L90:
	cmpl	$0, -4(%rbp)
	je	.L97
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L97:
	movl	-4(%rbp), %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	parse_value, .-parse_value
	.type	pd_compare, @function
pd_compare:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L100
	movl	$-1, %eax
	jmp	.L101
.L100:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L102
	movl	$1, %eax
	jmp	.L101
.L102:
	movl	$0, %eax
.L101:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	pd_compare, .-pd_compare
	.type	pd_free, @function
pd_free:
.LFB196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$302, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	pd_free, .-pd_free
	.section	.rodata
.LC5:
	.string	"Duplicated name `%s'"
	.text
	.type	stack_to_property_list, @function
stack_to_property_list:
.LFB197:
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
	movq	%rax, %rdi
	call	sk_OSSL_PROPERTY_DEFINITION_num
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L105
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$32, %rax
	jmp	.L106
.L105:
	movl	$32, %eax
.L106:
	leaq	.LC0(%rip), %rcx
	movl	$320, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L107
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROPERTY_DEFINITION_sort
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 4(%rax)
	movl	$0, -8(%rbp)
	jmp	.L108
.L111:
	movl	-8(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_PROPERTY_DEFINITION_value
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	16(%rcx), %rax
	movq	%rax, 24(%rsi)
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %eax
	andl	$1, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movzbl	20(%rax), %eax
	andl	$1, %eax
	orl	%eax, %esi
	movl	%esi, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	4(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 4(%rax)
	cmpl	$0, -8(%rbp)
	jle	.L109
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L109
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$332, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$108, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L109:
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L108:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L111
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
.L107:
	movq	-24(%rbp), %rax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	stack_to_property_list, .-stack_to_property_list
	.section	.rodata
.LC6:
	.string	"Unknown name HERE-->%s"
	.text
	.globl	ossl_parse_property
	.type	ossl_parse_property, @function
ossl_parse_property:
.LFB198:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L113
	leaq	pd_compare(%rip), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROPERTY_DEFINITION_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L114
.L113:
	movl	$0, %eax
	jmp	.L126
.L114:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	jmp	.L116
.L124:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$361, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L127
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movzbl	12(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 12(%rax)
	movq	-8(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	parse_name
	testl	%eax, %eax
	je	.L128
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L120
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$370, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	movl	$108, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L118
.L120:
	leaq	-48(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	match_ch
	testl	%eax, %eax
	je	.L121
	movq	-8(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	parse_value
	testl	%eax, %eax
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$107, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L118
.L121:
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
.L122:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROPERTY_DEFINITION_push
	testl	%eax, %eax
	je	.L129
	movq	$0, -8(%rbp)
	leaq	-48(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	match_ch
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
.L116:
	cmpl	$0, -20(%rbp)
	je	.L124
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L125
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$392, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$110, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L118
.L125:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stack_to_property_list
	movq	%rax, -16(%rbp)
	jmp	.L118
.L127:
	nop
	jmp	.L118
.L128:
	nop
	jmp	.L118
.L129:
	nop
.L118:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$399, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	pd_free(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROPERTY_DEFINITION_pop_free
	movq	-16(%rbp), %rax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	ossl_parse_property, .-ossl_parse_property
	.section	.rodata
.LC7:
	.string	"!="
	.text
	.globl	ossl_parse_query
	.type	ossl_parse_query, @function
ossl_parse_query:
.LFB199:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L131
	leaq	pd_compare(%rip), %rax
	movq	%rax, %rdi
	call	sk_OSSL_PROPERTY_DEFINITION_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L132
.L131:
	movl	$0, %eax
	jmp	.L133
.L132:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	skip_space
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	jmp	.L134
.L145:
	leaq	.LC0(%rip), %rax
	movl	$418, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L147
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-48(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	match_ch
	testl	%eax, %eax
	je	.L137
	movq	-16(%rbp), %rax
	movl	$2, 8(%rax)
	movq	-16(%rbp), %rax
	movzbl	12(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 12(%rax)
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	parse_name
	testl	%eax, %eax
	jne	.L148
	jmp	.L136
.L137:
	leaq	-48(%rbp), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	match_ch
	andl	$1, %eax
	movq	-16(%rbp), %rdx
	andl	$1, %eax
	movl	%eax, %ecx
	movzbl	12(%rdx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 12(%rdx)
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	parse_name
	testl	%eax, %eax
	je	.L149
	leaq	-48(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	match_ch
	testl	%eax, %eax
	je	.L141
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L142
.L141:
	leaq	.LC7(%rip), %rcx
	leaq	-48(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	match
	testl	%eax, %eax
	je	.L143
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.L142
.L143:
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	.L139
.L142:
	movl	-52(%rbp), %ecx
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	parse_value
	testl	%eax, %eax
	jne	.L150
	movq	-16(%rbp), %rax
	movl	$2, 4(%rax)
	jmp	.L139
.L148:
	nop
	jmp	.L139
.L150:
	nop
.L139:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROPERTY_DEFINITION_push
	testl	%eax, %eax
	je	.L151
	movq	$0, -16(%rbp)
	leaq	-48(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	match_ch
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
.L134:
	cmpl	$0, -20(%rbp)
	je	.L145
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L146
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$455, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$110, %esi
	movl	$55, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L136
.L146:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stack_to_property_list
	movq	%rax, -8(%rbp)
	jmp	.L136
.L147:
	nop
	jmp	.L136
.L149:
	nop
	jmp	.L136
.L151:
	nop
.L136:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$462, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	pd_free(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_PROPERTY_DEFINITION_pop_free
	movq	-8(%rbp), %rax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	ossl_parse_query, .-ossl_parse_query
	.globl	ossl_property_match_count
	.type	ossl_property_match_count, @function
ossl_property_match_count:
.LFB200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L153
.L171:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
	cmpl	$2, -36(%rbp)
	jne	.L154
	addl	$1, -4(%rbp)
	jmp	.L153
.L154:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L155
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	jle	.L156
	addl	$1, -8(%rbp)
	jmp	.L153
.L156:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	jne	.L155
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %ecx
	jne	.L157
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leaq	16(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L157
	movl	$1, %eax
	jmp	.L158
.L157:
	movl	$0, %eax
.L158:
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L159
	cmpl	$0, -36(%rbp)
	je	.L160
.L159:
	cmpl	$0, -40(%rbp)
	jne	.L161
	cmpl	$1, -36(%rbp)
	jne	.L161
.L160:
	addl	$1, -12(%rbp)
	jmp	.L162
.L161:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	12(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L162
	movl	$-1, %eax
	jmp	.L163
.L162:
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L153
.L155:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	jne	.L164
	cmpl	$1, -36(%rbp)
	jne	.L165
	addl	$1, -12(%rbp)
	jmp	.L166
.L165:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	12(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L166
	movl	$-1, %eax
	jmp	.L163
.L164:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L167
	cmpl	$0, -36(%rbp)
	jne	.L168
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.L167
.L168:
	cmpl	$1, -36(%rbp)
	jne	.L169
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.L169
.L167:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	12(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L166
	movl	$-1, %eax
	jmp	.L163
.L169:
	addl	$1, -12(%rbp)
.L166:
	addl	$1, -4(%rbp)
.L153:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L171
	movl	-12(%rbp), %eax
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	ossl_property_match_count, .-ossl_property_match_count
	.globl	ossl_property_free
	.type	ossl_property_free, @function
ossl_property_free:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$531, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	ossl_property_free, .-ossl_property_free
	.globl	ossl_property_merge
	.type	ossl_property_merge, @function
ossl_property_merge:
.LFB202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L174
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$32, %rax
	jmp	.L175
.L174:
	movl	$32, %eax
.L175:
	leaq	.LC0(%rip), %rcx
	movl	$548, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L176
	movl	$0, %eax
	jmp	.L177
.L176:
	movq	-16(%rbp), %rax
	movzbl	4(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 4(%rax)
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L178
.L184:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L179
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L179:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L181
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L181:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	jg	.L182
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	jne	.L183
	addl	$1, -24(%rbp)
.L183:
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L182:
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L180:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movzbl	4(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movzbl	12(%rax), %eax
	andl	$1, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	4(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 4(%rax)
	addl	$1, -28(%rbp)
.L178:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L184
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L184
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L185
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	32(%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$571, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -16(%rbp)
.L185:
	movq	-16(%rbp), %rax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	ossl_property_merge, .-ossl_property_merge
	.section	.rodata
.LC8:
	.string	"yes"
.LC9:
	.string	"no"
	.text
	.globl	ossl_property_parse_init
	.type	ossl_property_parse_init, @function
ossl_property_parse_init:
.LFB203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L187
.L190:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	predefined_names.0(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_name@PLT
	testl	%eax, %eax
	je	.L194
	addq	$1, -8(%rbp)
.L187:
	cmpq	$5, -8(%rbp)
	jbe	.L190
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	cmpl	$1, %eax
	jne	.L195
	leaq	.LC9(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	cmpl	$2, %eax
	jne	.L195
	movl	$1, %eax
	jmp	.L193
.L194:
	nop
	jmp	.L189
.L195:
	nop
.L189:
	movl	$0, %eax
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	ossl_property_parse_init, .-ossl_property_parse_init
	.type	put_char, @function
put_char:
.LFB204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L197
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L196
.L197:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	jne	.L199
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, (%rax)
	jmp	.L200
.L199:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	-4(%rbp), %edx
	movb	%dl, (%rax)
.L200:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L196:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	put_char, .-put_char
	.type	put_str, @function
put_str:
.LFB205:
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
	movb	$0, -17(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$0, -16(%rbp)
	jmp	.L202
.L205:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L203
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L203
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L203
	cmpb	$0, -17(%rbp)
	jne	.L204
	movb	$39, -17(%rbp)
.L204:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$39, %al
	jne	.L203
	movb	$34, -17(%rbp)
.L203:
	addq	$1, -16(%rbp)
.L202:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L205
	cmpb	$0, -17(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	cmpq	%rax, %rdx
	jb	.L206
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	cltq
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L201
.L206:
	cmpl	$0, -36(%rbp)
	je	.L208
	movsbl	-17(%rbp), %eax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movl	%eax, %edi
	call	put_char
.L208:
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jnb	.L209
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
.L209:
	cmpq	$0, -8(%rbp)
	je	.L210
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L210:
	cmpl	$0, -36(%rbp)
	je	.L211
	movsbl	-17(%rbp), %eax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movl	%eax, %edi
	call	put_char
.L211:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L201
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	jne	.L201
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	put_str, .-put_str
	.section	.rodata
.LC10:
	.string	"%lld"
	.text
	.type	put_num, @function
put_num:
.LFB206:
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
	movq	%rax, -8(%rbp)
	movq	$1, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jns	.L214
	addq	$1, -16(%rbp)
	negq	-8(%rbp)
	jmp	.L214
.L215:
	addq	$1, -16(%rbp)
	movq	-8(%rbp), %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	sarq	$63, %rcx
	movq	%rcx, %rdx
	subq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L214:
	cmpq	$9, -8(%rbp)
	jg	.L215
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L219
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L218
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L212
.L218:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L212
.L219:
	nop
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	put_num, .-put_num
	.globl	ossl_property_list_to_string
	.type	ossl_property_list_to_string, @function
ossl_property_list_to_string:
.LFB207:
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
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L221
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L222
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
.L222:
	movl	$1, %eax
	jmp	.L240
.L221:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L224
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
.L224:
	movl	$0, -4(%rbp)
	jmp	.L225
.L239:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L242
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L228
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$44, %edi
	call	put_char
.L228:
	movq	-16(%rbp), %rax
	movzbl	12(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L229
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$63, %edi
	call	put_char
	jmp	.L230
.L229:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L230
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$45, %edi
	call	put_char
.L230:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L231
	movl	$0, %eax
	jmp	.L240
.L231:
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	put_str
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L232
	cmpl	$1, %eax
	jne	.L243
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$33, %edi
	call	put_char
.L232:
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$61, %edi
	call	put_char
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L234
	cmpl	$1, %eax
	je	.L235
	jmp	.L241
.L234:
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_property_value_str@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L237
	movl	$0, %eax
	jmp	.L240
.L237:
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	put_str
	jmp	.L238
.L235:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	call	put_num
	jmp	.L238
.L241:
	movl	$0, %eax
	jmp	.L240
.L238:
	jmp	.L227
.L242:
	nop
	jmp	.L227
.L243:
	nop
.L227:
	addl	$1, -4(%rbp)
	subq	$24, -16(%rbp)
.L225:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L239
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	put_char
	movq	-32(%rbp), %rax
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	ossl_property_list_to_string, .-ossl_property_list_to_string
	.section	.rodata
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 11
__func__.9:
	.string	"parse_name"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 13
__func__.8:
	.string	"parse_number"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 10
__func__.7:
	.string	"parse_hex"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 10
__func__.6:
	.string	"parse_oct"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 13
__func__.5:
	.string	"parse_string"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 15
__func__.4:
	.string	"parse_unquoted"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 23
__func__.3:
	.string	"stack_to_property_list"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"ossl_parse_property"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"ossl_parse_query"
.LC11:
	.string	"provider"
.LC12:
	.string	"version"
.LC13:
	.string	"fips"
.LC14:
	.string	"output"
.LC15:
	.string	"input"
.LC16:
	.string	"structure"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	predefined_names.0, @object
	.size	predefined_names.0, 48
predefined_names.0:
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
