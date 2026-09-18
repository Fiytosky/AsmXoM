	.file	"property_query.c"
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
	.type	property_idx_cmp, @function
property_idx_cmp:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	-4(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	property_idx_cmp, .-property_idx_cmp
	.globl	ossl_property_find_property
	.type	ossl_property_find_property, @function
ossl_property_find_property:
.LFB161:
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
	cmpq	$0, -24(%rbp)
	je	.L8
	cmpq	$0, -40(%rbp)
	je	.L8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_name@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jne	.L9
.L8:
	movl	$0, %eax
	jmp	.L11
.L9:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rsi
	leaq	property_idx_cmp(%rip), %rcx
	leaq	-4(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$24, %ecx
	movq	%rax, %rdi
	call	ossl_bsearch@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_property_find_property, .-ossl_property_find_property
	.globl	ossl_property_get_type
	.type	ossl_property_get_type, @function
ossl_property_get_type:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ossl_property_get_type, .-ossl_property_get_type
	.globl	ossl_property_get_string_value
	.type	ossl_property_get_string_value, @function
ossl_property_get_string_value:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L15
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L15
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_property_value_str@PLT
	movq	%rax, -8(%rbp)
.L15:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	ossl_property_get_string_value, .-ossl_property_get_string_value
	.globl	ossl_property_get_number_value
	.type	ossl_property_get_number_value, @function
ossl_property_get_number_value:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L18
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L18:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	ossl_property_get_number_value, .-ossl_property_get_number_value
	.globl	ossl_property_has_optional
	.type	ossl_property_has_optional, @function
ossl_property_has_optional:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	ossl_property_has_optional, .-ossl_property_has_optional
	.globl	ossl_property_is_enabled
	.type	ossl_property_is_enabled, @function
ossl_property_is_enabled:
.LFB166:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_find_property@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L23
	movq	-8(%rbp), %rax
	movzbl	12(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L23
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L24
.L23:
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L26
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L27
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L28
.L27:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L26
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L26
.L28:
	movl	$1, %eax
	jmp	.L25
.L26:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	ossl_property_is_enabled, .-ossl_property_is_enabled
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
