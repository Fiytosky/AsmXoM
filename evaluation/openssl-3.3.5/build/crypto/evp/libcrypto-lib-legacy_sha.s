	.file	"legacy_sha.c"
	.text
	.type	sha1_init, @function
sha1_init:
.LFB438:
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
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	sha1_init, .-sha1_init
	.type	sha1_update, @function
sha1_update:
.LFB439:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA1_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	sha1_update, .-sha1_update
	.type	sha1_final, @function
sha1_final:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	sha1_final, .-sha1_final
	.type	sha224_init, @function
sha224_init:
.LFB441:
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
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	call	SHA224_Init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	sha224_init, .-sha224_init
	.type	sha224_update, @function
sha224_update:
.LFB442:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA224_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	sha224_update, .-sha224_update
	.type	sha224_final, @function
sha224_final:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA224_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	sha224_final, .-sha224_final
	.type	sha256_init, @function
sha256_init:
.LFB444:
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
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	sha256_init, .-sha256_init
	.type	sha256_update, @function
sha256_update:
.LFB445:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA256_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	sha256_update, .-sha256_update
	.type	sha256_final, @function
sha256_final:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA256_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	sha256_final, .-sha256_final
	.type	sha384_init, @function
sha384_init:
.LFB447:
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
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	call	SHA384_Init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	sha384_init, .-sha384_init
	.type	sha384_update, @function
sha384_update:
.LFB448:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA384_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	sha384_update, .-sha384_update
	.type	sha384_final, @function
sha384_final:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA384_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	sha384_final, .-sha384_final
	.type	sha512_init, @function
sha512_init:
.LFB450:
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
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	call	SHA512_Init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	sha512_init, .-sha512_init
	.type	sha512_update, @function
sha512_update:
.LFB451:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA512_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	sha512_update, .-sha512_update
	.type	sha512_final, @function
sha512_final:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA512_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	sha512_final, .-sha512_final
	.type	sha512_224_int_init, @function
sha512_224_int_init:
.LFB453:
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
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	call	sha512_224_init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	sha512_224_int_init, .-sha512_224_int_init
	.type	sha512_224_int_update, @function
sha512_224_int_update:
.LFB454:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA512_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	sha512_224_int_update, .-sha512_224_int_update
	.type	sha512_224_int_final, @function
sha512_224_int_final:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA512_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	sha512_224_int_final, .-sha512_224_int_final
	.type	sha512_256_int_init, @function
sha512_256_int_init:
.LFB456:
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
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	call	sha512_256_init@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	sha512_256_int_init, .-sha512_256_int_init
	.type	sha512_256_int_update, @function
sha512_256_int_update:
.LFB457:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA512_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	sha512_256_int_update, .-sha512_256_int_update
	.type	sha512_256_int_final, @function
sha512_256_int_final:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA512_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	sha512_256_int_final, .-sha512_256_int_final
	.type	sha3_int_init, @function
sha3_int_init:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	8(%rax), %eax
	sall	$3, %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rbx, %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	sha3_int_init, .-sha3_int_init
	.type	sha3_int_update, @function
sha3_int_update:
.LFB460:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_sha3_update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	sha3_int_update, .-sha3_int_update
	.type	sha3_int_final, @function
sha3_int_final:
.LFB461:
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
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sha3_final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	sha3_int_final, .-sha3_int_final
	.type	shake_init, @function
shake_init:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	8(%rax), %eax
	sall	$3, %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rbx, %rdx
	movl	$31, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	shake_init, .-shake_init
	.type	sha1_int_ctrl, @function
sha1_int_ctrl:
.LFB463:
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
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md_data@PLT
	movq	%rax, %rdi
	jmp	.L53
.L52:
	movl	$0, %edi
.L53:
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	call	ossl_sha1_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	sha1_int_ctrl, .-sha1_int_ctrl
	.type	shake_ctrl, @function
shake_ctrl:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$3, -28(%rbp)
	jne	.L58
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 376(%rax)
	movl	$1, %eax
	jmp	.L57
.L58:
	movl	$0, %eax
.L57:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	shake_ctrl, .-shake_ctrl
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	sha1_md, @object
	.size	sha1_md, 240
sha1_md:
	.long	64
	.long	65
	.long	20
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha1_init
	.quad	sha1_update
	.quad	sha1_final
	.quad	0
	.quad	0
	.long	64
	.long	0
	.quad	sha1_int_ctrl
	.zero	152
	.text
	.globl	EVP_sha1
	.type	EVP_sha1, @function
EVP_sha1:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha1_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	EVP_sha1, .-EVP_sha1
	.section	.data.rel.ro.local
	.align 32
	.type	sha224_md, @object
	.size	sha224_md, 240
sha224_md:
	.long	675
	.long	671
	.long	28
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha224_init
	.quad	sha224_update
	.quad	sha224_final
	.quad	0
	.quad	0
	.long	64
	.long	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sha224
	.type	EVP_sha224, @function
EVP_sha224:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha224_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	EVP_sha224, .-EVP_sha224
	.section	.data.rel.ro.local
	.align 32
	.type	sha256_md, @object
	.size	sha256_md, 240
sha256_md:
	.long	672
	.long	668
	.long	32
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha256_init
	.quad	sha256_update
	.quad	sha256_final
	.quad	0
	.quad	0
	.long	64
	.long	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sha256
	.type	EVP_sha256, @function
