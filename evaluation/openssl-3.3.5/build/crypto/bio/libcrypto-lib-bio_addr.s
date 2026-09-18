	.file	"bio_addr.c"
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
	.globl	bio_lookup_lock
	.bss
	.align 8
	.type	bio_lookup_lock, @object
	.size	bio_lookup_lock, 8
bio_lookup_lock:
	.zero	8
	.local	bio_lookup_init
	.comm	bio_lookup_init,4,4
	.section	.rodata
.LC0:
	.string	"../crypto/bio/bio_addr.c"
	.text
	.globl	BIO_ADDR_new
	.type	BIO_ADDR_new, @function
BIO_ADDR_new:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$54, %edx
	movq	%rax, %rsi
	movl	$112, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movw	$0, (%rax)
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_ADDR_new, .-BIO_ADDR_new
	.globl	BIO_ADDR_free
	.type	BIO_ADDR_free, @function
BIO_ADDR_free:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_ADDR_free, .-BIO_ADDR_free
	.globl	BIO_ADDR_copy
	.type	BIO_ADDR_copy, @function
BIO_ADDR_copy:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	cmpq	$0, -16(%rbp)
	jne	.L11
.L10:
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	movl	$1, %eax
	jmp	.L12
.L13:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_make@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BIO_ADDR_copy, .-BIO_ADDR_copy
	.globl	BIO_ADDR_dup
	.type	BIO_ADDR_dup, @function
BIO_ADDR_dup:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L15
	call	BIO_ADDR_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L15
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_copy@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	$0, -8(%rbp)
.L15:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BIO_ADDR_dup, .-BIO_ADDR_dup
	.globl	BIO_ADDR_clear
	.type	BIO_ADDR_clear, @function
BIO_ADDR_clear:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$112, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movw	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BIO_ADDR_clear, .-BIO_ADDR_clear
	.globl	BIO_ADDR_make
	.type	BIO_ADDR_make, @function
BIO_ADDR_make:
.LFB170:
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
	movl	$112, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$2, %ax
	jne	.L19
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	$1, %eax
	jmp	.L20
.L19:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$10, %ax
	jne	.L21
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$28, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L20
.L21:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$1, %ax
	jne	.L22
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L20
.L22:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	BIO_ADDR_make, .-BIO_ADDR_make
	.globl	BIO_ADDR_rawmake
	.type	BIO_ADDR_rawmake, @function
