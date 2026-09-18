	.file	"hpke_util.c"
	.text
	.section	.rodata
	.align 8
	.type	LABEL_HPKEV1, @object
	.size	LABEL_HPKEV1, 8
LABEL_HPKEV1:
	.string	"HPKE-v1"
.LC0:
	.string	"EC"
.LC1:
	.string	"P-256"
.LC2:
	.string	"sha256"
.LC3:
	.string	"P-384"
.LC4:
	.string	"sha384"
.LC5:
	.string	"P-521"
.LC6:
	.string	"sha512"
.LC7:
	.string	"X25519"
.LC8:
	.string	"X448"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	hpke_kem_tab, @object
	.size	hpke_kem_tab, 360
hpke_kem_tab:
	.value	16
	.zero	6
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	32
	.quad	65
	.quad	65
	.quad	32
	.byte	-1
	.zero	7
	.value	17
	.zero	6
	.quad	.LC0
	.quad	.LC3
	.quad	.LC4
	.quad	48
	.quad	97
	.quad	97
	.quad	48
	.byte	-1
	.zero	7
	.value	18
	.zero	6
	.quad	.LC0
	.quad	.LC5
	.quad	.LC6
	.quad	64
	.quad	133
	.quad	133
	.quad	66
	.byte	1
	.zero	7
	.value	32
	.zero	6
	.quad	.LC7
	.quad	0
	.quad	.LC2
	.quad	32
	.quad	32
	.quad	32
	.quad	32
	.byte	0
	.zero	7
	.value	33
	.zero	6
	.quad	.LC8
	.quad	0
	.quad	.LC6
	.quad	64
	.quad	56
	.quad	56
	.quad	56
	.byte	0
	.zero	7
	.section	.rodata
.LC9:
	.string	"aes-128-gcm"
.LC10:
	.string	"aes-256-gcm"
.LC11:
	.string	"chacha20-poly1305"
	.section	.data.rel.ro.local
	.align 32
	.type	hpke_aead_tab, @object
	.size	hpke_aead_tab, 160
hpke_aead_tab:
	.value	1
	.zero	6
	.quad	.LC9
	.quad	16
	.quad	16
	.quad	12
	.value	2
	.zero	6
	.quad	.LC10
	.quad	16
	.quad	32
	.quad	12
	.value	3
	.zero	6
	.quad	.LC11
	.quad	16
	.quad	32
	.quad	12
	.value	-1
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	hpke_kdf_tab, @object
	.size	hpke_kdf_tab, 72
hpke_kdf_tab:
	.value	1
	.zero	6
	.quad	.LC2
	.quad	32
	.value	2
	.zero	6
	.quad	.LC4
	.quad	48
	.value	3
	.zero	6
	.quad	.LC6
	.quad	64
	.section	.rodata
.LC12:
	.string	"0x10"
.LC13:
	.string	"16"
.LC14:
	.string	"0x11"
.LC15:
	.string	"17"
.LC16:
	.string	"0x12"
.LC17:
	.string	"18"
.LC18:
	.string	"0x20"
.LC19:
	.string	"32"
.LC20:
	.string	"0x21"
.LC21:
	.string	"33"
	.section	.data.rel.ro.local
	.align 32
	.type	kemstrtab, @object
	.size	kemstrtab, 200
kemstrtab:
	.value	16
	.zero	6
	.quad	.LC1
	.quad	.LC12
	.quad	.LC12
	.quad	.LC13
	.value	17
	.zero	6
	.quad	.LC3
	.quad	.LC14
	.quad	.LC14
	.quad	.LC15
	.value	18
	.zero	6
	.quad	.LC5
	.quad	.LC16
	.quad	.LC16
	.quad	.LC17
	.value	32
	.zero	6
	.quad	.LC7
	.quad	.LC18
	.quad	.LC18
	.quad	.LC19
	.value	33
	.zero	6
	.quad	.LC8
	.quad	.LC20
	.quad	.LC20
	.quad	.LC21
	.section	.rodata
.LC22:
	.string	"hkdf-sha256"
.LC23:
	.string	"0x1"
.LC24:
	.string	"0x01"
.LC25:
	.string	"1"
.LC26:
	.string	"hkdf-sha384"
.LC27:
	.string	"0x2"
.LC28:
	.string	"0x02"
.LC29:
	.string	"2"
