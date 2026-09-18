	.file	"tls-provider.c"
	.text
	.type	OSSL_FUNC_core_obj_add_sigid, @function
OSSL_FUNC_core_obj_add_sigid:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	OSSL_FUNC_core_obj_add_sigid, .-OSSL_FUNC_core_obj_add_sigid
	.type	OSSL_FUNC_core_obj_create, @function
OSSL_FUNC_core_obj_create:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	OSSL_FUNC_core_obj_create, .-OSSL_FUNC_core_obj_create
	.type	OSSL_FUNC_keymgmt_new, @function
OSSL_FUNC_keymgmt_new:
.LFB148:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	OSSL_FUNC_keymgmt_new, .-OSSL_FUNC_keymgmt_new
	.type	OSSL_FUNC_keymgmt_free, @function
OSSL_FUNC_keymgmt_free:
.LFB156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	OSSL_FUNC_keymgmt_free, .-OSSL_FUNC_keymgmt_free
	.type	OSSL_FUNC_keymgmt_import, @function
OSSL_FUNC_keymgmt_import:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	OSSL_FUNC_keymgmt_import, .-OSSL_FUNC_keymgmt_import
	.type	OSSL_FUNC_keymgmt_export, @function
OSSL_FUNC_keymgmt_export:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	OSSL_FUNC_keymgmt_export, .-OSSL_FUNC_keymgmt_export
	.type	CRYPTO_UP_REF, @function
CRYPTO_UP_REF:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	negl	%edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L16
.L16:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xchgl	(%rax), %edx
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.section	.rodata
	.align 32
	.type	private_constant, @object
	.size	private_constant, 32
private_constant:
	.base64	"02tU7FusiZaMLGalZw3j3UNpvIM9YMe4Kxxa/bXN0Pg="
	.text
	.type	xor_prov_get_keymgmt_new, @function
xor_prov_get_keymgmt_new:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L22
.L25:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_keymgmt_new
	jmp	.L24
.L23:
	addq	$16, -8(%rbp)
.L22:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	xor_prov_get_keymgmt_new, .-xor_prov_get_keymgmt_new
	.type	xor_prov_get_keymgmt_free, @function
xor_prov_get_keymgmt_free:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L27
.L30:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	jne	.L28
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_keymgmt_free
	jmp	.L29
.L28:
	addq	$16, -8(%rbp)
.L27:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	xor_prov_get_keymgmt_free, .-xor_prov_get_keymgmt_free
	.type	xor_prov_get_keymgmt_import, @function
xor_prov_get_keymgmt_import:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L32
.L35:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$40, %eax
	jne	.L33
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_keymgmt_import
	jmp	.L34
.L33:
	addq	$16, -8(%rbp)
.L32:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	xor_prov_get_keymgmt_import, .-xor_prov_get_keymgmt_import
	.type	xor_prov_get_keymgmt_export, @function
xor_prov_get_keymgmt_export:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L37
.L40:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$42, %eax
	jne	.L38
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_keymgmt_export
	jmp	.L39
.L38:
	addq	$16, -8(%rbp)
.L37:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	xor_prov_get_keymgmt_export, .-xor_prov_get_keymgmt_export
	.type	xor_prov_import_key, @function
