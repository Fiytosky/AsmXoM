	.file	"bio_pw_callback_test.c"
	.text
	.section	.rodata
	.align 8
	.type	weak_password, @object
	.size	weak_password, 14
weak_password:
	.string	"weak_password"
	.align 16
	.type	a0a_password, @object
	.size	a0a_password, 18
a0a_password:
	.string	"aaaaaaaa"
	.string	"aaaaaaaa"
	.align 16
	.type	a0b_password, @object
	.size	a0b_password, 18
a0b_password:
	.string	"aaaaaaaa"
	.string	"bbbbbbbb"
	.type	cb_magic, @object
	.size	cb_magic, 1
cb_magic:
	.byte	112
	.local	key_file
	.comm	key_file,8,8
	.local	original_pkey
	.comm	original_pkey,8,8
	.local	callback_test
	.comm	callback_test,4,4
	.text
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_get_options, .-test_get_options
	.type	callback_copy_password, @function
callback_copy_password:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$-1, -4(%rbp)
	movl	callback_test(%rip), %eax
	cmpl	$7, %eax
	je	.L4
	cmpl	$7, %eax
	ja	.L5
	cmpl	$6, %eax
	je	.L6
	cmpl	$6, %eax
	ja	.L5
	cmpl	$5, %eax
	je	.L7
	cmpl	$5, %eax
	ja	.L5
	cmpl	$4, %eax
	je	.L8
	cmpl	$4, %eax
	ja	.L5
	cmpl	$3, %eax
	je	.L9
	cmpl	$3, %eax
	ja	.L5
	cmpl	$2, %eax
	je	.L10
	cmpl	$2, %eax
	ja	.L5
	testl	%eax, %eax
	je	.L14
	cmpl	$1, %eax
	jne	.L5
	movl	$0, -4(%rbp)
	jmp	.L5
