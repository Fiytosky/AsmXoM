	.file	"securitycheck_default.c"
	.text
	.globl	ossl_securitycheck_enabled
	.type	ossl_securitycheck_enabled, @function
ossl_securitycheck_enabled:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	ossl_securitycheck_enabled, .-ossl_securitycheck_enabled
	.globl	ossl_tls1_prf_ems_check_enabled
	.type	ossl_tls1_prf_ems_check_enabled, @function
ossl_tls1_prf_ems_check_enabled:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	ossl_tls1_prf_ems_check_enabled, .-ossl_tls1_prf_ems_check_enabled
	.globl	ossl_digest_rsa_sign_get_md_nid
	.type	ossl_digest_rsa_sign_get_md_nid, @function
ossl_digest_rsa_sign_get_md_nid:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_digest_get_approved_nid_with_sha1@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L6
	leaq	name_to_nid.0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_digest_md_to_nid@PLT
	movl	%eax, -4(%rbp)
.L6:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	ossl_digest_rsa_sign_get_md_nid, .-ossl_digest_rsa_sign_get_md_nid
	.section	.rodata
.LC0:
	.string	"MD5"
.LC1:
	.string	"MD5-SHA1"
.LC2:
	.string	"MD2"
.LC3:
	.string	"MD4"
.LC4:
	.string	"MDC2"
.LC5:
	.string	"RIPEMD160"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	name_to_nid.0, @object
	.size	name_to_nid.0, 96
name_to_nid.0:
	.long	4
	.zero	4
	.quad	.LC0
	.long	114
	.zero	4
	.quad	.LC1
	.long	3
	.zero	4
	.quad	.LC2
	.long	257
	.zero	4
	.quad	.LC3
	.long	95
	.zero	4
	.quad	.LC4
	.long	117
	.zero	4
	.quad	.LC5
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
