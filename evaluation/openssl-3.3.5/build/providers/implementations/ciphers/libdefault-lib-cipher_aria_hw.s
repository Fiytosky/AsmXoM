	.file	"cipher_aria_hw.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/cipher_aria_hw.c"
	.text
	.type	cipher_hw_aria_initkey, @function
cipher_hw_aria_initkey:
.LFB402:
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
	movl	64(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L6
	cmpl	$1, -8(%rbp)
	je	.L7
	cmpl	$2, -8(%rbp)
	je	.L7
.L6:
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_aria_set_encrypt_key@PLT
	movl	%eax, -4(%rbp)
	jmp	.L8
.L7:
	movq	-56(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_aria_set_decrypt_key@PLT
	movl	%eax, -4(%rbp)
.L8:
	cmpl	$0, -4(%rbp)
	jns	.L9
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 176(%rax)
	movq	-40(%rbp), %rax
	movq	ossl_aria_encrypt@GOTPCREL(%rip), %rdx
	movq	%rdx, 48(%rax)
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	cipher_hw_aria_initkey, .-cipher_hw_aria_initkey
	.type	cipher_hw_aria_copyctx, @function
cipher_hw_aria_copyctx:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$59, %eax
	movq	%rdx, %rdi
	movq	%rax, %rcx
	rep movsq
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 176(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cipher_hw_aria_copyctx, .-cipher_hw_aria_copyctx
	.section	.data.rel.ro,"aw"
	.align 16
	.type	aria_cbc, @object
	.size	aria_cbc, 24
aria_cbc:
	.quad	cipher_hw_aria_initkey
	.quad	ossl_cipher_hw_chunked_cbc
	.quad	cipher_hw_aria_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aria_cbc
	.type	ossl_prov_cipher_hw_aria_cbc, @function
ossl_prov_cipher_hw_aria_cbc:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aria_cbc(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_prov_cipher_hw_aria_cbc, .-ossl_prov_cipher_hw_aria_cbc
	.section	.data.rel.ro
	.align 16
	.type	aria_ecb, @object
	.size	aria_ecb, 24
aria_ecb:
	.quad	cipher_hw_aria_initkey
	.quad	ossl_cipher_hw_generic_ecb
	.quad	cipher_hw_aria_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aria_ecb
	.type	ossl_prov_cipher_hw_aria_ecb, @function
ossl_prov_cipher_hw_aria_ecb:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aria_ecb(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_prov_cipher_hw_aria_ecb, .-ossl_prov_cipher_hw_aria_ecb
	.section	.data.rel.ro
	.align 16
	.type	aria_ofb128, @object
	.size	aria_ofb128, 24
aria_ofb128:
	.quad	cipher_hw_aria_initkey
	.quad	ossl_cipher_hw_chunked_ofb128
	.quad	cipher_hw_aria_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aria_ofb128
	.type	ossl_prov_cipher_hw_aria_ofb128, @function
ossl_prov_cipher_hw_aria_ofb128:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aria_ofb128(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_prov_cipher_hw_aria_ofb128, .-ossl_prov_cipher_hw_aria_ofb128
	.section	.data.rel.ro
	.align 16
	.type	aria_cfb128, @object
	.size	aria_cfb128, 24
aria_cfb128:
	.quad	cipher_hw_aria_initkey
	.quad	ossl_cipher_hw_chunked_cfb128
	.quad	cipher_hw_aria_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aria_cfb128
	.type	ossl_prov_cipher_hw_aria_cfb128, @function
ossl_prov_cipher_hw_aria_cfb128:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aria_cfb128(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_prov_cipher_hw_aria_cfb128, .-ossl_prov_cipher_hw_aria_cfb128
	.section	.data.rel.ro
	.align 16
	.type	aria_cfb1, @object
	.size	aria_cfb1, 24
aria_cfb1:
	.quad	cipher_hw_aria_initkey
	.quad	ossl_cipher_hw_generic_cfb1
	.quad	cipher_hw_aria_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aria_cfb1
	.type	ossl_prov_cipher_hw_aria_cfb1, @function
ossl_prov_cipher_hw_aria_cfb1:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aria_cfb1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_prov_cipher_hw_aria_cfb1, .-ossl_prov_cipher_hw_aria_cfb1
	.section	.data.rel.ro
	.align 16
	.type	aria_cfb8, @object
	.size	aria_cfb8, 24
aria_cfb8:
	.quad	cipher_hw_aria_initkey
	.quad	ossl_cipher_hw_chunked_cfb8
	.quad	cipher_hw_aria_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aria_cfb8
	.type	ossl_prov_cipher_hw_aria_cfb8, @function
ossl_prov_cipher_hw_aria_cfb8:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aria_cfb8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_prov_cipher_hw_aria_cfb8, .-ossl_prov_cipher_hw_aria_cfb8
	.section	.data.rel.ro
	.align 16
	.type	aria_ctr, @object
	.size	aria_ctr, 24
aria_ctr:
	.quad	cipher_hw_aria_initkey
	.quad	ossl_cipher_hw_generic_ctr
	.quad	cipher_hw_aria_copyctx
	.text
	.globl	ossl_prov_cipher_hw_aria_ctr
	.type	ossl_prov_cipher_hw_aria_ctr, @function
ossl_prov_cipher_hw_aria_ctr:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	aria_ctr(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_prov_cipher_hw_aria_ctr, .-ossl_prov_cipher_hw_aria_ctr
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"cipher_hw_aria_initkey"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
