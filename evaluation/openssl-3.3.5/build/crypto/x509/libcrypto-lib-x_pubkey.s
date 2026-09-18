	.file	"x_pubkey.c"
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
	.string	"../crypto/x509/x_pubkey.c"
	.text
	.type	x509_pubkey_set0_libctx, @function
x509_pubkey_set0_libctx:
.LFB601:
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
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$52, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -24(%rbp)
	je	.L6
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$55, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	x509_pubkey_set0_libctx, .-x509_pubkey_set0_libctx
	.section	.rodata
.LC1:
	.string	"algor"
.LC2:
	.string	"public_key"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X509_PUBKEY_INTERNAL_seq_tt, @object
	.size	X509_PUBKEY_INTERNAL_seq_tt, 80
X509_PUBKEY_INTERNAL_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC2
	.quad	ASN1_BIT_STRING_it
	.text
	.type	X509_PUBKEY_INTERNAL_it, @function
X509_PUBKEY_INTERNAL_it:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.17(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	X509_PUBKEY_INTERNAL_it, .-X509_PUBKEY_INTERNAL_it
	.globl	ossl_d2i_X509_PUBKEY_INTERNAL
	.type	ossl_d2i_X509_PUBKEY_INTERNAL, @function
ossl_d2i_X509_PUBKEY_INTERNAL:
.LFB603:
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
	leaq	.LC0(%rip), %rax
	movl	$72, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$0, %eax
	jmp	.L13
.L11:
	call	X509_PUBKEY_INTERNAL_it
	movq	%rax, %rcx
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	leaq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_d2i_ex@PLT
	nop
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ossl_d2i_X509_PUBKEY_INTERNAL, .-ossl_d2i_X509_PUBKEY_INTERNAL
	.globl	ossl_X509_PUBKEY_INTERNAL_free
	.type	ossl_X509_PUBKEY_INTERNAL_free, @function
ossl_X509_PUBKEY_INTERNAL_free:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_PUBKEY_INTERNAL_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	ossl_X509_PUBKEY_INTERNAL_free, .-ossl_X509_PUBKEY_INTERNAL_free
	.type	x509_pubkey_ex_free, @function
x509_pubkey_ex_free:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L17
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$94, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$95, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.L17:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	x509_pubkey_ex_free, .-x509_pubkey_ex_free
	.type	x509_pubkey_ex_populate, @function
x509_pubkey_ex_populate:
.LFB606:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	call	X509_ALGOR_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
.L19:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	call	ASN1_BIT_STRING_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L20
.L21:
	movl	$1, %eax
	jmp	.L23
.L20:
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	x509_pubkey_ex_populate, .-x509_pubkey_ex_populate
	.type	x509_pubkey_ex_new_ex, @function
x509_pubkey_ex_new_ex:
.LFB607:
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
	leaq	.LC0(%rip), %rax
	movl	$116, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L25
	movl	$0, %eax
	jmp	.L30
.L25:
	leaq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	x509_pubkey_ex_populate
	testl	%eax, %eax
	je	.L27
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x509_pubkey_set0_libctx
	testl	%eax, %eax
	jne	.L28
.L27:
	leaq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	x509_pubkey_ex_free
	movq	$0, -8(%rbp)
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$122, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L28:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L29:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	x509_pubkey_ex_new_ex, .-x509_pubkey_ex_new_ex
	.section	.rodata
.LC3:
	.string	"SubjectPublicKeyInfo"
.LC4:
	.string	"DER"
	.text
	.type	x509_pubkey_ex_d2i_ex, @function
x509_pubkey_ex_d2i_ex:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	%r8d, -180(%rbp)
	movl	%r9d, -184(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -188(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	x509_pubkey_ex_new_ex
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-152(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	x509_pubkey_ex_populate
	testl	%eax, %eax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L34:
	movsbl	-188(%rbp), %ebx
	call	X509_PUBKEY_INTERNAL_it
	movq	%rax, %rcx
	movl	-184(%rbp), %r8d
	movl	-180(%rbp), %edi
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	pushq	24(%rbp)
	pushq	%rbx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ASN1_item_ex_d2i@PLT
	addq	$16, %rsp
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L35
	movl	-28(%rbp), %eax
	jmp	.L33
.L35:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$158, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L36:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
	call	ERR_set_mark@PLT
	movq	-64(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	x509_pubkey_decode
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L37
	call	ERR_clear_last_mark@PLT
	jmp	.L38
.L37:
	cmpl	$0, -28(%rbp)
	jg	.L39
	movq	-64(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L39
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -184(%rbp)
	je	.L40
	leaq	.LC0(%rip), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$194, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L41
	movl	$0, %eax
	jmp	.L33
.L41:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movb	$48, (%rax)
.L40:
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jg	.L42
	call	ERR_clear_last_mark@PLT
	jmp	.L38
.L42:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	24(%rax), %r8
	movq	-64(%rbp), %rax
	leaq	16(%rax), %rdi
	leaq	-144(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movl	$134, %r8d
	movq	%rax, %rcx
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L39
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_data@PLT
	testl	%eax, %eax
	je	.L39
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L39
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L39:
	call	ERR_pop_to_mark@PLT
	movl	$1, -28(%rbp)
.L38:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$234, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
.L33:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	x509_pubkey_ex_d2i_ex, .-x509_pubkey_ex_d2i_ex
	.type	x509_pubkey_ex_i2d, @function
x509_pubkey_ex_i2d:
.LFB609:
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
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	call	X509_PUBKEY_INTERNAL_it
	movq	%rax, %rdi
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ASN1_item_ex_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	x509_pubkey_ex_i2d, .-x509_pubkey_ex_i2d
	.type	x509_pubkey_ex_print, @function
x509_pubkey_ex_print:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	call	X509_PUBKEY_INTERNAL_it
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_print@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	x509_pubkey_ex_print, .-x509_pubkey_ex_print
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	x509_pubkey_ff, @object
	.size	x509_pubkey_ff, 72
x509_pubkey_ff:
	.quad	0
	.quad	0
	.quad	x509_pubkey_ex_free
	.quad	0
	.quad	0
	.quad	x509_pubkey_ex_i2d
	.quad	x509_pubkey_ex_print
	.quad	x509_pubkey_ex_new_ex
	.quad	x509_pubkey_ex_d2i_ex
	.text
	.globl	X509_PUBKEY_it
	.type	X509_PUBKEY_it, @function
X509_PUBKEY_it:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.14(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	X509_PUBKEY_it, .-X509_PUBKEY_it
	.globl	d2i_X509_PUBKEY
	.type	d2i_X509_PUBKEY, @function
d2i_X509_PUBKEY:
.LFB612:
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
	call	X509_PUBKEY_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	d2i_X509_PUBKEY, .-d2i_X509_PUBKEY
	.globl	i2d_X509_PUBKEY
	.type	i2d_X509_PUBKEY, @function
i2d_X509_PUBKEY:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_PUBKEY_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	i2d_X509_PUBKEY, .-i2d_X509_PUBKEY
	.globl	X509_PUBKEY_new
	.type	X509_PUBKEY_new, @function
X509_PUBKEY_new:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_PUBKEY_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	X509_PUBKEY_new, .-X509_PUBKEY_new
	.globl	X509_PUBKEY_free
	.type	X509_PUBKEY_free, @function
X509_PUBKEY_free:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_PUBKEY_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	X509_PUBKEY_free, .-X509_PUBKEY_free
	.globl	X509_PUBKEY_new_ex
	.type	X509_PUBKEY_new_ex, @function
X509_PUBKEY_new_ex:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	call	X509_PUBKEY_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x509_pubkey_set0_libctx
	testl	%eax, %eax
	jne	.L59
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	$0, -8(%rbp)
.L59:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	X509_PUBKEY_new_ex, .-X509_PUBKEY_new_ex
	.globl	X509_PUBKEY_dup
	.type	X509_PUBKEY_dup, @function
X509_PUBKEY_dup:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$285, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L62
	movl	$0, %eax
	jmp	.L69
.L62:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x509_pubkey_set0_libctx
	testl	%eax, %eax
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$290, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	X509_PUBKEY_INTERNAL_it
	movq	%rax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x509_pubkey_ex_free
	movl	$0, %eax
	jmp	.L69
.L64:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rbx
	movq	%rax, %rdi
	call	X509_ALGOR_dup@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L65
	movq	-24(%rbp), %rbx
	call	ASN1_BIT_STRING_new@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L65
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set@PLT
	testl	%eax, %eax
	jne	.L66
.L65:
	call	X509_PUBKEY_INTERNAL_it
	movq	%rax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x509_pubkey_ex_free
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$302, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L69
.L66:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L67
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rbx
	movq	%rax, %rdi
	call	EVP_PKEY_dup@PLT
	movq	%rax, 16(%rbx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movq	-24(%rbp), %rax
	movzbl	40(%rax), %edx
	orl	$1, %edx
	movb	%dl, 40(%rax)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$16, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	x509_pubkey_decode
	testl	%eax, %eax
	jg	.L68
	call	X509_PUBKEY_INTERNAL_it
	movq	%rax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x509_pubkey_ex_free
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
	jmp	.L69
.L68:
	call	ERR_pop_to_mark@PLT
.L67:
	movq	-24(%rbp), %rax
.L69:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	X509_PUBKEY_dup, .-X509_PUBKEY_dup
	.globl	X509_PUBKEY_set
	.type	X509_PUBKEY_set, @function
X509_PUBKEY_set:
.LFB618:
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
	cmpq	$0, -56(%rbp)
	je	.L71
	cmpq	$0, -64(%rbp)
	jne	.L72
.L71:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L73
.L72:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L74
	call	X509_PUBKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$334, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L75:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L77
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L77:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$343, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L74:
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_data@PLT
	testl	%eax, %eax
	je	.L79
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_PUBKEY@PLT
	movq	%rax, -8(%rbp)
.L79:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$361, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L78:
	cmpq	$0, -8(%rbp)
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$365, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L80:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L81:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L82:
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	jmp	.L73
.L76:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movl	$0, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	X509_PUBKEY_set, .-X509_PUBKEY_set
	.type	x509_pubkey_decode, @function
x509_pubkey_decode:
.LFB619:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L84
	movq	$0, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ENGINE_get_pkey_meth_engine@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L85
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
.L84:
	call	EVP_PKEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L86
.L87:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	testl	%eax, %eax
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$430, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L89
.L88:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L91
	jmp	.L89
.L90:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$443, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L89
.L91:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L86
.L89:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	x509_pubkey_decode, .-x509_pubkey_decode
	.globl	X509_PUBKEY_get0
	.type	X509_PUBKEY_get0, @function
X509_PUBKEY_get0:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L93
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$458, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$464, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L95:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	X509_PUBKEY_get0, .-X509_PUBKEY_get0
	.globl	X509_PUBKEY_get
	.type	X509_PUBKEY_get, @function
X509_PUBKEY_get:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L97
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L97
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$476, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$0, -8(%rbp)
.L97:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	X509_PUBKEY_get, .-X509_PUBKEY_get
	.type	d2i_PUBKEY_int, @function
d2i_PUBKEY_int:
.LFB622:
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
	movl	%r9d, -92(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L100
	cmpq	$0, -88(%rbp)
	jne	.L100
	cmpl	$0, -92(%rbp)
	je	.L101
.L100:
	leaq	.LC0(%rip), %rax
	movl	$507, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L102
	movl	$0, %eax
	jmp	.L108
.L102:
	movq	-32(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x509_pubkey_set0_libctx
	testl	%eax, %eax
	je	.L109
	movq	-32(%rbp), %rax
	cmpl	$0, -92(%rbp)
	setne	%dl
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	40(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 40(%rax)
	leaq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L101:
	movq	-72(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L110
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	$0, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L111
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -56(%rbp)
	je	.L112
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L105
.L109:
	nop
	jmp	.L105
.L110:
	nop
	jmp	.L105
.L111:
	nop
	jmp	.L105
.L112:
	nop
.L105:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	-16(%rbp), %rax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	d2i_PUBKEY_int, .-d2i_PUBKEY_int
	.globl	ossl_d2i_PUBKEY_legacy
	.type	ossl_d2i_PUBKEY_legacy, @function
ossl_d2i_PUBKEY_legacy:
.LFB623:
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
	subq	$8, %rsp
	movq	d2i_X509_PUBKEY@GOTPCREL(%rip), %rcx
	pushq	%rcx
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	d2i_PUBKEY_int
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	ossl_d2i_PUBKEY_legacy, .-ossl_d2i_PUBKEY_legacy
	.globl	d2i_PUBKEY_ex
	.type	d2i_PUBKEY_ex, @function
d2i_PUBKEY_ex:
.LFB624:
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
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	d2i_X509_PUBKEY@GOTPCREL(%rip), %r8
	pushq	%r8
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	d2i_PUBKEY_int
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	d2i_PUBKEY_ex, .-d2i_PUBKEY_ex
	.globl	d2i_PUBKEY
	.type	d2i_PUBKEY, @function
d2i_PUBKEY:
.LFB625:
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
	call	d2i_PUBKEY_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	d2i_PUBKEY, .-d2i_PUBKEY
	.globl	i2d_PUBKEY
	.type	i2d_PUBKEY, @function
i2d_PUBKEY:
.LFB626:
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
	cmpq	$0, -56(%rbp)
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	$0, -32(%rbp)
	call	X509_PUBKEY_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L123
	movl	$-1, %eax
	jmp	.L121
.L123:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L124
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_PUBKEY@PLT
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
.L124:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	jmp	.L125
.L122:
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L125
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	je	.L126
	cmpq	$0, -24(%rbp)
	je	.L126
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	je	.L126
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L126
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L126
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L126
.L127:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L126:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
.L125:
	movl	-4(%rbp), %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	i2d_PUBKEY, .-i2d_PUBKEY
	.globl	d2i_RSA_PUBKEY
	.type	d2i_RSA_PUBKEY, @function
d2i_RSA_PUBKEY:
.LFB627:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L129
	movl	$0, %eax
	jmp	.L133
.L129:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_RSA@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L131
	movl	$0, %eax
	jmp	.L133
.L131:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L132
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L132:
	movq	-8(%rbp), %rax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	d2i_RSA_PUBKEY, .-d2i_RSA_PUBKEY
	.globl	i2d_RSA_PUBKEY
	.type	i2d_RSA_PUBKEY, @function
i2d_RSA_PUBKEY:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L137
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$635, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L136
.L137:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	i2d_RSA_PUBKEY, .-i2d_RSA_PUBKEY
	.globl	ossl_d2i_DH_PUBKEY
	.type	ossl_d2i_DH_PUBKEY, @function
ossl_d2i_DH_PUBKEY:
.LFB629:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L139
	movl	$0, %eax
	jmp	.L144
.L139:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$28, %eax
	jne	.L141
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_DH@PLT
	movq	%rax, -8(%rbp)
.L141:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L142
	movl	$0, %eax
	jmp	.L144
.L142:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L143
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L143:
	movq	-8(%rbp), %rax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	ossl_d2i_DH_PUBKEY, .-ossl_d2i_DH_PUBKEY
	.globl	ossl_i2d_DH_PUBKEY
	.type	ossl_i2d_DH_PUBKEY, @function
ossl_i2d_DH_PUBKEY:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L146
	movl	$0, %eax
	jmp	.L147
.L146:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L148
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$677, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L147
.L148:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$28, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ossl_i2d_DH_PUBKEY, .-ossl_i2d_DH_PUBKEY
	.globl	ossl_d2i_DHx_PUBKEY
	.type	ossl_d2i_DHx_PUBKEY, @function
ossl_d2i_DHx_PUBKEY:
.LFB631:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L150
	movl	$0, %eax
	jmp	.L155
.L150:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$920, %eax
	jne	.L152
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_DH@PLT
	movq	%rax, -8(%rbp)
.L152:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L153
	movl	$0, %eax
	jmp	.L155
.L153:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L154
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L154:
	movq	-8(%rbp), %rax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ossl_d2i_DHx_PUBKEY, .-ossl_d2i_DHx_PUBKEY
	.globl	ossl_i2d_DHx_PUBKEY
	.type	ossl_i2d_DHx_PUBKEY, @function
ossl_i2d_DHx_PUBKEY:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L157
	movl	$0, %eax
	jmp	.L158
.L157:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$718, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L158
.L159:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$920, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ossl_i2d_DHx_PUBKEY, .-ossl_i2d_DHx_PUBKEY
	.globl	d2i_DSA_PUBKEY
	.type	d2i_DSA_PUBKEY, @function
d2i_DSA_PUBKEY:
.LFB633:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L161
	movl	$0, %eax
	jmp	.L165
.L161:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_DSA@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L163
	movl	$0, %eax
	jmp	.L165
.L163:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L164
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L164:
	movq	-8(%rbp), %rax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	d2i_DSA_PUBKEY, .-d2i_DSA_PUBKEY
	.globl	ossl_d2i_DSA_PUBKEY
	.type	ossl_d2i_DSA_PUBKEY, @function
ossl_d2i_DSA_PUBKEY:
.LFB634:
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
	movq	$0, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_DSA_PUBKEY@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L167
	movl	$0, %eax
	jmp	.L172
.L167:
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pqg@PLT
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L169
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L169
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L170
.L169:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movl	$0, %eax
	jmp	.L172
.L170:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -56(%rbp)
	je	.L171
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L171:
	movq	-8(%rbp), %rax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	ossl_d2i_DSA_PUBKEY, .-ossl_d2i_DSA_PUBKEY
	.globl	i2d_DSA_PUBKEY
	.type	i2d_DSA_PUBKEY, @function
i2d_DSA_PUBKEY:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L174
	movl	$0, %eax
	jmp	.L175
.L174:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L176
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$784, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L175
.L176:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	i2d_DSA_PUBKEY, .-i2d_DSA_PUBKEY
	.globl	d2i_EC_PUBKEY
	.type	d2i_EC_PUBKEY, @function
d2i_EC_PUBKEY:
.LFB636:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L178
	movl	$0, %eax
	jmp	.L184
.L178:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, -20(%rbp)
	cmpl	$408, -20(%rbp)
	je	.L180
	cmpl	$1172, -20(%rbp)
	jne	.L181
.L180:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_EC_KEY@PLT
	movq	%rax, -8(%rbp)
.L181:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L182
	movl	$0, %eax
	jmp	.L184
.L182:
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L183
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L183:
	movq	-8(%rbp), %rax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	d2i_EC_PUBKEY, .-d2i_EC_PUBKEY
	.globl	i2d_EC_PUBKEY
	.type	i2d_EC_PUBKEY, @function
i2d_EC_PUBKEY:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L186
	movl	$0, %eax
	jmp	.L187
.L186:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L188
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$829, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L187
.L188:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	i2d_EC_PUBKEY, .-i2d_EC_PUBKEY
	.globl	ossl_d2i_ED25519_PUBKEY
	.type	ossl_d2i_ED25519_PUBKEY, @function
ossl_d2i_ED25519_PUBKEY:
.LFB638:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L190
	movl	$0, %eax
	jmp	.L194
.L190:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_evp_pkey_get1_ED25519@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L192
	movl	$0, %eax
	jmp	.L194
.L192:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L193
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L193:
	movq	-8(%rbp), %rax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ossl_d2i_ED25519_PUBKEY, .-ossl_d2i_ED25519_PUBKEY
	.globl	ossl_i2d_ED25519_PUBKEY
	.type	ossl_i2d_ED25519_PUBKEY, @function
ossl_i2d_ED25519_PUBKEY:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L196
	movl	$0, %eax
	jmp	.L197
.L196:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L198
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$871, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L197
.L198:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1087, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ossl_i2d_ED25519_PUBKEY, .-ossl_i2d_ED25519_PUBKEY
	.globl	ossl_d2i_ED448_PUBKEY
	.type	ossl_d2i_ED448_PUBKEY, @function
ossl_d2i_ED448_PUBKEY:
.LFB640:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L200
	movl	$0, %eax
	jmp	.L205
.L200:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$1088, %eax
	jne	.L202
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_evp_pkey_get1_ED448@PLT
	movq	%rax, -8(%rbp)
.L202:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L203
	movl	$0, %eax
	jmp	.L205
.L203:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L204
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L204:
	movq	-8(%rbp), %rax
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_d2i_ED448_PUBKEY, .-ossl_d2i_ED448_PUBKEY
	.globl	ossl_i2d_ED448_PUBKEY
	.type	ossl_i2d_ED448_PUBKEY, @function
ossl_i2d_ED448_PUBKEY:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L207
	movl	$0, %eax
	jmp	.L208
.L207:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L209
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$913, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L208
.L209:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1088, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ossl_i2d_ED448_PUBKEY, .-ossl_i2d_ED448_PUBKEY
	.globl	ossl_d2i_X25519_PUBKEY
	.type	ossl_d2i_X25519_PUBKEY, @function
ossl_d2i_X25519_PUBKEY:
.LFB642:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L211
	movl	$0, %eax
	jmp	.L216
.L211:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$1034, %eax
	jne	.L213
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_evp_pkey_get1_X25519@PLT
	movq	%rax, -8(%rbp)
.L213:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L214
	movl	$0, %eax
	jmp	.L216
.L214:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L215
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L215:
	movq	-8(%rbp), %rax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ossl_d2i_X25519_PUBKEY, .-ossl_d2i_X25519_PUBKEY
	.globl	ossl_i2d_X25519_PUBKEY
	.type	ossl_i2d_X25519_PUBKEY, @function
ossl_i2d_X25519_PUBKEY:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L218
	movl	$0, %eax
	jmp	.L219
.L218:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L220
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$955, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L219
.L220:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1034, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	ossl_i2d_X25519_PUBKEY, .-ossl_i2d_X25519_PUBKEY
	.globl	ossl_d2i_X448_PUBKEY
	.type	ossl_d2i_X448_PUBKEY, @function
ossl_d2i_X448_PUBKEY:
.LFB644:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_d2i_PUBKEY_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L222
	movl	$0, %eax
	jmp	.L227
.L222:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$1035, %eax
	jne	.L224
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_evp_pkey_get1_X448@PLT
	movq	%rax, -8(%rbp)
.L224:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L225
	movl	$0, %eax
	jmp	.L227
.L225:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L226
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L226:
	movq	-8(%rbp), %rax
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	ossl_d2i_X448_PUBKEY, .-ossl_d2i_X448_PUBKEY
	.globl	ossl_i2d_X448_PUBKEY
	.type	ossl_i2d_X448_PUBKEY, @function
ossl_i2d_X448_PUBKEY:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L229
	movl	$0, %eax
	jmp	.L230
.L229:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L231
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$997, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L230
.L231:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1035, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	ossl_i2d_X448_PUBKEY, .-ossl_i2d_X448_PUBKEY
	.globl	X509_PUBKEY_set0_public_key
	.type	X509_PUBKEY_set0_public_key, @function
X509_PUBKEY_set0_public_key:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	X509_PUBKEY_set0_public_key, .-X509_PUBKEY_set0_public_key
	.globl	X509_PUBKEY_set0_param
	.type	X509_PUBKEY_set0_param, @function
X509_PUBKEY_set0_param:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	jne	.L234
	movl	$0, %eax
	jmp	.L235
.L234:
	cmpq	$0, -40(%rbp)
	je	.L236
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_PUBKEY_set0_public_key@PLT
.L236:
	movl	$1, %eax
.L235:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	X509_PUBKEY_set0_param, .-X509_PUBKEY_set0_param
	.globl	X509_PUBKEY_get0_param
	.type	X509_PUBKEY_get0_param, @function
X509_PUBKEY_get0_param:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L238
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L238:
	cmpq	$0, -16(%rbp)
	je	.L239
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L239:
	cmpq	$0, -32(%rbp)
	je	.L240
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L240:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	X509_PUBKEY_get0_param, .-X509_PUBKEY_get0_param
	.globl	X509_get0_pubkey_bitstr
	.type	X509_get0_pubkey_bitstr, @function
X509_get0_pubkey_bitstr:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L243
	movl	$0, %eax
	jmp	.L244
.L243:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	8(%rax), %rax
.L244:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	X509_get0_pubkey_bitstr, .-X509_get0_pubkey_bitstr
	.globl	X509_PUBKEY_eq
	.type	X509_PUBKEY_eq, @function
X509_PUBKEY_eq:
.LFB650:
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
	cmpq	-48(%rbp), %rax
	jne	.L246
	movl	$1, %eax
	jmp	.L255
.L246:
	cmpq	$0, -40(%rbp)
	je	.L248
	cmpq	$0, -48(%rbp)
	jne	.L249
.L248:
	movl	$0, %eax
	jmp	.L255
.L249:
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	testl	%eax, %eax
	je	.L250
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L250
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	testl	%eax, %eax
	je	.L250
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L251
.L250:
	movl	$-2, %eax
	jmp	.L255
.L251:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_cmp@PLT
	testl	%eax, %eax
	je	.L252
	movl	$0, %eax
	jmp	.L255
.L252:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L253
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L254
.L253:
	movl	$-2, %eax
	jmp	.L255
.L254:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_eq@PLT
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	X509_PUBKEY_eq, .-X509_PUBKEY_eq
	.globl	ossl_x509_PUBKEY_get0_libctx
	.type	ossl_x509_PUBKEY_get0_libctx, @function
ossl_x509_PUBKEY_get0_libctx:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L257
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L257:
	cmpq	$0, -16(%rbp)
	je	.L258
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L258:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	ossl_x509_PUBKEY_get0_libctx, .-ossl_x509_PUBKEY_get0_libctx
	.section	.rodata
.LC5:
	.string	"X509_PUBKEY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.17, @object
	.size	local_it.17, 56
local_it.17:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_PUBKEY_INTERNAL_seq_tt
	.quad	2
	.quad	0
	.quad	48
	.quad	.LC5
	.section	.rodata
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 22
__func__.16:
	.string	"x509_pubkey_ex_new_ex"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 22
__func__.15:
	.string	"x509_pubkey_ex_d2i_ex"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.14, @object
	.size	local_it.14, 56
local_it.14:
	.byte	4
	.zero	7
	.quad	16
	.quad	0
	.quad	0
	.quad	x509_pubkey_ff
	.quad	0
	.quad	.LC5
	.section	.rodata
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 16
__func__.13:
	.string	"X509_PUBKEY_dup"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 16
__func__.12:
	.string	"X509_PUBKEY_set"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 19
__func__.11:
	.string	"x509_pubkey_decode"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 17
__func__.10:
	.string	"X509_PUBKEY_get0"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 16
__func__.9:
	.string	"X509_PUBKEY_get"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 15
__func__.8:
	.string	"i2d_RSA_PUBKEY"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 19
__func__.7:
	.string	"ossl_i2d_DH_PUBKEY"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 20
__func__.6:
	.string	"ossl_i2d_DHx_PUBKEY"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 15
__func__.5:
	.string	"i2d_DSA_PUBKEY"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"i2d_EC_PUBKEY"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"ossl_i2d_ED25519_PUBKEY"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 22
__func__.2:
	.string	"ossl_i2d_ED448_PUBKEY"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"ossl_i2d_X25519_PUBKEY"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ossl_i2d_X448_PUBKEY"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
