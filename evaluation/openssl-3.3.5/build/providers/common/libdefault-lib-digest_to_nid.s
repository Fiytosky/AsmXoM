	.file	"digest_to_nid.c"
	.text
	.globl	ossl_digest_md_to_nid
	.type	ossl_digest_md_to_nid, @function
ossl_digest_md_to_nid:
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
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	$0, -8(%rbp)
	jmp	.L4
.L6:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L5
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L3
.L5:
	addq	$1, -8(%rbp)
.L4:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L6
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_digest_md_to_nid, .-ossl_digest_md_to_nid
	.globl	ossl_digest_get_approved_nid
	.type	ossl_digest_get_approved_nid, @function
ossl_digest_get_approved_nid:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	name_to_nid.0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_digest_md_to_nid@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	ossl_digest_get_approved_nid, .-ossl_digest_get_approved_nid
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
.LC7:
	.string	"SHA3-224"
.LC8:
	.string	"SHA3-256"
.LC9:
	.string	"SHA3-384"
.LC10:
	.string	"SHA3-512"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	name_to_nid.0, @object
	.size	name_to_nid.0, 176
name_to_nid.0:
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
	.long	1096
	.zero	4
	.quad	.LC7
	.long	1097
	.zero	4
	.quad	.LC8
	.long	1098
	.zero	4
	.quad	.LC9
	.long	1099
	.zero	4
	.quad	.LC10
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
