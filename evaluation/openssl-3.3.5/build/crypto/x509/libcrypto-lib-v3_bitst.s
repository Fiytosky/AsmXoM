	.file	"v3_bitst.c"
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
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.section	.rodata
.LC0:
	.string	"SSL Client"
.LC1:
	.string	"client"
.LC2:
	.string	"SSL Server"
.LC3:
	.string	"server"
.LC4:
	.string	"S/MIME"
.LC5:
	.string	"email"
.LC6:
	.string	"Object Signing"
.LC7:
	.string	"objsign"
.LC8:
	.string	"Unused"
.LC9:
	.string	"reserved"
.LC10:
	.string	"SSL CA"
.LC11:
	.string	"sslCA"
.LC12:
	.string	"S/MIME CA"
.LC13:
	.string	"emailCA"
.LC14:
	.string	"Object Signing CA"
.LC15:
	.string	"objCA"
	.section	.data.rel.local,"aw"
	.align 32
	.type	ns_cert_type_table, @object
	.size	ns_cert_type_table, 216
ns_cert_type_table:
	.long	0
	.zero	4
	.quad	.LC0
	.quad	.LC1
	.long	1
	.zero	4
	.quad	.LC2
	.quad	.LC3
	.long	2
	.zero	4
	.quad	.LC4
	.quad	.LC5
	.long	3
	.zero	4
	.quad	.LC6
	.quad	.LC7
	.long	4
	.zero	4
	.quad	.LC8
	.quad	.LC9
	.long	5
	.zero	4
	.quad	.LC10
	.quad	.LC11
	.long	6
	.zero	4
	.quad	.LC12
	.quad	.LC13
	.long	7
	.zero	4
	.quad	.LC14
	.quad	.LC15
	.long	-1
	.zero	4
	.quad	0
	.quad	0
	.section	.rodata
.LC16:
	.string	"Digital Signature"
.LC17:
	.string	"digitalSignature"
.LC18:
	.string	"Non Repudiation"
.LC19:
	.string	"nonRepudiation"
.LC20:
	.string	"Key Encipherment"
.LC21:
	.string	"keyEncipherment"
.LC22:
	.string	"Data Encipherment"
.LC23:
	.string	"dataEncipherment"
.LC24:
	.string	"Key Agreement"
.LC25:
	.string	"keyAgreement"
.LC26:
	.string	"Certificate Sign"
.LC27:
	.string	"keyCertSign"
.LC28:
	.string	"CRL Sign"
.LC29:
	.string	"cRLSign"
.LC30:
	.string	"Encipher Only"
.LC31:
	.string	"encipherOnly"
.LC32:
	.string	"Decipher Only"
.LC33:
	.string	"decipherOnly"
	.section	.data.rel.local
	.align 32
	.type	key_usage_type_table, @object
	.size	key_usage_type_table, 240
key_usage_type_table:
	.long	0
	.zero	4
	.quad	.LC16
	.quad	.LC17
	.long	1
	.zero	4
	.quad	.LC18
	.quad	.LC19
	.long	2
	.zero	4
	.quad	.LC20
	.quad	.LC21
	.long	3
	.zero	4
	.quad	.LC22
	.quad	.LC23
	.long	4
	.zero	4
	.quad	.LC24
	.quad	.LC25
	.long	5
	.zero	4
	.quad	.LC26
	.quad	.LC27
	.long	6
	.zero	4
	.quad	.LC28
	.quad	.LC29
	.long	7
	.zero	4
	.quad	.LC30
	.quad	.LC31
	.long	8
	.zero	4
	.quad	.LC32
	.quad	.LC33
	.long	-1
	.zero	4
	.quad	0
	.quad	0
	.globl	ossl_v3_nscert
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_nscert, @object
	.size	ossl_v3_nscert, 104
ossl_v3_nscert:
	.long	71
	.long	0
	.quad	ASN1_BIT_STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_ASN1_BIT_STRING
	.quad	v2i_ASN1_BIT_STRING
	.quad	0
	.quad	0
	.quad	ns_cert_type_table
	.globl	ossl_v3_key_usage
	.align 32
	.type	ossl_v3_key_usage, @object
	.size	ossl_v3_key_usage, 104
ossl_v3_key_usage:
	.long	83
	.long	0
	.quad	ASN1_BIT_STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_ASN1_BIT_STRING
	.quad	v2i_ASN1_BIT_STRING
	.quad	0
	.quad	0
	.quad	key_usage_type_table
	.text
	.globl	i2v_ASN1_BIT_STRING
	.type	i2v_ASN1_BIT_STRING, @function
i2v_ASN1_BIT_STRING:
.LFB617:
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
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L8
.L10:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_get_bit@PLT
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-40(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
.L9:
	addq	$24, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	i2v_ASN1_BIT_STRING, .-i2v_ASN1_BIT_STRING
	.section	.rodata
.LC34:
	.string	"../crypto/x509/v3_bitst.c"
.LC35:
	.string	"%s"
	.text
	.globl	v2i_ASN1_BIT_STRING
	.type	v2i_ASN1_BIT_STRING, @function
v2i_ASN1_BIT_STRING:
.LFB618:
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
	call	ASN1_BIT_STRING_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L14
.L13:
	movl	$0, -4(%rbp)
	jmp	.L15
.L23:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L16
.L21:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L17
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L18
.L17:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set_bit@PLT
	testl	%eax, %eax
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movl	$0, %eax
	jmp	.L14
.L18:
	addq	$24, -16(%rbp)
.L16:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	jmp	.L20
.L24:
	nop
.L20:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rax, %rcx
	movl	$111, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	movl	$0, %eax
	jmp	.L14
.L22:
	addl	$1, -4(%rbp)
.L15:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L23
	movq	-24(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	v2i_ASN1_BIT_STRING, .-v2i_ASN1_BIT_STRING
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"v2i_ASN1_BIT_STRING"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
