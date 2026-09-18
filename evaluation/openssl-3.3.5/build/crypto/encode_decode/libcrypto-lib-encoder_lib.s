	.file	"encoder_lib.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_OSSL_ENCODER_INSTANCE_num, @function
sk_OSSL_ENCODER_INSTANCE_num:
.LFB407:
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
.LFE407:
	.size	sk_OSSL_ENCODER_INSTANCE_num, .-sk_OSSL_ENCODER_INSTANCE_num
	.type	sk_OSSL_ENCODER_INSTANCE_value, @function
sk_OSSL_ENCODER_INSTANCE_value:
.LFB408:
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
.LFE408:
	.size	sk_OSSL_ENCODER_INSTANCE_value, .-sk_OSSL_ENCODER_INSTANCE_value
	.type	sk_OSSL_ENCODER_INSTANCE_new_null, @function
sk_OSSL_ENCODER_INSTANCE_new_null:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	sk_OSSL_ENCODER_INSTANCE_new_null, .-sk_OSSL_ENCODER_INSTANCE_new_null
	.type	sk_OSSL_ENCODER_INSTANCE_push, @function
sk_OSSL_ENCODER_INSTANCE_push:
.LFB417:
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
.LFE417:
	.size	sk_OSSL_ENCODER_INSTANCE_push, .-sk_OSSL_ENCODER_INSTANCE_push
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/encode_decode/encoder_lib.c"
	.align 8
.LC1:
	.string	"No encoders were found. For standard encoders you need at least one of the default or base providers available. Did you forget to load them?"
	.text
	.globl	OSSL_ENCODER_to_bio
	.type	OSSL_ENCODER_to_bio, @function
OSSL_ENCODER_to_bio:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	leaq	-80(%rbp), %rax
	movl	$72, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movl	$101, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L14:
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L17
.L16:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786693, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	encoder_process
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	OSSL_ENCODER_to_bio, .-OSSL_ENCODER_to_bio
	.type	bio_from_file, @function
bio_from_file:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	bio_from_file, .-bio_from_file
	.globl	OSSL_ENCODER_to_fp
	.type	OSSL_ENCODER_to_fp, @function
OSSL_ENCODER_to_fp:
.LFB459:
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
	movq	%rax, %rdi
	call	bio_from_file
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L23
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	movl	%eax, -4(%rbp)
.L23:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	OSSL_ENCODER_to_fp, .-OSSL_ENCODER_to_fp
	.globl	OSSL_ENCODER_to_data
	.type	OSSL_ENCODER_to_data, @function
OSSL_ENCODER_to_data:
.LFB460:
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
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L26:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L28
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L28
	movl	$1, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L29
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L30
	movl	$0, -4(%rbp)
	jmp	.L32
.L30:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L32
.L29:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L32:
	cmpl	$0, -4(%rbp)
	je	.L28
	cmpq	$0, -48(%rbp)
	je	.L28
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L28
.L33:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L28:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	OSSL_ENCODER_to_data, .-OSSL_ENCODER_to_data
	.globl	OSSL_ENCODER_CTX_set_selection
	.type	OSSL_ENCODER_CTX_set_selection, @function
OSSL_ENCODER_CTX_set_selection:
.LFB461:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L37
.L36:
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$155, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L37
.L38:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	OSSL_ENCODER_CTX_set_selection, .-OSSL_ENCODER_CTX_set_selection
	.globl	OSSL_ENCODER_CTX_set_output_type
	.type	OSSL_ENCODER_CTX_set_output_type, @function
OSSL_ENCODER_CTX_set_output_type:
.LFB462:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L40
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L41
.L40:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	OSSL_ENCODER_CTX_set_output_type, .-OSSL_ENCODER_CTX_set_output_type
	.globl	OSSL_ENCODER_CTX_set_output_structure
	.type	OSSL_ENCODER_CTX_set_output_structure, @function
OSSL_ENCODER_CTX_set_output_structure:
.LFB463:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L44
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L45
.L44:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	OSSL_ENCODER_CTX_set_output_structure, .-OSSL_ENCODER_CTX_set_output_structure
	.section	.rodata
	.align 8
.LC2:
	.string	"there are no property definitions with encoder %s"
