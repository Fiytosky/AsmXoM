	.file	"tlssrp_depr.c"
	.text
	.type	srp_Verify_N_and_g, @function
srp_Verify_N_and_g:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -8(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L2
	cmpq	$0, -40(%rbp)
	je	.L2
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L2
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	cmpl	$1, %eax
	jne	.L2
	cmpq	$0, -16(%rbp)
	je	.L2
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L2
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	cmpl	$1, %eax
	jne	.L2
	cmpq	$0, -24(%rbp)
	je	.L2
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L2
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L2
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	srp_Verify_N_and_g, .-srp_Verify_N_and_g
	.section	.rodata
.LC0:
	.string	"SRP parameters:\n"
.LC1:
	.string	"\tN="
.LC2:
	.string	"\n\tg="
.LC3:
	.string	"\n"
	.align 8
.LC4:
	.string	"SRP param N and g are not known params, going to check deeper.\n"
.LC5:
	.string	"SRP param N and g rejected.\n"
	.text
	.type	ssl_srp_verify_param_cb, @function
ssl_srp_verify_param_cb:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_srp_N@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_srp_g@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jne	.L9
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L9
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L10
.L9:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L10:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_check_known_gN_param@PLT
	testq	%rax, %rax
	je	.L11
	movl	$1, %eax
	jmp	.L8
.L11:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L12
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L13
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L13:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$128, %eax
	jg	.L12
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	srp_Verify_N_and_g
	testl	%eax, %eax
	je	.L12
	movl	$1, %eax
	jmp	.L8
.L12:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	ssl_srp_verify_param_cb, .-ssl_srp_verify_param_cb
	.section	.rodata
.LC6:
	.string	"SRP password buffer"
.LC7:
	.string	"SRP user"
.LC8:
	.string	"Can't read Password\n"
.LC9:
	.string	"../apps/lib/tlssrp_depr.c"
	.text
	.type	ssl_give_srp_client_pwd_cb, @function
ssl_give_srp_client_pwd_cb:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movl	$1025, %edi
	call	app_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	password_callback@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L15
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC9(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L17
.L15:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	ssl_give_srp_client_pwd_cb, .-ssl_give_srp_client_pwd_cb
	.section	.rodata
.LC10:
	.string	"Unable to set SRP username\n"
	.text
	.globl	set_up_srp_arg
	.type	set_up_srp_arg, @function
set_up_srp_arg:
.LFB683:
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
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L19
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_username@PLT
	testl	%eax, %eax
	jne	.L19
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 20(%rax)
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_cb_arg@PLT
	leaq	ssl_give_srp_client_pwd_cb(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_client_pwd_callback@PLT
	movq	-16(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_strength@PLT
	cmpl	$0, -24(%rbp)
	jne	.L21
	cmpl	$0, -28(%rbp)
	jne	.L21
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L22
.L21:
	leaq	ssl_srp_verify_param_cb(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_verify_param_callback@PLT
.L22:
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	set_up_srp_arg, .-set_up_srp_arg
	.section	.rodata
.LC11:
	.string	""
	.text
	.type	dummy_srp, @function
dummy_srp:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC11(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	dummy_srp, .-dummy_srp
	.globl	set_up_dummy_srp
	.type	set_up_dummy_srp, @function
set_up_dummy_srp:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	dummy_srp(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_client_pwd_callback@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	set_up_dummy_srp, .-set_up_dummy_srp
	.section	.rodata
.LC12:
	.string	"SRP username = \"%s\"\n"
.LC13:
	.string	"User %s doesn't exist\n"
	.align 8
.LC14:
	.string	"SRP parameters set: username = \"%s\" info=\"%s\" \n"
	.text
	.type	ssl_srp_server_param_cb, @function
ssl_srp_server_param_cb:
.LFB686:
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
	movq	%rax, -16(%rbp)
	movl	$2, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_srp_username@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$-1, %eax
	jmp	.L28
.L27:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L30
.L29:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %r8
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SSL_set_srp_server_param@PLT
	testl	%eax, %eax
	jns	.L31
	movq	-32(%rbp), %rax
	movl	$80, (%rax)
	jmp	.L30
.L31:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
.L30:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SRP_user_pwd_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	-4(%rbp), %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	ssl_srp_server_param_cb, .-ssl_srp_server_param_cb
	.section	.rodata
	.align 8
.LC15:
	.string	"Failed to initialize SRP verifier file \n"
	.align 8
.LC16:
	.string	"Cannot initialize SRP verifier file \"%s\":ret=%d\n"
	.text
	.globl	set_up_srp_verifier_file
	.type	set_up_srp_verifier_file, @function
set_up_srp_verifier_file:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_VBASE_new@PLT
	movq	%rax, 8(%rbx)
	movq	-48(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_VBASE_init@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L35
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rdx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L34
.L35:
	movq	verify_callback@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_verify@PLT
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_cb_arg@PLT
	leaq	ssl_srp_server_param_cb(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_srp_username_callback@PLT
	movl	$1, %eax
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	set_up_srp_verifier_file, .-set_up_srp_verifier_file
	.section	.rodata
.LC17:
	.string	"LOOKUP done %s\n"
.LC18:
	.string	"LOOKUP not successful\n"
	.text
	.globl	lookup_srp_user
	.type	lookup_srp_user, @function
lookup_srp_user:
.LFB688:
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
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SRP_user_pwd_free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SRP_VBASE_get1_by_user@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rdx
	leaq	.LC17(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L39
.L37:
	leaq	.LC18(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L39:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	lookup_srp_user, .-lookup_srp_user
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
