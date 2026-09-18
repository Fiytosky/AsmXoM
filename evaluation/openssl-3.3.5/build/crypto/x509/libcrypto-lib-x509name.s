	.file	"x509name.c"
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
	.type	ossl_check_X509_NAME_ENTRY_type, @function
ossl_check_X509_NAME_ENTRY_type:
.LFB426:
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
.LFE426:
	.size	ossl_check_X509_NAME_ENTRY_type, .-ossl_check_X509_NAME_ENTRY_type
	.type	ossl_check_const_X509_NAME_ENTRY_sk_type, @function
ossl_check_const_X509_NAME_ENTRY_sk_type:
.LFB427:
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
.LFE427:
	.size	ossl_check_const_X509_NAME_ENTRY_sk_type, .-ossl_check_const_X509_NAME_ENTRY_sk_type
	.type	ossl_check_X509_NAME_ENTRY_sk_type, @function
ossl_check_X509_NAME_ENTRY_sk_type:
.LFB428:
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
.LFE428:
	.size	ossl_check_X509_NAME_ENTRY_sk_type, .-ossl_check_X509_NAME_ENTRY_sk_type
	.globl	X509_NAME_get_text_by_NID
	.type	X509_NAME_get_text_by_NID, @function
X509_NAME_get_text_by_NID:
.LFB514:
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
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	movl	$-1, %eax
	jmp	.L13
.L12:
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_get_text_by_OBJ@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	X509_NAME_get_text_by_NID, .-X509_NAME_get_text_by_NID
	.globl	X509_NAME_get_text_by_OBJ
	.type	X509_NAME_get_text_by_OBJ, @function
X509_NAME_get_text_by_OBJ:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_OBJ@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L15
	movl	$-1, %eax
	jmp	.L16
.L15:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L17
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L16
.L17:
	cmpl	$0, -44(%rbp)
	jg	.L18
	movl	$0, %eax
	jmp	.L16
.L18:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jg	.L19
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L20
.L19:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L20:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	X509_NAME_get_text_by_OBJ, .-X509_NAME_get_text_by_OBJ
	.globl	X509_NAME_entry_count
	.type	X509_NAME_entry_count, @function
X509_NAME_entry_count:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	X509_NAME_entry_count, .-X509_NAME_entry_count
	.globl	X509_NAME_get_index_by_NID
	.type	X509_NAME_get_index_by_NID, @function
X509_NAME_get_index_by_NID:
.LFB517:
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
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L25
	movl	$-2, %eax
	jmp	.L26
.L25:
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_OBJ@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	X509_NAME_get_index_by_NID, .-X509_NAME_get_index_by_NID
	.globl	X509_NAME_get_index_by_OBJ
	.type	X509_NAME_get_index_by_OBJ, @function
X509_NAME_get_index_by_OBJ:
.LFB518:
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
	cmpq	$0, -40(%rbp)
	jne	.L28
	movl	$-1, %eax
	jmp	.L29
.L28:
	cmpl	$0, -52(%rbp)
	jns	.L30
	movl	$-1, -52(%rbp)
.L30:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -12(%rbp)
	addl	$1, -52(%rbp)
	jmp	.L31
.L33:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	jne	.L32
	movl	-52(%rbp), %eax
	jmp	.L29
.L32:
	addl	$1, -52(%rbp)
.L31:
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L33
	movl	$-1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	X509_NAME_get_index_by_OBJ, .-X509_NAME_get_index_by_OBJ
	.globl	X509_NAME_get_entry
	.type	X509_NAME_get_entry, @function
X509_NAME_get_entry:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L35
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jge	.L35
	cmpl	$0, -12(%rbp)
	jns	.L36
.L35:
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	nop
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	X509_NAME_get_entry, .-X509_NAME_get_entry
	.globl	X509_NAME_delete_entry
	.type	X509_NAME_delete_entry, @function
X509_NAME_delete_entry:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L39
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -60(%rbp)
	jge	.L39
	cmpl	$0, -60(%rbp)
	jns	.L40
