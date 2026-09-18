	.file	"ct_sct.c"
	.text
	.type	ossl_check_const_SCT_sk_type, @function
ossl_check_const_SCT_sk_type:
.LFB450:
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
.LFE450:
	.size	ossl_check_const_SCT_sk_type, .-ossl_check_const_SCT_sk_type
	.type	ossl_check_SCT_sk_type, @function
ossl_check_SCT_sk_type:
.LFB451:
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
.LFE451:
	.size	ossl_check_SCT_sk_type, .-ossl_check_SCT_sk_type
	.type	ossl_check_SCT_freefunc_type, @function
ossl_check_SCT_freefunc_type:
.LFB454:
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
.LFE454:
	.size	ossl_check_SCT_freefunc_type, .-ossl_check_SCT_freefunc_type
	.section	.rodata
.LC0:
	.string	"../crypto/ct/ct_sct.c"
	.text
	.globl	SCT_new
	.type	SCT_new, @function
SCT_new:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	$-1, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
	movq	-8(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	SCT_new, .-SCT_new
	.globl	SCT_free
	.type	SCT_free, @function
SCT_free:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L13
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$39, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$41, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L10
.L13:
	nop
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	SCT_free, .-SCT_free
	.globl	SCT_LIST_free
	.type	SCT_LIST_free, @function
SCT_LIST_free:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	SCT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	SCT_LIST_free, .-SCT_LIST_free
	.globl	SCT_set_version
	.type	SCT_set_version, @function
SCT_set_version:
.LFB588:
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
	je	.L16
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	SCT_set_version, .-SCT_set_version
	.globl	SCT_set_log_entry_type
	.type	SCT_set_log_entry_type, @function
SCT_set_log_entry_type:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	cmpl	$-1, -12(%rbp)
	je	.L22
	cmpl	$-1, -12(%rbp)
	jl	.L20
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	ja	.L20
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 88(%rax)
	movl	$1, %eax
	jmp	.L21
.L22:
	nop
.L20:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$74, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	SCT_set_log_entry_type, .-SCT_set_log_entry_type
	.globl	SCT_set0_log_id
	.type	SCT_set0_log_id, @function
SCT_set0_log_id:
.LFB590:
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
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L24
	cmpq	$32, -24(%rbp)
	je	.L24
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$85, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	SCT_set0_log_id, .-SCT_set0_log_id
	.globl	SCT_set1_log_id
	.type	SCT_set1_log_id, @function
SCT_set1_log_id:
.LFB591:
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
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L27
	cmpq	$32, -24(%rbp)
	je	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$99, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	cmpq	$0, -16(%rbp)
	je	.L29
	cmpq	$0, -24(%rbp)
	je	.L29
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$105, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	movl	$0, %eax
	jmp	.L28
.L30:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L29:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	SCT_set1_log_id, .-SCT_set1_log_id
	.globl	SCT_set_timestamp
	.type	SCT_set_timestamp, @function
SCT_set_timestamp:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	SCT_set_timestamp, .-SCT_set_timestamp
	.globl	SCT_set_signature_nid
	.type	SCT_set_signature_nid, @function
SCT_set_signature_nid:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$668, -12(%rbp)
	je	.L33
	cmpl	$794, -12(%rbp)
	je	.L34
	jmp	.L37
.L33:
	movq	-8(%rbp), %rax
	movb	$4, 64(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 65(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	movl	$1, %eax
	jmp	.L36
.L34:
	movq	-8(%rbp), %rax
	movb	$4, 64(%rax)
	movq	-8(%rbp), %rax
	movb	$3, 65(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	movl	$1, %eax
	jmp	.L36
.L37:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$134, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$50, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	SCT_set_signature_nid, .-SCT_set_signature_nid
	.globl	SCT_set0_extensions
	.type	SCT_set0_extensions, @function
SCT_set0_extensions:
.LFB594:
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$141, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	SCT_set0_extensions, .-SCT_set0_extensions
	.globl	SCT_set1_extensions
	.type	SCT_set1_extensions, @function
SCT_set1_extensions:
.LFB595:
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
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$149, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	cmpq	$0, -16(%rbp)
	je	.L40
	cmpq	$0, -24(%rbp)
	je	.L40
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$155, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
.L40:
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	SCT_set1_extensions, .-SCT_set1_extensions
	.globl	SCT_set0_signature
	.type	SCT_set0_signature, @function
SCT_set0_signature:
.LFB596:
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
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$165, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	SCT_set0_signature, .-SCT_set0_signature
	.globl	SCT_set1_signature
	.type	SCT_set1_signature, @function
SCT_set1_signature:
.LFB597:
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
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$173, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	cmpq	$0, -16(%rbp)
	je	.L45
	cmpq	$0, -24(%rbp)
	je	.L45
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$179, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 80(%rax)
.L45:
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	SCT_set1_signature, .-SCT_set1_signature
	.globl	SCT_get_version
	.type	SCT_get_version, @function
SCT_get_version:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	SCT_get_version, .-SCT_get_version
	.globl	SCT_get_log_entry_type
	.type	SCT_get_log_entry_type, @function
SCT_get_log_entry_type:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	88(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	SCT_get_log_entry_type, .-SCT_get_log_entry_type
	.globl	SCT_get0_log_id
	.type	SCT_get0_log_id, @function
SCT_get0_log_id:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	SCT_get0_log_id, .-SCT_get0_log_id
	.globl	SCT_get_timestamp
	.type	SCT_get_timestamp, @function
SCT_get_timestamp:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	SCT_get_timestamp, .-SCT_get_timestamp
	.globl	SCT_get_signature_nid
	.type	SCT_get_signature_nid, @function
SCT_get_signature_nid:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L57
	movq	-8(%rbp), %rax
	movzbl	64(%rax), %eax
	cmpb	$4, %al
	jne	.L57
	movq	-8(%rbp), %rax
	movzbl	65(%rax), %eax
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.L58
	cmpl	$3, %eax
	jne	.L59
	movl	$794, %eax
	jmp	.L60
.L58:
	movl	$668, %eax
	jmp	.L60
.L59:
	movl	$0, %eax
	jmp	.L60
.L57:
	movl	$0, %eax
.L60:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	SCT_get_signature_nid, .-SCT_get_signature_nid
	.globl	SCT_get0_extensions
	.type	SCT_get0_extensions, @function
SCT_get0_extensions:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	SCT_get0_extensions, .-SCT_get0_extensions
	.globl	SCT_get0_signature
	.type	SCT_get0_signature, @function
SCT_get0_signature:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	SCT_get0_signature, .-SCT_get0_signature
	.globl	SCT_is_complete
	.type	SCT_is_complete, @function
SCT_is_complete:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L66
	testl	%eax, %eax
	je	.L67
	jmp	.L72
.L66:
	movl	$0, %eax
	jmp	.L69
.L67:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_signature_is_complete@PLT
	testl	%eax, %eax
	je	.L70
	movl	$1, %eax
	jmp	.L69
.L70:
	movl	$0, %eax
	jmp	.L69
.L72:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	SCT_is_complete, .-SCT_is_complete
	.globl	SCT_signature_is_complete
	.type	SCT_signature_is_complete, @function
SCT_signature_is_complete:
.LFB606:
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
	call	SCT_get_signature_nid@PLT
	testl	%eax, %eax
	je	.L74
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movl	$1, %eax
	jmp	.L76
.L74:
	movl	$0, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	SCT_signature_is_complete, .-SCT_signature_is_complete
	.globl	SCT_get_source
	.type	SCT_get_source, @function
SCT_get_source:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	92(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	SCT_get_source, .-SCT_get_source
	.globl	SCT_set_source
	.type	SCT_set_source, @function
SCT_set_source:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 92(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	cmpl	$3, -12(%rbp)
	je	.L80
	cmpl	$3, -12(%rbp)
	ja	.L81
	cmpl	$2, -12(%rbp)
	je	.L82
	cmpl	$2, -12(%rbp)
	ja	.L81
	cmpl	$0, -12(%rbp)
	je	.L85
	cmpl	$1, -12(%rbp)
	jne	.L81
.L80:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SCT_set_log_entry_type@PLT
	jmp	.L84
.L82:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SCT_set_log_entry_type@PLT
	jmp	.L84
.L85:
	nop
.L81:
	movl	$1, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	SCT_set_source, .-SCT_set_source
	.globl	SCT_get_validation_status
	.type	SCT_get_validation_status, @function
SCT_get_validation_status:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	SCT_get_validation_status, .-SCT_get_validation_status
	.globl	SCT_validate
	.type	SCT_validate, @function
SCT_validate:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$-1, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L89
	movq	-56(%rbp), %rax
	movl	$5, 96(%rax)
	movl	$0, %eax
	jmp	.L103
.L89:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CTLOG_STORE_get0_log_by_id@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L91
	movq	-56(%rbp), %rax
	movl	$1, 96(%rax)
	movl	$0, %eax
	jmp	.L103
.L91:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L104
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CTLOG_get0_public_key@PLT
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_PUBKEY_set@PLT
	cmpl	$1, %eax
	jne	.L105
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_CTX_set1_pubkey@PLT
	cmpl	$1, %eax
	jne	.L106
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_get_log_entry_type@PLT
	cmpl	$1, %eax
	jne	.L96
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L97
	movq	-56(%rbp), %rax
	movl	$4, 96(%rax)
	jmp	.L98
.L97:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_PUBKEY_set@PLT
	cmpl	$1, %eax
	jne	.L107
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_CTX_set1_issuer_pubkey@PLT
	cmpl	$1, %eax
	jne	.L108
.L96:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_CTX_set_time@PLT
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SCT_CTX_set1_cert@PLT
	cmpl	$1, %eax
	je	.L100
	movq	-56(%rbp), %rax
	movl	$4, 96(%rax)
	jmp	.L98
.L100:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_CTX_verify@PLT
	cmpl	$1, %eax
	jne	.L101
	movl	$2, %edx
	jmp	.L102
.L101:
	movl	$3, %edx
.L102:
	movq	-56(%rbp), %rax
	movl	%edx, 96(%rax)
.L98:
	movq	-56(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L93
.L104:
	nop
	jmp	.L93
.L105:
	nop
	jmp	.L93
.L106:
	nop
	jmp	.L93
.L107:
	nop
	jmp	.L93
.L108:
	nop
.L93:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_CTX_free@PLT
	movl	-4(%rbp), %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	SCT_validate, .-SCT_validate
	.globl	SCT_LIST_validate
	.type	SCT_LIST_validate, @function
SCT_LIST_validate:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L110
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	jmp	.L111
.L110:
	movl	$0, -8(%rbp)
.L111:
	movl	$0, -12(%rbp)
	jmp	.L112
.L117:
	movl	$-1, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L118
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_validate@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jns	.L115
	movl	-16(%rbp), %eax
	jmp	.L116
.L115:
	movl	-16(%rbp), %eax
	andl	%eax, -4(%rbp)
	jmp	.L114
.L118:
	nop
.L114:
	addl	$1, -12(%rbp)
.L112:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L117
	movl	-4(%rbp), %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	SCT_LIST_validate, .-SCT_LIST_validate
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 16
__func__.4:
	.string	"SCT_set_version"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 23
__func__.3:
	.string	"SCT_set_log_entry_type"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"SCT_set0_log_id"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"SCT_set1_log_id"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"SCT_set_signature_nid"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