BIO_ADDR_rawmake:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movw	%ax, -16(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.L24
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	$108, %rax
	jbe	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movl	$110, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$107, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	movl	$1, %eax
	jmp	.L26
.L24:
	cmpl	$2, -12(%rbp)
	jne	.L27
	cmpq	$4, -32(%rbp)
	je	.L28
	movl	$0, %eax
	jmp	.L26
.L28:
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	movzwl	-16(%rbp), %edx
	movw	%dx, 2(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, 4(%rax)
	movl	$1, %eax
	jmp	.L26
.L27:
	cmpl	$10, -12(%rbp)
	jne	.L29
	cmpq	$16, -32(%rbp)
	je	.L30
	movl	$0, %eax
	jmp	.L26
.L30:
	movq	-8(%rbp), %rax
	movl	$28, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	movzwl	-16(%rbp), %edx
	movw	%dx, 2(%rax)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, 8(%rcx)
	movq	%rdx, 16(%rcx)
	movl	$1, %eax
	jmp	.L26
.L29:
	movl	$0, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BIO_ADDR_rawmake, .-BIO_ADDR_rawmake
	.globl	BIO_ADDR_family
	.type	BIO_ADDR_family, @function
BIO_ADDR_family:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	BIO_ADDR_family, .-BIO_ADDR_family
	.globl	BIO_ADDR_rawaddress
	.type	BIO_ADDR_rawaddress, @function
BIO_ADDR_rawaddress:
.LFB173:
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
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$2, %ax
	jne	.L34
	movq	$4, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	jmp	.L35
.L34:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$10, %ax
	jne	.L36
	movq	$16, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.L35
.L36:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$1, %ax
	jne	.L35
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
.L35:
	cmpq	$0, -16(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	cmpq	$0, -32(%rbp)
	je	.L39
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L39:
	cmpq	$0, -40(%rbp)
	je	.L40
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L40:
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BIO_ADDR_rawaddress, .-BIO_ADDR_rawaddress
	.globl	BIO_ADDR_rawport
	.type	BIO_ADDR_rawport, @function
BIO_ADDR_rawport:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$2, %ax
	jne	.L42
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$10, %ax
	jne	.L44
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %eax
	jmp	.L43
.L44:
	movl	$0, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BIO_ADDR_rawport, .-BIO_ADDR_rawport
	.section	.rodata
.LC1:
	.string	"calling getnameinfo()"
.LC2:
	.string	"%d"
	.text
	.type	addr_strings, @function
addr_strings:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1112, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1096(%rbp)
	movl	%esi, -1100(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	%rcx, -1120(%rbp)
	call	BIO_sock_init@PLT
	cmpl	$1, %eax
	je	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movl	$0, -24(%rbp)
	leaq	-1056(%rbp), %rdx
	movl	$0, %eax
	movl	$128, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq	$0, -1088(%rbp)
	movq	$0, -1080(%rbp)
	movq	$0, -1072(%rbp)
	movq	$0, -1064(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$0, -1100(%rbp)
	je	.L48
	orl	$3, -20(%rbp)
.L48:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_size@PLT
	movl	%eax, %ebx
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr@PLT
	movq	%rax, %rdi
	leaq	-1088(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	subq	$8, %rsp
	movl	-20(%rbp), %edx
	pushq	%rdx
	movl	$32, %r9d
	movq	%rcx, %r8
	movl	$1025, %ecx
	movq	%rax, %rdx
	movl	%ebx, %esi
	call	getnameinfo@PLT
	addq	$16, %rsp
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L49
	cmpl	$-11, -24(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC1(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L50:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	gai_strerror@PLT
	movq	%rax, %rdx
	movl	$524290, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L51:
	movl	$0, %eax
	jmp	.L47
.L49:
	movzbl	-1088(%rbp), %eax
	testb	%al, %al
	jne	.L52
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ntohs@PLT
	movzwl	%ax, %edx
	leaq	.LC2(%rip), %rsi
	leaq	-1088(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L52:
	cmpq	$0, -1112(%rbp)
	je	.L53
	leaq	.LC0(%rip), %rcx
	leaq	-1056(%rbp), %rax
	movl	$272, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-1112(%rbp), %rdx
	movq	%rax, (%rdx)
.L53:
	cmpq	$0, -1120(%rbp)
	je	.L60
	leaq	.LC0(%rip), %rcx
	leaq	-1088(%rbp), %rax
	movl	$274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-1120(%rbp), %rdx
	movq	%rax, (%rdx)
.L60:
	cmpq	$0, -1112(%rbp)
	je	.L55
	movq	-1112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L56
.L55:
	cmpq	$0, -1120(%rbp)
	je	.L57
	movq	-1120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L57
.L56:
	cmpq	$0, -1112(%rbp)
	je	.L58
	movq	-1112(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$289, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-1112(%rbp), %rax
	movq	$0, (%rax)
.L58:
	cmpq	$0, -1120(%rbp)
	je	.L59
	movq	-1120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$293, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-1120(%rbp), %rax
	movq	$0, (%rax)
.L59:
	movl	$0, %eax
	jmp	.L47
.L57:
	movl	$1, %eax
.L47:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	addr_strings, .-addr_strings
	.globl	BIO_ADDR_hostname_string
	.type	BIO_ADDR_hostname_string, @function
BIO_ADDR_hostname_string:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	addr_strings
	testl	%eax, %eax
	je	.L62
	movq	-8(%rbp), %rax
	jmp	.L64
.L62:
	movl	$0, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	BIO_ADDR_hostname_string, .-BIO_ADDR_hostname_string
	.globl	BIO_ADDR_service_string
	.type	BIO_ADDR_service_string, @function
BIO_ADDR_service_string:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	addr_strings
	testl	%eax, %eax
	je	.L66
	movq	-8(%rbp), %rax
	jmp	.L68
.L66:
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	BIO_ADDR_service_string, .-BIO_ADDR_service_string
	.globl	BIO_ADDR_path_string
	.type	BIO_ADDR_path_string, @function
BIO_ADDR_path_string:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$1, %ax
	jne	.L70
	movq	-8(%rbp), %rax
	addq	$2, %rax
	leaq	.LC0(%rip), %rcx
	movl	$326, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	jmp	.L71
.L70:
	movl	$0, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	BIO_ADDR_path_string, .-BIO_ADDR_path_string
	.globl	BIO_ADDR_sockaddr
	.type	BIO_ADDR_sockaddr, @function
BIO_ADDR_sockaddr:
.LFB179:
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
.LFE179:
	.size	BIO_ADDR_sockaddr, .-BIO_ADDR_sockaddr
	.globl	BIO_ADDR_sockaddr_noconst
	.type	BIO_ADDR_sockaddr_noconst, @function
BIO_ADDR_sockaddr_noconst:
.LFB180:
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
.LFE180:
	.size	BIO_ADDR_sockaddr_noconst, .-BIO_ADDR_sockaddr_noconst
	.globl	BIO_ADDR_sockaddr_size
	.type	BIO_ADDR_sockaddr_size, @function
BIO_ADDR_sockaddr_size:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$2, %ax
	jne	.L77
	movl	$16, %eax
	jmp	.L78
.L77:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$10, %ax
	jne	.L79
	movl	$28, %eax
	jmp	.L78
.L79:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$1, %ax
	jne	.L80
	movl	$110, %eax
	jmp	.L78
.L80:
	movl	$112, %eax
.L78:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	BIO_ADDR_sockaddr_size, .-BIO_ADDR_sockaddr_size
	.globl	BIO_ADDRINFO_next
	.type	BIO_ADDRINFO_next, @function
BIO_ADDRINFO_next:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L82
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L83
.L82:
	movl	$0, %eax
.L83:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	BIO_ADDRINFO_next, .-BIO_ADDRINFO_next
	.globl	BIO_ADDRINFO_family
	.type	BIO_ADDRINFO_family, @function
BIO_ADDRINFO_family:
.LFB183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.L86
.L85:
	movl	$0, %eax
.L86:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	BIO_ADDRINFO_family, .-BIO_ADDRINFO_family
	.globl	BIO_ADDRINFO_socktype
	.type	BIO_ADDRINFO_socktype, @function
BIO_ADDRINFO_socktype:
.LFB184:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L88
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L89
.L88:
	movl	$0, %eax
.L89:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	BIO_ADDRINFO_socktype, .-BIO_ADDRINFO_socktype
	.globl	BIO_ADDRINFO_protocol
	.type	BIO_ADDRINFO_protocol, @function
BIO_ADDRINFO_protocol:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L91
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L92
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	jmp	.L93
.L92:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L93
.L94:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L95
	cmpl	$2, %eax
	je	.L96
	jmp	.L91
.L95:
	movl	$6, %eax
	jmp	.L93
.L96:
	movl	$17, %eax
	jmp	.L93
.L91:
	movl	$0, %eax
.L93:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	BIO_ADDRINFO_protocol, .-BIO_ADDRINFO_protocol
	.globl	BIO_ADDRINFO_sockaddr_size
	.type	BIO_ADDRINFO_sockaddr_size, @function
BIO_ADDRINFO_sockaddr_size:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L99
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	jmp	.L100
.L99:
	movl	$0, %eax
.L100:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	BIO_ADDRINFO_sockaddr_size, .-BIO_ADDRINFO_sockaddr_size
	.globl	BIO_ADDRINFO_sockaddr
	.type	BIO_ADDRINFO_sockaddr, @function
BIO_ADDRINFO_sockaddr:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L102
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L103
.L102:
	movl	$0, %eax
.L103:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	BIO_ADDRINFO_sockaddr, .-BIO_ADDRINFO_sockaddr
	.globl	BIO_ADDRINFO_address
	.type	BIO_ADDRINFO_address, @function
BIO_ADDRINFO_address:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L105
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L106
.L105:
	movl	$0, %eax
.L106:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	BIO_ADDRINFO_address, .-BIO_ADDRINFO_address
	.globl	BIO_ADDRINFO_free
	.type	BIO_ADDRINFO_free, @function
BIO_ADDRINFO_free:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L113
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	je	.L111
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	freeaddrinfo@PLT
	jmp	.L107
.L112:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$474, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$475, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L111:
	cmpq	$0, -24(%rbp)
	jne	.L112
	jmp	.L107
.L113:
	nop
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	BIO_ADDRINFO_free, .-BIO_ADDRINFO_free
	.globl	BIO_parse_hostserv
	.type	BIO_parse_hostserv, @function
BIO_parse_hostserv:
.LFB190:
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
	movl	%ecx, -76(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L115
	movq	-56(%rbp), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L135
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L118
	movq	$0, -24(%rbp)
	jmp	.L119
.L118:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L136
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	jmp	.L119
.L115:
	movq	-56(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L137
	cmpq	$0, -24(%rbp)
	je	.L123
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	jmp	.L119
.L123:
	cmpl	$0, -76(%rbp)
	jne	.L124
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	jmp	.L119
.L124:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
.L119:
	cmpq	$0, -24(%rbp)
	je	.L125
	movq	-24(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L138
.L125:
	cmpq	$0, -8(%rbp)
	je	.L126
	cmpq	$0, -64(%rbp)
	je	.L126
	cmpq	$0, -16(%rbp)
	je	.L127
	cmpq	$1, -16(%rbp)
	jne	.L128
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L128
.L127:
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L126
.L128:
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$564, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L126
	movl	$0, %eax
	jmp	.L129
.L126:
	cmpq	$0, -24(%rbp)
	je	.L130
	cmpq	$0, -72(%rbp)
	je	.L130
	cmpq	$0, -32(%rbp)
	je	.L131
	cmpq	$1, -32(%rbp)
	jne	.L132
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L132
.L131:
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L130
.L132:
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$574, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L130
	cmpq	$0, -8(%rbp)
	je	.L133
	cmpq	$0, -64(%rbp)
	je	.L133
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$577, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.L133:
	movl	$0, %eax
	jmp	.L129
.L130:
	movl	$1, %eax
	jmp	.L129
.L137:
	nop
.L122:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$587, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L129
.L135:
	nop
	jmp	.L117
.L136:
	nop
	jmp	.L117
.L138:
	nop
.L117:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$590, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	BIO_parse_hostserv, .-BIO_parse_hostserv
	.type	addrinfo_wrap, @function
addrinfo_wrap:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, %eax
	movq	%r9, -72(%rbp)
	movw	%ax, -60(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$608, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L140
	movl	$0, %eax
	jmp	.L141
.L140:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 8(%rax)
	cmpl	$1, -40(%rbp)
	jne	.L142
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$6, 12(%rax)
.L142:
	cmpl	$2, -40(%rbp)
	jne	.L143
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$17, 12(%rax)
.L143:
	cmpl	$1, -36(%rbp)
	jne	.L144
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 12(%rax)
.L144:
	call	BIO_ADDR_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L145
	movzwl	-60(%rbp), %edi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_sockaddr_noconst@PLT
	movq	%rax, 24(%rbx)
.L145:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 40(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L146
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L141
.L146:
	movl	$1, %eax
.L141:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	addrinfo_wrap, .-addrinfo_wrap
	.local	do_bio_lookup_init_ossl_ret_
	.comm	do_bio_lookup_init_ossl_ret_,4,4
	.type	do_bio_lookup_init_ossl_, @function
do_bio_lookup_init_ossl_:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	do_bio_lookup_init
	movl	%eax, do_bio_lookup_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	do_bio_lookup_init_ossl_, .-do_bio_lookup_init_ossl_
	.type	do_bio_lookup_init, @function
do_bio_lookup_init:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CRYPTO_THREAD_lock_new@PLT
	movq	bio_lookup_lock@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	bio_lookup_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	do_bio_lookup_init, .-do_bio_lookup_init
	.globl	BIO_lookup
	.type	BIO_lookup, @function
BIO_lookup:
.LFB194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %edi
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-40(%rbp)
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	BIO_lookup_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	BIO_lookup, .-BIO_lookup
	.section	.rodata
.LC3:
	.string	"calling getaddrinfo()"
	.text
	.globl	BIO_lookup_ex
	.type	BIO_lookup_ex, @function
BIO_lookup_ex:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	%ecx, -104(%rbp)
	movl	%r8d, -108(%rbp)
	movl	%r9d, -112(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$2, -104(%rbp)
	jg	.L153
	cmpl	$0, -104(%rbp)
	jns	.L175
	jmp	.L155
.L153:
	cmpl	$10, -104(%rbp)
	je	.L175
.L155:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$695, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L157
.L175:
	nop
	cmpl	$1, -104(%rbp)
	jne	.L158
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	16(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movl	-108(%rbp), %esi
	movl	-104(%rbp), %eax
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	%eax, %edi
	call	addrinfo_wrap
	testl	%eax, %eax
	je	.L159
	movl	$1, %eax
	jmp	.L157
.L159:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$704, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L157
.L158:
	call	BIO_sock_init@PLT
	cmpl	$1, %eax
	je	.L160
	movl	$0, %eax
	jmp	.L157
.L160:
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	leaq	-80(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-104(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L161
	cmpl	$0, -104(%rbp)
	jne	.L161
	movl	-80(%rbp), %eax
	orl	$32, %eax
	movl	%eax, -80(%rbp)
.L161:
	cmpl	$1, -100(%rbp)
	jne	.L176
	movl	-80(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.L171
.L176:
	nop
.L162:
.L171:
	movq	16(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	getaddrinfo@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L163
	cmpl	$0, -4(%rbp)
	jg	.L164
	cmpl	$-11, -4(%rbp)
	je	.L165
	cmpl	$-10, -4(%rbp)
	je	.L166
	jmp	.L164
.L165:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$741, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$743, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L166:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$748, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -12(%rbp)
	je	.L168
	movl	-12(%rbp), %eax
	jmp	.L169
.L168:
	movl	-4(%rbp), %eax
.L169:
	movl	%eax, %edi
	call	gai_strerror@PLT
	movq	%rax, %rdx
	movl	$524290, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L174
.L163:
	movl	$1, -8(%rbp)
	jmp	.L174
.L164:
	movl	-80(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L170
	movl	-80(%rbp), %eax
	andl	$-33, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -80(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L171
.L170:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -12(%rbp)
	je	.L172
	movl	-12(%rbp), %eax
	jmp	.L173
.L172:
	movl	-4(%rbp), %eax
.L173:
	movl	%eax, %edi
	call	gai_strerror@PLT
	movq	%rax, %rdx
	movl	$524290, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L174:
	movl	-8(%rbp), %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	BIO_lookup_ex, .-BIO_lookup_ex
	.section	.rodata
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 13
__func__.5:
	.string	"addr_strings"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"BIO_parse_hostserv"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 14
__func__.3:
	.string	"BIO_lookup_ex"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	he_fallback.2, @object
	.size	he_fallback.2, 32
he_fallback.2:
	.quad	0
	.quad	0
	.long	2
	.long	4
	.quad	he_fallback_addresses.1
	.section	.data.rel.local,"aw"
	.align 16
	.type	he_fallback_addresses.1, @object
	.size	he_fallback_addresses.1, 16
he_fallback_addresses.1:
	.quad	he_fallback_address.0
	.quad	0
	.local	he_fallback_address.0
	.comm	he_fallback_address.0,4,4
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
