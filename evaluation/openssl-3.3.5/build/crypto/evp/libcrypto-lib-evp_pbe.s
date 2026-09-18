	.file	"evp_pbe.c"
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
	.type	sk_EVP_PBE_CTL_value, @function
sk_EVP_PBE_CTL_value:
.LFB571:
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
.LFE571:
	.size	sk_EVP_PBE_CTL_value, .-sk_EVP_PBE_CTL_value
	.type	sk_EVP_PBE_CTL_new, @function
sk_EVP_PBE_CTL_new:
.LFB572:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	sk_EVP_PBE_CTL_new, .-sk_EVP_PBE_CTL_new
	.type	sk_EVP_PBE_CTL_push, @function
sk_EVP_PBE_CTL_push:
.LFB580:
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
.LFE580:
	.size	sk_EVP_PBE_CTL_push, .-sk_EVP_PBE_CTL_push
	.type	sk_EVP_PBE_CTL_pop_free, @function
sk_EVP_PBE_CTL_pop_free:
.LFB584:
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
.LFE584:
	.size	sk_EVP_PBE_CTL_pop_free, .-sk_EVP_PBE_CTL_pop_free
	.type	sk_EVP_PBE_CTL_find, @function
sk_EVP_PBE_CTL_find:
.LFB587:
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
	call	OPENSSL_sk_find@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	sk_EVP_PBE_CTL_find, .-sk_EVP_PBE_CTL_find
	.type	sk_EVP_PBE_CTL_sort, @function
sk_EVP_PBE_CTL_sort:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	sk_EVP_PBE_CTL_sort, .-sk_EVP_PBE_CTL_sort
	.local	pbe_algs
	.comm	pbe_algs,8,8
	.section	.data.rel.ro,"aw"
	.align 32
	.type	builtin_pbe, @object
	.size	builtin_pbe, 1088
builtin_pbe:
	.long	0
	.long	9
	.long	31
	.long	3
	.quad	PKCS5_PBE_keyivgen
	.quad	PKCS5_PBE_keyivgen_ex
	.long	0
	.long	10
	.long	31
	.long	4
	.quad	PKCS5_PBE_keyivgen
	.quad	PKCS5_PBE_keyivgen_ex
	.long	0
	.long	68
	.long	166
	.long	64
	.quad	PKCS5_PBE_keyivgen
	.quad	PKCS5_PBE_keyivgen_ex
	.long	0
	.long	69
	.long	-1
	.long	-1
	.quad	PKCS5_v2_PBKDF2_keyivgen
	.quad	PKCS5_v2_PBKDF2_keyivgen_ex
	.long	0
	.long	144
	.long	5
	.long	64
	.quad	PKCS12_PBE_keyivgen
	.quad	PKCS12_PBE_keyivgen_ex
	.long	0
	.long	145
	.long	97
	.long	64
	.quad	PKCS12_PBE_keyivgen
	.quad	PKCS12_PBE_keyivgen_ex
	.long	0
	.long	146
	.long	44
	.long	64
	.quad	PKCS12_PBE_keyivgen
	.quad	PKCS12_PBE_keyivgen_ex
	.long	0
	.long	147
	.long	43
	.long	64
	.quad	PKCS12_PBE_keyivgen
	.quad	PKCS12_PBE_keyivgen_ex
	.long	0
	.long	148
	.long	37
	.long	64
	.quad	PKCS12_PBE_keyivgen
	.quad	PKCS12_PBE_keyivgen_ex
	.long	0
	.long	149
	.long	98
	.long	64
	.quad	PKCS12_PBE_keyivgen
	.quad	PKCS12_PBE_keyivgen_ex
	.long	0
	.long	161
	.long	-1
	.long	-1
	.quad	PKCS5_v2_PBE_keyivgen
	.quad	PKCS5_v2_PBE_keyivgen_ex
	.long	0
	.long	168
	.long	166
	.long	3
	.quad	PKCS5_PBE_keyivgen
	.quad	PKCS5_PBE_keyivgen_ex
	.long	0
	.long	169
	.long	166
	.long	4
	.quad	PKCS5_PBE_keyivgen
	.quad	PKCS5_PBE_keyivgen_ex
	.long	0
	.long	170
	.long	31
	.long	64
	.quad	PKCS5_PBE_keyivgen
	.quad	PKCS5_PBE_keyivgen_ex
	.long	1
	.long	163
	.long	-1
	.long	64
	.quad	0
	.zero	8
	.long	1
	.long	780
	.long	-1
	.long	4
	.quad	0
	.zero	8
	.long	1
	.long	781
	.long	-1
	.long	64
	.quad	0
	.zero	8
	.long	1
	.long	797
	.long	-1
	.long	4
	.quad	0
	.zero	8
	.long	1
	.long	798
	.long	-1
	.long	675
	.quad	0
	.zero	8
	.long	1
	.long	799
	.long	-1
	.long	672
	.quad	0
	.zero	8
	.long	1
	.long	800
	.long	-1
	.long	673
	.quad	0
	.zero	8
	.long	1
	.long	801
	.long	-1
	.long	674
	.quad	0
	.zero	8
	.long	1
	.long	810
	.long	-1
	.long	809
	.quad	0
	.zero	8
	.long	1
	.long	988
	.long	-1
	.long	982
	.quad	0
	.zero	8
	.long	1
	.long	989
	.long	-1
	.long	983
	.quad	0
	.zero	8
	.long	1
	.long	1102
	.long	-1
	.long	1096
	.quad	0
	.zero	8
	.long	1
	.long	1103
	.long	-1
	.long	1097
	.quad	0
	.zero	8
	.long	1
	.long	1104
	.long	-1
	.long	1098
	.quad	0
	.zero	8
	.long	1
	.long	1105
	.long	-1
	.long	1099
	.quad	0
	.zero	8
	.long	1
	.long	1193
	.long	-1
	.long	1094
	.quad	0
	.zero	8
	.long	1
	.long	1194
	.long	-1
	.long	1095
	.quad	0
	.zero	8
	.long	1
	.long	1281
	.long	-1
	.long	1143
	.quad	0
	.zero	8
	.long	2
	.long	69
	.long	-1
	.long	-1
	.quad	PKCS5_v2_PBKDF2_keyivgen
	.quad	PKCS5_v2_PBKDF2_keyivgen_ex
	.long	2
	.long	973
	.long	-1
	.long	-1
	.quad	PKCS5_v2_scrypt_keyivgen
	.quad	PKCS5_v2_scrypt_keyivgen_ex
	.section	.rodata
