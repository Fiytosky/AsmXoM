	.file	"pem_lib.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.string	"Enter PEM pass phrase:"
.LC1:
	.string	"../crypto/pem/pem_lib.c"
	.text
	.globl	PEM_def_callback
	.type	PEM_def_callback, @function
PEM_def_callback:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L9
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-20(%rbp), %eax
	jmp	.L10
.L9:
	call	EVP_get_pw_prompt@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L11
	leaq	.LC0(%rip), %rax
	movq	%rax, -16(%rbp)
.L11:
	cmpl	$0, -48(%rbp)
	je	.L12
	movl	$4, -4(%rbp)
	jmp	.L13
.L12:
	movl	$0, -4(%rbp)
.L13:
	movl	-48(%rbp), %edi
	movq	-16(%rbp), %rcx
	movl	-44(%rbp), %edx
	movl	-4(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_read_pw_string_min@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L14
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$-1, %eax
	jmp	.L10
.L14:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	PEM_def_callback, .-PEM_def_callback
	.section	.rodata
.LC2:
	.string	"ENCRYPTED"
.LC3:
	.string	"MIC-CLEAR"
.LC4:
	.string	"MIC-ONLY"
.LC5:
	.string	"BAD-TYPE"
.LC6:
	.string	"Proc-Type: 4,%s\n"
	.text
	.globl	PEM_proc_type
	.type	PEM_proc_type, @function
PEM_proc_type:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpl	$10, -28(%rbp)
	jne	.L16
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L17
.L16:
	cmpl	$30, -28(%rbp)
	jne	.L18
	leaq	.LC3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L17
.L18:
	cmpl	$20, -28(%rbp)
	jne	.L19
	leaq	.LC4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L17
.L19:
	leaq	.LC5(%rip), %rax
	movq	%rax, -8(%rbp)
.L17:
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movl	$1024, %edx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	-8(%rbp), %rdx
	leaq	.LC6(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	PEM_proc_type, .-PEM_proc_type
	.section	.rodata
.LC7:
	.string	"DEK-Info: %s,"
.LC8:
	.string	"%02X"
	.text
	.globl	PEM_dek_info
	.type	PEM_dek_info, @function
PEM_dek_info:
.LFB548:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	movl	%eax, %edx
	movl	$1024, %eax
	subl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdx
	leaq	.LC7(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L20
	movl	-24(%rbp), %eax
	subl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L22
.L24:
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC8(%rip), %rdi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L25
	movl	-24(%rbp), %eax
	subl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L22:
	movl	-52(%rbp), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jl	.L24
	cmpl	$1, -20(%rbp)
	jle	.L20
	movq	-16(%rbp), %rax
	movw	$10, (%rax)
	jmp	.L20
.L25:
	nop
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	PEM_dek_info, .-PEM_dek_info
	.globl	PEM_ASN1_read
	.type	PEM_ASN1_read, @function
PEM_ASN1_read:
.LFB549:
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
	movq	%r9, -64(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_ASN1_read_bio@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	PEM_ASN1_read, .-PEM_ASN1_read
	.section	.rodata
.LC9:
	.string	"ANY PRIVATE KEY"
.LC10:
	.string	"ENCRYPTED PRIVATE KEY"
.LC11:
	.string	"PRIVATE KEY"
.LC12:
	.string	"PARAMETERS"
.LC13:
	.string	"X9.42 DH PARAMETERS"
.LC14:
	.string	"DH PARAMETERS"
.LC15:
	.string	"X509 CERTIFICATE"
.LC16:
	.string	"CERTIFICATE"
.LC17:
	.string	"NEW CERTIFICATE REQUEST"
.LC18:
	.string	"CERTIFICATE REQUEST"
.LC19:
	.string	"TRUSTED CERTIFICATE"
.LC20:
	.string	"PKCS7"
.LC21:
	.string	"PKCS #7 SIGNED DATA"
.LC22:
	.string	"CMS"
	.text
	.type	check_pem, @function
check_pem:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	leaq	.LC9(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L32
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$1, %eax
	jmp	.L31
.L33:
	leaq	.LC11(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$1, %eax
	jmp	.L31
.L34:
	leaq	.LC11(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pem_check_suffix@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L35
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_PKEY_asn1_find_str@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L35
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movl	$1, %eax
	jmp	.L31
.L35:
	movl	$0, %eax
	jmp	.L31
.L32:
	leaq	.LC12(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L36
	leaq	.LC12(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pem_check_suffix@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L37
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_find_str@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L37
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movl	$1, -4(%rbp)
	jmp	.L40
.L39:
	movl	$0, -4(%rbp)
.L40:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movl	-4(%rbp), %eax
	jmp	.L31
.L37:
	movl	$0, %eax
	jmp	.L31
.L36:
	leaq	.LC13(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L41
	leaq	.LC14(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$1, %eax
	jmp	.L31
.L41:
	leaq	.LC15(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L42
	leaq	.LC16(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$1, %eax
	jmp	.L31
.L42:
	leaq	.LC17(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L43
	leaq	.LC18(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$1, %eax
	jmp	.L31
.L43:
	leaq	.LC16(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L44
	leaq	.LC19(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$1, %eax
	jmp	.L31
.L44:
	leaq	.LC15(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L45
	leaq	.LC19(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$1, %eax
	jmp	.L31
.L45:
	leaq	.LC16(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L46
	leaq	.LC20(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$1, %eax
	jmp	.L31
.L46:
	leaq	.LC21(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L47
	leaq	.LC20(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$1, %eax
	jmp	.L31
.L47:
	leaq	.LC16(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L48
	leaq	.LC22(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$1, %eax
	jmp	.L31
.L48:
	leaq	.LC20(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L49
	leaq	.LC22(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$1, %eax
	jmp	.L31
.L49:
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	check_pem, .-check_pem
	.type	pem_free, @function
pem_free:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L51
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	jmp	.L53
.L51:
	movl	-16(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L53:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	pem_free, .-pem_free
	.type	pem_malloc, @function
pem_malloc:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-8(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L55
	movl	-4(%rbp), %eax
	cltq
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	jmp	.L57
.L55:
	movl	-4(%rbp), %eax
	cltq
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	pem_malloc, .-pem_malloc
	.section	.rodata
.LC23:
	.string	"Expecting: "
	.text
	.type	pem_bytes_read_bio_flags, @function
pem_bytes_read_bio_flags:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -4(%rbp)
.L62:
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	24(%rbp), %esi
	movl	$254, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pem_free
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	24(%rbp), %esi
	movl	$255, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pem_free
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	24(%rbp), %esi
	movl	$256, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	pem_free
	movl	24(%rbp), %r8d
	leaq	-64(%rbp), %rdi
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio_ex@PLT
	testl	%eax, %eax
	jne	.L59
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$108, %eax
	jne	.L60
	movq	-96(%rbp), %rax
	leaq	.LC23(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L60:
	movl	$0, %eax
	jmp	.L70
.L59:
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_pem
	testl	%eax, %eax
	je	.L62
	movq	-48(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_get_EVP_CIPHER_INFO@PLT
	testl	%eax, %eax
	je	.L71
	movq	-56(%rbp), %rsi
	movq	16(%rbp), %rdi
	movq	-112(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_do_header@PLT
	testl	%eax, %eax
	je	.L72
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -88(%rbp)
	je	.L66
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L66:
	movl	$1, -4(%rbp)
	jmp	.L64
.L71:
	nop
	jmp	.L64
.L72:
	nop
.L64:
	cmpl	$0, -4(%rbp)
	je	.L67
	cmpq	$0, -88(%rbp)
	jne	.L68
.L67:
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	24(%rbp), %esi
	movl	$278, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pem_free
.L68:
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	24(%rbp), %esi
	movl	$279, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pem_free
	cmpl	$0, -4(%rbp)
	jne	.L69
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	24(%rbp), %esi
	movl	$281, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	pem_free
.L69:
	movl	-4(%rbp), %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	pem_bytes_read_bio_flags, .-pem_bytes_read_bio_flags
	.globl	PEM_bytes_read_bio
	.type	PEM_bytes_read_bio, @function
PEM_bytes_read_bio:
.LFB554:
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
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$2
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pem_bytes_read_bio_flags
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	PEM_bytes_read_bio, .-PEM_bytes_read_bio
	.globl	PEM_bytes_read_bio_secmem
	.type	PEM_bytes_read_bio_secmem, @function
PEM_bytes_read_bio_secmem:
.LFB555:
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
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$3
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pem_bytes_read_bio_flags
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	PEM_bytes_read_bio_secmem, .-PEM_bytes_read_bio_secmem
	.globl	PEM_ASN1_write
	.type	PEM_ASN1_write, @function
PEM_ASN1_write:
.LFB556:
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
	movq	%r9, -64(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L79
.L78:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-64(%rbp), %r9
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	PEM_ASN1_write, .-PEM_ASN1_write
	.globl	PEM_ASN1_write_bio
	.type	PEM_ASN1_write_bio, @function
PEM_ASN1_write_bio:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1208, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1176(%rbp)
	movq	%rsi, -1184(%rbp)
	movq	%rdx, -1192(%rbp)
	movq	%rcx, -1200(%rbp)
	movq	%r8, -1208(%rbp)
	movq	%r9, -1216(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -1208(%rbp)
	je	.L81
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L82
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	testl	%eax, %eax
	je	.L82
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	cmpl	$16, %eax
	jg	.L82
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	addl	%eax, %eax
	cltq
	addq	%rbx, %rax
	addq	$36, %rax
	cmpq	$1024, %rax
	jbe	.L81
.L82:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$342, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L81:
	movq	-1200(%rbp), %rax
	movq	-1176(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L84
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$348, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -28(%rbp)
	jmp	.L83
.L84:
	movl	-28(%rbp), %eax
	addl	$20, %eax
	movl	%eax, %ecx
	leaq	.LC1(%rip), %rax
	movl	$354, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L99
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-1200(%rbp), %rax
	movq	-1176(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -52(%rbp)
	cmpq	$0, -1208(%rbp)
	je	.L86
	cmpq	$0, -1216(%rbp)
	jne	.L87
	cmpq	$0, 24(%rbp)
	jne	.L88
	movq	32(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	PEM_def_callback@PLT
	movl	%eax, 16(%rbp)
	jmp	.L89
.L88:
	movq	32(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movq	24(%rbp), %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, 16(%rbp)
.L89:
	cmpl	$0, 16(%rbp)
	jg	.L90
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L83
.L90:
	leaq	-1088(%rbp), %rax
	movq	%rax, -1216(%rbp)
.L87:
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, %edx
	leaq	-1168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jle	.L100
	call	EVP_md5@PLT
	movq	%rax, %rdi
	movl	16(%rbp), %r8d
	movq	-1216(%rbp), %rcx
	leaq	-1168(%rbp), %rdx
	movq	-1208(%rbp), %rax
	pushq	$0
	leaq	-1152(%rbp), %rsi
	pushq	%rsi
	movl	$1, %r9d
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	EVP_BytesToKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L101
	leaq	-1088(%rbp), %rax
	cmpq	%rax, -1216(%rbp)
	jne	.L93
	leaq	-1088(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L93:
	movb	$0, -1088(%rbp)
	leaq	-1088(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	PEM_proc_type@PLT
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, %edi
	leaq	-1168(%rbp), %rdx
	movq	-48(%rbp), %rsi
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	PEM_dek_info@PLT
	movl	$1, -32(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L94
	leaq	-1168(%rbp), %rcx
	leaq	-1152(%rbp), %rdx
	movq	-1208(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	je	.L94
	movl	-52(%rbp), %edi
	movq	-40(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	je	.L94
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-52(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	jne	.L95
.L94:
	movl	$0, -32(%rbp)
.L95:
	cmpl	$0, -32(%rbp)
	je	.L102
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L97
.L86:
	movl	$1, -32(%rbp)
	movb	$0, -1088(%rbp)
.L97:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdi
	movq	-40(%rbp), %rcx
	leaq	-1088(%rbp), %rdx
	movq	-1184(%rbp), %rsi
	movq	-1192(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_write_bio@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jg	.L103
	movl	$0, -32(%rbp)
	jmp	.L83
.L99:
	nop
	jmp	.L83
.L100:
	nop
	jmp	.L83
.L101:
	nop
	jmp	.L83
.L102:
	nop
	jmp	.L83
.L103:
	nop
.L83:
	leaq	-1152(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-1168(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	leaq	-1088(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$415, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	PEM_ASN1_write_bio, .-PEM_ASN1_write_bio
	.globl	PEM_do_header
	.type	PEM_do_header, @function
PEM_do_header:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1176, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movq	%rdx, -1160(%rbp)
	movq	%rcx, -1168(%rbp)
	movq	%r8, -1176(%rbp)
	movq	-1160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, -44(%rbp)
	cmpq	$2147483647, -32(%rbp)
	jle	.L105
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$433, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L105:
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L107
	movl	$1, %eax
	jmp	.L117
.L107:
	cmpq	$0, -1168(%rbp)
	jne	.L108
	movq	-1176(%rbp), %rdx
	leaq	-1136(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	PEM_def_callback@PLT
	movl	%eax, -24(%rbp)
	jmp	.L109
.L108:
	movq	-1176(%rbp), %rdx
	leaq	-1136(%rbp), %rax
	movq	-1168(%rbp), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -24(%rbp)
.L109:
	cmpl	$0, -24(%rbp)
	jns	.L110
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$445, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L110:
	movq	-1144(%rbp), %rax
	leaq	8(%rax), %rbx
	call	EVP_md5@PLT
	movq	%rax, %rsi
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edi
	leaq	-1136(%rbp), %rdx
	pushq	$0
	leaq	-112(%rbp), %rcx
	pushq	%rcx
	movl	$1, %r9d
	movl	%edi, %r8d
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	EVP_BytesToKey@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L111
	movl	$0, %eax
	jmp	.L117
.L111:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L112
	movl	$0, %eax
	jmp	.L117
.L112:
	movq	-1144(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-1144(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L113
	movl	-44(%rbp), %edi
	movq	-1152(%rbp), %rcx
	leaq	-44(%rbp), %rdx
	movq	-1152(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	movl	%eax, -20(%rbp)
.L113:
	cmpl	$0, -20(%rbp)
	je	.L114
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1160(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1152(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-44(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	movl	%eax, -20(%rbp)
.L114:
	cmpl	$0, -20(%rbp)
	je	.L115
	movq	-1160(%rbp), %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-1160(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L116
.L115:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$472, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L116:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	leaq	-1136(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-112(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-20(%rbp), %eax
.L117:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	PEM_do_header, .-PEM_do_header
	.section	.rodata
.LC24:
	.string	"Proc-Type:"
.LC25:
	.string	" \t"
.LC26:
	.string	" \t\r\n"
.LC27:
	.string	" \t\r"
.LC28:
	.string	"DEK-Info:"
.LC29:
	.string	" \t,"
	.text
	.globl	PEM_get_EVP_CIPHER_INFO
	.type	PEM_get_EVP_CIPHER_INFO, @function
PEM_get_EVP_CIPHER_INFO:
.LFB559:
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
	movq	%rsi, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L119
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L119
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L120
.L119:
	movl	$1, %eax
	jmp	.L121
.L120:
	movq	-56(%rbp), %rax
	leaq	.LC24(%rip), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L122
	movq	-56(%rbp), %rax
	addq	$10, %rax
	movq	%rax, -56(%rbp)
	movl	$0, %eax
	jmp	.L123
.L122:
	movl	$1, %eax
.L123:
	testb	%al, %al
	je	.L124
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L124:
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	addq	%rbx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	cmpb	$52, %al
	jne	.L125
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L126
.L125:
	movl	$0, %eax
	jmp	.L121
.L126:
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	addq	%rbx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L127
	movq	-56(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	testq	%rax, %rax
	jne	.L128
.L127:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$519, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L128:
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	addq	%rbx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L129
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$524, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L129:
	movq	-56(%rbp), %rax
	leaq	.LC28(%rip), %rcx
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L130
	movq	-56(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -56(%rbp)
	movl	$0, %eax
	jmp	.L131
.L130:
	movl	$1, %eax
.L131:
	testb	%al, %al
	je	.L132
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$533, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L132:
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	addq	%rbx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	addq	%rbx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movzbl	-33(%rbp), %edx
	movb	%dl, (%rax)
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	addq	%rbx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L133
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$551, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L133:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jle	.L134
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L134
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L134:
	cmpl	$0, -40(%rbp)
	jne	.L135
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L135
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$559, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L135:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	load_iv
	testl	%eax, %eax
	jne	.L136
	movl	$0, %eax
	jmp	.L121
.L136:
	movl	$1, %eax
.L121:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	PEM_get_EVP_CIPHER_INFO, .-PEM_get_EVP_CIPHER_INFO
	.type	load_iv, @function
load_iv:
.LFB560:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L138
.L139:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -4(%rbp)
.L138:
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L139
	sall	-52(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L140
.L145:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L141
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$581, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L142
.L141:
	addq	$1, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movl	%edx, %esi
	movl	-4(%rbp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	jne	.L143
	movl	$4, %ecx
	jmp	.L144
.L143:
	movl	$0, %ecx
.L144:
	movl	-20(%rbp), %edx
	sall	%cl, %edx
	orl	%edx, %esi
	movl	%esi, %ecx
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L140:
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L145
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	load_iv, .-load_iv
	.globl	PEM_write
	.type	PEM_write, @function
PEM_write:
.LFB561:
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
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L147
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$600, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L148
.L147:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_write_bio@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	PEM_write, .-PEM_write
	.section	.rodata
.LC30:
	.string	"-----BEGIN "
.LC31:
	.string	"-----\n"
.LC32:
	.string	"\n"
.LC33:
	.string	"-----END "
	.text
	.globl	PEM_write_bio
	.type	PEM_write_bio, @function
PEM_write_bio:
.LFB562:
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
	movq	$0, -24(%rbp)
	call	EVP_ENCODE_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L150
	movl	$524294, -28(%rbp)
	jmp	.L151
.L150:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_EncodeInit@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -44(%rbp)
	leaq	.LC30(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$11, %eax
	jne	.L152
	movl	-44(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -44(%rbp)
	jne	.L152
	leaq	.LC31(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$6, %eax
	je	.L153
.L152:
	movl	$524320, -28(%rbp)
	jmp	.L151
.L153:
	cmpq	$0, -72(%rbp)
	je	.L154
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
	jmp	.L155
.L154:
	movl	$0, -8(%rbp)
.L155:
	cmpl	$0, -8(%rbp)
	jle	.L156
	movl	-8(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -8(%rbp)
	jne	.L157
	leaq	.LC32(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	je	.L156
.L157:
	movl	$524320, -28(%rbp)
	jmp	.L151
.L156:
	leaq	.LC1(%rip), %rax
	movl	$642, %edx
	movq	%rax, %rsi
	movl	$8192, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L170
	movl	$0, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L159
.L164:
	cmpq	$5120, -88(%rbp)
	jg	.L160
	movq	-88(%rbp), %rax
	movl	%eax, -4(%rbp)
	jmp	.L161
.L160:
	movl	$5120, -4(%rbp)
.L161:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %edi
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncodeUpdate@PLT
	testl	%eax, %eax
	jne	.L162
	movl	$524294, -28(%rbp)
	jmp	.L151
.L162:
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L163
	movl	-48(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	cmpl	%eax, %edx
	je	.L163
	movl	$524320, -28(%rbp)
	jmp	.L151
.L163:
	movl	-48(%rbp), %eax
	addl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	subq	%rax, -88(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, -12(%rbp)
.L159:
	cmpq	$0, -88(%rbp)
	jg	.L164
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncodeFinal@PLT
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jle	.L165
	movl	-48(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	cmpl	%eax, %edx
	je	.L165
	movl	$524320, -28(%rbp)
	jmp	.L151
.L165:
	leaq	.LC33(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$9, %eax
	jne	.L166
	movl	-44(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -44(%rbp)
	jne	.L166
	leaq	.LC31(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$6, %eax
	je	.L167
.L166:
	movl	$524320, -28(%rbp)
	jmp	.L151
.L167:
	movl	-48(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	jmp	.L151
.L170:
	nop
.L151:
	cmpl	$0, -32(%rbp)
	jne	.L168
	cmpl	$0, -28(%rbp)
	je	.L168
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$676, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L168:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_free@PLT
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$678, %ecx
	movl	$8192, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-32(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	PEM_write_bio, .-PEM_write_bio
	.globl	PEM_read
	.type	PEM_read, @function
PEM_read:
.LFB563:
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
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L172
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$690, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L173
.L172:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	PEM_read, .-PEM_read
	.type	sanitize_line, @function
sanitize_line:
.LFB564:
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
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L175
	movw	$-17425, -7(%rbp)
	movb	$-65, -5(%rbp)
	cmpl	$3, -28(%rbp)
	jle	.L175
	leaq	-7(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L175
	movl	-28(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	3(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	-28(%rbp), %eax
	cltq
	leaq	-3(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	subl	$3, -28(%rbp)
.L175:
	movl	-32(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L177
	jmp	.L178
.L180:
	subl	$1, -28(%rbp)
.L178:
	cmpl	$0, -28(%rbp)
	js	.L179
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jle	.L180
.L179:
	addl	$1, -28(%rbp)
	jmp	.L181
.L177:
	movl	-32(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L182
	movl	$0, -4(%rbp)
	jmp	.L183
.L185:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$1024, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L184
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L184
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L184
	addl	$1, -4(%rbp)
.L183:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L185
.L184:
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L181
.L182:
	movl	$0, -4(%rbp)
	jmp	.L186
.L189:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L187
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L187
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$64, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L188
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$32, (%rax)
.L188:
	addl	$1, -4(%rbp)
.L186:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L189
.L187:
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
.L181:
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$10, (%rax)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	sanitize_line, .-sanitize_line
	.type	get_name, @function
get_name:
.LFB565:
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
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	leaq	.LC1(%rip), %rdx
	movl	-52(%rbp), %eax
	movl	$765, %ecx
	movl	%eax, %esi
	movl	$256, %edi
	call	pem_malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L192
	movl	$0, %eax
	jmp	.L193
.L192:
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L194
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$773, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L195
.L194:
	movl	-52(%rbp), %eax
	andl	$-5, %eax
	movl	%eax, %edi
	movl	-8(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	sanitize_line
	movl	%eax, -20(%rbp)
	movl	$0, -8(%rbp)
	leaq	.LC30(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L192
	cmpl	$5, -20(%rbp)
	jle	.L192
	movl	-20(%rbp), %eax
	cltq
	leaq	-6(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC31(%rip), %rcx
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L192
	movl	-20(%rbp), %eax
	cltq
	leaq	-6(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	subl	$16, -20(%rbp)
	leaq	.LC1(%rip), %rdx
	movl	-52(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$787, %ecx
	movl	%eax, %edi
	call	pem_malloc
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	leaq	11(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, -4(%rbp)
	jmp	.L195
.L197:
	nop
.L195:
	leaq	.LC1(%rip), %rdx
	movl	-52(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	$794, %r8d
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rdi
	call	pem_free
	movl	-4(%rbp), %eax
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	get_name, .-get_name
	.type	get_header_and_data, @function
get_header_and_data:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	leaq	.LC1(%rip), %rdx
	movl	-100(%rbp), %eax
	movl	$829, %ecx
	movl	%eax, %esi
	movl	$256, %edi
	call	pem_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L199
	movl	$0, %eax
	jmp	.L200
.L199:
	movl	$-1, -36(%rbp)
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L201
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$837, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L202
.L201:
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$254, -52(%rbp)
	jne	.L203
	movq	-48(%rbp), %rax
	addq	$253, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L203
	movl	$1, %eax
	jmp	.L204
.L203:
	movl	$0, %eax
.L204:
	movl	%eax, -28(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L205
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	je	.L205
	movl	$1, -32(%rbp)
.L205:
	leaq	.LC33(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L206
	cmpl	$1, -32(%rbp)
	jne	.L207
.L206:
	andl	$-5, -36(%rbp)
.L207:
	movl	-100(%rbp), %eax
	andl	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	sanitize_line
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L208
	cmpl	$0, -40(%rbp)
	jne	.L222
	cmpl	$2, -32(%rbp)
	jne	.L210
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$866, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L202
.L210:
	movl	$2, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L222
.L208:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC33(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L212
	addq	$9, -16(%rbp)
	movl	$1, %eax
	jmp	.L213
.L212:
	movl	$0, %eax
.L213:
	testb	%al, %al
	je	.L214
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L215
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC31(%rip), %rcx
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L216
.L215:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$881, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L202
.L216:
	cmpl	$0, -32(%rbp)
	jne	.L223
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L223
.L214:
	cmpl	$0, -24(%rbp)
	je	.L219
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$891, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L202
.L219:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	js	.L224
	cmpl	$2, -32(%rbp)
	jne	.L199
	cmpl	$65, -52(%rbp)
	jg	.L225
	cmpl	$64, -52(%rbp)
	jg	.L199
	movl	$1, -24(%rbp)
	jmp	.L199
.L222:
	nop
	jmp	.L199
.L223:
	nop
	movl	$1, -20(%rbp)
	jmp	.L202
.L224:
	nop
	jmp	.L202
.L225:
	nop
.L202:
	leaq	.LC1(%rip), %rdx
	movl	-100(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	$914, %r8d
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rdi
	call	pem_free
	movl	-20(%rbp), %eax
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	get_header_and_data, .-get_header_and_data
	.globl	PEM_read_bio_ex
	.type	PEM_read_bio_ex, @function
PEM_read_bio_ex:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	%r9d, -108(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movl	-108(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L227
	movl	-108(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L227
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$939, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L228
.L227:
	movl	-108(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L229
	call	BIO_s_secmem@PLT
	movq	%rax, -16(%rbp)
	jmp	.L230
.L229:
	call	BIO_s_mem@PLT
	movq	%rax, -16(%rbp)
.L230:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L231
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L232
.L231:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$947, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L228
.L232:
	movl	-108(%rbp), %edx
	leaq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_name
	testl	%eax, %eax
	je	.L245
	movq	-48(%rbp), %rcx
	movl	-108(%rbp), %edi
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	get_header_and_data
	testl	%eax, %eax
	je	.L246
	movq	-40(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	je	.L247
	call	EVP_ENCODE_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L236
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$965, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L228
.L236:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_DecodeInit@PLT
	movl	-52(%rbp), %edi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-52(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecodeUpdate@PLT
	testl	%eax, %eax
	js	.L237
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecodeFinal@PLT
	testl	%eax, %eax
	jns	.L238
.L237:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$974, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L228
.L238:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movq	-64(%rbp), %rax
	movslq	%edx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	leal	1(%rax), %edi
	leaq	.LC1(%rip), %rdx
	movl	-108(%rbp), %eax
	movl	$981, %ecx
	movl	%eax, %esi
	call	pem_malloc
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-52(%rbp), %eax
	leaq	.LC1(%rip), %rdx
	movl	-108(%rbp), %esi
	movl	$982, %ecx
	movl	%eax, %edi
	call	pem_malloc
	movq	-96(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L248
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L248
	cmpl	$0, -24(%rbp)
	je	.L242
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	cmpl	%eax, -24(%rbp)
	jne	.L249
.L242:
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-52(%rbp), %edx
	movq	-96(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L250
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$0, -48(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L228
.L248:
	nop
	jmp	.L241
.L249:
	nop
	jmp	.L241
.L250:
	nop
.L241:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	-108(%rbp), %esi
	movl	$997, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pem_free
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	-108(%rbp), %esi
	movl	$999, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pem_free
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L228
.L245:
	nop
	jmp	.L228
.L246:
	nop
	jmp	.L228
.L247:
	nop
.L228:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_ENCODE_CTX_free@PLT
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	-108(%rbp), %esi
	movl	$1003, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	pem_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	PEM_read_bio_ex, .-PEM_read_bio_ex
	.globl	PEM_read_bio
	.type	PEM_read_bio, @function
PEM_read_bio:
.LFB568:
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
	movl	$2, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	PEM_read_bio, .-PEM_read_bio
	.globl	ossl_pem_check_suffix
	.type	ossl_pem_check_suffix, @function
ossl_pem_check_suffix:
.LFB569:
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
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jg	.L254
	movl	$0, %eax
	jmp	.L255
.L254:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L256
	movl	$0, %eax
	jmp	.L255
.L256:
	subq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L257
	movl	$0, %eax
	jmp	.L255
.L257:
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	ossl_pem_check_suffix, .-ossl_pem_check_suffix
	.section	.rodata
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 17
__func__.12:
	.string	"PEM_def_callback"
	.align 8
	.type	__func__.11, @object
	.size	__func__.11, 14
__func__.11:
	.string	"PEM_ASN1_read"
	.align 8
	.type	__func__.10, @object
	.size	__func__.10, 15
__func__.10:
	.string	"PEM_ASN1_write"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 19
__func__.9:
	.string	"PEM_ASN1_write_bio"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 14
__func__.8:
	.string	"PEM_do_header"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 24
__func__.7:
	.string	"PEM_get_EVP_CIPHER_INFO"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 8
__func__.6:
	.string	"load_iv"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 10
__func__.5:
	.string	"PEM_write"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"PEM_write_bio"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 9
__func__.3:
	.string	"PEM_read"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 9
__func__.2:
	.string	"get_name"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"get_header_and_data"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"PEM_read_bio_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
