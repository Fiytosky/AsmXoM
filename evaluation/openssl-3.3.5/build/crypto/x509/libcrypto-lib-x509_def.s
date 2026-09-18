	.file	"x509_def.c"
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
	.section	.rodata
	.align 8
.LC0:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/ssl/private"
	.text
	.globl	X509_get_default_private_dir
	.type	X509_get_default_private_dir, @function
X509_get_default_private_dir:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	X509_get_default_private_dir, .-X509_get_default_private_dir
	.section	.rodata
	.align 8
.LC1:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/ssl"
	.text
	.globl	X509_get_default_cert_area
	.type	X509_get_default_cert_area, @function
X509_get_default_cert_area:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	X509_get_default_cert_area, .-X509_get_default_cert_area
	.section	.rodata
	.align 8
.LC2:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/ssl/certs"
	.text
	.globl	X509_get_default_cert_dir
	.type	X509_get_default_cert_dir, @function
X509_get_default_cert_dir:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	X509_get_default_cert_dir, .-X509_get_default_cert_dir
	.section	.rodata
	.align 8
.LC3:
	.string	"/root/AsmXoM/evaluation/openssl-3.3.5/build/ssl/cert.pem"
	.text
	.globl	X509_get_default_cert_file
	.type	X509_get_default_cert_file, @function
X509_get_default_cert_file:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	X509_get_default_cert_file, .-X509_get_default_cert_file
	.section	.rodata
.LC4:
	.string	"SSL_CERT_DIR"
	.text
	.globl	X509_get_default_cert_dir_env
	.type	X509_get_default_cert_dir_env, @function
X509_get_default_cert_dir_env:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	X509_get_default_cert_dir_env, .-X509_get_default_cert_dir_env
	.section	.rodata
.LC5:
	.string	"SSL_CERT_FILE"
	.text
	.globl	X509_get_default_cert_file_env
	.type	X509_get_default_cert_file_env, @function
X509_get_default_cert_file_env:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	X509_get_default_cert_file_env, .-X509_get_default_cert_file_env
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
