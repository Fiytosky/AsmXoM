	.file	"x509_d2.c"
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
	.globl	X509_STORE_set_default_paths_ex
	.type	X509_STORE_set_default_paths_ex, @function
X509_STORE_set_default_paths_ex:
.LFB509:
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
	call	X509_LOOKUP_file@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl_ex@PLT
	addq	$16, %rsp
	call	X509_LOOKUP_hash_dir@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl@PLT
	call	X509_LOOKUP_store@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L7
.L9:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl_ex@PLT
	addq	$16, %rsp
	call	ERR_clear_error@PLT
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	X509_STORE_set_default_paths_ex, .-X509_STORE_set_default_paths_ex
	.globl	X509_STORE_set_default_paths
	.type	X509_STORE_set_default_paths, @function
X509_STORE_set_default_paths:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_STORE_set_default_paths_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	X509_STORE_set_default_paths, .-X509_STORE_set_default_paths
	.globl	X509_STORE_load_file_ex
	.type	X509_STORE_load_file_ex, @function
X509_STORE_load_file_ex:
.LFB511:
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
	movq	%rcx, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L13
	call	X509_LOOKUP_file@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L13
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L14
.L13:
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	X509_STORE_load_file_ex, .-X509_STORE_load_file_ex
	.globl	X509_STORE_load_file
	.type	X509_STORE_load_file, @function
X509_STORE_load_file:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_STORE_load_file_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	X509_STORE_load_file, .-X509_STORE_load_file
	.globl	X509_STORE_load_path
	.type	X509_STORE_load_path, @function
X509_STORE_load_path:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L19
	call	X509_LOOKUP_hash_dir@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L19
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl@PLT
	testl	%eax, %eax
	jg	.L20
.L19:
	movl	$0, %eax
	jmp	.L21
.L20:
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	X509_STORE_load_path, .-X509_STORE_load_path
	.globl	X509_STORE_load_store_ex
	.type	X509_STORE_load_store_ex, @function
X509_STORE_load_store_ex:
.LFB514:
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
	movq	%rcx, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L23
	call	X509_LOOKUP_store@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L23
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L24
.L23:
	movl	$0, %eax
	jmp	.L25
.L24:
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	X509_STORE_load_store_ex, .-X509_STORE_load_store_ex
	.globl	X509_STORE_load_store
	.type	X509_STORE_load_store, @function
X509_STORE_load_store:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_STORE_load_store_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	X509_STORE_load_store, .-X509_STORE_load_store
	.globl	X509_STORE_load_locations_ex
	.type	X509_STORE_load_locations_ex, @function
X509_STORE_load_locations_ex:
.LFB516:
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
	cmpq	$0, -16(%rbp)
	jne	.L29
	cmpq	$0, -24(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	cmpq	$0, -16(%rbp)
	je	.L31
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_load_file_ex@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_path@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L30
.L32:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	X509_STORE_load_locations_ex, .-X509_STORE_load_locations_ex
	.globl	X509_STORE_load_locations
	.type	X509_STORE_load_locations, @function
X509_STORE_load_locations:
.LFB517:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_STORE_load_locations_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	X509_STORE_load_locations, .-X509_STORE_load_locations
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
