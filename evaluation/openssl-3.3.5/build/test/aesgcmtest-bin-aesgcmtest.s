	.file	"aesgcmtest.c"
	.text
	.section	.rodata
	.align 32
	.type	gcm_key, @object
	.size	gcm_key, 32
gcm_key:
	.base64	"7rwfV0h/UZIcBGVmX4rm0WWLsm3m+KBpo1ICk6VyB48="
	.align 8
	.type	gcm_iv, @object
	.size	gcm_iv, 12
gcm_iv:
	.base64	"mao+aO2Bc6Du0GaE"
	.align 16
	.type	gcm_pt, @object
	.size	gcm_pt, 16
gcm_pt:
	.base64	"9W6HBVvDLQ7rMbLqzCvypQ=="
	.align 16
	.type	gcm_aad, @object
	.size	gcm_aad, 16
gcm_aad:
	.base64	"TSPDzsM0tJvbNwxDf+x43g=="
	.align 16
	.type	gcm_ct, @object
	.size	gcm_ct, 16
gcm_ct:
	.base64	"9yZEE6hMDnzVNoZ+ufIXNg=="
	.align 16
	.type	gcm_tag, @object
	.size	gcm_tag, 16
gcm_tag:
	.base64	"Z7oFECYq5IfXN+5imPd+DA=="
.LC0:
	.string	"ctx = EVP_CIPHER_CTX_new()"
.LC1:
	.string	"../test/aesgcmtest.c"
	.align 8
.LC2:
	.string	"EVP_EncryptInit_ex(ctx, EVP_aes_256_gcm(), NULL, NULL, NULL) > 0"
	.align 8
.LC3:
	.string	"EVP_EncryptInit_ex(ctx, NULL, NULL, gcm_key, iv_gen != NULL ? NULL : gcm_iv) > 0"
	.align 8
.LC4:
	.string	"EVP_EncryptUpdate(ctx, NULL, &outlen, gcm_aad, sizeof(gcm_aad)) > 0"
	.align 8
.LC5:
	.string	"EVP_EncryptUpdate(ctx, ct, ct_len, gcm_pt, sizeof(gcm_pt)) > 0"
	.align 8
.LC6:
	.string	"EVP_EncryptFinal_ex(ctx, outbuf, &outlen) > 0"
.LC7:
	.string	"16"
	.align 8
.LC8:
	.string	"EVP_CIPHER_CTX_get_tag_length(ctx)"
	.align 8
.LC9:
	.string	"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_GET_TAG, 16, tag) > 0"
	.align 8
.LC10:
	.string	"iv_gen == NULL || EVP_CIPHER_CTX_get_original_iv(ctx, iv_gen, 12)"
	.text
	.type	do_encrypt, @function
do_encrypt:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-136(%rbp), %rax
	movl	$16, (%rax)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$47, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	call	EVP_aes_256_gcm@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$48, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	cmpq	$0, -104(%rbp)
	jne	.L3
	leaq	gcm_iv(%rip), %rcx
	jmp	.L4
.L3:
	movl	$0, %ecx
.L4:
	leaq	gcm_key(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$50, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	leaq	gcm_aad(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$16, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$52, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	leaq	gcm_pt(%rip), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$54, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-20(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$56, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_tag_length@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$57, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$58, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	cmpq	$0, -104(%rbp)
	je	.L5
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_original_iv@PLT
	testl	%eax, %eax
	je	.L6
.L5:
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$60, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L8
.L2:
	movl	$0, %eax
.L8:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	do_encrypt, .-do_encrypt
	.section	.rodata
	.align 8
.LC11:
	.string	"EVP_DecryptInit_ex(ctx, EVP_aes_256_gcm(), NULL, NULL, NULL) > 0"
	.align 8
.LC12:
	.string	"EVP_DecryptInit_ex(ctx, NULL, NULL, gcm_key, iv) > 0"
	.align 8
.LC13:
	.string	"EVP_DecryptUpdate(ctx, NULL, &outlen, gcm_aad, sizeof(gcm_aad)) > 0"
	.align 8
.LC14:
	.string	"EVP_DecryptUpdate(ctx, pt, &ptlen, ct, ct_len) > 0"
	.align 8
.LC15:
	.string	"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG, tag_len, (void *)tag) > 0"
	.align 8
.LC16:
	.string	"EVP_DecryptFinal_ex(ctx, outbuf, &outlen) > 0"
.LC17:
	.string	"pt"
.LC18:
	.string	"gcm_pt"
	.text
	.type	do_decrypt, @function
do_decrypt:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%rcx, -128(%rbp)
	movl	%r8d, -120(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$75, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L11
	call	EVP_aes_256_gcm@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movq	-104(%rbp), %rcx
	leaq	gcm_key(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$78, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_tag_length@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L11
	leaq	gcm_aad(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$16, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$80, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movl	-116(%rbp), %edi
	movq	-112(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movq	-128(%rbp), %rcx
	movl	-120(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	leaq	-20(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movl	-24(%rbp), %eax
	movslq	%eax, %rsi
	leaq	gcm_pt(%rip), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	-64(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L11
	movl	$1, %eax
	jmp	.L12
.L11:
	movl	$0, %eax
.L12:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	do_decrypt, .-do_decrypt
	.section	.rodata
.LC19:
	.string	"ct"
.LC20:
	.string	"gcm_ct"
.LC21:
	.string	"tag"
.LC22:
	.string	"gcm_tag"
	.text
	.type	kat_test, @function
kat_test:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	leaq	-72(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	leaq	-68(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	do_encrypt
	testl	%eax, %eax
	je	.L15
	movl	-68(%rbp), %eax
	movslq	%eax, %rsi
	leaq	gcm_ct(%rip), %rdi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	-64(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L15
	movl	-72(%rbp), %eax
	movslq	%eax, %rsi
	leaq	gcm_tag(%rip), %rdi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	-32(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L15
	movl	-72(%rbp), %esi
	movl	-68(%rbp), %edx
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rax
	leaq	gcm_iv(%rip), %rdi
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	do_decrypt
	testl	%eax, %eax
	je	.L15
	movl	$1, %eax
	jmp	.L17
.L15:
	movl	$0, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	kat_test, .-kat_test
	.section	.rodata
.LC23:
	.string	"cipher = EVP_aes_192_gcm()"
	.align 8
.LC24:
	.string	"EVP_EncryptInit_ex(ctx, cipher, NULL, NULL, NULL)"
.LC25:
	.string	"0"
	.align 8
.LC26:
	.string	"EVP_CIPHER_CTX_set_key_length(ctx, 2)"
	.text
	.type	badkeylen_test, @function
badkeylen_test:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	call	EVP_aes_192_gcm@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$112, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_key_length@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L19
	movl	$1, %eax
	jmp	.L20
.L19:
	movl	$0, %eax
.L20:
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	badkeylen_test, .-badkeylen_test
	.type	ivgen_test, @function
ivgen_test:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	leaq	-88(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_encrypt
	testl	%eax, %eax
	je	.L23
	movl	-88(%rbp), %edi
	movl	-84(%rbp), %edx
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	do_decrypt
	testl	%eax, %eax
	je	.L23
	movl	$1, %eax
	jmp	.L25
.L23:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	ivgen_test, .-ivgen_test
	.section	.rodata
.LC27:
	.string	"kat_test"
.LC28:
	.string	"badkeylen_test"
.LC29:
	.string	"ivgen_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	kat_test(%rip), %rdx
	leaq	.LC27(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	badkeylen_test(%rip), %rdx
	leaq	.LC28(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	ivgen_test(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
