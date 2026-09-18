	.file	"ct_b64.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/ct/ct_b64.c"
	.text
	.type	ct_base64_decode, @function
ct_base64_decode:
.LFB585:
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
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$2, %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$36, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecodeBlock@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L6
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L5
.L6:
	movl	$0, -16(%rbp)
	jmp	.L7
.L8:
	subl	$1, -12(%rbp)
	addl	$1, -16(%rbp)
	cmpl	$2, -16(%rbp)
	jg	.L10
.L7:
	subq	$1, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	je	.L8
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	jmp	.L3
.L9:
	nop
	jmp	.L5
.L10:
	nop
.L5:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$-1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	ct_base64_decode, .-ct_base64_decode
	.globl	SCT_new_from_base64
	.type	SCT_new_from_base64, @function
SCT_new_from_base64:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, %eax
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movb	%al, -36(%rbp)
	call	SCT_new@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524338, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L12:
	movzbl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SCT_set_version@PLT
	testl	%eax, %eax
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L15
.L14:
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ct_base64_decode
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L16
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$87, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L15
.L16:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SCT_set0_log_id@PLT
	testl	%eax, %eax
	je	.L23
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ct_base64_decode
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L18
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L15
.L18:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SCT_set0_extensions@PLT
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ct_base64_decode
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L19
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L15
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	o2i_SCT_signature@PLT
	testl	%eax, %eax
	jle	.L24
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_set_timestamp@PLT
	movl	-40(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SCT_set_log_entry_type@PLT
	testl	%eax, %eax
	je	.L25
	movq	-8(%rbp), %rax
	jmp	.L22
.L23:
	nop
	jmp	.L15
.L24:
	nop
	jmp	.L15
.L25:
	nop
.L15:
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_free@PLT
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	SCT_new_from_base64, .-SCT_new_from_base64
	.globl	CTLOG_new_from_base64_ex
	.type	CTLOG_new_from_base64_ex, @function
CTLOG_new_from_base64_ex:
.LFB587:
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
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L27:
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ct_base64_decode
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L29
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$149, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L29:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PUBKEY_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L30:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CTLOG_new_ex@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L32
.L31:
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	CTLOG_new_from_base64_ex, .-CTLOG_new_from_base64_ex
	.globl	CTLOG_new_from_base64
	.type	CTLOG_new_from_base64, @function
CTLOG_new_from_base64:
.LFB588:
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
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CTLOG_new_from_base64_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	CTLOG_new_from_base64, .-CTLOG_new_from_base64
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"ct_base64_decode"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"SCT_new_from_base64"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"CTLOG_new_from_base64_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
