	.file	"predefined_dhparams.c"
	.text
	.section	.rodata
.LC0:
	.string	"p"
.LC1:
	.string	"g"
.LC2:
	.string	"q"
	.text
	.type	get_dh_from_pg_bn, @function
get_dh_from_pg_bn:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	jle	.L9
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-56(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L10
	movq	-64(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L10
	cmpq	$0, -72(%rbp)
	je	.L6
	movq	-72(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L10
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L11
	movq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$132, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	jmp	.L4
.L9:
	nop
	jmp	.L4
.L10:
	nop
	jmp	.L4
.L11:
	nop
.L4:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	get_dh_from_pg_bn, .-get_dh_from_pg_bn
	.type	get_dh_from_pg, @function
get_dh_from_pg:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L18
	cmpq	$0, -32(%rbp)
	je	.L18
	cmpq	$0, 16(%rbp)
	je	.L16
	movq	24(%rbp), %rax
	movl	%eax, %ecx
	movq	16(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L19
.L16:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	get_dh_from_pg_bn
	movq	%rax, -8(%rbp)
	jmp	.L15
.L18:
	nop
	jmp	.L15
.L19:
	nop
.L15:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	get_dh_from_pg, .-get_dh_from_pg
	.section	.rodata
.LC3:
	.string	"DH"
	.text
	.globl	get_dh512
	.type	get_dh512, @function
get_dh512:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	dh512_g.5(%rip), %rcx
	leaq	dh512_p.6(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$1, %r9d
	movq	%rcx, %r8
	movl	$64, %ecx
	movq	%rax, %rdi
	call	get_dh_from_pg
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	get_dh512, .-get_dh512
	.section	.rodata
.LC4:
	.string	"X9.42 DH"
	.text
	.globl	get_dhx512
	.type	get_dhx512, @function
get_dhx512:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	dhx512_g.3(%rip), %rdi
	leaq	dhx512_p.4(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movq	-8(%rbp), %rax
	pushq	$21
	leaq	dhx512_q.2(%rip), %rcx
	pushq	%rcx
	movl	$65, %r9d
	movq	%rdi, %r8
	movl	$65, %ecx
	movq	%rax, %rdi
	call	get_dh_from_pg
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	get_dhx512, .-get_dhx512
	.globl	get_dh1024dsa
	.type	get_dh1024dsa, @function
get_dh1024dsa:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	dh1024_g.0(%rip), %rcx
	leaq	dh1024_p.1(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$128, %r9d
	movq	%rcx, %r8
	movl	$128, %ecx
	movq	%rax, %rdi
	call	get_dh_from_pg
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	get_dh1024dsa, .-get_dh1024dsa
	.globl	get_dh2048
	.type	get_dh2048, @function
get_dh2048:
.LFB325:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L32
	movl	$0, %edi
	call	BN_get_rfc3526_prime_2048@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L33
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	get_dh_from_pg_bn
	movq	%rax, -16(%rbp)
	jmp	.L29
.L32:
	nop
	jmp	.L29
.L33:
	nop
.L29:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	get_dh2048, .-get_dh2048
	.globl	get_dh4096
	.type	get_dh4096, @function
get_dh4096:
.LFB326:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L40
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L40
	movl	$0, %edi
	call	BN_get_rfc3526_prime_4096@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L41
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	get_dh_from_pg_bn
	movq	%rax, -16(%rbp)
	jmp	.L37
.L40:
	nop
	jmp	.L37
.L41:
	nop
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	get_dh4096, .-get_dh4096
	.data
	.align 32
	.type	dh512_p.6, @object
	.size	dh512_p.6, 64
dh512_p.6:
	.base64	"y8jhhtAflBemmfDGHw2stiU+BjnKcgSwbtrAYeZ6dyXoO7lfmra1/pkLoZNONTO44fETT1ka0lfAJiEzAsWuIw=="
	.type	dh512_g.5, @object
	.size	dh512_g.5, 1
dh512_g.5:
	.ascii	"\002"
	.align 32
	.type	dhx512_p.4, @object
	.size	dhx512_p.4, 65
dhx512_p.4:
	.base64	"AOgat5oCZWSUe7oJHBInHuqJMmR4+Bx4jpbDxp9BBUFlruMF6mYh9zi3KzJAWhSGUZSxzwHjJyj2daMVuxJNmec="
	.align 32
	.type	dhx512_g.3, @object
	.size	dhx512_g.3, 65
dhx512_g.3:
	.base64	"AJHBQ20NsKTeQbeTrVGUG0PYQvFeRoNd8dHwQRDRHF6tm2ixb/WOqm1xiDffBfduerQlEGx/OLTI/MwMagIIYfY="
	.align 16
	.type	dhx512_q.2, @object
	.size	dhx512_q.2, 21
dhx512_q.2:
	.base64	"AN32Na36cMfnqPDj2nk0P1vPc4KR"
	.align 32
	.type	dh1024_p.1, @object
	.size	dh1024_p.1, 128
dh1024_p.1:
	.base64	"yAD3CAeJTZBT89UAIRv3Maai2iOax4cZO0e2jARv/8abuGXSwl8xg0qnXy+IOLZVz9mHbW+f2qymSK/8M4Q3W4JKMV3nvVKXoXe/EJ436mT6yiiNnTvSbglcaMdFkP27cMk6u9/UIQ/Eajz2Yc8/1hPxX7zPvCaevAu9q13JVDk="
	.align 32
	.type	dh1024_g.0, @object
	.size	dh1024_g.0, 128
dh1024_g.0:
	.base64	"O0CG5/Ns3mcczIAFWt/+vSAndGwkyQPz4Y3DfZgnQAi4jGrpuxo61oaDXnJBzoU80rP8E843gZ5MHHtl0+amAPValUNegc9goiP8NqddekwGkW72V+42ywbq9T2VScun3YHfgAlKl02oInKhf8RwVnDoIBAYjy5gB+doGoJdMqI="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
