	.file	"rsa_schemes.c"
	.text
	.type	meth2nid, @function
meth2nid:
.LFB320:
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
	cmpq	$0, -24(%rbp)
	je	.L2
	movq	$0, -8(%rbp)
	jmp	.L3
.L6:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L4
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L5
.L4:
	addq	$1, -8(%rbp)
.L3:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L6
.L2:
	movl	$0, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	meth2nid, .-meth2nid
	.type	nid2name, @function
nid2name:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L11:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L9
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	jmp	.L10
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L11
	movl	$0, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	nid2name, .-nid2name
	.section	.rodata
.LC0:
	.string	"SHA1"
.LC1:
	.string	"SHA2-224"
.LC2:
	.string	"SHA2-256"
.LC3:
	.string	"SHA2-384"
.LC4:
	.string	"SHA2-512"
.LC5:
	.string	"SHA2-512/224"
.LC6:
	.string	"SHA2-512/256"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	oaeppss_name_nid_map, @object
	.size	oaeppss_name_nid_map, 112
oaeppss_name_nid_map:
	.long	64
	.zero	4
	.quad	.LC0
	.long	675
	.zero	4
	.quad	.LC1
	.long	672
	.zero	4
	.quad	.LC2
	.long	673
	.zero	4
	.quad	.LC3
	.long	674
	.zero	4
	.quad	.LC4
	.long	1094
	.zero	4
	.quad	.LC5
	.long	1095
	.zero	4
	.quad	.LC6
	.text
	.type	md_is_a, @function
md_is_a:
.LFB322:
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
	call	EVP_MD_is_a@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	md_is_a, .-md_is_a
	.globl	ossl_rsa_oaeppss_md2nid
	.type	ossl_rsa_oaeppss_md2nid, @function
ossl_rsa_oaeppss_md2nid:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	oaeppss_name_nid_map(%rip), %rdx
	leaq	md_is_a(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$7, %ecx
	movq	%rax, %rdi
	call	meth2nid
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	ossl_rsa_oaeppss_md2nid, .-ossl_rsa_oaeppss_md2nid
	.globl	ossl_rsa_oaeppss_nid2name
	.type	ossl_rsa_oaeppss_nid2name, @function
ossl_rsa_oaeppss_nid2name:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	leaq	oaeppss_name_nid_map(%rip), %rcx
	movl	-4(%rbp), %eax
	movl	$7, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	nid2name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	ossl_rsa_oaeppss_nid2name, .-ossl_rsa_oaeppss_nid2name
	.section	.rodata
.LC7:
	.string	"MGF1"
	.text
	.globl	ossl_rsa_mgf_nid2name
	.type	ossl_rsa_mgf_nid2name, @function
ossl_rsa_mgf_nid2name:
.LFB325:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$911, -4(%rbp)
	jne	.L19
	leaq	.LC7(%rip), %rax
	jmp	.L20
.L19:
	movl	$0, %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	ossl_rsa_mgf_nid2name, .-ossl_rsa_mgf_nid2name
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