.LC3:
	.string	"output"
	.align 8
.LC4:
	.string	"the mandatory 'output' property is missing for encoder %s (properties: %s)"
.LC5:
	.string	"structure"
	.text
	.type	ossl_encoder_instance_new, @function
ossl_encoder_instance_new:
.LFB464:
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
	movq	$0, -24(%rbp)
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L48:
	leaq	.LC0(%rip), %rax
	movl	$201, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L49
.L50:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_up_ref@PLT
	testl	%eax, %eax
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$205, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L51:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_provider@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_encoder_parsed_properties@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_name@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$524558, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L53:
	leaq	.LC3(%rip), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_find_property@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_get_string_value@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_properties@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_name@PLT
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$524558, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L54:
	leaq	.LC5(%rip), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_find_property@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L55
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_get_string_value@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
.L55:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	jmp	.L49
.L52:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_encoder_instance_free@PLT
	movl	$0, %eax
.L49:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	ossl_encoder_instance_new, .-ossl_encoder_instance_new
	.globl	ossl_encoder_instance_free
	.type	ossl_encoder_instance_free, @function
ossl_encoder_instance_free:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L59
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L58:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$253, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L59:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	ossl_encoder_instance_free, .-ossl_encoder_instance_free
	.type	ossl_encoder_ctx_add_encoder_inst, @function
ossl_encoder_ctx_add_encoder_inst:
.LFB466:
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
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	call	sk_OSSL_ENCODER_INSTANCE_new_null
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_ENCODER_INSTANCE_push
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L63
	movq	$0, -16(%rbp)
.L63:
	movl	-4(%rbp), %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	ossl_encoder_ctx_add_encoder_inst, .-ossl_encoder_ctx_add_encoder_inst
	.globl	OSSL_ENCODER_CTX_add_encoder
	.type	OSSL_ENCODER_CTX_add_encoder, @function
OSSL_ENCODER_CTX_add_encoder:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L65
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L66
.L65:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$291, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_provider@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L73
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_encoder_instance_new
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L73
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_encoder_ctx_add_encoder_inst
	testl	%eax, %eax
	je	.L74
	movl	$1, %eax
	jmp	.L67
.L73:
	nop
	jmp	.L70
.L74:
	nop
.L70:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_encoder_instance_free@PLT
	cmpq	$0, -16(%rbp)
	je	.L72
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L72:
	movl	$0, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	OSSL_ENCODER_CTX_add_encoder, .-OSSL_ENCODER_CTX_add_encoder
	.globl	OSSL_ENCODER_CTX_add_extra
	.type	OSSL_ENCODER_CTX_add_extra, @function
OSSL_ENCODER_CTX_add_extra:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	OSSL_ENCODER_CTX_add_extra, .-OSSL_ENCODER_CTX_add_extra
	.globl	OSSL_ENCODER_CTX_get_num_encoders
	.type	OSSL_ENCODER_CTX_get_num_encoders, @function
OSSL_ENCODER_CTX_get_num_encoders:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L78
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L79
.L78:
	movl	$0, %eax
	jmp	.L80
.L79:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_ENCODER_INSTANCE_num
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	OSSL_ENCODER_CTX_get_num_encoders, .-OSSL_ENCODER_CTX_get_num_encoders
	.globl	OSSL_ENCODER_CTX_set_construct
	.type	OSSL_ENCODER_CTX_set_construct, @function
OSSL_ENCODER_CTX_set_construct:
.LFB470:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	OSSL_ENCODER_CTX_set_construct, .-OSSL_ENCODER_CTX_set_construct
	.globl	OSSL_ENCODER_CTX_set_construct_data
	.type	OSSL_ENCODER_CTX_set_construct_data, @function
OSSL_ENCODER_CTX_set_construct_data:
.LFB471:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$344, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movl	$1, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	OSSL_ENCODER_CTX_set_construct_data, .-OSSL_ENCODER_CTX_set_construct_data
	.globl	OSSL_ENCODER_CTX_set_cleanup
	.type	OSSL_ENCODER_CTX_set_cleanup, @function
