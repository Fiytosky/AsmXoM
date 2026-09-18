	.file	"bn_const.c"
	.text
	.globl	BN_get_rfc2409_prime_768
	.type	BN_get_rfc2409_prime_768, @function
BN_get_rfc2409_prime_768:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	RFC2409_PRIME_768.1(%rip), %rcx
	movq	%rax, %rdx
	movl	$96, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	BN_get_rfc2409_prime_768, .-BN_get_rfc2409_prime_768
	.globl	BN_get_rfc2409_prime_1024
	.type	BN_get_rfc2409_prime_1024, @function
BN_get_rfc2409_prime_1024:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	RFC2409_PRIME_1024.0(%rip), %rcx
	movq	%rax, %rdx
	movl	$128, %esi
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	BN_get_rfc2409_prime_1024, .-BN_get_rfc2409_prime_1024
	.globl	BN_get_rfc3526_prime_1536
	.type	BN_get_rfc3526_prime_1536, @function
BN_get_rfc3526_prime_1536:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	ossl_bignum_modp_1536_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	jmp	.L8
.L6:
	movq	ossl_bignum_modp_1536_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	BN_get_rfc3526_prime_1536, .-BN_get_rfc3526_prime_1536
	.globl	BN_get_rfc3526_prime_2048
	.type	BN_get_rfc3526_prime_2048, @function
BN_get_rfc3526_prime_2048:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	ossl_bignum_modp_2048_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	jmp	.L12
.L10:
	movq	ossl_bignum_modp_2048_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	BN_get_rfc3526_prime_2048, .-BN_get_rfc3526_prime_2048
	.globl	BN_get_rfc3526_prime_3072
	.type	BN_get_rfc3526_prime_3072, @function
BN_get_rfc3526_prime_3072:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	ossl_bignum_modp_3072_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	jmp	.L16
.L14:
	movq	ossl_bignum_modp_3072_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	BN_get_rfc3526_prime_3072, .-BN_get_rfc3526_prime_3072
	.globl	BN_get_rfc3526_prime_4096
	.type	BN_get_rfc3526_prime_4096, @function
BN_get_rfc3526_prime_4096:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	ossl_bignum_modp_4096_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	jmp	.L20
.L18:
	movq	ossl_bignum_modp_4096_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	BN_get_rfc3526_prime_4096, .-BN_get_rfc3526_prime_4096
	.globl	BN_get_rfc3526_prime_6144
	.type	BN_get_rfc3526_prime_6144, @function
BN_get_rfc3526_prime_6144:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L22
	movq	ossl_bignum_modp_6144_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	jmp	.L24
.L22:
	movq	ossl_bignum_modp_6144_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	BN_get_rfc3526_prime_6144, .-BN_get_rfc3526_prime_6144
	.globl	BN_get_rfc3526_prime_8192
	.type	BN_get_rfc3526_prime_8192, @function
BN_get_rfc3526_prime_8192:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L26
	movq	ossl_bignum_modp_8192_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	jmp	.L28
.L26:
	movq	ossl_bignum_modp_8192_p@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	BN_get_rfc3526_prime_8192, .-BN_get_rfc3526_prime_8192
	.section	.rodata
	.align 32
	.type	RFC2409_PRIME_768.1, @object
	.size	RFC2409_PRIME_768.1, 96
RFC2409_PRIME_768.1:
	.base64	"///////////JD9qiIWjCNMTGYouA3BzRKQJOCIpnzHQCC76mOxObIlFKCHmONATd75UZs806QxswKwpt8l8UN0/hNW1tUcJF5IW1dmJefsb0TELppjo2IP//////////"
	.align 32
	.type	RFC2409_PRIME_1024.0, @object
	.size	RFC2409_PRIME_1024.0, 128
RFC2409_PRIME_1024.0:
	.base64	"///////////JD9qiIWjCNMTGYouA3BzRKQJOCIpnzHQCC76mOxObIlFKCHmONATd75UZs806QxswKwpt8l8UN0/hNW1tUcJF5IW1dmJefsb0TELppjftawv/XLb0Brft7jhr+1qJn6WunyQRfEsf5kkoZlHs5lOB//////////8="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