.L10:
	movl	$13, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	weak_password(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L5
.L9:
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$16, -4(%rbp)
	jmp	.L5
.L8:
	movl	$17, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	a0a_password(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L5
.L7:
	movl	$17, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	a0b_password(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L5
.L6:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L4:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1000000, -4(%rbp)
	jmp	.L5
.L14:
	nop
.L5:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	callback_copy_password, .-callback_copy_password
	.section	.rodata
.LC0:
	.string	"cb_data"
	.align 8
.LC1:
	.string	"../test/bio_pw_callback_test.c"
.LC2:
	.string	"cb_magic"
.LC3:
	.string	"cb_data->magic"
.LC4:
	.string	"buf"
.LC5:
	.string	"0"
.LC6:
	.string	"size"
.LC7:
	.string	"rwflag"
	.text
	.type	read_callback, @function
read_callback:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$-1, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movl	$112, %eax
	movsbl	%al, %edi
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$118, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$120, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movl	-28(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$122, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L26
	movl	-32(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$124, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	callback_copy_password
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.L17
.L23:
	nop
	jmp	.L17
.L24:
	nop
	jmp	.L17
.L25:
	nop
	jmp	.L17
.L26:
	nop
	jmp	.L17
.L27:
	nop
.L17:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	read_callback, .-read_callback
	.section	.rodata
.LC8:
	.string	"1"
	.text
	.type	write_callback, @function
write_callback:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$-1, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$138, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	movl	$112, %eax
	movsbl	%al, %edi
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$140, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$142, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movl	-28(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$144, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L39
	movl	-32(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$146, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L40
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	callback_copy_password
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.L30
.L36:
	nop
	jmp	.L30
.L37:
	nop
	jmp	.L30
.L38:
	nop
	jmp	.L30
.L39:
	nop
	jmp	.L30
.L40:
	nop
.L30:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	write_callback, .-write_callback
	.section	.rodata
.LC9:
	.string	"enc_data"
.LC10:
	.string	"enc_data_size"
.LC11:
	.string	"bio = BIO_new(BIO_s_mem())"
.LC12:
	.string	"w_ret"
.LC13:
	.string	"cb_data.magic"
.LC14:
	.string	"cb_data.result"
	.text
	.type	re_encrypt_key, @function
re_encrypt_key:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$163, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movq	-64(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$167, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L56
	movl	$112, %eax
	movb	%al, -28(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L46
	cmpl	$1, -68(%rbp)
	je	.L47
	jmp	.L48
.L46:
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdi
	movq	original_pkey(%rip), %rsi
	leaq	write_callback(%rip), %rcx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	leaq	-28(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	PEM_write_bio_PrivateKey@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L48
.L47:
	call	EVP_aes_256_cbc@PLT
	movq	%rax, %rdi
	movq	original_pkey(%rip), %rsi
	leaq	write_callback(%rip), %rcx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	leaq	-28(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	i2d_PKCS8PrivateKey_bio@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	nop
.L48:
	movl	-4(%rbp), %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$181, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L57
	movl	$112, %eax
	movsbl	%al, %edi
	movzbl	-28(%rbp), %eax
	movsbl	%al, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$183, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L58
	movl	-24(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L59
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L60
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movl	$1, -20(%rbp)
	jmp	.L43
.L54:
	nop
	jmp	.L43
.L55:
	nop
	jmp	.L43
.L56:
	nop
	jmp	.L43
.L57:
	nop
	jmp	.L43
.L58:
	nop
	jmp	.L43
.L59:
	nop
	jmp	.L43
.L60:
	nop
.L43:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	re_encrypt_key, .-re_encrypt_key
	.section	.rodata
	.align 8
.LC15:
	.string	"bio = BIO_new_mem_buf(enc_data, enc_data_size)"
.LC16:
	.string	"r_ret"
	.text
	.type	decrypt_key, @function
decrypt_key:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -12(%rbp)
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$209, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	movl	$112, %eax
	movb	%al, -32(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$0, -64(%rbp)
	je	.L64
	cmpl	$1, -64(%rbp)
	je	.L65
	jmp	.L66
.L64:
	leaq	-32(%rbp), %rdx
	leaq	read_callback(%rip), %rdi
	leaq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	jmp	.L66
.L65:
	leaq	-32(%rbp), %rdx
	leaq	read_callback(%rip), %rdi
	leaq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	d2i_PKCS8PrivateKey_bio@PLT
	movq	%rax, -8(%rbp)
	nop
.L66:
	cmpl	$1, -68(%rbp)
	jne	.L67
	movq	-8(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$222, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L68
	jmp	.L63
.L67:
	movq	-8(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$225, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L73
.L68:
	movl	$112, %eax
	movsbl	%al, %edi
	movzbl	-32(%rbp), %eax
	movsbl	%al, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L74
	movl	-28(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L75
	movl	$1, -12(%rbp)
	jmp	.L63
.L72:
	nop
	jmp	.L63
.L73:
	nop
	jmp	.L63
.L74:
	nop
	jmp	.L63
.L75:
	nop
.L63:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	decrypt_key, .-decrypt_key
	.type	full_cycle_test, @function
full_cycle_test:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, callback_test(%rip)
	movl	-36(%rbp), %edx
	leaq	-20(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	re_encrypt_key
	testl	%eax, %eax
	je	.L81
	movl	-44(%rbp), %eax
	movl	%eax, callback_test(%rip)
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	-36(%rbp), %edx
	movq	%rax, %rdi
	call	decrypt_key
	testl	%eax, %eax
	je	.L82
	movl	$1, -4(%rbp)
	jmp	.L78
.L81:
	nop
	jmp	.L78
.L82:
	nop
.L78:
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	full_cycle_test, .-full_cycle_test
	.type	test_pem_negative, @function
test_pem_negative:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movl	$0, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_pem_negative, .-test_pem_negative
	.type	test_pem_zero_length, @function
test_pem_zero_length:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_pem_zero_length, .-test_pem_zero_length
	.type	test_pem_weak, @function
test_pem_weak:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$2, %edx
	movl	$2, %esi
	movl	$0, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_pem_weak, .-test_pem_weak
	.type	test_pem_16zero, @function
test_pem_16zero:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$3, %edx
	movl	$3, %esi
	movl	$0, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_pem_16zero, .-test_pem_16zero
	.type	test_pem_a0a, @function
test_pem_a0a:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$4, %edx
	movl	$4, %esi
	movl	$0, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_pem_a0a, .-test_pem_a0a
	.type	test_pem_a0a_a0b, @function
test_pem_a0a_a0b:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %ecx
	movl	$5, %edx
	movl	$4, %esi
	movl	$0, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_pem_a0a_a0b, .-test_pem_a0a_a0b
	.type	test_pem_match_size, @function
test_pem_match_size:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$6, %edx
	movl	$6, %esi
	movl	$0, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_pem_match_size, .-test_pem_match_size
	.type	test_pem_exceed_size, @function
test_pem_exceed_size:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %ecx
	movl	$7, %edx
	movl	$6, %esi
	movl	$0, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_pem_exceed_size, .-test_pem_exceed_size
	.type	test_pkcs8_negative, @function
test_pkcs8_negative:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_pkcs8_negative, .-test_pkcs8_negative
	.type	test_pkcs8_zero_length, @function
test_pkcs8_zero_length:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_pkcs8_zero_length, .-test_pkcs8_zero_length
	.type	test_pkcs8_weak, @function
test_pkcs8_weak:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$2, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_pkcs8_weak, .-test_pkcs8_weak
	.type	test_pkcs8_16zero, @function
test_pkcs8_16zero:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$3, %edx
	movl	$3, %esi
	movl	$1, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	test_pkcs8_16zero, .-test_pkcs8_16zero
	.type	test_pkcs8_a0a, @function
test_pkcs8_a0a:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$4, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	test_pkcs8_a0a, .-test_pkcs8_a0a
	.type	test_pkcs8_a0a_a0b, @function
test_pkcs8_a0a_a0b:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %ecx
	movl	$5, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	test_pkcs8_a0a_a0b, .-test_pkcs8_a0a_a0b
	.type	test_pkcs8_match_size, @function
test_pkcs8_match_size:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %ecx
	movl	$6, %edx
	movl	$6, %esi
	movl	$1, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	test_pkcs8_match_size, .-test_pkcs8_match_size
	.type	test_pkcs8_exceed_size, @function
test_pkcs8_exceed_size:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %ecx
	movl	$7, %edx
	movl	$6, %esi
	movl	$1, %edi
	call	full_cycle_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	test_pkcs8_exceed_size, .-test_pkcs8_exceed_size
	.type	callback_original_pw, @function
callback_original_pw:
.LFB491:
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
	leaq	weak_password(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$13, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	callback_original_pw, .-callback_original_pw
	.section	.rodata
.LC17:
	.string	"r"
	.align 8
.LC18:
	.string	"bio = BIO_new_file(key_file, \"r\")"
	.align 8
.LC19:
	.string	"PEM_read_bio_PrivateKey(bio, &original_pkey, callback_original_pw, NULL)"
.LC20:
	.string	"test_pem_negative"
.LC21:
	.string	"test_pem_zero_length"
.LC22:
	.string	"test_pem_weak"
.LC23:
	.string	"test_pem_16zero"
.LC24:
	.string	"test_pem_a0a"
.LC25:
	.string	"test_pem_a0a_a0b"
.LC26:
	.string	"test_pem_match_size"
.LC27:
	.string	"test_pem_exceed_size"
.LC28:
	.string	"test_pkcs8_negative"
.LC29:
	.string	"test_pkcs8_zero_length"
.LC30:
	.string	"test_pkcs8_weak"
.LC31:
	.string	"test_pkcs8_16zero"
.LC32:
	.string	"test_pkcs8_a0a"
.LC33:
	.string	"test_pkcs8_a0a_a0b"
.LC34:
	.string	"test_pkcs8_match_size"
.LC35:
	.string	"test_pkcs8_exceed_size"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	jmp	.L118
.L123:
	cmpl	$1, -12(%rbp)
	je	.L119
	cmpl	$0, -12(%rbp)
	jle	.L120
	movl	-12(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L120
	jmp	.L126
.L119:
	call	opt_arg@PLT
	movq	%rax, key_file(%rip)
	jmp	.L118
.L126:
	jmp	.L118
.L120:
	movl	$0, %eax
	jmp	.L122
.L118:
	call	opt_next@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L123
	movq	key_file(%rip), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$372, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L122
.L124:
	leaq	callback_original_pw(%rip), %rdx
	leaq	original_pkey(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$374, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L125
	movl	$0, %eax
	jmp	.L122
.L125:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	test_pem_negative(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pem_zero_length(%rip), %rdx
	leaq	.LC21(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pem_weak(%rip), %rdx
	leaq	.LC22(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pem_16zero(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pem_a0a(%rip), %rdx
	leaq	.LC24(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pem_a0a_a0b(%rip), %rdx
	leaq	.LC25(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pem_match_size(%rip), %rdx
	leaq	.LC26(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pem_exceed_size(%rip), %rdx
	leaq	.LC27(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs8_negative(%rip), %rdx
	leaq	.LC28(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs8_zero_length(%rip), %rdx
	leaq	.LC29(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs8_weak(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs8_16zero(%rip), %rdx
	leaq	.LC31(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs8_a0a(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs8_a0a_a0b(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs8_match_size(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pkcs8_exceed_size(%rip), %rdx
	leaq	.LC35(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	original_pkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC36:
	.string	"Usage: %s [options]\n"
.LC37:
	.string	"Valid options are:\n"
.LC38:
	.string	"help"
.LC39:
	.string	"Display this summary"
.LC40:
	.string	"list"
	.align 8
.LC41:
	.string	"Display the list of tests available"
.LC42:
	.string	"test"
	.align 8
.LC43:
	.string	"Run a single test by id or name"
.LC44:
	.string	"iter"
	.align 8
.LC45:
	.string	"Run a single iteration of a test"
.LC46:
	.string	"indent"
	.align 8
.LC47:
	.string	"Number of tabs added to output"
.LC48:
	.string	"seed"
	.align 8
.LC49:
	.string	"Seed value to randomize tests with"
.LC50:
	.string	"keyfile"
	.align 8
.LC51:
	.string	"The PEM file with the encrypted key to load"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 240
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC36
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	500
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	501
	.long	45
	.quad	.LC41
	.quad	.LC42
	.long	502
	.long	115
	.quad	.LC43
	.quad	.LC44
	.long	503
	.long	110
	.quad	.LC45
	.quad	.LC46
	.long	504
	.long	112
	.quad	.LC47
	.quad	.LC48
	.long	505
	.long	110
	.quad	.LC49
	.quad	.LC50
	.long	1
	.long	60
	.quad	.LC51
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
