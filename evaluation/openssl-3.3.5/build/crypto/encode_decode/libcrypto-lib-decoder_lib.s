	.file	"decoder_lib.c"
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
	.type	sk_OSSL_DECODER_INSTANCE_num, @function
sk_OSSL_DECODER_INSTANCE_num:
.LFB432:
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
.LFE432:
	.size	sk_OSSL_DECODER_INSTANCE_num, .-sk_OSSL_DECODER_INSTANCE_num
	.type	sk_OSSL_DECODER_INSTANCE_value, @function
sk_OSSL_DECODER_INSTANCE_value:
.LFB433:
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
.LFE433:
	.size	sk_OSSL_DECODER_INSTANCE_value, .-sk_OSSL_DECODER_INSTANCE_value
	.type	sk_OSSL_DECODER_INSTANCE_new_null, @function
sk_OSSL_DECODER_INSTANCE_new_null:
.LFB435:
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
.LFE435:
	.size	sk_OSSL_DECODER_INSTANCE_new_null, .-sk_OSSL_DECODER_INSTANCE_new_null
	.type	sk_OSSL_DECODER_INSTANCE_push, @function
sk_OSSL_DECODER_INSTANCE_push:
.LFB442:
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
.LFE442:
	.size	sk_OSSL_DECODER_INSTANCE_push, .-sk_OSSL_DECODER_INSTANCE_push
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/encode_decode/decoder_lib.c"
	.align 8
.LC1:
	.string	"No decoders were found. For standard decoders you need at least one of the default or base providers available. Did you forget to load them?"
.LC2:
	.string	" "
.LC3:
	.string	""
.LC4:
	.string	"Input type: "
.LC5:
	.string	"Input structure: "
.LC6:
	.string	", "
	.align 8
.LC7:
	.string	"No supported data to decode. %s%s%s%s%s%s"
	.text
	.globl	OSSL_DECODER_from_bio
	.type	OSSL_DECODER_from_bio, @function
OSSL_DECODER_from_bio:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$55, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L14:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_get_num_decoders@PLT
	testl	%eax, %eax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movl	$102, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L16:
	call	ERR_peek_last_error@PLT
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$133, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jns	.L17
	call	BIO_f_readbuffer@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L35
.L18:
	movq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -128(%rbp)