.LC30:
	.string	"hkdf-sha512"
.LC31:
	.string	"0x3"
.LC32:
	.string	"0x03"
.LC33:
	.string	"3"
	.section	.data.rel.ro.local
	.align 32
	.type	kdfstrtab, @object
	.size	kdfstrtab, 120
kdfstrtab:
	.value	1
	.zero	6
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.value	2
	.zero	6
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.value	3
	.zero	6
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.section	.rodata
.LC34:
	.string	"exporter"
.LC35:
	.string	"ff"
.LC36:
	.string	"0xff"
.LC37:
	.string	"255"
	.section	.data.rel.ro.local
	.align 32
	.type	aeadstrtab, @object
	.size	aeadstrtab, 160
aeadstrtab:
	.value	1
	.zero	6
	.quad	.LC9
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.value	2
	.zero	6
	.quad	.LC10
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.value	3
	.zero	6
	.quad	.LC11
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.value	-1
	.zero	6
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.section	.rodata
.LC38:
	.string	"../crypto/hpke/hpke_util.c"
	.text
	.globl	ossl_HPKE_KEM_INFO_find_curve
	.type	ossl_HPKE_KEM_INFO_find_curve, @function
ossl_HPKE_KEM_INFO_find_curve:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$5, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L6:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+hpke_kem_tab(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+hpke_kem_tab(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
.L3:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L4
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	hpke_kem_tab(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L5
.L4:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L6
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_HPKE_KEM_INFO_find_curve, .-ossl_HPKE_KEM_INFO_find_curve
	.globl	ossl_HPKE_KEM_INFO_find_id
	.type	ossl_HPKE_KEM_INFO_find_id, @function
ossl_HPKE_KEM_INFO_find_id:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	movl	$5, -8(%rbp)
	cmpw	$0, -20(%rbp)
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	$0, -4(%rbp)
	jmp	.L10
.L12:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	hpke_kem_tab(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cmpw	%ax, -20(%rbp)
	jne	.L11
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	hpke_kem_tab(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L9
.L11:
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_HPKE_KEM_INFO_find_id, .-ossl_HPKE_KEM_INFO_find_id
	.globl	ossl_HPKE_KEM_INFO_find_random
	.type	ossl_HPKE_KEM_INFO_find_random, @function
ossl_HPKE_KEM_INFO_find_random:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	movq	$5, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	leaq	-20(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_rand_uniform_uint32@PLT
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	je	.L14
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	hpke_kem_tab(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L16
.L14:
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_HPKE_KEM_INFO_find_random, .-ossl_HPKE_KEM_INFO_find_random
	.globl	ossl_HPKE_KDF_INFO_find_id
	.type	ossl_HPKE_KDF_INFO_find_id, @function
ossl_HPKE_KDF_INFO_find_id:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	movl	$3, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L18
.L21:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	hpke_kdf_tab(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cmpw	%ax, -20(%rbp)
	jne	.L19
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	hpke_kdf_tab(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L20
.L19:
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$232, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_HPKE_KDF_INFO_find_id, .-ossl_HPKE_KDF_INFO_find_id
	.globl	ossl_HPKE_KDF_INFO_find_random
	.type	ossl_HPKE_KDF_INFO_find_random, @function
ossl_HPKE_KDF_INFO_find_random:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	movq	$3, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	leaq	-20(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_rand_uniform_uint32@PLT
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	je	.L23
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	hpke_kdf_tab(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L25
.L23:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_HPKE_KDF_INFO_find_random, .-ossl_HPKE_KDF_INFO_find_random
	.globl	ossl_HPKE_AEAD_INFO_find_id
	.type	ossl_HPKE_AEAD_INFO_find_id, @function
ossl_HPKE_AEAD_INFO_find_id:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	movl	$4, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L27
.L30:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	hpke_aead_tab(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cmpw	%ax, -20(%rbp)
	jne	.L28
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	hpke_aead_tab(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L29
.L28:
	addl	$1, -4(%rbp)
.L27:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$232, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$231, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_HPKE_AEAD_INFO_find_id, .-ossl_HPKE_AEAD_INFO_find_id
	.globl	ossl_HPKE_AEAD_INFO_find_random
	.type	ossl_HPKE_AEAD_INFO_find_random, @function
ossl_HPKE_AEAD_INFO_find_random:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	movq	$3, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	leaq	-20(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_rand_uniform_uint32@PLT
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	je	.L32
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	hpke_aead_tab(%rip), %rdx
	addq	%rdx, %rax
	jmp	.L34
.L32:
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_HPKE_AEAD_INFO_find_random, .-ossl_HPKE_AEAD_INFO_find_random
	.section	.rodata
.LC39:
	.string	"mode"
.LC40:
	.string	"salt"
.LC41:
	.string	"key"
.LC42:
	.string	"info"
	.text
	.type	kdf_derive, @function
kdf_derive:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movl	%ecx, -268(%rbp)
	movq	%r8, -280(%rbp)
	movq	%r9, -288(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-336(%rbp), %rax
	leaq	-268(%rbp), %rdx
	leaq	.LC39(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, -280(%rbp)
	je	.L36
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-336(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	-280(%rbp), %rdx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
.L36:
	cmpq	$0, 16(%rbp)
	je	.L37
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-336(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
.L37:
	cmpq	$0, 32(%rbp)
	je	.L38
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-336(%rbp), %rax
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
.L38:
	movq	-24(%rbp), %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-240(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$269, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$164, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L39:
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	kdf_derive, .-kdf_derive
	.globl	ossl_hpke_kdf_extract
	.type	ossl_hpke_kdf_extract, @function
ossl_hpke_kdf_extract:
.LFB413:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	kdf_derive
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_hpke_kdf_extract, .-ossl_hpke_kdf_extract
	.globl	ossl_hpke_kdf_expand
	.type	ossl_hpke_kdf_expand, @function
ossl_hpke_kdf_expand:
.LFB414:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	16(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$2, %ecx
	movq	%rax, %rdi
	call	kdf_derive
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_hpke_kdf_expand, .-ossl_hpke_kdf_expand
	.globl	ossl_hpke_labeled_extract
	.type	ossl_hpke_labeled_extract, @function
ossl_hpke_labeled_extract:
.LFB415:
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
	movq	%r9, -160(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$7, -16(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	24(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC38(%rip), %rcx
	movl	$316, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L51
.L46:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	je	.L48
	movq	-16(%rbp), %rdx
	leaq	LABEL_HPKEV1(%rip), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L48
	movq	-24(%rbp), %rdx
	movq	-160(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L48
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L48
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L48
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L49
.L48:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$329, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L50
.L49:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %r9
	movq	-152(%rbp), %r8
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_kdf_extract@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L50:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	.LC38(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$338, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_hpke_labeled_extract, .-ossl_hpke_labeled_extract
	.globl	ossl_hpke_labeled_expand
	.type	ossl_hpke_labeled_expand, @function
ossl_hpke_labeled_expand:
.LFB416:
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
	movq	%r9, -160(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$7, -16(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	-136(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	24(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rdx, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC38(%rip), %rcx
	movl	$366, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L58
.L53:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	je	.L55
	movq	-136(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L55
	movq	-16(%rbp), %rdx
	leaq	LABEL_HPKEV1(%rip), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L55
	movq	-24(%rbp), %rdx
	movq	-160(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L55
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L55
	movq	-32(%rbp), %rdx
	movq	32(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L55
	movq	48(%rbp), %rdx
	movq	40(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L55
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L56
.L55:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L56:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %r9
	movq	-152(%rbp), %r8
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_hpke_kdf_expand@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L57:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	leaq	.LC38(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$388, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ossl_hpke_labeled_expand, .-ossl_hpke_labeled_expand
	.section	.rodata
.LC43:
	.string	"digest"
.LC44:
	.string	"properties"
	.text
	.globl	ossl_kdf_ctx_create
	.type	ossl_kdf_ctx_create, @function
ossl_kdf_ctx_create:
.LFB417:
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
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	$0, -32(%rbp)
	movq	-192(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$401, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524557, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -32(%rbp)
	je	.L62
	cmpq	$0, -176(%rbp)
	je	.L62
	leaq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -176(%rbp)
	je	.L63
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	-176(%rbp), %rdx
	leaq	.LC43(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
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
.L63:
	cmpq	$0, -192(%rbp)
	je	.L64
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rax
	movq	-192(%rbp), %rdx
	leaq	.LC44(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
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
.L64:
	movq	-24(%rbp), %rbx
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
	leaq	-160(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	jg	.L62
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	$0, %eax
	jmp	.L61
.L62:
	movq	-32(%rbp), %rax
.L61:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_kdf_ctx_create, .-ossl_kdf_ctx_create
	.type	synonyms_name2id, @function
synonyms_name2id:
.LFB418:
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
	jmp	.L67
.L72:
	movq	$0, -16(%rbp)
	jmp	.L68
.L71:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rdx,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L69
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	jmp	.L70
.L69:
	addq	$1, -16(%rbp)
.L68:
	cmpq	$3, -16(%rbp)
	jbe	.L71
	addq	$1, -8(%rbp)
.L67:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L72
	movl	$0, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	synonyms_name2id, .-synonyms_name2id
	.globl	ossl_hpke_str2suite
	.type	ossl_hpke_str2suite, @function
ossl_hpke_str2suite:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movw	$0, -2(%rbp)
	movw	$0, -4(%rbp)
	movw	$0, -6(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L74
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L74
	cmpq	$0, -80(%rbp)
	jne	.L75
.L74:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$460, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-72(%rbp), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	movq	%rax, -48(%rbp)
	cmpq	$37, -48(%rbp)
	jbe	.L77
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movl	$465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L77:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L78
	movl	$0, %eax
	jmp	.L76
.L78:
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L79
.L81:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L80
	addl	$1, -28(%rbp)
.L80:
	addq	$1, -16(%rbp)
.L79:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L81
	cmpl	$2, -28(%rbp)
	je	.L82
	movl	$0, %eax
	jmp	.L76
.L82:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rsi
	leaq	.LC38(%rip), %rdx
	movq	-72(%rbp), %rax
	movl	$484, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L96
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L85
.L93:
	movq	-16(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L86
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
.L86:
	cmpl	$0, -20(%rbp)
	jne	.L87
	leaq	kemstrtab(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	synonyms_name2id
	movw	%ax, -2(%rbp)
	cmpw	$0, -2(%rbp)
	je	.L97
.L87:
	cmpl	$1, -20(%rbp)
	jne	.L88
	leaq	kdfstrtab(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	synonyms_name2id
	movw	%ax, -4(%rbp)
	cmpw	$0, -4(%rbp)
	je	.L98
.L88:
	cmpl	$2, -20(%rbp)
	jne	.L89
	leaq	aeadstrtab(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	synonyms_name2id
	movw	%ax, -6(%rbp)
	cmpw	$0, -6(%rbp)
	je	.L99
.L89:
	cmpq	$0, -56(%rbp)
	jne	.L90
	movq	$0, -16(%rbp)
	jmp	.L91
.L90:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.L91:
	addl	$1, -20(%rbp)
.L85:
	cmpq	$0, -16(%rbp)
	je	.L92
	cmpl	$2, -20(%rbp)
	jle	.L93
.L92:
	cmpq	$0, -16(%rbp)
	jne	.L100
	cmpl	$3, -20(%rbp)
	jne	.L100
	movq	-80(%rbp), %rax
	movzwl	-2(%rbp), %edx
	movw	%dx, (%rax)
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %edx
	movw	%dx, 2(%rax)
	movq	-80(%rbp), %rax
	movzwl	-6(%rbp), %edx
	movw	%dx, 4(%rax)
	movl	$1, -24(%rbp)
	jmp	.L84
.L96:
	nop
	jmp	.L84
.L97:
	nop
	jmp	.L84
.L98:
	nop
	jmp	.L84
.L99:
	nop
	jmp	.L84
.L100:
	nop
.L84:
	leaq	.LC38(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$526, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-24(%rbp), %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ossl_hpke_str2suite, .-ossl_hpke_str2suite
	.section	.rodata
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 30
__func__.8:
	.string	"ossl_HPKE_KEM_INFO_find_curve"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 27
__func__.7:
	.string	"ossl_HPKE_KEM_INFO_find_id"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 27
__func__.6:
	.string	"ossl_HPKE_KDF_INFO_find_id"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 28
__func__.5:
	.string	"ossl_HPKE_AEAD_INFO_find_id"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 11
__func__.4:
	.string	"kdf_derive"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 26
__func__.3:
	.string	"ossl_hpke_labeled_extract"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"ossl_hpke_labeled_expand"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"ossl_kdf_ctx_create"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"ossl_hpke_str2suite"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
