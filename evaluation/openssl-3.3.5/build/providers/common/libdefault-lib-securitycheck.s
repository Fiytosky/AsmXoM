	.file	"securitycheck.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/common/securitycheck.c"
.LC1:
	.string	"operation: %d"
.LC2:
	.string	"invalid operation: %d"
	.text
	.globl	ossl_rsa_check_key
	.type	ossl_rsa_check_key, @function
ossl_rsa_check_key:
.LFB358:
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
	movl	$0, -4(%rbp)
	cmpl	$8192, -36(%rbp)
	je	.L2
	cmpl	$8192, -36(%rbp)
	jg	.L3
	cmpl	$4096, -36(%rbp)
	je	.L4
	cmpl	$4096, -36(%rbp)
	jg	.L3
	cmpl	$1024, -36(%rbp)
	je	.L2
	cmpl	$1024, -36(%rbp)
	jg	.L3
	cmpl	$512, -36(%rbp)
	je	.L4
	cmpl	$512, -36(%rbp)
	jg	.L3
	cmpl	$64, -36(%rbp)
	je	.L2
	cmpl	$64, -36(%rbp)
	jg	.L3
	cmpl	$16, -36(%rbp)
	je	.L5
	cmpl	$32, -36(%rbp)
	je	.L10
	jmp	.L3
.L5:
	movl	$1, -4(%rbp)
	jmp	.L10
.L4:
	movl	$1, -4(%rbp)
.L2:
	movq	-32(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	cmpl	$4096, %eax
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-36(%rbp), %eax
	leaq	.LC1(%rip), %rdx
	movl	%eax, %ecx
	movl	$178, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L3:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-36(%rbp), %eax
	leaq	.LC2(%rip), %rdx
	movl	%eax, %ecx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	nop
	jmp	.L7
.L11:
	nop
.L7:
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	ossl_rsa_check_key, .-ossl_rsa_check_key
	.globl	ossl_ec_check_key
	.type	ossl_ec_check_key, @function
ossl_ec_check_key:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	ossl_ec_check_key, .-ossl_ec_check_key
	.globl	ossl_dsa_check_key
	.type	ossl_dsa_check_key, @function
ossl_dsa_check_key:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	ossl_dsa_check_key, .-ossl_dsa_check_key
	.globl	ossl_dh_check_key
	.type	ossl_dh_check_key, @function
ossl_dh_check_key:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	ossl_dh_check_key, .-ossl_dh_check_key
	.globl	ossl_digest_get_approved_nid_with_sha1
	.type	ossl_digest_get_approved_nid_with_sha1, @function
ossl_digest_get_approved_nid_with_sha1:
.LFB362:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_digest_get_approved_nid@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	ossl_digest_get_approved_nid_with_sha1, .-ossl_digest_get_approved_nid_with_sha1
	.globl	ossl_digest_is_allowed
	.type	ossl_digest_is_allowed, @function
ossl_digest_is_allowed:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	ossl_digest_is_allowed, .-ossl_digest_is_allowed
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"ossl_rsa_check_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