.L17:
	leaq	-112(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_pw_enable_passphrase_caching@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	decoder_process
	movl	%eax, -4(%rbp)
	movzbl	-80(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L19
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L20
	leaq	.LC2(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L21
.L20:
	leaq	.LC3(%rip), %rax
	movq	%rax, -24(%rbp)
.L21:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L22
	leaq	.LC4(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L23
.L22:
	leaq	.LC3(%rip), %rax
	movq	%rax, -32(%rbp)
.L23:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L24
	leaq	.LC5(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L25
.L24:
	leaq	.LC3(%rip), %rax
	movq	%rax, -40(%rbp)
.L25:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L26
	leaq	.LC6(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L27
.L26:
	leaq	.LC3(%rip), %rax
	movq	%rax, -48(%rbp)
.L27:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L29
.L28:
	leaq	.LC3(%rip), %rax
	movq	%rax, -56(%rbp)
.L29:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L31
.L30:
	leaq	.LC3(%rip), %rax
	movq	%rax, -64(%rbp)
.L31:
	call	ERR_peek_last_error@PLT
	cmpq	%rax, -72(%rbp)
	je	.L32
	call	ERR_peek_error@PLT
	testq	%rax, %rax
	jne	.L33
.L32:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	subq	$8, %rsp
	pushq	-64(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$524556, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	addq	$32, %rsp
.L33:
	movl	$0, -4(%rbp)
.L19:
	movq	-120(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_pw_clear_passphrase_cache@PLT
	cmpq	$0, -16(%rbp)
	je	.L34
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L34:
	movl	-4(%rbp), %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	OSSL_DECODER_from_bio, .-OSSL_DECODER_from_bio
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
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-8(%rbp), %rax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	bio_from_file, .-bio_from_file
	.globl	OSSL_DECODER_from_fp
	.type	OSSL_DECODER_from_fp, @function
OSSL_DECODER_from_fp:
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
	je	.L40
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_bio@PLT
	movl	%eax, -4(%rbp)
.L40:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	OSSL_DECODER_from_fp, .-OSSL_DECODER_from_fp
	.globl	OSSL_DECODER_from_data
	.type	OSSL_DECODER_from_data, @function
OSSL_DECODER_from_data:
.LFB460:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L43
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L43
	cmpq	$0, -40(%rbp)
	jne	.L44
.L43:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_bio@PLT
	testl	%eax, %eax
	je	.L46
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
.L46:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	OSSL_DECODER_from_data, .-OSSL_DECODER_from_data
	.globl	OSSL_DECODER_CTX_set_selection
	.type	OSSL_DECODER_CTX_set_selection, @function
OSSL_DECODER_CTX_set_selection:
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
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	OSSL_DECODER_CTX_set_selection, .-OSSL_DECODER_CTX_set_selection
	.globl	OSSL_DECODER_CTX_set_input_type
	.type	OSSL_DECODER_CTX_set_input_type, @function
OSSL_DECODER_CTX_set_input_type:
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
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$185, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	OSSL_DECODER_CTX_set_input_type, .-OSSL_DECODER_CTX_set_input_type
	.globl	OSSL_DECODER_CTX_set_input_structure
	.type	OSSL_DECODER_CTX_set_input_structure, @function
OSSL_DECODER_CTX_set_input_structure:
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
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$201, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	OSSL_DECODER_CTX_set_input_structure, .-OSSL_DECODER_CTX_set_input_structure
	.section	.rodata
	.align 8
.LC8:
	.string	"there are no property definitions with decoder %s"
.LC9:
	.string	"input"
	.align 8
.LC10:
	.string	"the mandatory 'input' property is missing for decoder %s (properties: %s)"
.LC11:
	.string	"structure"
	.text
	.globl	ossl_decoder_instance_new
	.type	ossl_decoder_instance_new, @function
ossl_decoder_instance_new:
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
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L57:
	leaq	.LC0(%rip), %rax
	movl	$227, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L59
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_provider@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_parsed_properties@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_name@PLT
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$524558, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L60:
	leaq	.LC9(%rip), %rdx
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
	movl	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_properties@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_name@PLT
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rax
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$524558, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L62:
	leaq	.LC11(%rip), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_find_property@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L63
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_get_string_value@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
.L63:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_up_ref@PLT
	testl	%eax, %eax
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L64:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	jmp	.L58
.L61:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_instance_free@PLT
	movl	$0, %eax
.L58:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	ossl_decoder_instance_new, .-ossl_decoder_instance_new
	.globl	ossl_decoder_instance_free
	.type	ossl_decoder_instance_free, @function
ossl_decoder_instance_free:
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
	je	.L68
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L67:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$280, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	ossl_decoder_instance_free, .-ossl_decoder_instance_free
	.globl	ossl_decoder_instance_dup
	.type	ossl_decoder_instance_dup, @function
ossl_decoder_instance_dup:
.LFB466:
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
	leaq	.LC0(%rip), %rax
	movl	$290, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_up_ref@PLT
	testl	%eax, %eax
	jne	.L72
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L73
.L72:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_provider@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$303, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_free@PLT
	jmp	.L73
.L74:
	movq	-24(%rbp), %rax
	jmp	.L71
.L73:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$311, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L71:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	ossl_decoder_instance_dup, .-ossl_decoder_instance_dup
	.globl	ossl_decoder_ctx_add_decoder_inst
	.type	ossl_decoder_ctx_add_decoder_inst, @function
ossl_decoder_ctx_add_decoder_inst:
.LFB467:
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
	jne	.L76
	call	sk_OSSL_DECODER_INSTANCE_new_null
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L76
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_INSTANCE_push
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L78
	movq	$0, -16(%rbp)
.L78:
	movl	-4(%rbp), %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	ossl_decoder_ctx_add_decoder_inst, .-ossl_decoder_ctx_add_decoder_inst
	.globl	OSSL_DECODER_CTX_add_decoder
	.type	OSSL_DECODER_CTX_add_decoder, @function
OSSL_DECODER_CTX_add_decoder:
.LFB468:
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
	je	.L80
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L81
.L80:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L81:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_provider@PLT
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
	je	.L88
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_instance_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L88
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_ctx_add_decoder_inst@PLT
	testl	%eax, %eax
	je	.L89
	movl	$1, %eax
	jmp	.L82
.L88:
	nop
	jmp	.L85
.L89:
	nop
.L85:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_instance_free@PLT
	cmpq	$0, -16(%rbp)
	je	.L87
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L87:
	movl	$0, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	OSSL_DECODER_CTX_add_decoder, .-OSSL_DECODER_CTX_add_decoder
	.type	sk_OSSL_DECODER_num, @function
sk_OSSL_DECODER_num:
.LFB469:
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
.LFE469:
	.size	sk_OSSL_DECODER_num, .-sk_OSSL_DECODER_num
	.type	sk_OSSL_DECODER_value, @function
sk_OSSL_DECODER_value:
.LFB470:
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
.LFE470:
	.size	sk_OSSL_DECODER_value, .-sk_OSSL_DECODER_value
	.type	sk_OSSL_DECODER_new_null, @function
sk_OSSL_DECODER_new_null:
.LFB472:
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
.LFE472:
	.size	sk_OSSL_DECODER_new_null, .-sk_OSSL_DECODER_new_null
	.type	sk_OSSL_DECODER_push, @function
sk_OSSL_DECODER_push:
.LFB479:
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
.LFE479:
	.size	sk_OSSL_DECODER_push, .-sk_OSSL_DECODER_push
	.type	sk_OSSL_DECODER_pop_free, @function
sk_OSSL_DECODER_pop_free:
.LFB483:
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
.LFE483:
	.size	sk_OSSL_DECODER_pop_free, .-sk_OSSL_DECODER_pop_free
	.type	collect_all_decoders, @function
collect_all_decoders:
.LFB494:
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
	movq	%rax, %rdi
	call	OSSL_DECODER_up_ref@PLT
	testl	%eax, %eax
	je	.L101
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_push
	testl	%eax, %eax
	jne	.L101
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_free@PLT
.L101:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	collect_all_decoders, .-collect_all_decoders
	.type	collect_extra_decoder, @function
collect_extra_decoder:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_get0_provider@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_provider_ctx@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_fast_is_a@PLT
	testl	%eax, %eax
	je	.L102
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L104
.L106:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_INSTANCE_value
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L105
	movq	$0, -104(%rbp)
	jmp	.L102
.L105:
	addq	$1, -24(%rbp)
.L104:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L106
	movq	-120(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L115
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_instance_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L108
	movq	-120(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L102
.L108:
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L109
	cmpl	$1, %eax
	je	.L110
	jmp	.L111
.L109:
	movq	-64(%rbp), %rax
	leaq	32(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_input_type@PLT
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_fast_is_a@PLT
	testl	%eax, %eax
	jne	.L116
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_instance_free@PLT
	movq	$0, -88(%rbp)
	jmp	.L102
.L110:
	movq	-64(%rbp), %rax
	leaq	32(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_input_type@PLT
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_fast_is_a@PLT
	testl	%eax, %eax
	je	.L117
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_instance_free@PLT
	movq	$0, -80(%rbp)
	jmp	.L102
.L116:
	nop
	jmp	.L111
.L117:
	nop
.L111:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_ctx_add_decoder_inst@PLT
	testl	%eax, %eax
	jne	.L114
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_instance_free@PLT
	jmp	.L102
.L114:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L102
.L115:
	nop
.L102:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	collect_extra_decoder, .-collect_extra_decoder
	.globl	OSSL_DECODER_CTX_add_extra
	.type	OSSL_DECODER_CTX_add_extra, @function
OSSL_DECODER_CTX_add_extra:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -136(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L119
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$521, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L131
.L119:
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movl	$1, %eax
	jmp	.L131
.L121:
	movq	$0, -32(%rbp)
	call	sk_OSSL_DECODER_new_null
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$540, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L131
.L122:
	movq	-40(%rbp), %rdx
	leaq	collect_all_decoders(%rip), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_do_all_provided@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_num
	cltq
	movq	%rax, -48(%rbp)
	leaq	-128(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-136(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$0, -104(%rbp)
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_INSTANCE_num
	cltq
	movq	%rax, -96(%rbp)
.L130:
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -108(%rbp)
	jmp	.L123
.L128:
	movq	-104(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L124
.L127:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_INSTANCE_value
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_input_type@PLT
	movq	%rax, -120(%rbp)
	movl	$0, -112(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L125
.L126:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_value
	movq	%rax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	collect_extra_decoder
	addq	$1, -24(%rbp)
.L125:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L126
	addq	$1, -16(%rbp)
.L124:
	movq	-96(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L127
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
.L123:
	movl	-108(%rbp), %eax
	cmpl	$1, %eax
	jbe	.L128
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	addq	$1, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L129
	cmpq	$10, -8(%rbp)
	jbe	.L130
.L129:
	movq	OSSL_DECODER_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_pop_free
	movl	$1, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	OSSL_DECODER_CTX_add_extra, .-OSSL_DECODER_CTX_add_extra
	.globl	OSSL_DECODER_CTX_get_num_decoders
	.type	OSSL_DECODER_CTX_get_num_decoders, @function
OSSL_DECODER_CTX_get_num_decoders:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L133
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L134
.L133:
	movl	$0, %eax
	jmp	.L135
.L134:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_INSTANCE_num
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	OSSL_DECODER_CTX_get_num_decoders, .-OSSL_DECODER_CTX_get_num_decoders
	.globl	OSSL_DECODER_CTX_set_construct
	.type	OSSL_DECODER_CTX_set_construct, @function
OSSL_DECODER_CTX_set_construct:
.LFB498:
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
	jne	.L137
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$604, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L138
.L137:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	OSSL_DECODER_CTX_set_construct, .-OSSL_DECODER_CTX_set_construct
	.globl	OSSL_DECODER_CTX_set_construct_data
	.type	OSSL_DECODER_CTX_set_construct_data, @function
OSSL_DECODER_CTX_set_construct_data:
.LFB499:
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
	jne	.L140
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$615, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L141
.L140:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movl	$1, %eax
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	OSSL_DECODER_CTX_set_construct_data, .-OSSL_DECODER_CTX_set_construct_data
	.globl	OSSL_DECODER_CTX_set_cleanup
	.type	OSSL_DECODER_CTX_set_cleanup, @function
OSSL_DECODER_CTX_set_cleanup:
.LFB500:
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
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$626, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L143:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	OSSL_DECODER_CTX_set_cleanup, .-OSSL_DECODER_CTX_set_cleanup
	.globl	OSSL_DECODER_CTX_get_construct
	.type	OSSL_DECODER_CTX_get_construct, @function
OSSL_DECODER_CTX_get_construct:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L146
	movl	$0, %eax
	jmp	.L147
.L146:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
.L147:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	OSSL_DECODER_CTX_get_construct, .-OSSL_DECODER_CTX_get_construct
	.globl	OSSL_DECODER_CTX_get_construct_data
	.type	OSSL_DECODER_CTX_get_construct_data, @function
OSSL_DECODER_CTX_get_construct_data:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L149
	movl	$0, %eax
	jmp	.L150
.L149:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
.L150:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	OSSL_DECODER_CTX_get_construct_data, .-OSSL_DECODER_CTX_get_construct_data
	.globl	OSSL_DECODER_CTX_get_cleanup
	.type	OSSL_DECODER_CTX_get_cleanup, @function
OSSL_DECODER_CTX_get_cleanup:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L152
	movl	$0, %eax
	jmp	.L153
.L152:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
.L153:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	OSSL_DECODER_CTX_get_cleanup, .-OSSL_DECODER_CTX_get_cleanup
	.globl	OSSL_DECODER_export
	.type	OSSL_DECODER_export, @function
OSSL_DECODER_export:
.LFB504:
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
	movq	%r8, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L155
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L155
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L155
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L156
.L155:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$667, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L157
.L156:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_decoder@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_decoder_ctx@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %r9
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	OSSL_DECODER_export, .-OSSL_DECODER_export
	.globl	OSSL_DECODER_INSTANCE_get_decoder
	.type	OSSL_DECODER_INSTANCE_get_decoder, @function
OSSL_DECODER_INSTANCE_get_decoder:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L159
	movl	$0, %eax
	jmp	.L160
.L159:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L160:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	OSSL_DECODER_INSTANCE_get_decoder, .-OSSL_DECODER_INSTANCE_get_decoder
	.globl	OSSL_DECODER_INSTANCE_get_decoder_ctx
	.type	OSSL_DECODER_INSTANCE_get_decoder_ctx, @function
OSSL_DECODER_INSTANCE_get_decoder_ctx:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L162
	movl	$0, %eax
	jmp	.L163
.L162:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L163:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	OSSL_DECODER_INSTANCE_get_decoder_ctx, .-OSSL_DECODER_INSTANCE_get_decoder_ctx
	.globl	OSSL_DECODER_INSTANCE_get_input_type
	.type	OSSL_DECODER_INSTANCE_get_input_type, @function
OSSL_DECODER_INSTANCE_get_input_type:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L165
	movl	$0, %eax
	jmp	.L166
.L165:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L166:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	OSSL_DECODER_INSTANCE_get_input_type, .-OSSL_DECODER_INSTANCE_get_input_type
	.globl	OSSL_DECODER_INSTANCE_get_input_structure
	.type	OSSL_DECODER_INSTANCE_get_input_structure, @function
OSSL_DECODER_INSTANCE_get_input_structure:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L168
	movl	$0, %eax
	jmp	.L169
.L168:
	movq	-8(%rbp), %rax
	movzbl	36(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
.L169:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	OSSL_DECODER_INSTANCE_get_input_structure, .-OSSL_DECODER_INSTANCE_get_input_structure
	.section	.rodata
.LC12:
	.string	"data"
.LC13:
	.string	"data-type"
.LC14:
	.string	"data-structure"
.LC15:
	.string	"type-specific"
	.text
	.type	decoder_process, @function
decoder_process:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -288(%rbp)
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$1, %edx
	movb	%dl, 32(%rax)
	leaq	-272(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	%rax, -248(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.L171
	movq	$0, -120(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_get_num_decoders@PLT
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L172
.L171:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_INSTANCE_value
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_decoder@PLT
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 32(%rax)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L173
	movq	$0, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %r8
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-312(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -52(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$0, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L173
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$2, %edx
	movb	%dl, 32(%rax)
	jmp	.L174
.L173:
	leaq	.LC12(%rip), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L199
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L199
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	testq	%rax, %rax
	je	.L200
	movq	-264(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC13(%rip), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L178
	leaq	-280(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	je	.L201
.L178:
	leaq	.LC14(%rip), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L179
	leaq	-288(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	je	.L202
.L179:
	movq	-288(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	je	.L180
	movq	-288(%rbp), %rax
	testq	%rax, %rax
	je	.L180
	movq	-288(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L180
	movq	$0, -288(%rbp)
.L180:
	movq	$0, -112(%rbp)
.L172:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L203
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$133, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cltq
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jns	.L182
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$852, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L182:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_core_bio_new_from_bio@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L183
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$857, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L183:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.L184
.L197:
	movq	-104(%rbp), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OSSL_DECODER_INSTANCE_value
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_decoder@PLT
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_decoder_ctx@PLT
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_input_type@PLT
	movq	%rax, -160(%rbp)
	movl	$0, -292(%rbp)
	leaq	-292(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_INSTANCE_get_input_structure@PLT
	movq	%rax, -168(%rbp)
	movq	$0, -176(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L185
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L185
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L185
	movq	$0, -184(%rbp)
	jmp	.L184
.L185:
	cmpq	$0, -64(%rbp)
	je	.L187
	movq	-136(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-160(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_fast_is_a@PLT
	testl	%eax, %eax
	jne	.L187
	movq	$0, -192(%rbp)
	jmp	.L184
.L187:
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	je	.L188
	movq	-280(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_is_a@PLT
	testl	%eax, %eax
	jne	.L188
	movq	$0, -200(%rbp)
	jmp	.L184
.L188:
	movq	-288(%rbp), %rax
	testq	%rax, %rax
	je	.L189
	cmpq	$0, -168(%rbp)
	je	.L190
	movq	-288(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L189
.L190:
	movq	$0, -208(%rbp)
	jmp	.L184
.L189:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L191
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L191
	cmpq	$0, -168(%rbp)
	je	.L191
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %edx
	orl	$4, %edx
	movb	%dl, 32(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L191
	movq	$0, -216(%rbp)
	jmp	.L184
.L191:
	movq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$128, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$133, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cltq
	cmpq	%rax, -128(%rbp)
	jne	.L204
	movq	$0, -224(%rbp)
	call	ERR_set_mark@PLT
	movq	-104(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%rax,4), %edx
	movzbl	-240(%rbp), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, -240(%rbp)
	movq	-144(%rbp), %rax
	movq	104(%rax), %r10
	movq	-272(%rbp), %rax
	leaq	56(%rax), %rdi
	movq	-272(%rbp), %rax
	movl	16(%rax), %edx
	movq	ossl_pw_passphrase_callback_dec@GOTPCREL(%rip), %rax
	movq	%rax, %r9
	leaq	-272(%rbp), %r8
	leaq	decoder_process(%rip), %rcx
	movq	-80(%rbp), %rsi
	movq	-152(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -28(%rbp)
	movq	$0, -232(%rbp)
	movzbl	-240(%rbp), %eax
	shrb	%al
	andl	$1, %eax
	movq	-96(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	32(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 32(%rdx)
	cmpl	$0, -28(%rbp)
	je	.L193
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L194
.L193:
	call	ERR_clear_last_mark@PLT
	jmp	.L174
.L194:
	call	ERR_pop_to_mark@PLT
	movzbl	-240(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L205
.L184:
	movq	-104(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -104(%rbp)
	testq	%rax, %rax
	jne	.L197
	jmp	.L174
.L199:
	nop
	jmp	.L174
.L200:
	nop
	jmp	.L174
.L201:
	nop
	jmp	.L174
.L202:
	nop
	jmp	.L174
.L203:
	nop
	jmp	.L174
.L204:
	nop
	jmp	.L174
.L205:
	nop
.L174:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_core_bio_free@PLT
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	decoder_process, .-decoder_process
	.section	.rodata
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 22
__func__.15:
	.string	"OSSL_DECODER_from_bio"
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 14
__func__.14:
	.string	"bio_from_file"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 23
__func__.13:
	.string	"OSSL_DECODER_from_data"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 31
__func__.12:
	.string	"OSSL_DECODER_CTX_set_selection"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 32
__func__.11:
	.string	"OSSL_DECODER_CTX_set_input_type"
	.align 32
	.type	__func__.10, @object
	.size	__func__.10, 37
__func__.10:
	.string	"OSSL_DECODER_CTX_set_input_structure"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 26
__func__.9:
	.string	"ossl_decoder_instance_new"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 26
__func__.8:
	.string	"ossl_decoder_instance_dup"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 34
__func__.7:
	.string	"ossl_decoder_ctx_add_decoder_inst"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 29
__func__.6:
	.string	"OSSL_DECODER_CTX_add_decoder"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 27
__func__.5:
	.string	"OSSL_DECODER_CTX_add_extra"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 31
__func__.4:
	.string	"OSSL_DECODER_CTX_set_construct"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 36
__func__.3:
	.string	"OSSL_DECODER_CTX_set_construct_data"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 29
__func__.2:
	.string	"OSSL_DECODER_CTX_set_cleanup"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"OSSL_DECODER_export"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"decoder_process"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