xor_prov_import_key:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	xor_prov_get_keymgmt_new
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	xor_prov_get_keymgmt_free
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	xor_prov_get_keymgmt_import
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L42
	cmpq	$0, -32(%rbp)
	je	.L42
	cmpq	$0, -24(%rbp)
	je	.L42
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L43
	movq	-64(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %r8
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L42
.L43:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -8(%rbp)
.L42:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	xor_prov_import_key, .-xor_prov_import_key
	.type	xor_prov_free_key, @function
xor_prov_free_key:
.LFB518:
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
	call	xor_prov_get_keymgmt_free
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L47
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.L47:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	xor_prov_free_key, .-xor_prov_free_key
	.data
	.align 16
	.type	xor_group, @object
	.size	xor_group, 28
xor_group:
	.long	0
	.long	128
	.long	772
	.long	0
	.long	-1
	.long	-1
	.long	0
	.align 16
	.type	xor_kemgroup, @object
	.size	xor_kemgroup, 28
xor_kemgroup:
	.long	0
	.long	128
	.long	772
	.long	0
	.long	-1
	.long	-1
	.long	1
	.section	.rodata
.LC0:
	.string	"tls-group-name"
.LC1:
	.string	"xorgroup"
.LC2:
	.string	"tls-group-name-internal"
.LC3:
	.string	"xorgroup-int"
.LC4:
	.string	"tls-group-alg"
.LC5:
	.string	"XOR"
.LC6:
	.string	"tls-group-id"
.LC7:
	.string	"tls-group-sec-bits"
.LC8:
	.string	"tls-min-tls"
.LC9:
	.string	"tls-max-tls"
.LC10:
	.string	"tls-min-dtls"
.LC11:
	.string	"tls-max-dtls"
.LC12:
	.string	"tls-group-is-kem"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	xor_group_params, @object
	.size	xor_group_params, 440
xor_group_params:
	.quad	.LC0
	.long	4
	.zero	4
	.quad	.LC1
	.quad	9
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	.LC3
	.quad	13
	.quad	-1
	.quad	.LC4
	.long	4
	.zero	4
	.quad	.LC5
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	xor_group
	.quad	4
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	xor_group+4
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	xor_group+8
	.quad	4
	.quad	-1
	.quad	.LC9
	.long	1
	.zero	4
	.quad	xor_group+12
	.quad	4
	.quad	-1
	.quad	.LC10
	.long	1
	.zero	4
	.quad	xor_group+16
	.quad	4
	.quad	-1
	.quad	.LC11
	.long	1
	.zero	4
	.quad	xor_group+20
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	xor_group+24
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC13:
	.string	"xorkemgroup"
.LC14:
	.string	"xorkemgroup-int"
	.section	.data.rel.ro.local
	.align 32
	.type	xor_kemgroup_params, @object
	.size	xor_kemgroup_params, 440
xor_kemgroup_params:
	.quad	.LC0
	.long	4
	.zero	4
	.quad	.LC13
	.quad	12
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	.LC14
	.quad	16
	.quad	-1
	.quad	.LC4
	.long	4
	.zero	4
	.quad	.LC5
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	xor_kemgroup
	.quad	4
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	xor_kemgroup+4
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	xor_kemgroup+8
	.quad	4
	.quad	-1
	.quad	.LC9
	.long	1
	.zero	4
	.quad	xor_kemgroup+12
	.quad	4
	.quad	-1
	.quad	.LC10
	.long	1
	.zero	4
	.quad	xor_kemgroup+16
	.quad	4
	.quad	-1
	.quad	.LC11
	.long	1
	.zero	4
	.quad	xor_kemgroup+20
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	xor_kemgroup+24
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.local	dummy_group_names
	.comm	dummy_group_names,400,32
	.data
	.align 16
	.type	xor_sigalg, @object
	.size	xor_sigalg, 16
xor_sigalg:
	.long	0
	.long	128
	.long	772
	.long	0
	.align 16
	.type	xor_sigalg_hash, @object
	.size	xor_sigalg_hash, 16
xor_sigalg_hash:
	.long	0
	.long	128
	.long	772
	.long	0
	.align 16
	.type	xor_sigalg12, @object
	.size	xor_sigalg12, 16
xor_sigalg12:
	.long	0
	.long	128
	.long	771
	.long	771
	.section	.rodata
.LC15:
	.string	"tls-sigalg-iana-name"
.LC16:
	.string	"xorhmacsig"
.LC17:
	.string	"tls-sigalg-name"
.LC18:
	.string	"tls-sigalg-oid"
.LC19:
	.string	"1.3.6.1.4.1.16604.998888.1"
.LC20:
	.string	"tls-sigalg-code-point"
.LC21:
	.string	"tls-sigalg-sec-bits"
	.section	.data.rel.ro.local
	.align 32
	.type	xor_sig_nohash_params, @object
	.size	xor_sig_nohash_params, 320
xor_sig_nohash_params:
	.quad	.LC15
	.long	4
	.zero	4
	.quad	.LC16
	.quad	11
	.quad	-1
	.quad	.LC17
	.long	4
	.zero	4
	.quad	.LC16
	.quad	11
	.quad	-1
	.quad	.LC18
	.long	4
	.zero	4
	.quad	.LC19
	.quad	27
	.quad	-1
	.quad	.LC20
	.long	2
	.zero	4
	.quad	xor_sigalg
	.quad	4
	.quad	-1
	.quad	.LC21
	.long	2
	.zero	4
	.quad	xor_sigalg+4
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	xor_sigalg+8
	.quad	4
	.quad	-1
	.quad	.LC9
	.long	1
	.zero	4
	.quad	xor_sigalg+12
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC22:
	.string	"xorhmacsha2sig"
.LC23:
	.string	"tls-sigalg-hash-name"
.LC24:
	.string	"SHA256"
.LC25:
	.string	"1.3.6.1.4.1.16604.998888.2"
	.section	.data.rel.ro.local
	.align 32
	.type	xor_sig_hash_params, @object
	.size	xor_sig_hash_params, 360
xor_sig_hash_params:
	.quad	.LC15
	.long	4
	.zero	4
	.quad	.LC22
	.quad	15
	.quad	-1
	.quad	.LC17
	.long	4
	.zero	4
	.quad	.LC22
	.quad	15
	.quad	-1
	.quad	.LC23
	.long	4
	.zero	4
	.quad	.LC24
	.quad	7
	.quad	-1
	.quad	.LC18
	.long	4
	.zero	4
	.quad	.LC25
	.quad	27
	.quad	-1
	.quad	.LC20
	.long	2
	.zero	4
	.quad	xor_sigalg_hash
	.quad	4
	.quad	-1
	.quad	.LC21
	.long	2
	.zero	4
	.quad	xor_sigalg_hash+4
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	xor_sigalg_hash+8
	.quad	4
	.quad	-1
	.quad	.LC9
	.long	1
	.zero	4
	.quad	xor_sigalg_hash+12
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC26:
	.string	"xorhmacsig12"
.LC27:
	.string	"1.3.6.1.4.1.16604.998888.3"
	.section	.data.rel.ro.local
	.align 32
	.type	xor_sig_12_params, @object
	.size	xor_sig_12_params, 320
xor_sig_12_params:
	.quad	.LC15
	.long	4
	.zero	4
	.quad	.LC26
	.quad	13
	.quad	-1
	.quad	.LC17
	.long	4
	.zero	4
	.quad	.LC26
	.quad	13
	.quad	-1
	.quad	.LC18
	.long	4
	.zero	4
	.quad	.LC27
	.quad	27
	.quad	-1
	.quad	.LC20
	.long	2
	.zero	4
	.quad	xor_sigalg12
	.quad	4
	.quad	-1
	.quad	.LC21
	.long	2
	.zero	4
	.quad	xor_sigalg12+4
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	xor_sigalg12+8
	.quad	4
	.quad	-1
	.quad	.LC9
	.long	1
	.zero	4
	.quad	xor_sigalg12+12
	.quad	4
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC28:
	.string	"dummy"
.LC29:
	.string	"TLS-GROUP"
.LC30:
	.string	"../test/tls-provider.c"
	.align 8
.LC31:
	.string	"assertion failed: xor_group.group_id >= 65024 && xor_group.group_id < 65279 - NUM_DUMMY_GROUPS"
.LC32:
	.string	"%s%d"
.LC33:
	.string	"TLS-SIGALG"
	.text
	.type	tls_prov_get_capabilities, @function
tls_prov_get_capabilities:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$512, %rsp
	movq	%rdi, -488(%rbp)
	movq	%rsi, -496(%rbp)
	movq	%rdx, -504(%rbp)
	movq	%rcx, -512(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$3, %rax
	movq	%rax, -24(%rbp)
	leaq	.LC29(%rip), %rdx
	movq	-496(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L49
	movl	xor_group(%rip), %eax
	cmpl	$65023, %eax
	jbe	.L50
	movl	xor_group(%rip), %eax
	cmpl	$65228, %eax
	jbe	.L51
.L50:
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rax
	movl	$388, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L51:
	movq	-512(%rbp), %rax
	leaq	xor_group_params(%rip), %rcx
	movq	-504(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	movq	-512(%rbp), %rax
	leaq	xor_kemgroup_params(%rip), %rcx
	movq	-504(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
	andl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L52
.L56:
	leaq	-480(%rbp), %rax
	leaq	xor_group_params(%rip), %rdx
	movl	$55, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dummy_group_names(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L53
	leaq	.LC30(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$407, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rcx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dummy_group_names(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dummy_group_names(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dummy_group_names(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-8(%rbp), %ecx
	movq	-16(%rbp), %rdx
	leaq	.LC32(%rip), %rdi
	movq	-24(%rbp), %rsi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L53:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dummy_group_names(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -464(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dummy_group_names(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -456(%rbp)
	movl	-8(%rbp), %eax
	addl	$65229, %eax
	movl	%eax, -28(%rbp)
	leaq	-28(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-512(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	-504(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	andl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L52:
	cmpl	$49, -8(%rbp)
	jle	.L56
.L49:
	leaq	.LC33(%rip), %rdx
	movq	-496(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L57
	movq	-512(%rbp), %rax
	leaq	xor_sig_nohash_params(%rip), %rcx
	movq	-504(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	movq	-512(%rbp), %rax
	leaq	xor_sig_hash_params(%rip), %rcx
	movq	-504(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
	andl	%eax, -4(%rbp)
	movq	-512(%rbp), %rax
	leaq	xor_sig_12_params(%rip), %rcx
	movq	-504(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rdx
	andl	%eax, -4(%rbp)
.L57:
	movl	-4(%rbp), %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	tls_prov_get_capabilities, .-tls_prov_get_capabilities
	.type	xor_newprovctx, @function
xor_newprovctx:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC30(%rip), %rax
	movl	$437, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	cmpq	$0, -24(%rbp)
	jne	.L61
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$443, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L60
.L61:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	xor_newprovctx, .-xor_newprovctx
	.type	xor_newkemkexctx, @function
xor_newkemkexctx:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC30(%rip), %rax
	movl	$467, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	xor_newkemkexctx, .-xor_newkemkexctx
	.type	xor_init, @function
xor_init:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L66
	cmpq	$0, -32(%rbp)
	jne	.L67
.L66:
	movl	$0, %eax
	jmp	.L68
.L67:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L68:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	xor_init, .-xor_init
	.type	xor_set_peer, @function
xor_set_peer:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L70
	cmpq	$0, -32(%rbp)
	jne	.L71
.L70:
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L72:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	xor_set_peer, .-xor_set_peer
	.type	xor_derive, @function
xor_derive:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L75
.L74:
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-40(%rbp), %rax
	movq	$32, (%rax)
	cmpq	$0, -32(%rbp)
	jne	.L77
	movl	$1, %eax
	jmp	.L76
.L77:
	cmpq	$31, -48(%rbp)
	ja	.L78
	movl	$0, %eax
	jmp	.L76
.L78:
	movl	$0, -4(%rbp)
	jmp	.L79
.L80:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	32(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L79:
	cmpl	$31, -4(%rbp)
	jle	.L80
	movl	$1, %eax
.L76:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	xor_derive, .-xor_derive
	.type	xor_freectx, @function
xor_freectx:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$522, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	xor_freectx, .-xor_freectx
	.type	xor_dupctx, @function
xor_dupctx:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC30(%rip), %rax
	movl	$530, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	xor_dupctx, .-xor_dupctx
	.section	.data.rel.ro.local
	.align 32
	.type	xor_keyexch_functions, @object
	.size	xor_keyexch_functions, 112
xor_keyexch_functions:
	.long	1
	.zero	4
	.quad	xor_newkemkexctx
	.long	2
	.zero	4
	.quad	xor_init
	.long	3
	.zero	4
	.quad	xor_derive
	.long	4
	.zero	4
	.quad	xor_set_peer
	.long	5
	.zero	4
	.quad	xor_freectx
	.long	6
	.zero	4
	.quad	xor_dupctx
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
.LC34:
	.string	"provider=tls-provider,fips=yes"
	.section	.data.rel.ro.local
	.align 32
	.type	tls_prov_keyexch, @object
	.size	tls_prov_keyexch, 64
tls_prov_keyexch:
	.quad	.LC5
	.quad	.LC34
	.quad	xor_keyexch_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	xor_encapsulate, @function
xor_encapsulate:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L86
	cmpq	$0, -80(%rbp)
	jne	.L87
.L86:
	cmpq	$0, -72(%rbp)
	jne	.L88
	cmpq	$0, -88(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	cmpq	$0, -72(%rbp)
	je	.L90
	movq	-72(%rbp), %rax
	movq	$32, (%rax)
.L90:
	cmpq	$0, -88(%rbp)
	je	.L91
	movq	-88(%rbp), %rax
	movq	$32, (%rax)
.L91:
	movl	$1, %eax
	jmp	.L89
.L87:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	xor_gen_init
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L97
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xor_gen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L98
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	movq	$32, (%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	xor_newkemkexctx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L99
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xor_init
	testl	%eax, %eax
	je	.L99
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xor_set_peer
	testl	%eax, %eax
	je	.L99
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	xor_derive
	testl	%eax, %eax
	je	.L99
	movl	$1, -4(%rbp)
	jmp	.L93
.L97:
	nop
	jmp	.L93
.L98:
	nop
	jmp	.L93
.L99:
	nop
.L93:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	xor_gen_cleanup
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xor_freekey
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	xor_freectx
	movl	-4(%rbp), %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	xor_encapsulate, .-xor_encapsulate
	.type	xor_decapsulate, @function
xor_decapsulate:
.LFB528:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L101
	cmpq	$0, -56(%rbp)
	jne	.L102
	movl	$0, %eax
	jmp	.L103
.L102:
	movq	-56(%rbp), %rax
	movq	$32, (%rax)
	movl	$1, %eax
	jmp	.L103
.L101:
	cmpq	$32, -72(%rbp)
	je	.L104
	movl	$0, %eax
	jmp	.L103
.L104:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	xor_newkey
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L109
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	xor_newkemkexctx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L110
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xor_init
	testl	%eax, %eax
	je	.L110
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xor_set_peer
	testl	%eax, %eax
	je	.L110
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	xor_derive
	testl	%eax, %eax
	je	.L110
	movl	$1, -4(%rbp)
	jmp	.L106
.L109:
	nop
	jmp	.L106
.L110:
	nop
.L106:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xor_freekey
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	xor_freectx
	movl	-4(%rbp), %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	xor_decapsulate, .-xor_decapsulate
	.section	.data.rel.ro.local
	.align 32
	.type	xor_kem_functions, @object
	.size	xor_kem_functions, 128
xor_kem_functions:
	.long	1
	.zero	4
	.quad	xor_newkemkexctx
	.long	6
	.zero	4
	.quad	xor_freectx
	.long	7
	.zero	4
	.quad	xor_dupctx
	.long	2
	.zero	4
	.quad	xor_init
	.long	3
	.zero	4
	.quad	xor_encapsulate
	.long	4
	.zero	4
	.quad	xor_init
	.long	5
	.zero	4
	.quad	xor_decapsulate
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	tls_prov_kem, @object
	.size	tls_prov_kem, 64
tls_prov_kem:
	.quad	.LC5
	.quad	.LC34
	.quad	xor_kem_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	xor_newkey, @function
xor_newkey:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC30(%rip), %rax
	movl	$691, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L112
	movl	$0, %eax
	jmp	.L113
.L112:
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L114
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$697, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L113
.L114:
	movq	-8(%rbp), %rax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	xor_newkey, .-xor_newkey
	.type	xor_freekey, @function
xor_freekey:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L122
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	testl	%eax, %eax
	jle	.L123
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jg	.L124
	cmpq	$0, -8(%rbp)
	je	.L120
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC30(%rip), %rcx
	movl	$720, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
.L120:
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$724, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L115
.L122:
	nop
	jmp	.L115
.L123:
	nop
	jmp	.L115
.L124:
	nop
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	xor_freekey, .-xor_freekey
	.type	xor_key_up_ref, @function
xor_key_up_ref:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	80(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L126
	movl	$0, %eax
	jmp	.L128
.L126:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	xor_key_up_ref, .-xor_key_up_ref
	.type	xor_has, @function
xor_has:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L130
	movl	$1, -4(%rbp)
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L131
	cmpl	$0, -4(%rbp)
	je	.L132
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L132
	movl	$1, %eax
	jmp	.L133
.L132:
	movl	$0, %eax
.L133:
	movl	%eax, -4(%rbp)
.L131:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L130
	cmpl	$0, -4(%rbp)
	je	.L134
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L134
	movl	$1, %eax
	jmp	.L135
.L134:
	movl	$0, %eax
.L135:
	movl	%eax, -4(%rbp)
.L130:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	xor_has, .-xor_has
	.type	xor_dup, @function
xor_dup:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, %edi
	call	xor_newkey
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L138
	cmpq	$0, -24(%rbp)
	je	.L138
	movl	$1, -12(%rbp)
	movl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L139
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L140
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$1, 68(%rax)
	jmp	.L139
.L140:
	movq	-8(%rbp), %rax
	movl	$0, 68(%rax)
.L139:
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L141
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L142
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$1, 64(%rax)
	jmp	.L141
.L142:
	movq	-8(%rbp), %rax
	movl	$0, 64(%rax)
.L141:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L138
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC30(%rip), %rcx
	movl	$780, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
.L138:
	cmpl	$0, -12(%rbp)
	jne	.L143
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xor_freekey
	movq	$0, -8(%rbp)
.L143:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	xor_dup, .-xor_dup
	.section	.rodata
.LC35:
	.string	"bits"
.LC36:
	.string	"security-bits"
.LC37:
	.string	"encoded-pub-key"
	.text
	.type	xor_get_params, @function
xor_get_params:
.LFB534:
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
	leaq	.LC35(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L146
	movq	-16(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L146
	movl	$0, %eax
	jmp	.L147
.L146:
	leaq	.LC36(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L148
	movl	4+xor_group(%rip), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L148
	movl	$0, %eax
	jmp	.L147
.L148:
	leaq	.LC37(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L149
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L150
	movl	$0, %eax
	jmp	.L147
.L150:
	movq	-16(%rbp), %rax
	movq	$32, 32(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L149
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$31, %rax
	jbe	.L149
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L149:
	movl	$1, %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	xor_get_params, .-xor_get_params
	.section	.data.rel.ro.local
	.align 32
	.type	xor_params, @object
	.size	xor_params, 160
xor_params:
	.quad	.LC35
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC36
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC37
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	xor_gettable_params, @function
xor_gettable_params:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	xor_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	xor_gettable_params, .-xor_gettable_params
	.type	xor_set_params, @function
xor_set_params:
.LFB536:
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
	leaq	.LC37(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L154
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L155
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$32, %rax
	je	.L156
.L155:
	movl	$0, %eax
	jmp	.L157
.L156:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	32(%rdx), %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$1, 68(%rax)
.L154:
	movl	$1, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	xor_set_params, .-xor_set_params
	.section	.data.rel.ro.local
	.align 32
	.type	xor_known_settable_params, @object
	.size	xor_known_settable_params, 80
xor_known_settable_params:
	.quad	.LC37
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	xor_load, @function
xor_load:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$8, -32(%rbp)
	jne	.L159
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L160
.L159:
	movl	$0, %eax
.L160:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	xor_load, .-xor_load
	.type	xor_recreate, @function
xor_recreate:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L162
.L165:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	-4(%rbp), %eax
	cltq
	leaq	private_constant(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	xorl	%esi, %eax
	cmpb	%al, %dl
	je	.L163
	movl	$0, %eax
	jmp	.L164
.L163:
	addl	$1, -4(%rbp)
.L162:
	cmpl	$31, -4(%rbp)
	jle	.L165
	movl	$1, %eax
.L164:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	xor_recreate, .-xor_recreate
	.type	xor_match, @function
xor_match:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L167
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L167
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%eax, -4(%rbp)
.L167:
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L168
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L169
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L170
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%eax, -4(%rbp)
	jmp	.L168
.L170:
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xor_recreate
	andl	%eax, -4(%rbp)
	jmp	.L168
.L169:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L171
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xor_recreate
	andl	%eax, -4(%rbp)
	jmp	.L168
.L171:
	movl	$0, -4(%rbp)
.L168:
	movl	-52(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L172
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L173
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L174
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%eax, -4(%rbp)
	jmp	.L172
.L174:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_recreate
	andl	%eax, -4(%rbp)
	jmp	.L172
.L173:
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L175
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_recreate
	andl	%eax, -4(%rbp)
	jmp	.L172
.L175:
	movl	$0, -4(%rbp)
.L172:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	xor_match, .-xor_match
	.type	xor_settable_params, @function
xor_settable_params:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	xor_known_settable_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	xor_settable_params, .-xor_settable_params
	.type	xor_gen_init, @function
xor_gen_init:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	movl	-28(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L180
	movl	$0, %eax
	jmp	.L181
.L180:
	leaq	.LC30(%rip), %rax
	movl	$933, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L182
	movl	$0, %eax
	jmp	.L181
.L182:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xor_gen_set_params
	testl	%eax, %eax
	jne	.L183
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$940, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L181
.L183:
	movq	-8(%rbp), %rax
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	xor_gen_init, .-xor_gen_init
	.section	.rodata
.LC38:
	.string	"group"
	.text
	.type	xor_gen_set_params, @function
xor_gen_set_params:
.LFB542:
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
	cmpq	$0, -8(%rbp)
	jne	.L185
	movl	$0, %eax
	jmp	.L186
.L185:
	leaq	.LC38(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L187
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L188
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L187
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L187
.L188:
	movl	$0, %eax
	jmp	.L186
.L187:
	movl	$1, %eax
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	xor_gen_set_params, .-xor_gen_set_params
	.type	xor_gen_settable_params, @function
xor_gen_settable_params:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	settable.31(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	xor_gen_settable_params, .-xor_gen_settable_params
	.type	xor_gen, @function
xor_gen:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, %edi
	call	xor_newkey
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L192
	movl	$0, %eax
	jmp	.L193
.L192:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L194
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L195
	leaq	.LC30(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$986, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L193
.L195:
	movq	$0, -8(%rbp)
	jmp	.L196
.L197:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	leaq	private_constant(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L196:
	cmpq	$31, -8(%rbp)
	jbe	.L197
	movq	-24(%rbp), %rax
	movl	$1, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 68(%rax)
.L194:
	movq	-24(%rbp), %rax
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	xor_gen, .-xor_gen
	.section	.rodata
.LC39:
	.string	"priv"
.LC40:
	.string	"pub"
	.text
	.type	xor_import, @function
xor_import:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L199
	movl	-140(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L200
.L199:
	movl	$0, %eax
	jmp	.L208
.L200:
	leaq	-64(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-96(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	.LC39(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC40(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L202
	leaq	-120(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	je	.L209
.L202:
	cmpq	$0, -32(%rbp)
	je	.L204
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	je	.L209
.L204:
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	je	.L206
	movq	-120(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	$1, 64(%rax)
.L206:
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	je	.L207
	movq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	$1, 68(%rax)
.L207:
	movl	$1, -4(%rbp)
	jmp	.L205
.L209:
	nop
.L205:
	movl	-4(%rbp), %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	xor_import, .-xor_import
	.type	xor_export, @function
xor_export:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movl	%esi, -172(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L211
	movl	-172(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L212
.L211:
	movl	$0, %eax
	jmp	.L214
.L212:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-240(%rbp), %rax
	leaq	.LC39(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-240(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	movl	$32, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-208(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-192(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L214:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	xor_export, .-xor_export
	.section	.data.rel.ro.local
	.align 32
	.type	xor_key_types, @object
	.size	xor_key_types, 120
xor_key_types:
	.quad	.LC40
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC39
	.long	2
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	xor_import_types, @function
xor_import_types:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L216
	leaq	xor_key_types(%rip), %rax
	jmp	.L218
.L216:
	movl	$0, %eax
.L218:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	xor_import_types, .-xor_import_types
	.type	xor_import_types_ex, @function
xor_import_types_ex:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L220
	movl	$0, %eax
	jmp	.L221
.L220:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	xor_import_types
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	xor_import_types_ex, .-xor_import_types_ex
	.type	xor_export_types, @function
xor_export_types:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L223
	leaq	xor_key_types(%rip), %rax
	jmp	.L225
.L223:
	movl	$0, %eax
.L225:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	xor_export_types, .-xor_export_types
	.type	xor_export_types_ex, @function
xor_export_types_ex:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L227
	movl	$0, %eax
	jmp	.L228
.L227:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	xor_export_types
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	xor_export_types_ex, .-xor_export_types_ex
	.type	xor_gen_cleanup, @function
xor_gen_cleanup:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1092, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	xor_gen_cleanup, .-xor_gen_cleanup
	.section	.data.rel.ro.local
	.align 32
	.type	xor_keymgmt_functions, @object
	.size	xor_keymgmt_functions, 320
xor_keymgmt_functions:
	.long	1
	.zero	4
	.quad	xor_newkey
	.long	2
	.zero	4
	.quad	xor_gen_init
	.long	4
	.zero	4
	.quad	xor_gen_set_params
	.long	5
	.zero	4
	.quad	xor_gen_settable_params
	.long	6
	.zero	4
	.quad	xor_gen
	.long	7
	.zero	4
	.quad	xor_gen_cleanup
	.long	11
	.zero	4
	.quad	xor_get_params
	.long	12
	.zero	4
	.quad	xor_gettable_params
	.long	13
	.zero	4
	.quad	xor_set_params
	.long	14
	.zero	4
	.quad	xor_settable_params
	.long	21
	.zero	4
	.quad	xor_has
	.long	44
	.zero	4
	.quad	xor_dup
	.long	10
	.zero	4
	.quad	xor_freekey
	.long	40
	.zero	4
	.quad	xor_import
	.long	41
	.zero	4
	.quad	xor_import_types
	.long	45
	.zero	4
	.quad	xor_import_types_ex
	.long	42
	.zero	4
	.quad	xor_export
	.long	43
	.zero	4
	.quad	xor_export_types
	.long	46
	.zero	4
	.quad	xor_export_types_ex
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xor_xorhmacsig_gen, @function
xor_xorhmacsig_gen:
.LFB552:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xor_gen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L231
	movl	$0, %eax
	jmp	.L232
.L231:
	leaq	.LC30(%rip), %rcx
	leaq	.LC16(%rip), %rax
	movl	$1126, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L233
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xor_freekey
	movl	$0, %eax
	jmp	.L232
.L233:
	movq	-8(%rbp), %rax
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	xor_xorhmacsig_gen, .-xor_xorhmacsig_gen
	.type	xor_xorhmacsha2sig_gen, @function
xor_xorhmacsha2sig_gen:
.LFB553:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xor_gen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L235
	movl	$0, %eax
	jmp	.L236
.L235:
	leaq	.LC30(%rip), %rcx
	leaq	.LC22(%rip), %rax
	movl	$1140, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L237
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	xor_freekey
	movl	$0, %eax
	jmp	.L236
.L237:
	movq	-8(%rbp), %rax
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	xor_xorhmacsha2sig_gen, .-xor_xorhmacsha2sig_gen
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsig_keymgmt_functions, @object
	.size	xor_xorhmacsig_keymgmt_functions, 320
xor_xorhmacsig_keymgmt_functions:
	.long	1
	.zero	4
	.quad	xor_newkey
	.long	2
	.zero	4
	.quad	xor_gen_init
	.long	4
	.zero	4
	.quad	xor_gen_set_params
	.long	5
	.zero	4
	.quad	xor_gen_settable_params
	.long	6
	.zero	4
	.quad	xor_xorhmacsig_gen
	.long	7
	.zero	4
	.quad	xor_gen_cleanup
	.long	11
	.zero	4
	.quad	xor_get_params
	.long	12
	.zero	4
	.quad	xor_gettable_params
	.long	13
	.zero	4
	.quad	xor_set_params
	.long	14
	.zero	4
	.quad	xor_settable_params
	.long	21
	.zero	4
	.quad	xor_has
	.long	44
	.zero	4
	.quad	xor_dup
	.long	10
	.zero	4
	.quad	xor_freekey
	.long	40
	.zero	4
	.quad	xor_import
	.long	41
	.zero	4
	.quad	xor_import_types
	.long	42
	.zero	4
	.quad	xor_export
	.long	43
	.zero	4
	.quad	xor_export_types
	.long	8
	.zero	4
	.quad	xor_load
	.long	23
	.zero	4
	.quad	xor_match
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	xor_xorhmacsha2sig_keymgmt_functions, @object
	.size	xor_xorhmacsha2sig_keymgmt_functions, 320
xor_xorhmacsha2sig_keymgmt_functions:
	.long	1
	.zero	4
	.quad	xor_newkey
	.long	2
	.zero	4
	.quad	xor_gen_init
	.long	4
	.zero	4
	.quad	xor_gen_set_params
	.long	5
	.zero	4
	.quad	xor_gen_settable_params
	.long	6
	.zero	4
	.quad	xor_xorhmacsha2sig_gen
	.long	7
	.zero	4
	.quad	xor_gen_cleanup
	.long	11
	.zero	4
	.quad	xor_get_params
	.long	12
	.zero	4
	.quad	xor_gettable_params
	.long	13
	.zero	4
	.quad	xor_set_params
	.long	14
	.zero	4
	.quad	xor_settable_params
	.long	21
	.zero	4
	.quad	xor_has
	.long	44
	.zero	4
	.quad	xor_dup
	.long	10
	.zero	4
	.quad	xor_freekey
	.long	40
	.zero	4
	.quad	xor_import
	.long	41
	.zero	4
	.quad	xor_import_types
	.long	42
	.zero	4
	.quad	xor_export
	.long	43
	.zero	4
	.quad	xor_export_types
	.long	8
	.zero	4
	.quad	xor_load
	.long	23
	.zero	4
	.quad	xor_match
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xor_key_op, @function
xor_key_op:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L239
	movq	-40(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_ALGOR_get0@PLT
	movl	-20(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L240
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L241
.L240:
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1218, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$7, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L241:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
.L239:
	cmpq	$0, -48(%rbp)
	je	.L243
	cmpl	$0, -4(%rbp)
	je	.L243
	cmpl	$0, -4(%rbp)
	jne	.L244
.L243:
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$7, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L244:
	movl	$0, %edi
	call	xor_newkey
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L245
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1231, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L245:
	cmpl	$32, -52(%rbp)
	je	.L246
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1236, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$7, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L247
.L246:
	cmpl	$0, -56(%rbp)
	jne	.L248
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	$1, 68(%rax)
	jmp	.L249
.L248:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	$1, 64(%rax)
.L249:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC30(%rip), %rax
	movl	$1248, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L251
	movq	-16(%rbp), %rax
	jmp	.L242
.L251:
	nop
.L247:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	xor_freekey
	movl	$0, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	xor_key_op, .-xor_key_op
	.type	xor_key_from_x509pubkey, @function
xor_key_from_x509pubkey:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L253
	movq	-40(%rbp), %rsi
	leaq	-24(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	testl	%eax, %eax
	jne	.L254
.L253:
	movl	$0, %eax
	jmp	.L256
.L254:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	xor_key_op
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	xor_key_from_x509pubkey, .-xor_key_from_x509pubkey
	.type	xor_key_from_pkcs8, @function
xor_key_from_pkcs8:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rsi
	leaq	-40(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	jne	.L258
	movl	$0, %eax
	jmp	.L262
.L258:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_OCTET_STRING@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L260
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L261
.L260:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -28(%rbp)
.L261:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	xor_key_op
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	xor_key_from_pkcs8, .-xor_key_from_pkcs8
	.section	.data.rel.ro.local
	.align 32
	.type	tls_prov_keymgmt, @object
	.size	tls_prov_keymgmt, 128
tls_prov_keymgmt:
	.quad	.LC5
	.quad	.LC34
	.quad	xor_keymgmt_functions
	.zero	8
	.quad	.LC16
	.quad	.LC34
	.quad	xor_xorhmacsig_keymgmt_functions
	.zero	8
	.quad	.LC22
	.quad	.LC34
	.quad	xor_xorhmacsha2sig_keymgmt_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	free_asn1_data, @function
free_asn1_data:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$6, -4(%rbp)
	je	.L264
	cmpl	$16, -4(%rbp)
	je	.L265
	jmp	.L267
.L264:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	jmp	.L266
.L265:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	nop
.L266:
.L267:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	free_asn1_data, .-free_asn1_data
	.type	key_to_p8info, @function
key_to_p8info:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -80(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	call	PKCS8_PRIV_KEY_INFO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L269
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L269
	movq	-40(%rbp), %rbx
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	movl	-28(%rbp), %edx
	pushq	%rdx
	movq	%rbx, %r9
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS8_pkey_set0@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L270
.L269:
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1366, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC30(%rip), %rcx
	movl	$1368, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
.L270:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	key_to_p8info, .-key_to_p8info
	.type	p8info_to_encp8, @function
p8info_to_encp8:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%rsi, -1072(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -1048(%rbp)
	movq	-1072(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-1072(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L273
	movq	-1072(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L274
.L273:
	movl	$0, %eax
	jmp	.L277
.L274:
	movq	-1072(%rbp), %rax
	movq	24(%rax), %r9
	movq	-1072(%rbp), %rax
	movq	32(%rax), %rcx
	leaq	-1048(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L276
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1387, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L277
.L276:
	movq	-1048(%rbp), %rax
	movl	%eax, %ecx
	movq	-1072(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1040(%rbp), %rdx
	pushq	$0
	pushq	-16(%rbp)
	pushq	-1064(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$-1, %edi
	call	PKCS8_encrypt_ex@PLT
	addq	$32, %rsp
	movq	%rax, -8(%rbp)
	movq	-1048(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	p8info_to_encp8, .-p8info_to_encp8
	.type	key_to_encp8, @function
key_to_encp8:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_p8info
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L279
	movq	-40(%rbp), %rdx
	movl	-32(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	free_asn1_data
	jmp	.L280
.L279:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	p8info_to_encp8
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
.L280:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	key_to_encp8, .-key_to_encp8
	.type	xorx_key_to_pubkey, @function
xorx_key_to_pubkey:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -80(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	call	X509_PUBKEY_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L283
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L283
	movq	-40(%rbp), %rbx
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %r9d
	movq	%rbx, %r8
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_PUBKEY_set0_param@PLT
	testl	%eax, %eax
	jne	.L284
.L283:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1428, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC30(%rip), %rcx
	movl	$1430, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
.L284:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	xorx_key_to_pubkey, .-xorx_key_to_pubkey
	.type	key_to_epki_der_priv_bio, @function
key_to_epki_der_priv_bio:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L287
	movl	$0, %eax
	jmp	.L291
.L287:
	cmpq	$0, -72(%rbp)
	je	.L289
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L289
	movl	$0, %eax
	jmp	.L291
.L289:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_encp8
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L290
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_bio@PLT
	movl	%eax, -4(%rbp)
.L290:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movl	-4(%rbp), %eax
.L291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	key_to_epki_der_priv_bio, .-key_to_epki_der_priv_bio
	.type	key_to_epki_pem_priv_bio, @function
key_to_epki_pem_priv_bio:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L293
	movl	$0, %eax
	jmp	.L297
.L293:
	cmpq	$0, -72(%rbp)
	je	.L295
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L295
	movl	$0, %eax
	jmp	.L297
.L295:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	16(%rbp), %r8
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_encp8
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L296
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8@PLT
	movl	%eax, -4(%rbp)
.L296:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movl	-4(%rbp), %eax
.L297:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	key_to_epki_pem_priv_bio, .-key_to_epki_pem_priv_bio
	.type	key_to_pki_der_priv_bio, @function
key_to_pki_der_priv_bio:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L299
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_epki_der_priv_bio
	addq	$16, %rsp
	jmp	.L304
.L299:
	cmpq	$0, -72(%rbp)
	je	.L301
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L301
	movl	$0, %eax
	jmp	.L304
.L301:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_p8info
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L302
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS8_PRIV_KEY_INFO_bio@PLT
	movl	%eax, -4(%rbp)
	jmp	.L303
.L302:
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	free_asn1_data
.L303:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movl	-4(%rbp), %eax
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	key_to_pki_der_priv_bio, .-key_to_pki_der_priv_bio
	.type	key_to_pki_pem_priv_bio, @function
key_to_pki_pem_priv_bio:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L306
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_epki_pem_priv_bio
	addq	$16, %rsp
	jmp	.L311
.L306:
	cmpq	$0, -72(%rbp)
	je	.L308
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L308
	movl	$0, %eax
	jmp	.L311
.L308:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	key_to_p8info
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L309
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_PKCS8_PRIV_KEY_INFO@PLT
	movl	%eax, -4(%rbp)
	jmp	.L310
.L309:
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	free_asn1_data
.L310:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movl	-4(%rbp), %eax
.L311:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	key_to_pki_pem_priv_bio, .-key_to_pki_pem_priv_bio
	.type	key_to_spki_der_pub_bio, @function
key_to_spki_der_pub_bio:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L313
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L313
	movl	$0, %eax
	jmp	.L316
.L313:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	xorx_key_to_pubkey
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L315
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_PUBKEY_bio@PLT
	movl	%eax, -4(%rbp)
.L315:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movl	-4(%rbp), %eax
.L316:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	key_to_spki_der_pub_bio, .-key_to_spki_der_pub_bio
	.type	key_to_spki_pem_pub_bio, @function
key_to_spki_pem_pub_bio:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L318
	movq	16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-28(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L318
	movl	$0, %eax
	jmp	.L322
.L318:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	xorx_key_to_pubkey
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L320
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509_PUBKEY@PLT
	movl	%eax, -4(%rbp)
	jmp	.L321
.L320:
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	free_asn1_data
.L321:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movl	-4(%rbp), %eax
.L322:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	key_to_spki_pem_pub_bio, .-key_to_spki_pem_pub_bio
	.type	prepare_xorx_params, @function
prepare_xorx_params:
.LFB568:
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
	movq	%r8, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L324
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	cmpl	%eax, -28(%rbp)
	je	.L324
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1638, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$3, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L325
.L324:
	cmpl	$0, -28(%rbp)
	jne	.L326
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1643, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$5, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L325
.L326:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L327
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_length@PLT
	testq	%rax, %rax
	jne	.L328
.L327:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1651, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$5, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	$0, %eax
	jmp	.L325
.L328:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	$6, (%rax)
	movl	$1, %eax
.L325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	prepare_xorx_params, .-prepare_xorx_params
	.type	xorx_spki_pub_to_der, @function
xorx_spki_pub_to_der:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L330
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1667, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L331
.L330:
	movl	$32, -12(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	leaq	.LC30(%rip), %rdx
	movl	$1671, %ecx
	movl	$32, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L332
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1673, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L331
.L332:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
.L331:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	xorx_spki_pub_to_der, .-xorx_spki_pub_to_der
	.type	xorx_pki_priv_to_der, @function
xorx_pki_priv_to_der:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L334
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1689, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L337
.L334:
	leaq	.LC30(%rip), %rax
	movl	$1693, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$32, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_OCTET_STRING@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L336
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1702, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
.L336:
	leaq	.LC30(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$1706, %ecx
	movl	$32, %esi
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movl	-4(%rbp), %eax
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	xorx_pki_priv_to_der, .-xorx_pki_priv_to_der
	.type	key2any_newctx, @function
key2any_newctx:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC30(%rip), %rax
	movl	$1733, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L339
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
.L339:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	key2any_newctx, .-key2any_newctx
	.type	key2any_freectx, @function
key2any_freectx:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1748, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	key2any_freectx, .-key2any_freectx
	.type	key2any_settable_ctx_params, @function
key2any_settable_ctx_params:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	settables.23(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	key2any_settable_ctx_params, .-key2any_settable_ctx_params
	.section	.rodata
.LC41:
	.string	"cipher"
.LC42:
	.string	"properties"
.LC43:
	.string	"save-parameters"
	.text
	.type	key2any_set_ctx_params, @function
key2any_set_ctx_params:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC41(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC42(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC43(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L345
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	jne	.L346
	movl	$0, %eax
	jmp	.L350
.L346:
	cmpq	$0, -32(%rbp)
	je	.L348
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string_ptr@PLT
	testl	%eax, %eax
	jne	.L348
	movl	$0, %eax
	jmp	.L350
.L348:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L345
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L345
	movl	$0, %eax
	jmp	.L350
.L345:
	cmpq	$0, -40(%rbp)
	je	.L351
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L351
	movl	$0, %eax
	jmp	.L350
.L351:
	movl	$1, %eax
.L350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	key2any_set_ctx_params, .-key2any_set_ctx_params
	.type	key2any_check_selection, @function
key2any_check_selection:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	$1, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$132, -20(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L353
	movl	$1, %eax
	jmp	.L358
.L353:
	movq	$0, -8(%rbp)
	jmp	.L355
.L357:
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	-40(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L356
	movl	-16(%rbp), %eax
	jmp	.L358
.L356:
	addq	$1, -8(%rbp)
.L355:
	cmpq	$2, -8(%rbp)
	jbe	.L357
	movl	$0, %eax
.L358:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	key2any_check_selection, .-key2any_check_selection
	.type	key2any_encode, @function
key2any_encode:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L360
	cmpl	$0, -8(%rbp)
	jg	.L361
.L360:
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1844, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L362
.L361:
	cmpq	$0, -64(%rbp)
	je	.L363
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_from_core_bio@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L364
	movq	-24(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	40(%rbp), %r8
	movq	32(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movq	-64(%rbp), %r10
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L364:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L362
.L363:
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1857, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L362:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	key2any_encode, .-key2any_encode
	.type	xorhmacsig_to_EncryptedPrivateKeyInfo_der_import_object, @function
xorhmacsig_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	xorhmacsig_to_EncryptedPrivateKeyInfo_der_import_object, .-xorhmacsig_to_EncryptedPrivateKeyInfo_der_import_object
	.type	xorhmacsig_to_EncryptedPrivateKeyInfo_der_free_object, @function
xorhmacsig_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	xorhmacsig_to_EncryptedPrivateKeyInfo_der_free_object, .-xorhmacsig_to_EncryptedPrivateKeyInfo_der_free_object
	.type	xorhmacsig_to_EncryptedPrivateKeyInfo_der_does_selection, @function
xorhmacsig_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	xorhmacsig_to_EncryptedPrivateKeyInfo_der_does_selection, .-xorhmacsig_to_EncryptedPrivateKeyInfo_der_does_selection
	.section	.rodata
.LC44:
	.string	"xorhmacsig PRIVATE KEY"
	.text
	.type	xorhmacsig_to_EncryptedPrivateKeyInfo_der_encode, @function
xorhmacsig_to_EncryptedPrivateKeyInfo_der_encode:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L372
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2032, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L373
.L372:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L374
	leaq	key_to_epki_der_priv_bio(%rip), %r9
	leaq	.LC44(%rip), %r8
	leaq	.LC16(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_pki_priv_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L373
.L374:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2032, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L373:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	xorhmacsig_to_EncryptedPrivateKeyInfo_der_encode, .-xorhmacsig_to_EncryptedPrivateKeyInfo_der_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsig_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	xor_xorhmacsig_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
xor_xorhmacsig_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsig_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsig_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	xorhmacsig_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	xorhmacsig_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_import_object, @function
xorhmacsig_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_import_object, .-xorhmacsig_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_free_object, @function
xorhmacsig_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_free_object, .-xorhmacsig_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
xorhmacsig_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_does_selection, .-xorhmacsig_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encode, @function
xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L381
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2033, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L382
.L381:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L383
	leaq	key_to_epki_pem_priv_bio(%rip), %r9
	leaq	.LC44(%rip), %r8
	leaq	.LC16(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_pki_priv_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L382
.L383:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2033, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L382:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encode, .-xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	xor_xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
xor_xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsig_to_PrivateKeyInfo_der_import_object, @function
xorhmacsig_to_PrivateKeyInfo_der_import_object:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	xorhmacsig_to_PrivateKeyInfo_der_import_object, .-xorhmacsig_to_PrivateKeyInfo_der_import_object
	.type	xorhmacsig_to_PrivateKeyInfo_der_free_object, @function
xorhmacsig_to_PrivateKeyInfo_der_free_object:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	xorhmacsig_to_PrivateKeyInfo_der_free_object, .-xorhmacsig_to_PrivateKeyInfo_der_free_object
	.type	xorhmacsig_to_PrivateKeyInfo_der_does_selection, @function
xorhmacsig_to_PrivateKeyInfo_der_does_selection:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	xorhmacsig_to_PrivateKeyInfo_der_does_selection, .-xorhmacsig_to_PrivateKeyInfo_der_does_selection
	.type	xorhmacsig_to_PrivateKeyInfo_der_encode, @function
xorhmacsig_to_PrivateKeyInfo_der_encode:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L390
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2034, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L391
.L390:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L392
	leaq	key_to_pki_der_priv_bio(%rip), %r9
	leaq	.LC44(%rip), %r8
	leaq	.LC16(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_pki_priv_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L391
.L392:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2034, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L391:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	xorhmacsig_to_PrivateKeyInfo_der_encode, .-xorhmacsig_to_PrivateKeyInfo_der_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsig_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	xor_xorhmacsig_to_PrivateKeyInfo_der_encoder_functions, 144
xor_xorhmacsig_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsig_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsig_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	xorhmacsig_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	xorhmacsig_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsig_to_PrivateKeyInfo_pem_import_object, @function
xorhmacsig_to_PrivateKeyInfo_pem_import_object:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	xorhmacsig_to_PrivateKeyInfo_pem_import_object, .-xorhmacsig_to_PrivateKeyInfo_pem_import_object
	.type	xorhmacsig_to_PrivateKeyInfo_pem_free_object, @function
xorhmacsig_to_PrivateKeyInfo_pem_free_object:
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
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	xorhmacsig_to_PrivateKeyInfo_pem_free_object, .-xorhmacsig_to_PrivateKeyInfo_pem_free_object
	.type	xorhmacsig_to_PrivateKeyInfo_pem_does_selection, @function
xorhmacsig_to_PrivateKeyInfo_pem_does_selection:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	xorhmacsig_to_PrivateKeyInfo_pem_does_selection, .-xorhmacsig_to_PrivateKeyInfo_pem_does_selection
	.type	xorhmacsig_to_PrivateKeyInfo_pem_encode, @function
xorhmacsig_to_PrivateKeyInfo_pem_encode:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L399
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2035, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L400
.L399:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L401
	leaq	key_to_pki_pem_priv_bio(%rip), %r9
	leaq	.LC44(%rip), %r8
	leaq	.LC16(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_pki_priv_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L400
.L401:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2035, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L400:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	xorhmacsig_to_PrivateKeyInfo_pem_encode, .-xorhmacsig_to_PrivateKeyInfo_pem_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsig_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	xor_xorhmacsig_to_PrivateKeyInfo_pem_encoder_functions, 144
xor_xorhmacsig_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsig_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsig_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	xorhmacsig_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	xorhmacsig_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsig_to_SubjectPublicKeyInfo_der_import_object, @function
xorhmacsig_to_SubjectPublicKeyInfo_der_import_object:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	xorhmacsig_to_SubjectPublicKeyInfo_der_import_object, .-xorhmacsig_to_SubjectPublicKeyInfo_der_import_object
	.type	xorhmacsig_to_SubjectPublicKeyInfo_der_free_object, @function
xorhmacsig_to_SubjectPublicKeyInfo_der_free_object:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	xorhmacsig_to_SubjectPublicKeyInfo_der_free_object, .-xorhmacsig_to_SubjectPublicKeyInfo_der_free_object
	.type	xorhmacsig_to_SubjectPublicKeyInfo_der_does_selection, @function
xorhmacsig_to_SubjectPublicKeyInfo_der_does_selection:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	xorhmacsig_to_SubjectPublicKeyInfo_der_does_selection, .-xorhmacsig_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC45:
	.string	"xorhmacsig PUBLIC KEY"
	.text
	.type	xorhmacsig_to_SubjectPublicKeyInfo_der_encode, @function
xorhmacsig_to_SubjectPublicKeyInfo_der_encode:
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L408
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2036, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L409
.L408:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L410
	leaq	key_to_spki_der_pub_bio(%rip), %r9
	leaq	.LC45(%rip), %r8
	leaq	.LC16(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_spki_pub_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L409
.L410:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2036, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L409:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	xorhmacsig_to_SubjectPublicKeyInfo_der_encode, .-xorhmacsig_to_SubjectPublicKeyInfo_der_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsig_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	xor_xorhmacsig_to_SubjectPublicKeyInfo_der_encoder_functions, 144
xor_xorhmacsig_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsig_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsig_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	xorhmacsig_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	xorhmacsig_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsig_to_SubjectPublicKeyInfo_pem_import_object, @function
xorhmacsig_to_SubjectPublicKeyInfo_pem_import_object:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	xorhmacsig_to_SubjectPublicKeyInfo_pem_import_object, .-xorhmacsig_to_SubjectPublicKeyInfo_pem_import_object
	.type	xorhmacsig_to_SubjectPublicKeyInfo_pem_free_object, @function
xorhmacsig_to_SubjectPublicKeyInfo_pem_free_object:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	xorhmacsig_to_SubjectPublicKeyInfo_pem_free_object, .-xorhmacsig_to_SubjectPublicKeyInfo_pem_free_object
	.type	xorhmacsig_to_SubjectPublicKeyInfo_pem_does_selection, @function
xorhmacsig_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	xorhmacsig_to_SubjectPublicKeyInfo_pem_does_selection, .-xorhmacsig_to_SubjectPublicKeyInfo_pem_does_selection
	.type	xorhmacsig_to_SubjectPublicKeyInfo_pem_encode, @function
xorhmacsig_to_SubjectPublicKeyInfo_pem_encode:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L417
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2037, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L418
.L417:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L419
	leaq	key_to_spki_pem_pub_bio(%rip), %r9
	leaq	.LC45(%rip), %r8
	leaq	.LC16(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_spki_pub_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L418
.L419:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2037, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L418:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	xorhmacsig_to_SubjectPublicKeyInfo_pem_encode, .-xorhmacsig_to_SubjectPublicKeyInfo_pem_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsig_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	xor_xorhmacsig_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
xor_xorhmacsig_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsig_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsig_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	xorhmacsig_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	xorhmacsig_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_import_object, @function
xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_import_object:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_import_object, .-xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_import_object
	.type	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_free_object, @function
xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_free_object:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_free_object, .-xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_free_object
	.type	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_does_selection, @function
xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_does_selection:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_does_selection, .-xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_does_selection
	.section	.rodata
.LC46:
	.string	"xorhmacsha2sig PRIVATE KEY"
	.text
	.type	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encode, @function
xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encode:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L426
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2038, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L427
.L426:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L428
	leaq	key_to_epki_der_priv_bio(%rip), %r9
	leaq	.LC46(%rip), %r8
	leaq	.LC22(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_pki_priv_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L427
.L428:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2038, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L427:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encode, .-xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encoder_functions, @object
	.size	xor_xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encoder_functions, 144
xor_xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_import_object, @function
xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_import_object:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_import_object, .-xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_import_object
	.type	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_free_object, @function
xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_free_object:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_free_object, .-xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_free_object
	.type	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_does_selection, @function
xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_does_selection:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_does_selection, .-xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_does_selection
	.type	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encode, @function
xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encode:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L435
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2039, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L436
.L435:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L437
	leaq	key_to_epki_pem_priv_bio(%rip), %r9
	leaq	.LC46(%rip), %r8
	leaq	.LC22(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_pki_priv_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L436
.L437:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2039, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L436:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encode, .-xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encoder_functions, @object
	.size	xor_xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encoder_functions, 144
xor_xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsha2sig_to_PrivateKeyInfo_der_import_object, @function
xorhmacsha2sig_to_PrivateKeyInfo_der_import_object:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	xorhmacsha2sig_to_PrivateKeyInfo_der_import_object, .-xorhmacsha2sig_to_PrivateKeyInfo_der_import_object
	.type	xorhmacsha2sig_to_PrivateKeyInfo_der_free_object, @function
xorhmacsha2sig_to_PrivateKeyInfo_der_free_object:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	xorhmacsha2sig_to_PrivateKeyInfo_der_free_object, .-xorhmacsha2sig_to_PrivateKeyInfo_der_free_object
	.type	xorhmacsha2sig_to_PrivateKeyInfo_der_does_selection, @function
xorhmacsha2sig_to_PrivateKeyInfo_der_does_selection:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	xorhmacsha2sig_to_PrivateKeyInfo_der_does_selection, .-xorhmacsha2sig_to_PrivateKeyInfo_der_does_selection
	.type	xorhmacsha2sig_to_PrivateKeyInfo_der_encode, @function
xorhmacsha2sig_to_PrivateKeyInfo_der_encode:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L444
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2040, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L445
.L444:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L446
	leaq	key_to_pki_der_priv_bio(%rip), %r9
	leaq	.LC46(%rip), %r8
	leaq	.LC22(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_pki_priv_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L445
.L446:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2040, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L445:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	xorhmacsha2sig_to_PrivateKeyInfo_der_encode, .-xorhmacsha2sig_to_PrivateKeyInfo_der_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsha2sig_to_PrivateKeyInfo_der_encoder_functions, @object
	.size	xor_xorhmacsha2sig_to_PrivateKeyInfo_der_encoder_functions, 144
xor_xorhmacsha2sig_to_PrivateKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsha2sig_to_PrivateKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsha2sig_to_PrivateKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	xorhmacsha2sig_to_PrivateKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	xorhmacsha2sig_to_PrivateKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsha2sig_to_PrivateKeyInfo_pem_import_object, @function
xorhmacsha2sig_to_PrivateKeyInfo_pem_import_object:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	xorhmacsha2sig_to_PrivateKeyInfo_pem_import_object, .-xorhmacsha2sig_to_PrivateKeyInfo_pem_import_object
	.type	xorhmacsha2sig_to_PrivateKeyInfo_pem_free_object, @function
xorhmacsha2sig_to_PrivateKeyInfo_pem_free_object:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	xorhmacsha2sig_to_PrivateKeyInfo_pem_free_object, .-xorhmacsha2sig_to_PrivateKeyInfo_pem_free_object
	.type	xorhmacsha2sig_to_PrivateKeyInfo_pem_does_selection, @function
xorhmacsha2sig_to_PrivateKeyInfo_pem_does_selection:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	xorhmacsha2sig_to_PrivateKeyInfo_pem_does_selection, .-xorhmacsha2sig_to_PrivateKeyInfo_pem_does_selection
	.type	xorhmacsha2sig_to_PrivateKeyInfo_pem_encode, @function
xorhmacsha2sig_to_PrivateKeyInfo_pem_encode:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L453
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2041, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L454
.L453:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L455
	leaq	key_to_pki_pem_priv_bio(%rip), %r9
	leaq	.LC46(%rip), %r8
	leaq	.LC22(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_pki_priv_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L454
.L455:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2041, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L454:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	xorhmacsha2sig_to_PrivateKeyInfo_pem_encode, .-xorhmacsha2sig_to_PrivateKeyInfo_pem_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsha2sig_to_PrivateKeyInfo_pem_encoder_functions, @object
	.size	xor_xorhmacsha2sig_to_PrivateKeyInfo_pem_encoder_functions, 144
xor_xorhmacsha2sig_to_PrivateKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsha2sig_to_PrivateKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsha2sig_to_PrivateKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	xorhmacsha2sig_to_PrivateKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	xorhmacsha2sig_to_PrivateKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_import_object, @function
xorhmacsha2sig_to_SubjectPublicKeyInfo_der_import_object:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_import_object, .-xorhmacsha2sig_to_SubjectPublicKeyInfo_der_import_object
	.type	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_free_object, @function
xorhmacsha2sig_to_SubjectPublicKeyInfo_der_free_object:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_free_object, .-xorhmacsha2sig_to_SubjectPublicKeyInfo_der_free_object
	.type	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_does_selection, @function
xorhmacsha2sig_to_SubjectPublicKeyInfo_der_does_selection:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_does_selection, .-xorhmacsha2sig_to_SubjectPublicKeyInfo_der_does_selection
	.section	.rodata
.LC47:
	.string	"xorhmacsha2sig PUBLIC KEY"
	.text
	.type	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encode, @function
xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encode:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L462
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2042, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L463
.L462:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L464
	leaq	key_to_spki_der_pub_bio(%rip), %r9
	leaq	.LC47(%rip), %r8
	leaq	.LC22(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_spki_pub_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L463
.L464:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2042, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L463:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encode, .-xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encoder_functions, @object
	.size	xor_xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encoder_functions, 144
xor_xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_import_object
	.long	21
	.zero	4
	.quad	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_free_object
	.long	11
	.zero	4
	.quad	xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_import_object, @function
xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_import_object:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	-28(%rbp), %edx
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdi
	movq	%rax, %rsi
	call	xor_prov_import_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_import_object, .-xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_import_object
	.type	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_free_object, @function
xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_free_object:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	xor_xorhmacsha2sig_keymgmt_functions(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_prov_free_key
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_free_object, .-xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_free_object
	.type	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_does_selection, @function
xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_does_selection:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	key2any_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_does_selection, .-xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_does_selection
	.type	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encode, @function
xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encode:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L471
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2043, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L472
.L471:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L473
	leaq	key_to_spki_pem_pub_bio(%rip), %r9
	leaq	.LC47(%rip), %r8
	leaq	.LC22(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	xorx_spki_pub_to_der(%rip), %rdi
	pushq	%rdi
	leaq	prepare_xorx_params(%rip), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rax, %rdi
	call	key2any_encode
	addq	$32, %rsp
	jmp	.L472
.L473:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2043, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L472:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encode, .-xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encode
	.section	.data.rel.ro.local
	.align 32
	.type	xor_xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encoder_functions, @object
	.size	xor_xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encoder_functions, 144
xor_xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encoder_functions:
	.long	1
	.zero	4
	.quad	key2any_newctx
	.long	2
	.zero	4
	.quad	key2any_freectx
	.long	6
	.zero	4
	.quad	key2any_settable_ctx_params
	.long	5
	.zero	4
	.quad	key2any_set_ctx_params
	.long	10
	.zero	4
	.quad	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_does_selection
	.long	20
	.zero	4
	.quad	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_import_object
	.long	21
	.zero	4
	.quad	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_free_object
	.long	11
	.zero	4
	.quad	xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encode
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
.LC48:
	.string	"provider=tls-provider,fips=yes,output=der,structure=PrivateKeyInfo"
	.align 8
.LC49:
	.string	"provider=tls-provider,fips=yes,output=pem,structure=PrivateKeyInfo"
	.align 8
.LC50:
	.string	"provider=tls-provider,fips=yes,output=der,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC51:
	.string	"provider=tls-provider,fips=yes,output=pem,structure=EncryptedPrivateKeyInfo"
	.align 8
.LC52:
	.string	"provider=tls-provider,fips=yes,output=der,structure=SubjectPublicKeyInfo"
	.align 8
.LC53:
	.string	"provider=tls-provider,fips=yes,output=pem,structure=SubjectPublicKeyInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	tls_prov_encoder, @object
	.size	tls_prov_encoder, 416
tls_prov_encoder:
	.quad	.LC16
	.quad	.LC48
	.quad	xor_xorhmacsig_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC49
	.quad	xor_xorhmacsig_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC50
	.quad	xor_xorhmacsig_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC51
	.quad	xor_xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC52
	.quad	xor_xorhmacsig_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC53
	.quad	xor_xorhmacsig_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC22
	.quad	.LC48
	.quad	xor_xorhmacsha2sig_to_PrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC22
	.quad	.LC49
	.quad	xor_xorhmacsha2sig_to_PrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC22
	.quad	.LC50
	.quad	xor_xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC22
	.quad	.LC51
	.quad	xor_xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encoder_functions
	.zero	8
	.quad	.LC22
	.quad	.LC52
	.quad	xor_xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encoder_functions
	.zero	8
	.quad	.LC22
	.quad	.LC53
	.quad	xor_xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encoder_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.section	.rodata
.LC54:
	.string	"algor"
.LC55:
	.string	"public_key"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X509_PUBKEY_INTERNAL_seq_tt, @object
	.size	X509_PUBKEY_INTERNAL_seq_tt, 80
X509_PUBKEY_INTERNAL_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC54
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC55
	.quad	ASN1_BIT_STRING_it
	.text
	.type	X509_PUBKEY_INTERNAL_it, @function
X509_PUBKEY_INTERNAL_it:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.9(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	X509_PUBKEY_INTERNAL_it, .-X509_PUBKEY_INTERNAL_it
	.type	xorx_d2i_X509_PUBKEY_INTERNAL, @function
xorx_d2i_X509_PUBKEY_INTERNAL:
.LFB626:
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
	leaq	.LC30(%rip), %rax
	movl	$2184, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L477
	movl	$0, %eax
	jmp	.L479
.L477:
	call	X509_PUBKEY_INTERNAL_it
	movq	%rax, %rcx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	leaq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_d2i_ex@PLT
	nop
.L479:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	xorx_d2i_X509_PUBKEY_INTERNAL, .-xorx_d2i_X509_PUBKEY_INTERNAL
	.type	xor_read_der, @function
xor_read_der:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_from_core_bio@PLT
	movq	%rax, -8(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_d2i_read_bio@PLT
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L481
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	.LC30(%rip), %rcx
	movl	$2216, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L481:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	xor_read_der, .-xor_read_der
	.type	xor_der2key_decode_p8, @function
xor_der2key_decode_p8:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L484
	movq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	je	.L484
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	jne	.L484
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %r8
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
.L484:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	xor_der2key_decode_p8, .-xor_der2key_decode_p8
	.type	xor_d2i_PUBKEY, @function
xor_d2i_PUBKEY:
.LFB629:
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
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xorx_d2i_X509_PUBKEY_INTERNAL
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xor_key_from_x509pubkey
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L490
	cmpq	$0, -24(%rbp)
	je	.L491
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	xor_freekey
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L488
.L490:
	nop
	jmp	.L488
.L491:
	nop
.L488:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	xor_d2i_PUBKEY, .-xor_d2i_PUBKEY
	.type	der2key_newctx, @function
der2key_newctx:
.LFB630:
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
	leaq	.LC30(%rip), %rax
	movl	$2274, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L493
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L493
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, 24(%rbx)
.L493:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	der2key_newctx, .-der2key_newctx
	.type	der2key_freectx, @function
der2key_freectx:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2290, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	der2key_freectx, .-der2key_freectx
	.type	der2key_check_selection, @function
der2key_check_selection:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$132, -20(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L497
	movl	$1, %eax
	jmp	.L502
.L497:
	movq	$0, -8(%rbp)
	jmp	.L499
.L501:
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L500
	movl	-16(%rbp), %eax
	jmp	.L502
.L500:
	addq	$1, -8(%rbp)
.L499:
	cmpq	$2, -8(%rbp)
	jbe	.L501
	movl	$0, %eax
.L502:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	der2key_check_selection, .-der2key_check_selection
	.section	.rodata
.LC56:
	.string	"type"
.LC57:
	.string	"data-type"
.LC58:
	.string	"reference"
	.text
	.type	xor_der2key_decode, @function
xor_der2key_decode:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	-244(%rbp), %edx
	movl	%edx, 16(%rax)
	cmpl	$0, -244(%rbp)
	jne	.L504
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, -244(%rbp)
.L504:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	28(%rax), %eax
	andl	-244(%rbp), %eax
	testl	%eax, %eax
	jne	.L505
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2350, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L519
.L505:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	%rax, %rdi
	call	xor_read_der
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L520
	movl	$0, -4(%rbp)
	movl	-244(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L509
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L510
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%r8
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movzbl	20(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L511
	jmp	.L512
.L510:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L511
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -48(%rbp)
.L511:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L509
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L521
.L509:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L513
	movl	-244(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L513
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L514
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -48(%rbp)
	jmp	.L515
.L514:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -48(%rbp)
.L515:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L513
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L522
.L513:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L516
	movl	-244(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L516
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L517
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -48(%rbp)
.L517:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L516
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L523
.L516:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L518
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L518
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L518
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -48(%rbp)
.L518:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L524
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L524
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L508
.L520:
	nop
	jmp	.L508
.L521:
	nop
	jmp	.L508
.L522:
	nop
	jmp	.L508
.L523:
	nop
	jmp	.L508
.L524:
	nop
.L508:
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC30(%rip), %rcx
	movl	$2418, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L525
	movl	$2, -52(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-52(%rbp), %rdx
	leaq	.LC56(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	-320(%rbp), %rax
	leaq	.LC57(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-48(%rbp), %rdx
	leaq	.LC58(%rip), %rsi
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-264(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	jmp	.L512
.L525:
	nop
.L512:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-24(%rbp), %rax
	leaq	.LC30(%rip), %rcx
	movl	$2442, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L519:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	xor_der2key_decode, .-xor_der2key_decode
	.type	der2key_export_object, @function
der2key_export_object:
.LFB634:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	xor_prov_get_keymgmt_export
	movq	%rax, -16(%rbp)
	cmpq	$8, -56(%rbp)
	jne	.L527
	cmpq	$0, -16(%rbp)
	je	.L527
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	jmp	.L528
.L527:
	movl	$0, %eax
.L528:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	der2key_export_object, .-der2key_export_object
	.type	xorx_d2i_PKCS8, @function
xorx_d2i_PKCS8:
.LFB635:
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
	movq	%rcx, -32(%rbp)
	leaq	xor_key_from_pkcs8(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	xor_der2key_decode_p8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	xorx_d2i_PKCS8, .-xorx_d2i_PKCS8
	.type	xorx_key_adjust, @function
xorx_key_adjust:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	xorx_key_adjust, .-xorx_key_adjust
	.section	.rodata
.LC59:
	.string	"PrivateKeyInfo"
	.section	.data.rel.local,"aw"
	.align 32
	.type	PrivateKeyInfo_xorhmacsig_desc, @object
	.size	PrivateKeyInfo_xorhmacsig_desc, 96
PrivateKeyInfo_xorhmacsig_desc:
	.quad	.LC16
	.quad	xor_xorhmacsig_keymgmt_functions
	.quad	.LC59
	.long	0
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	xorx_d2i_PKCS8
	.quad	0
	.quad	0
	.quad	xorx_key_adjust
	.quad	xor_freekey
	.text
	.type	PrivateKeyInfo_der2xorhmacsig_newctx, @function
PrivateKeyInfo_der2xorhmacsig_newctx:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC16(%rip), %rdx
	leaq	PrivateKeyInfo_xorhmacsig_desc(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	PrivateKeyInfo_der2xorhmacsig_newctx, .-PrivateKeyInfo_der2xorhmacsig_newctx
	.type	PrivateKeyInfo_der2xorhmacsig_does_selection, @function
PrivateKeyInfo_der2xorhmacsig_does_selection:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_xorhmacsig_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	PrivateKeyInfo_der2xorhmacsig_does_selection, .-PrivateKeyInfo_der2xorhmacsig_does_selection
	.section	.data.rel.ro.local
	.align 32
	.type	xor_PrivateKeyInfo_der_to_xorhmacsig_decoder_functions, @object
	.size	xor_PrivateKeyInfo_der_to_xorhmacsig_decoder_functions, 96
xor_PrivateKeyInfo_der_to_xorhmacsig_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2xorhmacsig_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2xorhmacsig_does_selection
	.long	11
	.zero	4
	.quad	xor_der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC60:
	.string	"SubjectPublicKeyInfo"
	.section	.data.rel.local
	.align 32
	.type	SubjectPublicKeyInfo_xorhmacsig_desc, @object
	.size	SubjectPublicKeyInfo_xorhmacsig_desc, 96
SubjectPublicKeyInfo_xorhmacsig_desc:
	.quad	.LC16
	.quad	xor_xorhmacsig_keymgmt_functions
	.quad	.LC60
	.long	0
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	xor_d2i_PUBKEY
	.quad	0
	.quad	xorx_key_adjust
	.quad	xor_freekey
	.text
	.type	SubjectPublicKeyInfo_der2xorhmacsig_newctx, @function
SubjectPublicKeyInfo_der2xorhmacsig_newctx:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC16(%rip), %rdx
	leaq	SubjectPublicKeyInfo_xorhmacsig_desc(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	SubjectPublicKeyInfo_der2xorhmacsig_newctx, .-SubjectPublicKeyInfo_der2xorhmacsig_newctx
	.type	SubjectPublicKeyInfo_der2xorhmacsig_does_selection, @function
SubjectPublicKeyInfo_der2xorhmacsig_does_selection:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_xorhmacsig_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	SubjectPublicKeyInfo_der2xorhmacsig_does_selection, .-SubjectPublicKeyInfo_der2xorhmacsig_does_selection
	.section	.data.rel.ro.local
	.align 32
	.type	xor_SubjectPublicKeyInfo_der_to_xorhmacsig_decoder_functions, @object
	.size	xor_SubjectPublicKeyInfo_der_to_xorhmacsig_decoder_functions, 96
xor_SubjectPublicKeyInfo_der_to_xorhmacsig_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2xorhmacsig_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2xorhmacsig_does_selection
	.long	11
	.zero	4
	.quad	xor_der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.local
	.align 32
	.type	PrivateKeyInfo_xorhmacsha2sig_desc, @object
	.size	PrivateKeyInfo_xorhmacsha2sig_desc, 96
PrivateKeyInfo_xorhmacsha2sig_desc:
	.quad	.LC22
	.quad	xor_xorhmacsha2sig_keymgmt_functions
	.quad	.LC59
	.long	0
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	xorx_d2i_PKCS8
	.quad	0
	.quad	0
	.quad	xorx_key_adjust
	.quad	xor_freekey
	.text
	.type	PrivateKeyInfo_der2xorhmacsha2sig_newctx, @function
PrivateKeyInfo_der2xorhmacsha2sig_newctx:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC22(%rip), %rdx
	leaq	PrivateKeyInfo_xorhmacsha2sig_desc(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	PrivateKeyInfo_der2xorhmacsha2sig_newctx, .-PrivateKeyInfo_der2xorhmacsha2sig_newctx
	.type	PrivateKeyInfo_der2xorhmacsha2sig_does_selection, @function
PrivateKeyInfo_der2xorhmacsha2sig_does_selection:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_xorhmacsha2sig_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	PrivateKeyInfo_der2xorhmacsha2sig_does_selection, .-PrivateKeyInfo_der2xorhmacsha2sig_does_selection
	.section	.data.rel.ro.local
	.align 32
	.type	xor_PrivateKeyInfo_der_to_xorhmacsha2sig_decoder_functions, @object
	.size	xor_PrivateKeyInfo_der_to_xorhmacsha2sig_decoder_functions, 96
xor_PrivateKeyInfo_der_to_xorhmacsha2sig_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2xorhmacsha2sig_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2xorhmacsha2sig_does_selection
	.long	11
	.zero	4
	.quad	xor_der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.local
	.align 32
	.type	SubjectPublicKeyInfo_xorhmacsha2sig_desc, @object
	.size	SubjectPublicKeyInfo_xorhmacsha2sig_desc, 96
SubjectPublicKeyInfo_xorhmacsha2sig_desc:
	.quad	.LC22
	.quad	xor_xorhmacsha2sig_keymgmt_functions
	.quad	.LC60
	.long	0
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	xor_d2i_PUBKEY
	.quad	0
	.quad	xorx_key_adjust
	.quad	xor_freekey
	.text
	.type	SubjectPublicKeyInfo_der2xorhmacsha2sig_newctx, @function
SubjectPublicKeyInfo_der2xorhmacsha2sig_newctx:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC22(%rip), %rdx
	leaq	SubjectPublicKeyInfo_xorhmacsha2sig_desc(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	SubjectPublicKeyInfo_der2xorhmacsha2sig_newctx, .-SubjectPublicKeyInfo_der2xorhmacsha2sig_newctx
	.type	SubjectPublicKeyInfo_der2xorhmacsha2sig_does_selection, @function
SubjectPublicKeyInfo_der2xorhmacsha2sig_does_selection:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_xorhmacsha2sig_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	SubjectPublicKeyInfo_der2xorhmacsha2sig_does_selection, .-SubjectPublicKeyInfo_der2xorhmacsha2sig_does_selection
	.section	.data.rel.ro.local
	.align 32
	.type	xor_SubjectPublicKeyInfo_der_to_xorhmacsha2sig_decoder_functions, @object
	.size	xor_SubjectPublicKeyInfo_der_to_xorhmacsha2sig_decoder_functions, 96
xor_SubjectPublicKeyInfo_der_to_xorhmacsha2sig_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2xorhmacsha2sig_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2xorhmacsha2sig_does_selection
	.long	11
	.zero	4
	.quad	xor_der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
.LC61:
	.string	"provider=tls-provider,fips=yes,input=der,structure=PrivateKeyInfo"
	.align 8
.LC62:
	.string	"provider=tls-provider,fips=yes,input=der,structure=SubjectPublicKeyInfo"
	.section	.data.rel.ro.local
	.align 32
	.type	tls_prov_decoder, @object
	.size	tls_prov_decoder, 160
tls_prov_decoder:
	.quad	.LC16
	.quad	.LC61
	.quad	xor_PrivateKeyInfo_der_to_xorhmacsig_decoder_functions
	.zero	8
	.quad	.LC16
	.quad	.LC62
	.quad	xor_SubjectPublicKeyInfo_der_to_xorhmacsig_decoder_functions
	.zero	8
	.quad	.LC22
	.quad	.LC61
	.quad	xor_PrivateKeyInfo_der_to_xorhmacsha2sig_decoder_functions
	.zero	8
	.quad	.LC22
	.quad	.LC62
	.quad	xor_SubjectPublicKeyInfo_der_to_xorhmacsha2sig_decoder_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	xor_get_aid, @function
xor_get_aid:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	X509_ALGOR_new@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_ALGOR@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	xor_get_aid, .-xor_get_aid
	.type	xor_sig_newctx, @function
xor_sig_newctx:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC30(%rip), %rax
	movl	$2655, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L551
	movl	$0, %eax
	jmp	.L552
.L551:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	cmpq	$0, -32(%rbp)
	je	.L553
	leaq	.LC30(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2661, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L553
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2662, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2664, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L553:
	movq	-8(%rbp), %rax
.L552:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	xor_sig_newctx, .-xor_sig_newctx
	.section	.rodata
.LC63:
	.string	"%s could not be fetched"
	.text
	.type	xor_sig_setup_md, @function
xor_sig_setup_md:
.LFB647:
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
	cmpq	$0, -40(%rbp)
	jne	.L555
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.L555:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L556
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	testl	%eax, %eax
	jne	.L557
.L556:
	cmpq	$0, -8(%rbp)
	jne	.L558
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2681, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC63(%rip), %rdx
	movq	%rax, %rcx
	movl	$1, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L558:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L559
.L557:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC30(%rip), %rcx
	movl	$2692, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$80, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_get_aid
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L560
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L559
.L560:
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-24(%rbp), %rax
	leaq	25(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
	movl	$1, %eax
.L559:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	xor_sig_setup_md, .-xor_sig_setup_md
	.type	xor_sig_signverify_init, @function
xor_sig_signverify_init:
.LFB648:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L562
	cmpq	$0, -32(%rbp)
	jne	.L563
.L562:
	movl	$0, %eax
	jmp	.L564
.L563:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	xor_freekey
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	xor_key_up_ref
	testl	%eax, %eax
	jne	.L565
	movl	$0, %eax
	jmp	.L564
.L565:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 112(%rax)
	cmpl	$16, -36(%rbp)
	jne	.L566
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L567
.L566:
	cmpl	$32, -36(%rbp)
	jne	.L568
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L568
.L567:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2720, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$3, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L564
.L568:
	movl	$1, %eax
.L564:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	xor_sig_signverify_init, .-xor_sig_signverify_init
	.type	xor_sig_sign_init, @function
xor_sig_sign_init:
.LFB649:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xor_sig_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	xor_sig_sign_init, .-xor_sig_sign_init
	.type	xor_sig_verify_init, @function
xor_sig_verify_init:
.LFB650:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xor_sig_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	xor_sig_verify_init, .-xor_sig_verify_init
	.section	.rodata
.LC64:
	.string	"sha1"
.LC65:
	.string	"HMAC"
	.text
	.type	xor_sig_sign, @function
xor_sig_sign:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$64, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L574
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L575
.L574:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2749, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$10, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-4(%rbp), %eax
	jmp	.L581
.L575:
	cmpq	$0, -64(%rbp)
	jne	.L577
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L581
.L577:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L578
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2758, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$11, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-4(%rbp), %eax
	jmp	.L581
.L578:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC65(%rip), %rsi
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	pushq	$64
	pushq	-64(%rbp)
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	pushq	$32
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_Q_mac@PLT
	addq	$48, %rsp
	testq	%rax, %rax
	jne	.L579
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2769, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$12, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L580
.L579:
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
.L580:
	movl	-4(%rbp), %eax
.L581:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	xor_sig_sign, .-xor_sig_sign
	.type	xor_sig_verify, @function
xor_sig_verify:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L583
	cmpq	$0, -128(%rbp)
	je	.L583
	cmpq	$0, -144(%rbp)
	jne	.L584
.L583:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2791, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$13, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L591
.L584:
	movl	$0, -4(%rbp)
	jmp	.L586
.L587:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	32(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	private_constant(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	xorl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L586:
	cmpl	$31, -4(%rbp)
	jle	.L587
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC64(%rip), %rdx
	leaq	.LC65(%rip), %rsi
	leaq	-104(%rbp), %rcx
	pushq	%rcx
	pushq	$64
	leaq	-96(%rbp), %rcx
	pushq	%rcx
	pushq	-152(%rbp)
	pushq	-144(%rbp)
	pushq	$32
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_Q_mac@PLT
	addq	$48, %rsp
	testq	%rax, %rax
	jne	.L588
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2807, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$14, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L591
.L588:
	movq	-104(%rbp), %rax
	cmpq	%rax, -136(%rbp)
	jne	.L589
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L590
.L589:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$2813, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$14, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L591
.L590:
	movl	$1, %eax
.L591:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	xor_sig_verify, .-xor_sig_verify
	.section	.rodata
.LC66:
	.string	"sha256"
	.text
	.type	xor_sig_digest_signverify_init, @function
xor_sig_digest_signverify_init:
.LFB653:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L593
	leaq	.LC66(%rip), %rax
	movq	%rax, -8(%rbp)
.L593:
	movq	-16(%rbp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xor_sig_signverify_init
	testl	%eax, %eax
	jne	.L594
	movl	$0, %eax
	jmp	.L595
.L594:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xor_sig_setup_md
	testl	%eax, %eax
	jne	.L596
	movl	$0, %eax
	jmp	.L595
.L596:
	call	EVP_MD_CTX_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L600
	movq	-16(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L601
	movl	$1, %eax
	jmp	.L595
.L600:
	nop
	jmp	.L598
.L601:
	nop
.L598:
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
	movl	$0, %eax
.L595:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	xor_sig_digest_signverify_init, .-xor_sig_digest_signverify_init
	.type	xor_sig_digest_sign_init, @function
xor_sig_digest_sign_init:
.LFB654:
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
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	xor_sig_digest_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	xor_sig_digest_sign_init, .-xor_sig_digest_sign_init
	.type	xor_sig_digest_verify_init, @function
xor_sig_digest_verify_init:
.LFB655:
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
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	xor_sig_digest_signverify_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	xor_sig_digest_verify_init, .-xor_sig_digest_verify_init
	.type	xor_sig_digest_signverify_update, @function
xor_sig_digest_signverify_update:
.LFB656:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L607
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L608
.L607:
	movl	$0, %eax
	jmp	.L609
.L608:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
.L609:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	xor_sig_digest_signverify_update, .-xor_sig_digest_signverify_update
	.type	xor_sig_digest_sign_final, @function
xor_sig_digest_sign_final:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -84(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L611
	cmpq	$0, -8(%rbp)
	je	.L612
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L613
.L612:
	movl	$0, %eax
	jmp	.L616
.L613:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L615
	movl	$0, %eax
	jmp	.L616
.L615:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
.L611:
	movl	-84(%rbp), %eax
	movl	%eax, %r8d
	leaq	-80(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	xor_sig_sign
.L616:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	xor_sig_digest_sign_final, .-xor_sig_digest_sign_final
	.type	xor_sig_digest_verify_final, @function
xor_sig_digest_verify_final:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -84(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L618
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L619
.L618:
	movl	$0, %eax
	jmp	.L622
.L619:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L621
	movl	$0, %eax
	jmp	.L622
.L621:
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	leaq	-80(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	xor_sig_verify
.L622:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	xor_sig_digest_verify_final, .-xor_sig_digest_verify_final
	.type	xor_sig_freectx, @function
xor_sig_freectx:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC30(%rip), %rcx
	movl	$2921, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	xor_freekey
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC30(%rip), %rcx
	movl	$2929, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC30(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2930, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	xor_sig_freectx, .-xor_sig_freectx
	.type	xor_sig_dupctx, @function
xor_sig_dupctx:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC30(%rip), %rax
	movl	$2938, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L625
	movl	$0, %eax
	jmp	.L626
.L625:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rdx
	movq	%rdx, 112(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L627
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	xor_key_up_ref
	testl	%eax, %eax
	je	.L632
.L627:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L629
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	je	.L633
.L629:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L630
	call	EVP_MD_CTX_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L634
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L634
.L630:
	movq	-32(%rbp), %rax
	jmp	.L626
.L632:
	nop
	jmp	.L628
.L633:
	nop
	jmp	.L628
.L634:
	nop
.L628:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	xor_sig_freectx
	movl	$0, %eax
.L626:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	xor_sig_dupctx, .-xor_sig_dupctx
	.section	.rodata
.LC67:
	.string	"algorithm-id"
.LC68:
	.string	"digest"
	.text
	.type	xor_sig_get_ctx_params, @function
xor_sig_get_ctx_params:
.LFB661:
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
	cmpq	$0, -8(%rbp)
	je	.L636
	cmpq	$0, -32(%rbp)
	jne	.L637
.L636:
	movl	$0, %eax
	jmp	.L638
.L637:
	leaq	.LC67(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L639
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$80, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xor_get_aid
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
.L639:
	cmpq	$0, -16(%rbp)
	je	.L640
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L640
	movl	$0, %eax
	jmp	.L638
.L640:
	leaq	.LC68(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L641
	movq	-8(%rbp), %rax
	leaq	25(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L641
	movl	$0, %eax
	jmp	.L638
.L641:
	movl	$1, %eax
.L638:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	xor_sig_get_ctx_params, .-xor_sig_get_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 120
known_gettable_ctx_params:
	.quad	.LC67
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC68
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	xor_sig_gettable_ctx_params, @function
xor_sig_gettable_ctx_params:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	xor_sig_gettable_ctx_params, .-xor_sig_gettable_ctx_params
	.type	xor_sig_set_ctx_params, @function
xor_sig_set_ctx_params:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L645
	cmpq	$0, -384(%rbp)
	jne	.L646
.L645:
	movl	$0, %eax
	jmp	.L647
.L646:
	leaq	.LC68(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L648
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L648
	movl	$0, %eax
	jmp	.L647
.L648:
	cmpq	$0, -16(%rbp)
	je	.L649
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movw	$0, -320(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC42(%rip), %rdx
	movq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L650
	movl	$0, %eax
	jmp	.L647
.L650:
	cmpq	$0, -24(%rbp)
	je	.L652
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L652
	movl	$0, %eax
	jmp	.L647
.L652:
	leaq	-304(%rbp), %rdx
	leaq	-368(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xor_sig_setup_md
	testl	%eax, %eax
	jne	.L649
	movl	$0, %eax
	jmp	.L647
.L649:
	movl	$1, %eax
.L647:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	xor_sig_set_ctx_params, .-xor_sig_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params, @object
	.size	known_settable_ctx_params, 120
known_settable_ctx_params:
	.quad	.LC68
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC42
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	xor_sig_settable_ctx_params, @function
xor_sig_settable_ctx_params:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	xor_sig_settable_ctx_params, .-xor_sig_settable_ctx_params
	.type	xor_sig_get_ctx_md_params, @function
xor_sig_get_ctx_md_params:
.LFB665:
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
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L657
	movl	$0, %eax
	jmp	.L658
.L657:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_params@PLT
.L658:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	xor_sig_get_ctx_md_params, .-xor_sig_get_ctx_md_params
	.type	xor_sig_gettable_ctx_md_params, @function
xor_sig_gettable_ctx_md_params:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L660
	movl	$0, %eax
	jmp	.L661
.L660:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_gettable_ctx_params@PLT
.L661:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	xor_sig_gettable_ctx_md_params, .-xor_sig_gettable_ctx_md_params
	.type	xor_sig_set_ctx_md_params, @function
xor_sig_set_ctx_md_params:
.LFB667:
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
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L663
	movl	$0, %eax
	jmp	.L664
.L663:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_params@PLT
.L664:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	xor_sig_set_ctx_md_params, .-xor_sig_set_ctx_md_params
	.type	xor_sig_settable_ctx_md_params, @function
xor_sig_settable_ctx_md_params:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L666
	movl	$0, %eax
	jmp	.L667
.L666:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_settable_ctx_params@PLT
.L667:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	xor_sig_settable_ctx_md_params, .-xor_sig_settable_ctx_md_params
	.section	.data.rel.ro.local
	.align 32
	.type	xor_signature_functions, @object
	.size	xor_signature_functions, 352
xor_signature_functions:
	.long	1
	.zero	4
	.quad	xor_sig_newctx
	.long	2
	.zero	4
	.quad	xor_sig_sign_init
	.long	3
	.zero	4
	.quad	xor_sig_sign
	.long	4
	.zero	4
	.quad	xor_sig_verify_init
	.long	5
	.zero	4
	.quad	xor_sig_verify
	.long	8
	.zero	4
	.quad	xor_sig_digest_sign_init
	.long	9
	.zero	4
	.quad	xor_sig_digest_signverify_update
	.long	10
	.zero	4
	.quad	xor_sig_digest_sign_final
	.long	12
	.zero	4
	.quad	xor_sig_digest_verify_init
	.long	13
	.zero	4
	.quad	xor_sig_digest_signverify_update
	.long	14
	.zero	4
	.quad	xor_sig_digest_verify_final
	.long	16
	.zero	4
	.quad	xor_sig_freectx
	.long	17
	.zero	4
	.quad	xor_sig_dupctx
	.long	18
	.zero	4
	.quad	xor_sig_get_ctx_params
	.long	19
	.zero	4
	.quad	xor_sig_gettable_ctx_params
	.long	20
	.zero	4
	.quad	xor_sig_set_ctx_params
	.long	21
	.zero	4
	.quad	xor_sig_settable_ctx_params
	.long	22
	.zero	4
	.quad	xor_sig_get_ctx_md_params
	.long	23
	.zero	4
	.quad	xor_sig_gettable_ctx_md_params
	.long	24
	.zero	4
	.quad	xor_sig_set_ctx_md_params
	.long	25
	.zero	4
	.quad	xor_sig_settable_ctx_md_params
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	tls_prov_signature, @object
	.size	tls_prov_signature, 128
tls_prov_signature:
	.quad	.LC16
	.quad	.LC34
	.quad	xor_signature_functions
	.zero	8
	.quad	.LC22
	.quad	.LC34
	.quad	xor_signature_functions
	.zero	8
	.quad	.LC26
	.quad	.LC34
	.quad	xor_signature_functions
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.text
	.type	tls_prov_query, @function
tls_prov_query:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$21, -12(%rbp)
	je	.L669
	cmpl	$21, -12(%rbp)
	jg	.L670
	cmpl	$20, -12(%rbp)
	je	.L671
	cmpl	$20, -12(%rbp)
	jg	.L670
	cmpl	$14, -12(%rbp)
	je	.L672
	cmpl	$14, -12(%rbp)
	jg	.L670
	cmpl	$12, -12(%rbp)
	je	.L673
	cmpl	$12, -12(%rbp)
	jg	.L670
	cmpl	$10, -12(%rbp)
	je	.L674
	cmpl	$11, -12(%rbp)
	je	.L675
	jmp	.L670
.L674:
	leaq	tls_prov_keymgmt(%rip), %rax
	jmp	.L676
.L675:
	leaq	tls_prov_keyexch(%rip), %rax
	jmp	.L676
.L672:
	leaq	tls_prov_kem(%rip), %rax
	jmp	.L676
.L671:
	leaq	tls_prov_encoder(%rip), %rax
	jmp	.L676
.L669:
	leaq	tls_prov_decoder(%rip), %rax
	jmp	.L676
.L673:
	leaq	tls_prov_signature(%rip), %rax
	jmp	.L676
.L670:
	movl	$0, %eax
.L676:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	tls_prov_query, .-tls_prov_query
	.type	tls_prov_teardown, @function
tls_prov_teardown:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L678
.L679:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dummy_group_names(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC30(%rip), %rcx
	movl	$3168, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dummy_group_names(%rip), %rax
	movq	$0, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L678:
	cmpl	$49, -4(%rbp)
	jle	.L679
	leaq	.LC30(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3171, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	tls_prov_teardown, .-tls_prov_teardown
	.section	.data.rel.ro.local
	.align 32
	.type	tls_prov_dispatch_table, @object
	.size	tls_prov_dispatch_table, 64
tls_prov_dispatch_table:
	.long	1024
	.zero	4
	.quad	tls_prov_teardown
	.long	1027
	.zero	4
	.quad	tls_prov_query
	.long	1030
	.zero	4
	.quad	tls_prov_get_capabilities
	.long	0
	.zero	4
	.quad	0
	.text
	.type	randomize_tls_alg_id, @function
randomize_tls_alg_id:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L681:
	leaq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L682
	movl	$0, %eax
	jmp	.L687
.L682:
	movl	-8(%rbp), %ecx
	movl	%ecx, %eax
	imulq	$1340867839, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$205, %eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$65024, %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L684
.L686:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mem.2(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L685
	jmp	.L681
.L685:
	addl	$1, -4(%rbp)
.L684:
	movl	in_mem.1(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L686
	movl	in_mem.1(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, in_mem.1(%rip)
	movl	-8(%rbp), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	mem.2(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-8(%rbp), %eax
.L687:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	randomize_tls_alg_id, .-randomize_tls_alg_id
	.section	.rodata
.LC69:
	.string	""
	.text
	.globl	tls_provider_init
	.type	tls_provider_init, @function
tls_provider_init:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_new_from_dispatch@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xor_newprovctx
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L702
	cmpq	$0, -32(%rbp)
	je	.L702
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	randomize_tls_alg_id
	movl	%eax, xor_group(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	randomize_tls_alg_id
	movl	%eax, xor_kemgroup(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	randomize_tls_alg_id
	movl	%eax, xor_sigalg(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	randomize_tls_alg_id
	movl	%eax, xor_sigalg_hash(%rip)
	jmp	.L692
.L696:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$11, %eax
	je	.L693
	cmpl	$12, %eax
	jne	.L703
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_obj_create
	movq	%rax, -8(%rbp)
	jmp	.L695
.L693:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_core_obj_add_sigid
	movq	%rax, -16(%rbp)
	jmp	.L695
.L703:
	nop
.L695:
	addq	$16, -48(%rbp)
.L692:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L696
	leaq	.LC16(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L697
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$3261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$6, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L691
.L697:
	leaq	.LC19(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L698
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$3266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$6, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L691
.L698:
	leaq	.LC22(%rip), %rdx
	leaq	.LC25(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L699
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$3270, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$6, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L691
.L699:
	leaq	.LC25(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC25(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L700
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$3275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$6, %esi
	movl	$128, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L691
.L700:
	movq	-56(%rbp), %rax
	leaq	tls_prov_dispatch_table(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L701
.L702:
	nop
.L691:
	leaq	.LC30(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$3283, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	$0, %eax
.L701:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	tls_provider_init, .-tls_provider_init
	.section	.data.rel.local
	.align 32
	.type	settable.31, @object
	.size	settable.31, 80
settable.31:
	.quad	.LC38
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.30, @object
	.size	__func__.30, 11
__func__.30:
	.string	"xor_key_op"
	.align 8
	.type	__func__.29, @object
	.size	__func__.29, 14
__func__.29:
	.string	"key_to_p8info"
	.align 16
	.type	__func__.28, @object
	.size	__func__.28, 16
__func__.28:
	.string	"p8info_to_encp8"
	.align 16
	.type	__func__.27, @object
	.size	__func__.27, 19
__func__.27:
	.string	"xorx_key_to_pubkey"
	.align 16
	.type	__func__.26, @object
	.size	__func__.26, 20
__func__.26:
	.string	"prepare_xorx_params"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 21
__func__.25:
	.string	"xorx_spki_pub_to_der"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 21
__func__.24:
	.string	"xorx_pki_priv_to_der"
	.section	.data.rel.ro.local
	.align 32
	.type	settables.23, @object
	.size	settables.23, 120
settables.23:
	.quad	.LC41
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC42
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.22, @object
	.size	__func__.22, 15
__func__.22:
	.string	"key2any_encode"
	.align 32
	.type	__func__.21, @object
	.size	__func__.21, 49
__func__.21:
	.string	"xorhmacsig_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.20, @object
	.size	__func__.20, 49
__func__.20:
	.string	"xorhmacsig_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.19, @object
	.size	__func__.19, 40
__func__.19:
	.string	"xorhmacsig_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.18, @object
	.size	__func__.18, 40
__func__.18:
	.string	"xorhmacsig_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.17, @object
	.size	__func__.17, 46
__func__.17:
	.string	"xorhmacsig_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 46
__func__.16:
	.string	"xorhmacsig_to_SubjectPublicKeyInfo_pem_encode"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 53
__func__.15:
	.string	"xorhmacsha2sig_to_EncryptedPrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.14, @object
	.size	__func__.14, 53
__func__.14:
	.string	"xorhmacsha2sig_to_EncryptedPrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 44
__func__.13:
	.string	"xorhmacsha2sig_to_PrivateKeyInfo_der_encode"
	.align 32
	.type	__func__.12, @object
	.size	__func__.12, 44
__func__.12:
	.string	"xorhmacsha2sig_to_PrivateKeyInfo_pem_encode"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 50
__func__.11:
	.string	"xorhmacsha2sig_to_SubjectPublicKeyInfo_der_encode"
	.align 32
	.type	__func__.10, @object
	.size	__func__.10, 50
__func__.10:
	.string	"xorhmacsha2sig_to_SubjectPublicKeyInfo_pem_encode"
.LC70:
	.string	"X509_PUBKEY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.9, @object
	.size	local_it.9, 56
local_it.9:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_PUBKEY_INTERNAL_seq_tt
	.quad	2
	.quad	0
	.quad	40
	.quad	.LC70
	.section	.rodata
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 19
__func__.8:
	.string	"xor_der2key_decode"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 15
__func__.7:
	.string	"xor_sig_newctx"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"xor_sig_setup_md"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 24
__func__.5:
	.string	"xor_sig_signverify_init"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"xor_sig_sign"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"xor_sig_verify"
	.local	mem.2
	.comm	mem.2,40,32
	.local	in_mem.1
	.comm	in_mem.1,4,4
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"tls_provider_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
