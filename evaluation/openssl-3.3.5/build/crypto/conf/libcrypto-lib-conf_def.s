	.file	"conf_def.c"
	.text
	.type	ossl_ends_with_dirsep, @function
ossl_ends_with_dirsep:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subq	$1, %rax
	addq	%rax, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ossl_ends_with_dirsep, .-ossl_ends_with_dirsep
	.type	ossl_is_absolute_path, @function
ossl_is_absolute_path:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	ossl_is_absolute_path, .-ossl_is_absolute_path
	.type	ossl_check_BIO_type, @function
ossl_check_BIO_type:
.LFB33:
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
.LFE33:
	.size	ossl_check_BIO_type, .-ossl_check_BIO_type
	.type	ossl_check_const_BIO_sk_type, @function
ossl_check_const_BIO_sk_type:
.LFB34:
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
.LFE34:
	.size	ossl_check_const_BIO_sk_type, .-ossl_check_const_BIO_sk_type
	.type	ossl_check_BIO_sk_type, @function
ossl_check_BIO_sk_type:
.LFB35:
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
.LFE35:
	.size	ossl_check_BIO_sk_type, .-ossl_check_BIO_sk_type
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.align 32
	.type	CONF_type_default, @object
	.size	CONF_type_default, 256
CONF_type_default:
	.value	8
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	16
	.value	16
	.value	0
	.value	0
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	16
	.value	512
	.value	64
	.value	128
	.value	4096
	.value	512
	.value	512
	.value	64
	.value	0
	.value	0
	.value	512
	.value	512
	.value	512
	.value	512
	.value	512
	.value	512
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	0
	.value	512
	.value	0
	.value	0
	.value	0
	.value	512
	.value	512
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	0
	.value	32
	.value	0
	.value	512
	.value	256
	.value	64
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	0
	.value	512
	.value	0
	.value	512
	.value	0
	.align 32
	.type	CONF_type_win32, @object
	.size	CONF_type_win32, 256
CONF_type_win32:
	.value	8
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	16
	.value	16
	.value	0
	.value	0
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	16
	.value	512
	.value	1024
	.value	0
	.value	4096
	.value	512
	.value	512
	.value	0
	.value	0
	.value	0
	.value	512
	.value	512
	.value	512
	.value	512
	.value	512
	.value	512
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	0
	.value	2560
	.value	0
	.value	0
	.value	0
	.value	512
	.value	512
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	0
	.value	0
	.value	0
	.value	512
	.value	256
	.value	0
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	4
	.value	0
	.value	512
	.value	0
	.value	512
	.value	0
.LC0:
	.string	"OpenSSL default"
	.section	.data.rel.local,"aw"
	.align 32
	.type	default_method, @object
	.size	default_method, 80
default_method:
	.quad	.LC0
	.quad	def_create
	.quad	def_init_default
	.quad	def_destroy
	.quad	def_destroy_data
	.quad	def_load_bio
	.quad	def_dump
	.quad	def_is_number
	.quad	def_to_int
	.quad	def_load
	.text
	.globl	NCONF_default
	.type	NCONF_default, @function
NCONF_default:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	NCONF_default, .-NCONF_default
	.section	.rodata
.LC1:
	.string	"WIN32"
	.section	.data.rel.local
	.align 32
	.type	WIN32_method, @object
	.size	WIN32_method, 80
WIN32_method:
	.quad	.LC1
	.quad	def_create
	.quad	def_init_WIN32
	.quad	def_destroy
	.quad	def_destroy_data
	.quad	def_load_bio
	.quad	def_dump
	.quad	def_is_number
	.quad	def_to_int
	.quad	def_load
	.text
	.globl	NCONF_WIN32
	.type	NCONF_WIN32, @function
NCONF_WIN32:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	WIN32_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	NCONF_WIN32, .-NCONF_WIN32
	.section	.rodata
.LC2:
	.string	"../crypto/conf/conf_def.c"
	.text
	.type	def_create, @function
def_create:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$115, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L24
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$118, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L24:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	def_create, .-def_create
	.type	def_init_default, @function