.L39:
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_delete@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, 8(%rax)
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L42
	movq	-40(%rbp), %rax
	jmp	.L41
.L42:
	cmpl	$0, -60(%rbp)
	je	.L43
	movl	-60(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movl	16(%rax), %eax
	movl	%eax, -24(%rbp)
	jmp	.L44
.L43:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
.L44:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movl	16(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -48(%rbp)
	jle	.L45
	movl	-60(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L46
.L47:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
	addl	$1, -20(%rbp)
.L46:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L47
.L45:
	movq	-40(%rbp), %rax
.L41:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	X509_NAME_delete_entry, .-X509_NAME_delete_entry
	.globl	X509_NAME_add_entry_by_OBJ
	.type	X509_NAME_add_entry_by_OBJ, @function
X509_NAME_add_entry_by_OBJ:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -52(%rbp)
	movl	-40(%rbp), %esi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_NAME_ENTRY_create_by_OBJ@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movl	16(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_add_entry@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
	movl	-12(%rbp), %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	X509_NAME_add_entry_by_OBJ, .-X509_NAME_add_entry_by_OBJ
	.globl	X509_NAME_add_entry_by_NID
	.type	X509_NAME_add_entry_by_NID, @function
X509_NAME_add_entry_by_NID:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	movl	$0, %edi
	call	X509_NAME_ENTRY_create_by_NID@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movl	16(%rbp), %ecx
	movl	-48(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_add_entry@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
	movl	-12(%rbp), %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	X509_NAME_add_entry_by_NID, .-X509_NAME_add_entry_by_NID
	.globl	X509_NAME_add_entry_by_txt
	.type	X509_NAME_add_entry_by_txt, @function
X509_NAME_add_entry_by_txt:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -52(%rbp)
	movl	-40(%rbp), %esi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_NAME_ENTRY_create_by_txt@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movl	16(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_add_entry@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
	movl	-12(%rbp), %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	X509_NAME_add_entry_by_txt, .-X509_NAME_add_entry_by_txt
	.section	.rodata
.LC0:
	.string	"../crypto/x509/x509name.c"
	.text
	.globl	X509_NAME_add_entry
	.type	X509_NAME_add_entry, @function
X509_NAME_add_entry:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -44(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L60
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	.L61
.L60:
	cmpl	$0, -68(%rbp)
	jns	.L61
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)
.L61:
	cmpl	$0, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, 8(%rax)
	cmpl	$-1, -72(%rbp)
	jne	.L62
	cmpl	$0, -68(%rbp)
	jne	.L63
	movl	$0, -72(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L64
.L63:
	movl	-68(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movl	16(%rax), %eax
	movl	%eax, -72(%rbp)
	jmp	.L64
.L62:
	movl	-68(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L65
	cmpl	$0, -68(%rbp)
	je	.L66
	movl	-68(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movl	16(%rax), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.L64
.L66:
	movl	$0, -72(%rbp)
	jmp	.L64
.L65:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movl	16(%rax), %eax
	movl	%eax, -72(%rbp)
.L64:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L73
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rax, %rcx
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_sk_insert@PLT
	testl	%eax, %eax
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L68
.L69:
	cmpl	$0, -24(%rbp)
	je	.L70
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -44(%rbp)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L71
.L72:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	addl	$1, -20(%rbp)
.L71:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L72
.L70:
	movl	$1, %eax
	jmp	.L59
.L73:
	nop
.L68:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
	movl	$0, %eax
.L59:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	X509_NAME_add_entry, .-X509_NAME_add_entry
	.section	.rodata
.LC1:
	.string	"name=%s"
	.text
	.globl	X509_NAME_ENTRY_create_by_txt
	.type	X509_NAME_ENTRY_create_by_txt, @function
X509_NAME_ENTRY_create_by_txt:
.LFB525:
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
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$119, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L75:
	movl	-40(%rbp), %edi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_create_by_OBJ@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-16(%rbp), %rax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	X509_NAME_ENTRY_create_by_txt, .-X509_NAME_ENTRY_create_by_txt
	.globl	X509_NAME_ENTRY_create_by_NID
	.type	X509_NAME_ENTRY_create_by_NID, @function
X509_NAME_ENTRY_create_by_NID:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L79
.L78:
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_create_by_OBJ@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-16(%rbp), %rax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	X509_NAME_ENTRY_create_by_NID, .-X509_NAME_ENTRY_create_by_NID
	.globl	X509_NAME_ENTRY_create_by_OBJ
	.type	X509_NAME_ENTRY_create_by_OBJ, @function
X509_NAME_ENTRY_create_by_OBJ:
.LFB527:
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
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L81
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L82
.L81:
	call	X509_NAME_ENTRY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L85
	movl	$0, %eax
	jmp	.L84
.L82:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L85:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_set_object@PLT
	testl	%eax, %eax
	je	.L92
	movl	-40(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_set_data@PLT
	testl	%eax, %eax
	je	.L93
	cmpq	$0, -24(%rbp)
	je	.L89
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L89:
	movq	-8(%rbp), %rax
	jmp	.L84
.L92:
	nop
	jmp	.L87
.L93:
	nop
.L87:
	cmpq	$0, -24(%rbp)
	je	.L90
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L91
.L90:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
.L91:
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	X509_NAME_ENTRY_create_by_OBJ, .-X509_NAME_ENTRY_create_by_OBJ
	.globl	X509_NAME_ENTRY_set_object
	.type	X509_NAME_ENTRY_set_object, @function
X509_NAME_ENTRY_set_object:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L95
	cmpq	$0, -16(%rbp)
	jne	.L96
.L95:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L97
.L96:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	X509_NAME_ENTRY_set_object, .-X509_NAME_ENTRY_set_object
	.globl	X509_NAME_ENTRY_set_data
	.type	X509_NAME_ENTRY_set_data, @function
X509_NAME_ENTRY_set_data:
.LFB529:
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
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L99
	cmpq	$0, -56(%rbp)
	jne	.L100
	cmpl	$0, -48(%rbp)
	je	.L100
.L99:
	movl	$0, %eax
	jmp	.L101
.L100:
	cmpl	$0, -44(%rbp)
	jle	.L102
	movl	-44(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L102
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdi
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	ASN1_STRING_set_by_NID@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L101
.L102:
	cmpl	$0, -48(%rbp)
	jns	.L103
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -48(%rbp)
.L103:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L104
	movl	$0, %eax
	jmp	.L101
.L104:
	cmpl	$-1, -44(%rbp)
	je	.L105
	cmpl	$-2, -44(%rbp)
	jne	.L106
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_PRINTABLE_type@PLT
	movl	%eax, 4(%rbx)
	jmp	.L105
.L106:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 4(%rax)
.L105:
	movl	$1, %eax
.L101:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	X509_NAME_ENTRY_set_data, .-X509_NAME_ENTRY_set_data
	.globl	X509_NAME_ENTRY_get_object
	.type	X509_NAME_ENTRY_get_object, @function
X509_NAME_ENTRY_get_object:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L109:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	X509_NAME_ENTRY_get_object, .-X509_NAME_ENTRY_get_object
	.globl	X509_NAME_ENTRY_get_data
	.type	X509_NAME_ENTRY_get_data, @function
X509_NAME_ENTRY_get_data:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L112:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	X509_NAME_ENTRY_get_data, .-X509_NAME_ENTRY_get_data
	.globl	X509_NAME_ENTRY_set
	.type	X509_NAME_ENTRY_set, @function
X509_NAME_ENTRY_set:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	X509_NAME_ENTRY_set, .-X509_NAME_ENTRY_set
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"X509_NAME_add_entry"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 30
__func__.2:
	.string	"X509_NAME_ENTRY_create_by_txt"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 30
__func__.1:
	.string	"X509_NAME_ENTRY_create_by_NID"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"X509_NAME_ENTRY_set_object"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
