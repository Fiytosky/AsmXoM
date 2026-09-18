	.file	"eng_fat.c"
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
	.type	lh_ENGINE_PILE_hfn_thunk, @function
lh_ENGINE_PILE_hfn_thunk:
.LFB570:
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
.LFE570:
	.size	lh_ENGINE_PILE_hfn_thunk, .-lh_ENGINE_PILE_hfn_thunk
	.type	lh_ENGINE_PILE_cfn_thunk, @function
lh_ENGINE_PILE_cfn_thunk:
.LFB571:
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
.LFE571:
	.size	lh_ENGINE_PILE_cfn_thunk, .-lh_ENGINE_PILE_cfn_thunk
	.globl	ENGINE_set_default
	.type	ENGINE_set_default, @function
ENGINE_set_default:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_ciphers@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	-12(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_digests@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L11
.L12:
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_RSA@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L11
.L13:
	movl	-12(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L14
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_DSA@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L11
.L14:
	movl	-12(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_DH@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L11
.L15:
	movl	-12(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_EC@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L11
.L16:
	movl	-12(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_RAND@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L11
.L17:
	movl	-12(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_pkey_meths@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L11
.L18:
	movl	-12(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_set_default_pkey_asn1_meths@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L11
.L19:
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ENGINE_set_default, .-ENGINE_set_default
	.section	.rodata
.LC0:
	.string	"ALL"
.LC1:
	.string	"RSA"
.LC2:
	.string	"DSA"
.LC3:
	.string	"DH"
.LC4:
	.string	"EC"
.LC5:
	.string	"RAND"
.LC6:
	.string	"CIPHERS"
.LC7:
	.string	"DIGESTS"
.LC8:
	.string	"PKEY"
.LC9:
	.string	"PKEY_CRYPTO"
.LC10:
	.string	"PKEY_ASN1"
	.text
	.type	int_def_cb, @function
int_def_cb:
.LFB588:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$65535, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L23:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L25:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L26:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L27
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L27:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L28
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L28:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC5(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L29
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L29:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC6(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L30
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L30:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC7(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L31
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L31:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L32
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orb	$6, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L32:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC9(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L33
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L33:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	.LC10(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L34
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orb	$4, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L34:
	movl	$0, %eax
	jmp	.L22
.L24:
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	int_def_cb, .-int_def_cb
	.section	.rodata
.LC11:
	.string	"../crypto/engine/eng_fat.c"
.LC12:
	.string	"str=%s"
	.text
	.globl	ENGINE_set_default_string
	.type	ENGINE_set_default_string, @function
ENGINE_set_default_string:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rcx
	leaq	int_def_cb(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
	testl	%eax, %eax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	movl	$150, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L38
.L36:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ENGINE_set_default@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ENGINE_set_default_string, .-ENGINE_set_default_string
	.globl	ENGINE_register_complete
	.type	ENGINE_register_complete, @function
ENGINE_register_complete:
.LFB590:
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
	call	ENGINE_register_ciphers@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_digests@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_RSA@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_DSA@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_DH@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_EC@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_RAND@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_pkey_meths@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_pkey_asn1_meths@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ENGINE_register_complete, .-ENGINE_register_complete
	.globl	ENGINE_register_all_complete
	.type	ENGINE_register_all_complete, @function
ENGINE_register_all_complete:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ENGINE_get_first@PLT
	movq	%rax, -8(%rbp)
	jmp	.L42
.L44:
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L43
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_register_complete@PLT
.L43:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_next@PLT
	movq	%rax, -8(%rbp)
.L42:
	cmpq	$0, -8(%rbp)
	jne	.L44
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	ENGINE_register_all_complete, .-ENGINE_register_all_complete
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"ENGINE_set_default_string"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