OSSL_ENCODER_CTX_set_cleanup:
.LFB472:
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
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$355, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	OSSL_ENCODER_CTX_set_cleanup, .-OSSL_ENCODER_CTX_set_cleanup
	.globl	OSSL_ENCODER_INSTANCE_get_encoder
	.type	OSSL_ENCODER_INSTANCE_get_encoder, @function
OSSL_ENCODER_INSTANCE_get_encoder:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L92:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	OSSL_ENCODER_INSTANCE_get_encoder, .-OSSL_ENCODER_INSTANCE_get_encoder
	.globl	OSSL_ENCODER_INSTANCE_get_encoder_ctx
	.type	OSSL_ENCODER_INSTANCE_get_encoder_ctx, @function
OSSL_ENCODER_INSTANCE_get_encoder_ctx:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L95
.L94:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L95:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	OSSL_ENCODER_INSTANCE_get_encoder_ctx, .-OSSL_ENCODER_INSTANCE_get_encoder_ctx
	.globl	OSSL_ENCODER_INSTANCE_get_output_type
	.type	OSSL_ENCODER_INSTANCE_get_output_type, @function
OSSL_ENCODER_INSTANCE_get_output_type:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L97
	movl	$0, %eax
	jmp	.L98
.L97:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L98:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	OSSL_ENCODER_INSTANCE_get_output_type, .-OSSL_ENCODER_INSTANCE_get_output_type
	.globl	OSSL_ENCODER_INSTANCE_get_output_structure
	.type	OSSL_ENCODER_INSTANCE_get_output_structure, @function
OSSL_ENCODER_INSTANCE_get_output_structure:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L100
	movl	$0, %eax
	jmp	.L101
.L100:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
.L101:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	OSSL_ENCODER_INSTANCE_get_output_structure, .-OSSL_ENCODER_INSTANCE_get_output_structure
	.section	.rodata
.LC6:
	.string	"data-type"
.LC7:
	.string	"data-structure"
.LC8:
	.string	"data"
	.text
	.type	encoder_process, @function
