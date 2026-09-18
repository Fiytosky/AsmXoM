	.file	"p5_pbe.c"
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
	.string	"salt"
.LC1:
	.string	"iter"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	PBEPARAM_seq_tt, @object
	.size	PBEPARAM_seq_tt, 80
PBEPARAM_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_INTEGER_it
	.text
	.globl	PBEPARAM_it
	.type	PBEPARAM_it, @function
PBEPARAM_it:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	PBEPARAM_it, .-PBEPARAM_it
	.globl	d2i_PBEPARAM
	.type	d2i_PBEPARAM, @function
d2i_PBEPARAM:
.LFB571:
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
	call	PBEPARAM_it@PLT
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
.LFE571:
	.size	d2i_PBEPARAM, .-d2i_PBEPARAM
	.globl	i2d_PBEPARAM
	.type	i2d_PBEPARAM, @function
i2d_PBEPARAM:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PBEPARAM_it@PLT
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
.LFE572:
	.size	i2d_PBEPARAM, .-i2d_PBEPARAM
	.globl	PBEPARAM_new
	.type	PBEPARAM_new, @function
PBEPARAM_new:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PBEPARAM_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	PBEPARAM_new, .-PBEPARAM_new
	.globl	PBEPARAM_free
	.type	PBEPARAM_free, @function
PBEPARAM_free:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PBEPARAM_it@PLT
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
.LFE574:
	.size	PBEPARAM_free, .-PBEPARAM_free
	.section	.rodata
.LC2:
	.string	"../crypto/asn1/p5_pbe.c"
	.text
	.globl	PKCS5_pbe_set0_algor_ex
	.type	PKCS5_pbe_set0_algor_ex, @function
PKCS5_pbe_set0_algor_ex:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movq	%r9, -88(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	call	PBEPARAM_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$39, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L15:
	cmpl	$0, -64(%rbp)
	jg	.L17
	movl	$2048, -64(%rbp)
.L17:
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L18:
	cmpl	$0, -76(%rbp)
	jne	.L19
	movl	$8, -76(%rbp)
.L19:
	cmpl	$0, -76(%rbp)
	js	.L27
	movl	-76(%rbp), %eax
	cltq
	leaq	.LC2(%rip), %rcx
	movl	$53, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L28
	cmpq	$0, -72(%rbp)
	je	.L22
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L23
.L22:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L29
.L23:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
	movq	$0, -32(%rbp)
	call	PBEPARAM_it@PLT
	movq	%rax, %rcx
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	testq	%rax, %rax
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L24:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PBEPARAM_free@PLT
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rbx
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rbx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	je	.L30
	movl	$1, %eax
	jmp	.L26
.L27:
	nop
	jmp	.L16
.L28:
	nop
	jmp	.L16
.L29:
	nop
	jmp	.L16
.L30:
	nop
.L16:
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$76, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PBEPARAM_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	$0, %eax
.L26:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	PKCS5_pbe_set0_algor_ex, .-PKCS5_pbe_set0_algor_ex
	.globl	PKCS5_pbe_set0_algor
	.type	PKCS5_pbe_set0_algor, @function
PKCS5_pbe_set0_algor:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PKCS5_pbe_set0_algor_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	PKCS5_pbe_set0_algor, .-PKCS5_pbe_set0_algor
	.globl	PKCS5_pbe_set_ex
	.type	PKCS5_pbe_set_ex, @function
PKCS5_pbe_set_ex:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	call	X509_ALGOR_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-48(%rbp), %r8
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	PKCS5_pbe_set0_algor_ex@PLT
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	jmp	.L35
.L36:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	PKCS5_pbe_set_ex, .-PKCS5_pbe_set_ex
	.globl	PKCS5_pbe_set
	.type	PKCS5_pbe_set, @function
PKCS5_pbe_set:
.LFB578:
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
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	$0, %r8d
	movl	%eax, %edi
	call	PKCS5_pbe_set_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	PKCS5_pbe_set, .-PKCS5_pbe_set
	.section	.rodata
.LC3:
	.string	"PBEPARAM"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	PBEPARAM_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC3
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 24
__func__.1:
	.string	"PKCS5_pbe_set0_algor_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"PKCS5_pbe_set_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
