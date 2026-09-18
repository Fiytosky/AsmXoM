	.file	"rsa_oaep.c"
	.text
	.type	constant_time_msb, @function
constant_time_msb:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_lt, @function
constant_time_lt:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	xorl	-8(%rbp), %eax
	orl	%edx, %eax
	xorl	-4(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_msb
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	constant_time_lt, .-constant_time_lt
	.type	constant_time_ge, @function
constant_time_ge:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_lt
	notl	%eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	constant_time_ge, .-constant_time_ge
	.type	constant_time_is_zero, @function
constant_time_is_zero:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, %edi
	call	constant_time_msb
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	constant_time_is_zero, .-constant_time_is_zero
	.type	constant_time_eq, @function
constant_time_eq:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	constant_time_eq, .-constant_time_eq
	.type	value_barrier, @function
value_barrier:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	value_barrier, .-value_barrier
	.type	constant_time_select, @function
constant_time_select:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	value_barrier
	andl	-16(%rbp), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	notl	%eax
	movl	%eax, %edi
	call	value_barrier
	andl	-20(%rbp), %eax
	orl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	constant_time_select, .-constant_time_select
	.type	constant_time_select_8, @function
constant_time_select_8:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%edi, %edx
	movb	%dl, -4(%rbp)
	movl	%ecx, %edx
	movb	%dl, -8(%rbp)
	movb	%al, -12(%rbp)
	movzbl	-12(%rbp), %edx
	movzbl	-8(%rbp), %ecx
	movzbl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	constant_time_select_8, .-constant_time_select_8
	.type	constant_time_select_int, @function
constant_time_select_int:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	constant_time_select_int, .-constant_time_select_int
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB183:
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
.LFE183:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB184:
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
.LFE184:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	RSA_padding_add_PKCS1_OAEP
	.type	RSA_padding_add_PKCS1_OAEP, @function
RSA_padding_add_PKCS1_OAEP:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-32(%rbp), %r8
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	movl	-36(%rbp), %esi
	pushq	%rsi
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	RSA_padding_add_PKCS1_OAEP, .-RSA_padding_add_PKCS1_OAEP
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_oaep.c"
	.text
	.globl	ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex
	.type	ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex, @function
ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex:
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
	movl	%edx, -132(%rbp)
	movq	%rcx, -144(%rbp)
	movl	%r8d, -136(%rbp)
	movq	%r9, -152(%rbp)
	movl	$0, -4(%rbp)
	movl	-132(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L26
	call	EVP_sha1@PLT
	movq	%rax, 24(%rbp)
.L26:
	cmpq	$0, 32(%rbp)
	jne	.L27
	movq	24(%rbp), %rax
	movq	%rax, 32(%rbp)
.L27:
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L28
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L28:
	movl	-28(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-24(%rbp), %eax
	subl	%edx, %eax
	cmpl	%eax, -136(%rbp)
	jl	.L30
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$87, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L30:
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -24(%rbp)
	jg	.L31
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L31:
	movq	-128(%rbp), %rax
	movb	$0, (%rax)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	16(%rbp), %eax
	movslq	%eax, %rsi
	movq	24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L43
	movl	-24(%rbp), %eax
	subl	-136(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	subl	%eax, %edx
	leal	-1(%rdx), %eax
	cltq
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movl	-24(%rbp), %eax
	subl	-136(%rbp), %eax
	subl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-136(%rbp), %eax
	movl	%eax, %esi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-136(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-144(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L44
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L45
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS1_MGF1@PLT
	testl	%eax, %eax
	js	.L46
	movl	$0, -8(%rbp)
	jmp	.L37
.L38:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -8(%rbp)
.L37:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L38
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	32(%rbp), %rdi
	movq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS1_MGF1@PLT
	testl	%eax, %eax
	js	.L47
	movl	$0, -8(%rbp)
	jmp	.L40
.L41:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-8(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -8(%rbp)
.L40:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L41
	movl	$1, -4(%rbp)
	jmp	.L33
.L43:
	nop
	jmp	.L33
.L44:
	nop
	jmp	.L33
.L45:
	nop
	jmp	.L33
.L46:
	nop
	jmp	.L33
.L47:
	nop
.L33:
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$135, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex, .-ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex
	.globl	RSA_padding_add_PKCS1_OAEP_mgf1
	.type	RSA_padding_add_PKCS1_OAEP_mgf1, @function
RSA_padding_add_PKCS1_OAEP_mgf1:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-32(%rbp), %r8
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	-36(%rbp), %esi
	pushq	%rsi
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	RSA_padding_add_PKCS1_OAEP_mgf1, .-RSA_padding_add_PKCS1_OAEP_mgf1
	.globl	RSA_padding_check_PKCS1_OAEP
	.type	RSA_padding_check_PKCS1_OAEP, @function
RSA_padding_check_PKCS1_OAEP:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %r9
	movl	-28(%rbp), %r8d
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	RSA_padding_check_PKCS1_OAEP_mgf1@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	RSA_padding_check_PKCS1_OAEP, .-RSA_padding_check_PKCS1_OAEP
	.globl	RSA_padding_check_PKCS1_OAEP_mgf1
	.type	RSA_padding_check_PKCS1_OAEP_mgf1, @function
RSA_padding_check_PKCS1_OAEP_mgf1:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%rdx, -264(%rbp)
	movl	%ecx, -256(%rbp)
	movl	%r8d, -268(%rbp)
	movq	%r9, -280(%rbp)
	movl	$0, -52(%rbp)
	movl	$-1, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L53
	call	EVP_sha1@PLT
	movq	%rax, 24(%rbp)
.L53:
	cmpq	$0, 32(%rbp)
	jne	.L54
	movq	24(%rbp), %rax
	movq	%rax, 32(%rbp)
.L54:
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -252(%rbp)
	jle	.L55
	cmpl	$0, -256(%rbp)
	jle	.L55
	cmpl	$0, -68(%rbp)
	jg	.L56
.L55:
	movl	$-1, %eax
	jmp	.L80
.L56:
	movl	-268(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L58
	movl	-68(%rbp), %eax
	addl	$1, %eax
	addl	%eax, %eax
	cmpl	%eax, -268(%rbp)
	jge	.L59
.L58:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$198, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L80
.L59:
	movl	-268(%rbp), %eax
	subl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$203, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L81
	movl	-268(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$207, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L82
	movl	-256(%rbp), %eax
	cltq
	addq	%rax, -264(%rbp)
	movl	-268(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L63
.L64:
	movl	-256(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	notl	%eax
	movl	%eax, -92(%rbp)
	movl	-256(%rbp), %eax
	movl	-92(%rbp), %edx
	andl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -256(%rbp)
	movl	-92(%rbp), %eax
	andl	$1, %eax
	negq	%rax
	addq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-92(%rbp), %edx
	subq	$1, -48(%rbp)
	andl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	addl	$1, -20(%rbp)
.L63:
	movl	-20(%rbp), %eax
	cmpl	-268(%rbp), %eax
	jl	.L64
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movl	-68(%rbp), %eax
	movslq	%eax, %rsi
	movq	32(%rbp), %rdi
	movq	-88(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS1_MGF1@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, -20(%rbp)
	jmp	.L66
.L67:
	movl	-20(%rbp), %eax
	cltq
	movzbl	-176(%rbp,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-20(%rbp), %eax
	cltq
	movb	%dl, -176(%rbp,%rax)
	addl	$1, -20(%rbp)
.L66:
	movl	-20(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L67
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movl	-52(%rbp), %eax
	movslq	%eax, %rsi
	movq	32(%rbp), %rdi
	leaq	-176(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS1_MGF1@PLT
	testl	%eax, %eax
	jne	.L84
	movl	$0, -20(%rbp)
	jmp	.L69
.L70:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -20(%rbp)
.L69:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L70
	movl	16(%rbp), %eax
	movslq	%eax, %rsi
	movq	24(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	movq	-280(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L85
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-240(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	movl	%eax, %edi
	call	constant_time_is_zero
	andl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L72
.L73:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	constant_time_eq
	movl	%eax, -96(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	movl	%eax, -100(%rbp)
	movl	-40(%rbp), %eax
	notl	%eax
	andl	-96(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_int
	movl	%eax, -28(%rbp)
	movl	-96(%rbp), %eax
	orl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	orl	-100(%rbp), %eax
	andl	%eax, -36(%rbp)
	addl	$1, -20(%rbp)
.L72:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L73
	movl	-40(%rbp), %eax
	andl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	-52(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	-252(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_ge
	andl	%eax, -36(%rbp)
	movl	-52(%rbp), %eax
	subl	-68(%rbp), %eax
	leal	-1(%rax), %ebx
	movl	-252(%rbp), %eax
	movl	-52(%rbp), %edx
	subl	-68(%rbp), %edx
	subl	$1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	constant_time_lt
	movl	%eax, %ecx
	movl	-252(%rbp), %eax
	movl	%eax, %edx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	constant_time_select_int
	movl	%eax, -252(%rbp)
	movl	$1, -32(%rbp)
	jmp	.L74
.L77:
	movl	-52(%rbp), %eax
	subl	-68(%rbp), %eax
	subl	$1, %eax
	subl	-24(%rbp), %eax
	andl	-32(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	constant_time_eq
	notl	%eax
	movl	%eax, -92(%rbp)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L75
.L76:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %ecx
	movl	-32(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-92(%rbp), %eax
	movzbl	%al, %eax
	movl	-20(%rbp), %esi
	movslq	%esi, %rdi
	movq	-64(%rbp), %rsi
	leaq	(%rdi,%rsi), %rbx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
.L75:
	movl	-52(%rbp), %eax
	subl	-32(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L76
	sall	-32(%rbp)
.L74:
	movl	-52(%rbp), %eax
	subl	-68(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -32(%rbp)
	jl	.L77
	movl	$0, -20(%rbp)
	jmp	.L78
.L79:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_lt
	andl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %ecx
	movl	-68(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-92(%rbp), %eax
	movzbl	%al, %eax
	movl	-20(%rbp), %esi
	movslq	%esi, %rdi
	movq	-248(%rbp), %rsi
	leaq	(%rdi,%rsi), %rbx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
.L78:
	movl	-20(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jl	.L79
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$308, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-36(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edi
	call	err_clear_last_constant_time@PLT
	jmp	.L61
.L81:
	nop
	jmp	.L61
.L82:
	nop
	jmp	.L61
.L83:
	nop
	jmp	.L61
.L84:
	nop
	jmp	.L61
.L85:
	nop
.L61:
	leaq	-176(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-64(%rbp), %rax
	movl	$313, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-268(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	$314, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-24(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	$-1, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_int
.L80:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	RSA_padding_check_PKCS1_OAEP_mgf1, .-RSA_padding_check_PKCS1_OAEP_mgf1
	.globl	PKCS1_MGF1
	.type	PKCS1_MGF1, @function
PKCS1_MGF1:
.LFB476:
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
	movq	%r8, -152(%rbp)
	movq	$0, -16(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movl	$-1, -20(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L99
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	js	.L100
	movq	$0, -8(%rbp)
	jmp	.L90
.L97:
	movq	-8(%rbp), %rax
	sarq	$24, %rax
	movb	%al, -40(%rbp)
	movq	-8(%rbp), %rax
	sarq	$16, %rax
	movb	%al, -39(%rbp)
	movq	-8(%rbp), %rax
	sarq	$8, %rax
	movb	%al, -38(%rbp)
	movq	-8(%rbp), %rax
	movb	%al, -37(%rbp)
	movq	-152(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L101
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L101
	leaq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L101
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -128(%rbp)
	jl	.L93
	movq	-16(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L102
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	jmp	.L95
.L93:
	leaq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L103
	movq	-128(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -16(%rbp)
.L95:
	addq	$1, -8(%rbp)
.L90:
	movq	-16(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jl	.L97
	movl	$0, -20(%rbp)
	jmp	.L88
.L99:
	nop
	jmp	.L88
.L100:
	nop
	jmp	.L88
.L101:
	nop
	jmp	.L88
.L102:
	nop
	jmp	.L88
.L103:
	nop
.L88:
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	PKCS1_MGF1, .-PKCS1_MGF1
	.section	.rodata
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 40
__func__.1:
	.string	"ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 34
__func__.0:
	.string	"RSA_padding_check_PKCS1_OAEP_mgf1"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
