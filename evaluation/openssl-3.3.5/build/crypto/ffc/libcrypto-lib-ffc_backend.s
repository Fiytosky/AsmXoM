	.file	"ffc_backend.c"
	.text
	.section	.rodata
.LC0:
	.string	"group"
.LC1:
	.string	"p"
.LC2:
	.string	"g"
.LC3:
	.string	"q"
.LC4:
	.string	"gindex"
.LC5:
	.string	"pcounter"
.LC6:
	.string	"j"
.LC7:
	.string	"hindex"
.LC8:
	.string	"seed"
.LC9:
	.string	"validate-pq"
.LC10:
	.string	"validate-g"
.LC11:
	.string	"validate-legacy"
.LC12:
	.string	"digest"
.LC13:
	.string	"properties"
	.text
	.globl	ossl_ffc_params_fromdata
	.type	ossl_ffc_params_fromdata, @function
ossl_ffc_params_fromdata:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L30
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ffc_name_to_dh_named_group@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L30
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_named_group_set@PLT
	testl	%eax, %eax
	je	.L30
.L2:
	leaq	.LC1(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L5
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L31
.L5:
	cmpq	$0, -48(%rbp)
	je	.L7
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L31
.L7:
	cmpq	$0, -40(%rbp)
	je	.L8
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L31
.L8:
	leaq	.LC4(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L9
	leaq	-92(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L32
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 56(%rax)
.L9:
	leaq	.LC5(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L11
	leaq	-92(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L33
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 48(%rax)
.L11:
	leaq	.LC6(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L13
	leaq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L34
.L13:
	leaq	.LC7(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L14
	leaq	-92(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L35
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 60(%rax)
.L14:
	leaq	.LC8(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L16
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L36
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_seed@PLT
	testl	%eax, %eax
	je	.L36
.L16:
	leaq	.LC9(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L18
	leaq	-92(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L37
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_enable_flags@PLT
.L18:
	leaq	.LC10(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L20
	leaq	-92(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L38
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_enable_flags@PLT
.L20:
	leaq	.LC11(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L22
	leaq	-92(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L39
	movl	-92(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_enable_flags@PLT
.L22:
	leaq	.LC12(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L24
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L40
	leaq	.LC13(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L26
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L41
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L26:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_set_digest@PLT
.L24:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_set0_pqg@PLT
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_set0_j@PLT
	movl	$1, %eax
	jmp	.L29
.L30:
	nop
	jmp	.L4
.L31:
	nop
	jmp	.L4
.L32:
	nop
	jmp	.L4
.L33:
	nop
	jmp	.L4
.L34:
	nop
	jmp	.L4
.L35:
	nop
	jmp	.L4
.L36:
	nop
	jmp	.L4
.L37:
	nop
	jmp	.L4
.L38:
	nop
	jmp	.L4
.L39:
	nop
	jmp	.L4
.L40:
	nop
	jmp	.L4
.L41:
	nop
.L4:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_ffc_params_fromdata, .-ossl_ffc_params_fromdata
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