def_init_default:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	leaq	default_method(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	CONF_type_default(%rip), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	def_init_default, .-def_init_default
	.type	def_init_WIN32, @function
def_init_WIN32:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	leaq	WIN32_method(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	CONF_type_win32(%rip), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	def_init_WIN32, .-def_init_WIN32
	.type	def_destroy, @function
def_destroy:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	def_destroy_data
	testl	%eax, %eax
	je	.L33
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$153, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L34
.L33:
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	def_destroy, .-def_destroy
	.type	def_destroy_data, @function
def_destroy_data:
.LFB183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_CONF_free_data@PLT
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	def_destroy_data, .-def_destroy_data
	.section	.rodata
.LC3:
	.string	"rb"
	.text
	.type	def_load, @function
def_load:
.LFB184:
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
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$128, %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L41
.L40:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L41:
	movl	$0, %eax
	jmp	.L42
.L39:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	def_load_bio
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	def_load, .-def_load
	.section	.rodata
.LC4:
	.string	"on"
.LC5:
	.string	"true"
.LC6:
	.string	"off"
.LC7:
	.string	"false"
	.text
	.type	parsebool, @function
parsebool:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L44
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L45
.L44:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L46
.L45:
	leaq	.LC6(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L47
	leaq	.LC7(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L48
.L47:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L46
.L48:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$202, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L49
.L46:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	parsebool, .-parsebool
	.section	.rodata
.LC8:
	.string	"default"
.LC9:
	.string	".pragma"
.LC10:
	.string	"dollarid"
.LC11:
	.string	"abspath"
.LC12:
	.string	"includedir"
.LC13:
	.string	".include"
.LC14:
	.string	"OPENSSL_CONF_INCLUDE"
.LC15:
	.string	"/"
.LC16:
	.string	"HERE-->%s"
.LC17:
	.string	"%ld"
.LC18:
	.string	"line "
	.text
	.type	def_load_bio, @function
def_load_bio:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -144(%rbp)
	movl	$1, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -264(%rbp)
	movq	-312(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -280(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L51:
	leaq	.LC2(%rip), %rcx
	leaq	.LC8(%rip), %rax
	movl	$238, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	testq	%rax, %rax
	je	.L127
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	_CONF_new_data@PLT
	testl	%eax, %eax
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$243, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524302, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L54:
	movq	-264(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_CONF_new_section@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$249, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L55:
	movl	$0, -20(%rbp)
	movl	$0, -52(%rbp)
.L117:
	movl	-20(%rbp), %eax
	addl	$512, %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L56:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
.L57:
	cmpq	$0, -320(%rbp)
	je	.L58
	movq	-40(%rbp), %rcx
	movq	-320(%rbp), %rax
	movl	$511, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	testl	%eax, %eax
	js	.L128
.L58:
	movq	-40(%rbp), %rax
	addq	$511, %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L59
	movw	$-17425, -283(%rbp)
	movb	$-65, -281(%rbp)
	cmpl	$2, -24(%rbp)
	jle	.L60
	leaq	-283(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L60
	movl	-24(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	3(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	-24(%rbp), %eax
	cltq
	leaq	-3(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	subl	$3, -24(%rbp)
	subl	$3, -28(%rbp)
.L60:
	movl	$0, -56(%rbp)
.L59:
	cmpl	$0, -24(%rbp)
	jne	.L61
	cmpl	$0, -52(%rbp)
	jne	.L61
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	je	.L62
	movq	-272(%rbp), %rax
	leaq	-280(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_next_file
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.L63
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_vfree@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -320(%rbp)
	jmp	.L57
.L63:
	movq	-272(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$294, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -272(%rbp)
.L62:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L129
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_vfree@PLT
	movq	-168(%rbp), %rax
	movq	%rax, -320(%rbp)
	jmp	.L57
.L61:
	movl	$0, -52(%rbp)
	jmp	.L66
.L69:
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L67
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L68
.L67:
	subl	$1, -24(%rbp)
.L66:
	cmpl	$0, -24(%rbp)
	jg	.L69
.L68:
	cmpl	$0, -28(%rbp)
	je	.L70
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L70
	movl	$1, -52(%rbp)
	jmp	.L71
.L70:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	$1, -64(%rbp)
.L71:
	movl	-24(%rbp), %eax
	addl	%eax, -20(%rbp)
	movq	$0, -72(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L72
	cmpl	$0, -20(%rbp)
	jle	.L72
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-312(%rbp), %rax
	movl	$32, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L72
	cmpl	$1, -20(%rbp)
	jle	.L73
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-312(%rbp), %rax
	movl	$32, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L72
.L73:
	subl	$1, -20(%rbp)
	movl	$1, -52(%rbp)
.L72:
	cmpl	$0, -52(%rbp)
	jne	.L130
	movl	$0, -20(%rbp)
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	clear_comments
	movq	-176(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_ws
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-312(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L131
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L77
	addq	$1, -184(%rbp)
	movq	-184(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_ws
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -120(%rbp)
.L78:
	movq	-120(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_alpha_numeric
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_ws
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	je	.L79
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L80
	movq	-120(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L80
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.L78
.L80:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L79:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-216(%rbp), %rcx
	leaq	-264(%rbp), %rdx
	movq	-312(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	str_copy
	testl	%eax, %eax
	je	.L132
	movq	-264(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_CONF_get_section@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L82
	movq	-264(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_CONF_new_section@PLT
	movq	%rax, -88(%rbp)
.L82:
	cmpq	$0, -88(%rbp)
	jne	.L133
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L77:
	movq	-184(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-184(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_alpha_numeric
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L84
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L84
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	addq	$2, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_alpha_numeric
	movq	%rax, -48(%rbp)
	jmp	.L85
.L84:
	movq	-264(%rbp), %rax
	movq	%rax, -96(%rbp)
.L85:
	movq	-48(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_ws
	movq	%rax, -40(%rbp)
	leaq	.LC9(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L86
	addq	$7, -104(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L87
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L86
.L87:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L88
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_ws
	movq	%rax, -40(%rbp)
.L88:
	movq	-40(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	trim_ws
	movq	-40(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	je	.L89
	movq	-192(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L89
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L90
.L89:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$406, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L90:
	movq	-192(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -192(%rbp)
	movb	$0, (%rax)
	movq	-40(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	trim_ws
	movq	-192(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_ws
	movq	%rax, -192(%rbp)
	leaq	.LC10(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L91
	movq	-312(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parsebool
	testl	%eax, %eax
	jne	.L134
	jmp	.L52
.L91:
	leaq	.LC11(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L93
	movq	-312(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parsebool
	testl	%eax, %eax
	jne	.L134
	jmp	.L52
.L93:
	leaq	.LC12(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-312(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$428, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-192(%rbp), %rax
	movl	$429, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-312(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-312(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L134
	jmp	.L52
.L86:
	leaq	.LC13(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L94
	addq	$8, -104(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L95
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L94
.L95:
	movq	$0, -296(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -128(%rbp)
	movq	$0, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L96
	movq	-312(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -128(%rbp)
.L96:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L97
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_ws
	movq	%rax, -40(%rbp)
.L97:
	movq	-40(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	trim_ws
	movq	-40(%rbp), %rcx
	leaq	-296(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	str_copy
	testl	%eax, %eax
	je	.L135
	cmpq	$0, -128(%rbp)
	je	.L100
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_is_absolute_path
	testl	%eax, %eax
	jne	.L100
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$2, %rax
	movq	%rax, -200(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-200(%rbp), %rax
	movl	$472, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L101
	movq	-296(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$474, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L52
.L101:
	movq	-200(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ends_with_dirsep
	testl	%eax, %eax
	jne	.L102
	movq	-200(%rbp), %rdx
	leaq	.LC15(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L102:
	movq	-296(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movq	-296(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$482, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L103
.L100:
	movq	-296(%rbp), %rax
	movq	%rax, -136(%rbp)
.L103:
	movq	-312(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L104
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_is_absolute_path
	testl	%eax, %eax
	jne	.L104
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$489, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC2(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$490, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L52
.L104:
	leaq	-272(%rbp), %rdx
	leaq	-280(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_include
	movq	%rax, -208(%rbp)
	movq	-272(%rbp), %rax
	cmpq	%rax, -136(%rbp)
	je	.L105
	leaq	.LC2(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$499, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L105:
	cmpq	$0, -208(%rbp)
	je	.L136
	cmpq	$0, -112(%rbp)
	jne	.L107
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L107
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$510, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L52
.L107:
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_type
	movq	%rax, %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$516, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L52
.L108:
	movq	-208(%rbp), %rax
	movq	%rax, -320(%rbp)
	jmp	.L117
.L94:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	je	.L109
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$525, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movl	$101, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L109:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	addq	$1, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	eat_ws
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	trim_ws
	leaq	.LC2(%rip), %rax
	movl	$534, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L137
	leaq	.LC2(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$536, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-72(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L138
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-216(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-312(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	str_copy
	testl	%eax, %eax
	je	.L139
	movq	-264(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L113
	movq	-96(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_CONF_get_section@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L114
	movq	-96(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_CONF_new_section@PLT
	movq	%rax, -80(%rbp)
.L114:
	cmpq	$0, -80(%rbp)
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$548, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L113:
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
.L115:
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_CONF_add_string@PLT
	testl	%eax, %eax
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$555, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524302, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L116:
	movq	$0, -72(%rbp)
	jmp	.L117
.L130:
	nop
	jmp	.L117
.L131:
	nop
	jmp	.L117
.L133:
	nop
	jmp	.L117
.L134:
	nop
	jmp	.L117
.L136:
	nop
	jmp	.L117
.L129:
	nop
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-264(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$562, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$1, %eax
	jmp	.L125
.L127:
	nop
	jmp	.L52
.L128:
	nop
	jmp	.L52
.L132:
	nop
	jmp	.L52
.L135:
	nop
	jmp	.L52
.L137:
	nop
	jmp	.L52
.L138:
	nop
	jmp	.L52
.L139:
	nop
.L52:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-264(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$572, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L119
.L120:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, -224(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_vfree@PLT
	movq	-224(%rbp), %rax
	movq	%rax, -320(%rbp)
.L119:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_BIO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L120
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_BIO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-272(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$585, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	je	.L121
	leaq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_DIR_end@PLT
.L121:
	cmpq	$0, -328(%rbp)
	je	.L122
	movq	-328(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
.L122:
	movq	-64(%rbp), %rdx
	leaq	.LC17(%rip), %rsi
	leaq	-256(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$24, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-256(%rbp), %rax
	leaq	.LC18(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	movq	-312(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -152(%rbp)
	je	.L123
	movq	-312(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CONF_free@PLT
	movq	-312(%rbp), %rax
	movq	$0, 16(%rax)
.L123:
	cmpq	$0, -72(%rbp)
	je	.L124
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$598, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$599, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$600, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L124:
	movl	$0, %eax
.L125:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	def_load_bio, .-def_load_bio
	.type	clear_comments, @function
clear_comments:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.L145:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$2048, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L141
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L140
.L141:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L143
	jmp	.L144
.L143:
	addq	$1, -16(%rbp)
	jmp	.L145
.L144:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L146
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L140
.L146:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$1024, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L147
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	scan_dquote
	movq	%rax, -16(%rbp)
	jmp	.L148
.L147:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L149
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	scan_quote
	movq	%rax, -16(%rbp)
	jmp	.L148
.L149:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$32, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L150
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L151
	addq	$1, -16(%rbp)
	jmp	.L148
.L151:
	addq	$2, -16(%rbp)
	jmp	.L148
.L150:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L154
	addq	$1, -16(%rbp)
.L148:
	jmp	.L144
.L154:
	nop
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	clear_comments, .-clear_comments
	.type	str_copy, @function
str_copy:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L156
	movl	$0, %eax
	jmp	.L157
.L156:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	je	.L200
.L158:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$64, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L160
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	addq	$1, -144(%rbp)
	jmp	.L161
.L164:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$32, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L162
	addq	$1, -144(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L201
.L162:
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -144(%rbp)
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rsi
	movl	-12(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, -12(%rbp)
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L161:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L163
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L164
	jmp	.L163
.L201:
	nop
.L163:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L158
	addq	$1, -144(%rbp)
	jmp	.L158
.L160:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$1024, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L166
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	addq	$1, -144(%rbp)
	jmp	.L167
.L171:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L168
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L202
	addq	$1, -144(%rbp)
.L168:
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -144(%rbp)
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rsi
	movl	-12(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, -12(%rbp)
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L167:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L171
	jmp	.L170
.L202:
	nop
.L170:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L158
	addq	$1, -144(%rbp)
	jmp	.L158
.L166:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$32, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L172
	addq	$1, -144(%rbp)
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -144(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -65(%rbp)
	movsbl	-65(%rbp), %ecx
	movq	-120(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L203
	cmpb	$114, -65(%rbp)
	jne	.L175
	movb	$13, -65(%rbp)
	jmp	.L176
.L175:
	cmpb	$110, -65(%rbp)
	jne	.L177
	movb	$10, -65(%rbp)
	jmp	.L176
.L177:
	cmpb	$98, -65(%rbp)
	jne	.L178
	movb	$8, -65(%rbp)
	jmp	.L176
.L178:
	cmpb	$116, -65(%rbp)
	jne	.L176
	movb	$9, -65(%rbp)
.L176:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	leaq	(%rcx,%rax), %rdx
	movzbl	-65(%rbp), %eax
	movb	%al, (%rdx)
	jmp	.L158
.L172:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L204
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$36, %al
	jne	.L180
	movq	-120(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L181
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	je	.L181
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L180
.L181:
	movq	$0, -48(%rbp)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	jne	.L182
	movl	$125, -4(%rbp)
	jmp	.L183
.L182:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L184
	movl	$41, -4(%rbp)
	jmp	.L183
.L184:
	movl	$0, -4(%rbp)
.L183:
	cmpl	$0, -4(%rbp)
	je	.L185
	addq	$1, -24(%rbp)
.L185:
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L186
.L187:
	addq	$1, -32(%rbp)
.L186:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$263, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L187
	movq	-120(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L188
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$4096, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L187
.L188:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L189
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L189
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	addq	$2, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L190
.L191:
	addq	$1, -32(%rbp)
.L190:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$263, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L191
	movq	-120(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L189
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-120(%rbp), %rax
	movl	$4096, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L191
.L189:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L192
	movl	-84(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L193
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$739, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L159
.L193:
	addq	$1, -32(%rbp)
.L192:
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_CONF_get_string@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L194
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
.L194:
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
	cmpq	$0, -40(%rbp)
	jne	.L195
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$759, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L159
.L195:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	subq	-144(%rbp), %rax
	movq	%rax, %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	movq	%rax, -104(%rbp)
	cmpq	$65536, -104(%rbp)
	jbe	.L196
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L159
.L196:
	movq	-104(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	jne	.L198
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$768, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L159
.L199:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rsi
	movl	-12(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, -12(%rbp)
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L198:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L199
	movl	-16(%rbp), %edx
	movq	-32(%rbp), %rax
	subq	-144(%rbp), %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L165
.L180:
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -144(%rbp)
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rsi
	movl	-12(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, -12(%rbp)
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L165:
	jmp	.L158
.L203:
	nop
	jmp	.L174
.L204:
	nop
.L174:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$791, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	.LC2(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$793, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L157
.L200:
	nop
.L159:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	$0, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	str_copy, .-str_copy
	.section	.rodata
.LC19:
	.string	"calling stat(%s)"
.LC20:
	.string	"%s"
.LC21:
	.string	"r"
	.text
	.type	process_include, @function
process_include:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	jns	.L206
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$813, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	-168(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L211
.L206:
	movl	-136(%rbp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	jne	.L208
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L209
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$820, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rax, %rcx
	movl	$111, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L211
.L209:
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_next_file
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L210
	movq	-184(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, (%rax)
.L210:
	movq	-8(%rbp), %rax
	jmp	.L211
.L208:
	leaq	.LC21(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	process_include, .-process_include
	.section	.rodata
.LC22:
	.string	".conf"
.LC23:
	.string	".cnf"
	.text
	.type	get_next_file, @function
get_next_file:
.LFB190:
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
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	jmp	.L213
.L220:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$5, -24(%rbp)
	jbe	.L214
	movq	-24(%rbp), %rax
	leaq	-5(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L215
.L214:
	cmpq	$4, -24(%rbp)
	jbe	.L213
	movq	-24(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L213
.L215:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$859, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L221
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L218
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-32(%rbp), %rdx
	leaq	.LC15(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L218:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	leaq	.LC21(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$881, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -48(%rbp)
	je	.L213
	movq	-48(%rbp), %rax
	jmp	.L219
.L213:
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_DIR_read@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L220
	jmp	.L217
.L221:
	nop
.L217:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_DIR_end@PLT
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	get_next_file, .-get_next_file
	.type	is_keytype, @function
is_keytype:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	movb	%dl, -28(%rbp)
	movw	%ax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movzbl	-28(%rbp), %eax
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	testb	%al, %al
	jns	.L223
	movl	$0, %eax
	jmp	.L224
.L223:
	movzbl	-9(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	andw	-32(%rbp), %ax
	testw	%ax, %ax
	setne	%al
	movzbl	%al, %eax
.L224:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	is_keytype, .-is_keytype
	.type	eat_ws, @function
eat_ws:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L226
.L228:
	addq	$1, -16(%rbp)
.L226:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L227
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L228
.L227:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	eat_ws, .-eat_ws
	.type	trim_ws, @function
trim_ws:
.LFB193:
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
	jmp	.L231
.L232:
	addq	$1, -8(%rbp)
.L231:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L232
	subq	$1, -8(%rbp)
	jmp	.L233
.L235:
	subq	$1, -8(%rbp)
.L233:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L234
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L235
.L234:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	trim_ws, .-trim_ws
	.type	eat_alpha_numeric, @function
eat_alpha_numeric:
.LFB194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.L244:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$32, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L237
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L238
	addq	$1, -16(%rbp)
	jmp	.L240
.L238:
	addq	$2, -16(%rbp)
	jmp	.L240
.L237:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$775, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L241
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L242
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$4096, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L241
.L242:
	movq	-16(%rbp), %rax
	jmp	.L245
.L241:
	addq	$1, -16(%rbp)
.L240:
	jmp	.L244
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	eat_alpha_numeric, .-eat_alpha_numeric
	.type	scan_quote, @function
scan_quote:
.LFB195:
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
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	addq	$1, -32(%rbp)
	jmp	.L247
.L251:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L248
	addq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L248
	movq	-32(%rbp), %rax
	jmp	.L249
.L248:
	addq	$1, -32(%rbp)
.L247:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	jne	.L250
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L251
.L250:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L252
	addq	$1, -32(%rbp)
.L252:
	movq	-32(%rbp), %rax
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	scan_quote, .-scan_quote
	.type	scan_dquote, @function
scan_dquote:
.LFB196:
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
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	addq	$1, -32(%rbp)
	jmp	.L254
.L258:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L255
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L261
	addq	$1, -32(%rbp)
.L255:
	addq	$1, -32(%rbp)
.L254:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	testl	%eax, %eax
	je	.L258
	jmp	.L257
.L261:
	nop
.L257:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L259
	addq	$1, -32(%rbp)
.L259:
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	scan_dquote, .-scan_dquote
	.section	.rodata
.LC24:
	.string	"[%s] %s=%s\n"
.LC25:
	.string	"[[%s]]\n"
	.text
	.type	dump_value_doall_arg, @function
dump_value_doall_arg:
.LFB197:
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
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L263
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC24(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L265
.L263:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC25(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L265:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	dump_value_doall_arg, .-dump_value_doall_arg
	.type	lh_CONF_VALUE_doall_BIO_thunk, @function
lh_CONF_VALUE_doall_BIO_thunk:
.LFB198:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	lh_CONF_VALUE_doall_BIO_thunk, .-lh_CONF_VALUE_doall_BIO_thunk
	.type	lh_CONF_VALUE_doall_BIO, @function
lh_CONF_VALUE_doall_BIO:
.LFB199:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	lh_CONF_VALUE_doall_BIO_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	lh_CONF_VALUE_doall_BIO, .-lh_CONF_VALUE_doall_BIO
	.type	def_dump, @function
def_dump:
.LFB200:
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
	movq	-16(%rbp), %rdx
	leaq	dump_value_doall_arg(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_CONF_VALUE_doall_BIO
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	def_dump, .-def_dump
	.type	def_is_number, @function
def_is_number:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movsbl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	is_keytype
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	def_is_number, .-def_is_number
	.type	def_to_int, @function
def_to_int:
.LFB202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movsbl	-12(%rbp), %eax
	subl	$48, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	def_to_int, .-def_to_int
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 9
__func__.4:
	.string	"def_load"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 10
__func__.3:
	.string	"parsebool"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"def_load_bio"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 9
__func__.1:
	.string	"str_copy"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"process_include"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
