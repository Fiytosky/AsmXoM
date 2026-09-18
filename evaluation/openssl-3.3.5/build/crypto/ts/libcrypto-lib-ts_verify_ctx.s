	.file	"ts_verify_ctx.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/ts/ts_verify_ctx.c"
	.text
	.globl	TS_VERIFY_CTX_new
	.type	TS_VERIFY_CTX_new, @function
TS_VERIFY_CTX_new:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$17, %edx
	movq	%rax, %rsi
	movl	$80, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	TS_VERIFY_CTX_new, .-TS_VERIFY_CTX_new
	.section	.rodata
.LC1:
	.string	"assertion failed: ctx != NULL"
	.text
	.globl	TS_VERIFY_CTX_init
	.type	TS_VERIFY_CTX_init, @function
TS_VERIFY_CTX_init:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L8:
	movq	-8(%rbp), %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	TS_VERIFY_CTX_init, .-TS_VERIFY_CTX_init
	.globl	TS_VERIFY_CTX_free
	.type	TS_VERIFY_CTX_free, @function
TS_VERIFY_CTX_free:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_cleanup@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$34, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L9
.L12:
	nop
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	TS_VERIFY_CTX_free, .-TS_VERIFY_CTX_free
	.globl	TS_VERIFY_CTX_add_flags
	.type	TS_VERIFY_CTX_add_flags, @function
TS_VERIFY_CTX_add_flags:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	TS_VERIFY_CTX_add_flags, .-TS_VERIFY_CTX_add_flags
	.globl	TS_VERIFY_CTX_set_flags
	.type	TS_VERIFY_CTX_set_flags, @function
TS_VERIFY_CTX_set_flags:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	TS_VERIFY_CTX_set_flags, .-TS_VERIFY_CTX_set_flags
	.globl	TS_VERIFY_CTX_set_data
	.type	TS_VERIFY_CTX_set_data, @function
TS_VERIFY_CTX_set_data:
.LFB634:
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
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	TS_VERIFY_CTX_set_data, .-TS_VERIFY_CTX_set_data
	.globl	TS_VERIFY_CTX_set_store
	.type	TS_VERIFY_CTX_set_store, @function
TS_VERIFY_CTX_set_store:
.LFB635:
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
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	TS_VERIFY_CTX_set_store, .-TS_VERIFY_CTX_set_store
	.globl	TS_VERIFY_CTX_set_certs
	.type	TS_VERIFY_CTX_set_certs, @function
TS_VERIFY_CTX_set_certs:
.LFB636:
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
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	TS_VERIFY_CTX_set_certs, .-TS_VERIFY_CTX_set_certs
	.globl	TS_VERIFY_CTX_set_imprint
	.type	TS_VERIFY_CTX_set_imprint, @function
TS_VERIFY_CTX_set_imprint:
.LFB637:
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
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	TS_VERIFY_CTX_set_imprint, .-TS_VERIFY_CTX_set_imprint
	.globl	TS_VERIFY_CTX_cleanup
	.type	TS_VERIFY_CTX_cleanup, @function
TS_VERIFY_CTX_cleanup:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$88, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_init@PLT
	jmp	.L25
.L28:
	nop
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	TS_VERIFY_CTX_cleanup, .-TS_VERIFY_CTX_cleanup
	.section	.rodata
.LC2:
	.string	"assertion failed: req != NULL"
	.text
	.globl	TS_REQ_to_TS_VERIFY_CTX
	.type	TS_REQ_to_TS_VERIFY_CTX, @function
TS_REQ_to_TS_VERIFY_CTX:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L30
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$108, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L30:
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_cleanup@PLT
	jmp	.L32
.L31:
	call	TS_VERIFY_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-24(%rbp), %rax
	movl	$110, (%rax)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L34
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	jmp	.L36
.L34:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L35:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L45
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rax
	movl	$130, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L40
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	jmp	.L36
.L40:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$-33, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L41:
	movq	-24(%rbp), %rax
	jmp	.L33
.L44:
	nop
	jmp	.L36
.L45:
	nop
	jmp	.L36
.L46:
	nop
.L36:
	cmpq	$0, -80(%rbp)
	je	.L42
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_cleanup@PLT
	jmp	.L43
.L42:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	TS_VERIFY_CTX_free@PLT
.L43:
	movl	$0, %eax
.L33:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	TS_REQ_to_TS_VERIFY_CTX, .-TS_REQ_to_TS_VERIFY_CTX
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