EVP_sha256:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha256_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	EVP_sha256, .-EVP_sha256
	.section	.data.rel.ro.local
	.align 32
	.type	sha512_224_md, @object
	.size	sha512_224_md, 240
sha512_224_md:
	.long	1094
	.long	1145
	.long	28
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha512_224_int_init
	.quad	sha512_224_int_update
	.quad	sha512_224_int_final
	.quad	0
	.quad	0
	.long	128
	.long	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sha512_224
	.type	EVP_sha512_224, @function
EVP_sha512_224:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha512_224_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	EVP_sha512_224, .-EVP_sha512_224
	.section	.data.rel.ro.local
	.align 32
	.type	sha512_256_md, @object
	.size	sha512_256_md, 240
sha512_256_md:
	.long	1095
	.long	1146
	.long	32
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha512_256_int_init
	.quad	sha512_256_int_update
	.quad	sha512_256_int_final
	.quad	0
	.quad	0
	.long	128
	.long	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sha512_256
	.type	EVP_sha512_256, @function
EVP_sha512_256:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha512_256_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	EVP_sha512_256, .-EVP_sha512_256
	.section	.data.rel.ro.local
	.align 32
	.type	sha384_md, @object
	.size	sha384_md, 240
sha384_md:
	.long	673
	.long	669
	.long	48
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha384_init
	.quad	sha384_update
	.quad	sha384_final
	.quad	0
	.quad	0
	.long	128
	.long	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sha384
	.type	EVP_sha384, @function
EVP_sha384:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha384_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	EVP_sha384, .-EVP_sha384
	.section	.data.rel.ro.local
	.align 32
	.type	sha512_md, @object
	.size	sha512_md, 240
sha512_md:
	.long	674
	.long	670
	.long	64
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha512_init
	.quad	sha512_update
	.quad	sha512_final
	.quad	0
	.quad	0
	.long	128
	.long	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_sha512
	.type	EVP_sha512, @function
EVP_sha512:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha512_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	EVP_sha512, .-EVP_sha512
	.globl	EVP_sha3_224
	.type	EVP_sha3_224, @function
EVP_sha3_224:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha3_224_md.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	EVP_sha3_224, .-EVP_sha3_224
	.globl	EVP_sha3_256
	.type	EVP_sha3_256, @function
EVP_sha3_256:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha3_256_md.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	EVP_sha3_256, .-EVP_sha3_256
	.globl	EVP_sha3_384
	.type	EVP_sha3_384, @function
EVP_sha3_384:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha3_384_md.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	EVP_sha3_384, .-EVP_sha3_384
	.globl	EVP_sha3_512
	.type	EVP_sha3_512, @function
EVP_sha3_512:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	sha3_512_md.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	EVP_sha3_512, .-EVP_sha3_512
	.globl	EVP_shake128
	.type	EVP_shake128, @function
EVP_shake128:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	shake128_md.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	EVP_shake128, .-EVP_shake128
	.globl	EVP_shake256
	.type	EVP_shake256, @function
EVP_shake256:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	shake256_md.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	EVP_shake256, .-EVP_shake256
	.section	.data.rel.ro.local
	.align 32
	.type	sha3_224_md.5, @object
	.size	sha3_224_md.5, 240
sha3_224_md.5:
	.long	1096
	.long	1116
	.long	28
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha3_int_init
	.quad	sha3_int_update
	.quad	sha3_int_final
	.quad	0
	.quad	0
	.long	144
	.long	0
	.quad	0
	.zero	152
	.align 32
	.type	sha3_256_md.4, @object
	.size	sha3_256_md.4, 240
sha3_256_md.4:
	.long	1097
	.long	1117
	.long	32
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha3_int_init
	.quad	sha3_int_update
	.quad	sha3_int_final
	.quad	0
	.quad	0
	.long	136
	.long	0
	.quad	0
	.zero	152
	.align 32
	.type	sha3_384_md.3, @object
	.size	sha3_384_md.3, 240
sha3_384_md.3:
	.long	1098
	.long	1118
	.long	48
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha3_int_init
	.quad	sha3_int_update
	.quad	sha3_int_final
	.quad	0
	.quad	0
	.long	104
	.long	0
	.quad	0
	.zero	152
	.align 32
	.type	sha3_512_md.2, @object
	.size	sha3_512_md.2, 240
sha3_512_md.2:
	.long	1099
	.long	1119
	.long	64
	.zero	4
	.quad	8
	.long	1
	.zero	4
	.quad	sha3_int_init
	.quad	sha3_int_update
	.quad	sha3_int_final
	.quad	0
	.quad	0
	.long	72
	.long	0
	.quad	0
	.zero	152
	.align 32
	.type	shake128_md.1, @object
	.size	shake128_md.1, 240
shake128_md.1:
	.long	1100
	.long	0
	.long	16
	.zero	4
	.quad	10
	.long	1
	.zero	4
	.quad	shake_init
	.quad	sha3_int_update
	.quad	sha3_int_final
	.quad	0
	.quad	0
	.long	168
	.long	0
	.quad	shake_ctrl
	.zero	152
	.align 32
	.type	shake256_md.0, @object
	.size	shake256_md.0, 240
shake256_md.0:
	.long	1101
	.long	0
	.long	32
	.zero	4
	.quad	10
	.long	1
	.zero	4
	.quad	shake_init
	.quad	sha3_int_update
	.quad	sha3_int_final
	.quad	0
	.quad	0
	.long	136
	.long	0
	.quad	shake_ctrl
	.zero	152
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