encoder_process:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$744, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -696(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -20(%rbp)
	movl	$0, -84(%rbp)
	movq	-696(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L104
	movl	$-1, %edx
	jmp	.L105
.L104:
	movl	$0, %edx
.L105:
	movq	-696(%rbp), %rax
	movl	%edx, 32(%rax)
	movl	$1, -84(%rbp)
.L103:
	movq	-696(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -36(%rbp)
	jmp	.L106
.L115:
	movq	$0, -96(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L107
	movq	-696(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_encoder@PLT
	movq	%rax, -96(%rbp)
.L107:
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_ENCODER_INSTANCE_value
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_encoder@PLT
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_encoder_ctx@PLT
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_output_type@PLT
	movq	%rax, -128(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_output_structure@PLT
	movq	%rax, -136(%rbp)
	leaq	-688(%rbp), %rax
	movl	$72, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -672(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -664(%rbp)
	movq	-696(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -656(%rbp)
	movq	-696(%rbp), %rax
	movl	20(%rax), %eax
	addl	$1, %eax
	movl	%eax, -668(%rbp)
	movq	$0, -144(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L108
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L109
	movq	$0, -160(%rbp)
	jmp	.L106
.L108:
	movq	-128(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_is_a@PLT
	testl	%eax, %eax
	jne	.L109
	movq	$0, -152(%rbp)
	jmp	.L106
.L109:
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L111
	cmpq	$0, -136(%rbp)
	je	.L111
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L112
	movq	$0, -168(%rbp)
	jmp	.L106
.L112:
	movq	-696(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-696(%rbp), %rax
	movl	%edx, 32(%rax)
.L111:
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	encoder_process
	movl	%eax, -20(%rbp)
	movq	-648(%rbp), %rdx
	movq	-696(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-640(%rbp), %rdx
	movq	-696(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-632(%rbp), %rdx
	movq	-696(%rbp), %rax
	movq	%rdx, 56(%rax)
	cmpl	$0, -20(%rbp)
	jne	.L134
	movq	$0, -176(%rbp)
.L106:
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -36(%rbp)
	testl	%eax, %eax
	jg	.L115
	jmp	.L114
.L134:
	nop
.L114:
	cmpl	$0, -36(%rbp)
	jns	.L116
	movl	$-1, -20(%rbp)
	movq	$0, -200(%rbp)
	jmp	.L117
.L116:
	cmpl	$1, -20(%rbp)
	je	.L118
	cmpl	$1, -20(%rbp)
	jg	.L119
	cmpl	$-1, -20(%rbp)
	je	.L120
	cmpl	$0, -20(%rbp)
	jmp	.L119
.L120:
	movq	-696(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L133
.L121:
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rcx
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_get0_name@PLT
	movq	-696(%rbp), %rdx
	movq	%rax, 64(%rdx)
	cmpq	$0, -48(%rbp)
	je	.L123
	movl	$1, -20(%rbp)
	jmp	.L119
.L123:
	movl	$0, -20(%rbp)
	jmp	.L119
.L118:
	movq	-696(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L125
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$585, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$59, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -20(%rbp)
	jmp	.L119
.L125:
	leaq	-608(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-696(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_INSTANCE_get_output_structure@PLT
	movq	%rax, -184(%rbp)
	movq	-696(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-104(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -104(%rbp)
	leaq	-752(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-752(%rbp), %rax
	movq	-744(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-736(%rbp), %rax
	movq	-728(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-720(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, -184(%rbp)
	je	.L126
	movq	-104(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -104(%rbp)
	leaq	-752(%rbp), %rax
	movq	-184(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-752(%rbp), %rax
	movq	-744(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-736(%rbp), %rax
	movq	-728(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-720(%rbp), %rax
	movq	%rax, 32(%rbx)
.L126:
	movq	-696(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-696(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-104(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -104(%rbp)
	leaq	-752(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-752(%rbp), %rax
	movq	-744(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-736(%rbp), %rax
	movq	-728(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-720(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-104(%rbp), %rbx
	leaq	-752(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-752(%rbp), %rax
	movq	-744(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-736(%rbp), %rax
	movq	-728(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-720(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-608(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
.L119:
	cmpl	$0, -20(%rbp)
	je	.L117
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L127
	movq	-696(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	jmp	.L128
.L127:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L128
	movl	$0, -20(%rbp)
.L128:
	cmpl	$0, -20(%rbp)
	je	.L129
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_core_bio_new_from_bio@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
.L129:
	cmpl	$0, -20(%rbp)
	je	.L130
	movq	-72(%rbp), %rax
	movq	104(%rax), %r10
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	leaq	56(%rax), %rdi
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %r8d
	movq	ossl_pw_passphrase_callback_enc@GOTPCREL(%rip), %rax
	movq	%rax, %r9
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	movq	$0, -192(%rbp)
.L130:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_core_bio_free@PLT
	movq	-696(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 40(%rax)
.L117:
	movq	-696(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$657, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-696(%rbp), %rax
	movq	$0, 48(%rax)
	cmpq	$0, -56(%rbp)
	je	.L131
	leaq	-616(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-616(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-696(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-616(%rbp), %rax
	movq	(%rax), %rdx
	movq	-696(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-616(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L131:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpq	$0, -48(%rbp)
	je	.L132
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L132:
	movl	-20(%rbp), %eax
.L133:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	encoder_process, .-encoder_process
	.section	.rodata
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 20
__func__.12:
	.string	"OSSL_ENCODER_to_bio"
	.align 8
	.type	__func__.11, @object
	.size	__func__.11, 14
__func__.11:
	.string	"bio_from_file"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 21
__func__.10:
	.string	"OSSL_ENCODER_to_data"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 31
__func__.9:
	.string	"OSSL_ENCODER_CTX_set_selection"
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 33
__func__.8:
	.string	"OSSL_ENCODER_CTX_set_output_type"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 38
__func__.7:
	.string	"OSSL_ENCODER_CTX_set_output_structure"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 26
__func__.6:
	.string	"ossl_encoder_instance_new"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 34
__func__.5:
	.string	"ossl_encoder_ctx_add_encoder_inst"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 29
__func__.4:
	.string	"OSSL_ENCODER_CTX_add_encoder"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 31
__func__.3:
	.string	"OSSL_ENCODER_CTX_set_construct"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 36
__func__.2:
	.string	"OSSL_ENCODER_CTX_set_construct_data"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"OSSL_ENCODER_CTX_set_cleanup"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"encoder_process"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