.LC0:
	.string	"NULL"
.LC1:
	.string	"../crypto/evp/evp_pbe.c"
.LC2:
	.string	"TYPE=%s"
	.text
	.globl	EVP_PBE_CipherInit_ex
	.type	EVP_PBE_CipherInit_ex, @function
EVP_PBE_CipherInit_ex:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movl	%r9d, -168(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %esi
	leaq	-56(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	leaq	-44(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %edi
	call	EVP_PBE_find_ex@PLT
	testl	%eax, %eax
	jne	.L16
	cmpq	$0, -152(%rbp)
	jne	.L17
	leaq	.LC0(%rip), %rcx
	leaq	-144(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	jmp	.L18
.L17:
	movq	-152(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	i2t_ASN1_OBJECT@PLT
.L18:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	-144(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$121, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L16:
	cmpq	$0, -160(%rbp)
	jne	.L20
	movl	$0, -164(%rbp)
	jmp	.L21
.L20:
	cmpl	$-1, -164(%rbp)
	jne	.L21
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -164(%rbp)
.L21:
	movl	-40(%rbp), %eax
	cmpl	$-1, %eax
	je	.L22
	call	ERR_set_mark@PLT
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L23
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -8(%rbp)
.L23:
	cmpq	$0, -8(%rbp)
	jne	.L24
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movl	$160, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L24:
	call	ERR_pop_to_mark@PLT
.L22:
	movl	-44(%rbp), %eax
	cmpl	$-1, %eax
	je	.L25
	call	ERR_set_mark@PLT
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L26
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -24(%rbp)
.L26:
	cmpq	$0, -24(%rbp)
	jne	.L27
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L27:
	call	ERR_pop_to_mark@PLT
.L25:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L28
	movq	-56(%rbp), %r10
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r8
	movq	-176(%rbp), %rcx
	movl	-164(%rbp), %edx
	movq	-160(%rbp), %rsi
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	-168(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	movl	%eax, -36(%rbp)
	jmp	.L19
.L28:
	movq	-64(%rbp), %r10
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r8
	movq	-176(%rbp), %rcx
	movl	-164(%rbp), %edx
	movq	-160(%rbp), %rsi
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	movl	-168(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -36(%rbp)
.L19:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	EVP_PBE_CipherInit_ex, .-EVP_PBE_CipherInit_ex
	.globl	EVP_PBE_CipherInit
	.type	EVP_PBE_CipherInit, @function
EVP_PBE_CipherInit:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -24(%rbp)
	movl	-24(%rbp), %r8d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PBE_CipherInit_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	EVP_PBE_CipherInit, .-EVP_PBE_CipherInit
	.type	pbe2_cmp, @function
pbe2_cmp:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L33
	movl	-4(%rbp), %eax
	jmp	.L34
.L33:
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
.L34:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	pbe2_cmp, .-pbe2_cmp
	.type	pbe2_cmp_BSEARCH_CMP_FN, @function
pbe2_cmp_BSEARCH_CMP_FN:
.LFB598:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pbe2_cmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	pbe2_cmp_BSEARCH_CMP_FN, .-pbe2_cmp_BSEARCH_CMP_FN
	.type	OBJ_bsearch_pbe2, @function
OBJ_bsearch_pbe2:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	leaq	pbe2_cmp_BSEARCH_CMP_FN(%rip), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OBJ_bsearch_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	OBJ_bsearch_pbe2, .-OBJ_bsearch_pbe2
	.type	pbe_cmp, @function
pbe_cmp:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L40
	movl	-4(%rbp), %eax
	jmp	.L41
.L40:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
.L41:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	pbe_cmp, .-pbe_cmp
	.globl	EVP_PBE_alg_add_type
	.type	EVP_PBE_alg_add_type, @function
EVP_PBE_alg_add_type:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	pbe_algs(%rip), %rax
	testq	%rax, %rax
	jne	.L43
	leaq	pbe_cmp(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_PBE_CTL_new
	movq	%rax, pbe_algs(%rip)
	movq	pbe_algs(%rip), %rax
	testq	%rax, %rax
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L44
.L43:
	leaq	.LC1(%rip), %rax
	movl	$213, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L48
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	pbe_algs(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PBE_CTL_push
	testl	%eax, %eax
	jne	.L46
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L44
.L46:
	movl	$1, %eax
	jmp	.L47
.L48:
	nop
.L44:
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$229, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	EVP_PBE_alg_add_type, .-EVP_PBE_alg_add_type
	.globl	EVP_PBE_alg_add
	.type	EVP_PBE_alg_add, @function
EVP_PBE_alg_add:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L50
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_nid@PLT
	movl	%eax, -4(%rbp)
	jmp	.L51
.L50:
	movl	$-1, -4(%rbp)
.L51:
	cmpq	$0, -40(%rbp)
	je	.L52
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -8(%rbp)
	jmp	.L53
.L52:
	movl	$-1, -8(%rbp)
.L53:
	movq	-48(%rbp), %rsi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %eax
	movq	%rsi, %r8
	movl	%eax, %esi
	movl	$0, %edi
	call	EVP_PBE_alg_add_type@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	EVP_PBE_alg_add, .-EVP_PBE_alg_add
	.globl	EVP_PBE_find_ex
	.type	EVP_PBE_find_ex, @function
EVP_PBE_find_ex:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L65
.L56:
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	pbe_algs(%rip), %rax
	testq	%rax, %rax
	je	.L58
	movq	pbe_algs(%rip), %rax
	movq	%rax, %rdi
	call	sk_EVP_PBE_CTL_sort
	movq	pbe_algs(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PBE_CTL_find
	movl	%eax, -12(%rbp)
	movq	pbe_algs(%rip), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EVP_PBE_CTL_value
	movq	%rax, -8(%rbp)
.L58:
	cmpq	$0, -8(%rbp)
	jne	.L59
	leaq	builtin_pbe(%rip), %rcx
	leaq	-48(%rbp), %rax
	movl	$34, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_bsearch_pbe2
	movq	%rax, -8(%rbp)
.L59:
	cmpq	$0, -8(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L65
.L60:
	cmpq	$0, -64(%rbp)
	je	.L61
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L61:
	cmpq	$0, -72(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
.L62:
	cmpq	$0, -80(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
.L63:
	cmpq	$0, -88(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L64:
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	EVP_PBE_find_ex, .-EVP_PBE_find_ex
	.globl	EVP_PBE_find
	.type	EVP_PBE_find, @function
EVP_PBE_find:
.LFB604:
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
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	%eax, %edi
	call	EVP_PBE_find_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	EVP_PBE_find, .-EVP_PBE_find
	.type	free_evp_pbe_ctl, @function
free_evp_pbe_ctl:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$292, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	free_evp_pbe_ctl, .-free_evp_pbe_ctl
	.globl	EVP_PBE_cleanup
	.type	EVP_PBE_cleanup, @function
EVP_PBE_cleanup:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	pbe_algs(%rip), %rax
	leaq	free_evp_pbe_ctl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EVP_PBE_CTL_pop_free
	movq	$0, pbe_algs(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	EVP_PBE_cleanup, .-EVP_PBE_cleanup
	.globl	EVP_PBE_get
	.type	EVP_PBE_get, @function
EVP_PBE_get:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$33, -40(%rbp)
	jbe	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-40(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	builtin_pbe(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L73
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L73:
	cmpq	$0, -32(%rbp)
	je	.L74
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L74:
	movl	$1, %eax
.L72:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	EVP_PBE_get, .-EVP_PBE_get
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"EVP_PBE_CipherInit_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"EVP_PBE_alg_add_type"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
