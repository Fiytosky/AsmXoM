	.file	"bio_enc_test.c"
	.text
	.section	.rodata
	.align 32
	.type	KEY, @object
	.size	KEY, 32
KEY:
	.base64	"UVDRdy9Qg0pQPgaalz+9fOYcQytyCxnRjsjYS9xjFRs="
	.align 32
	.type	IV, @object
	.size	IV, 32
IV:
	.base64	"AQIDBAUGBwgBAgMEBQYHCAECAwQFBgcIAQIDBAUGBwg="
.LC0:
	.string	"0"
.LC1:
	.string	"RAND_bytes(inp, DATA_SIZE)"
.LC2:
	.string	"../test/bio_enc_test.c"
.LC3:
	.string	"b"
	.align 8
.LC4:
	.string	"BIO_set_cipher(b, cipher, key, iv, ENCRYPT)"
.LC5:
	.string	"mem"
	.align 8
.LC6:
	.string	"Split encrypt failed @ operation %d"
.LC7:
	.string	"(unsigned char)~ref[i]"
.LC8:
	.string	"out[i]"
	.align 8
.LC9:
	.string	"Encrypt overstep check failed @ operation %d"
.LC10:
	.string	"ref"
.LC11:
	.string	"out"
	.align 8
.LC12:
	.string	"Encrypt compare failed @ operation %d"
	.align 8
.LC13:
	.string	"Small chunk encrypt failed @ operation %d"
	.align 8
.LC14:
	.string	"Small chunk encrypt compare failed @ operation %d"
	.align 8
.LC15:
	.string	"BIO_set_cipher(b, cipher, key, iv, DECRYPT)"
.LC16:
	.string	"inp"
	.align 8
.LC17:
	.string	"Split decrypt failed @ operation %d"
	.align 8
.LC18:
	.string	"Decrypt overstep check failed @ operation %d"
	.align 8
.LC19:
	.string	"Decrypt compare failed @ operation %d"
	.align 8
.LC20:
	.string	"Small chunk decrypt failed @ operation %d"
	.align 8
.LC21:
	.string	"Small chunk decrypt compare failed @ operation %d"
	.text
	.type	do_bio_cipher, @function
do_bio_cipher:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2192, %rsp
	movq	%rdi, -2168(%rbp)
	movq	%rsi, -2176(%rbp)
	movq	%rdx, -2184(%rbp)
	leaq	inp.0(%rip), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L42
.L2:
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$54, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$0, %eax
	jmp	.L42
.L4:
	movq	-2184(%rbp), %rcx
	movq	-2176(%rbp), %rdx
	movq	-2168(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	BIO_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$56, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	leaq	inp.0(%rip), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L44
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	leaq	-2160(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1056, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$1, -12(%rbp)
	jmp	.L8
.L14:
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$68, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L42
.L9:
	movq	-2184(%rbp), %rcx
	movq	-2176(%rbp), %rdx
	movq	-2168(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	BIO_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L10
	movl	-12(%rbp), %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L6
.L10:
	leaq	inp.0(%rip), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$75, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L45
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	leaq	-1104(%rbp), %rax
	movl	$1056, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-12(%rbp), %eax
	cltq
	movzbl	-2160(%rbp,%rax), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	movb	%dl, -1104(%rbp,%rax)
	movl	-12(%rbp), %edx
	leaq	-1104(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movzbl	-2160(%rbp,%rax), %eax
	notl	%eax
	movzbl	%al, %edi
	movl	-12(%rbp), %eax
	cltq
	movzbl	-1104(%rbp,%rax), %eax
	movzbl	%al, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	jne	.L12
	movl	-12(%rbp), %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$83, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L6
.L12:
	movl	-16(%rbp), %eax
	movl	$1056, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	movl	-16(%rbp), %eax
	cltq
	leaq	-1104(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	addl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-16(%rbp), %eax
	movslq	%eax, %r8
	leaq	-1104(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-2160(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L13
	movl	-12(%rbp), %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$90, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L42
.L13:
	addl	$1, -12(%rbp)
.L8:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L14
	movl	$1, -12(%rbp)
	jmp	.L15
.L22:
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$100, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L42
.L16:
	movq	-2184(%rbp), %rcx
	movq	-2176(%rbp), %rdx
	movq	-2168(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	BIO_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$102, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L17
	movl	-12(%rbp), %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$103, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L6
.L17:
	leaq	inp.0(%rip), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$107, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	leaq	-1104(%rbp), %rax
	movl	$1056, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -16(%rbp)
	jmp	.L19
.L20:
	movl	-36(%rbp), %eax
	addl	%eax, -16(%rbp)
.L19:
	movl	-16(%rbp), %eax
	cltq
	leaq	-1104(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L20
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-16(%rbp), %eax
	movslq	%eax, %r8
	leaq	-1104(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-2160(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L21
	movl	-12(%rbp), %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$117, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L42
.L21:
	addl	$1, -12(%rbp)
.L15:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -12(%rbp)
	jl	.L22
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$126, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L42
.L23:
	movq	-2184(%rbp), %rcx
	movq	-2176(%rbp), %rdx
	movq	-2168(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BIO_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L47
	movl	-28(%rbp), %edx
	leaq	-2160(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$132, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	leaq	-1104(%rbp), %rax
	movl	$1056, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-1104(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1056, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-16(%rbp), %eax
	movslq	%eax, %rsi
	leaq	inp.0(%rip), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-1104(%rbp), %rsi
	pushq	%rsi
	movl	$1024, %r9d
	movq	%rdi, %r8
	movl	$150, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L42
.L26:
	movl	$1, -12(%rbp)
	jmp	.L27
.L33:
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$156, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L42
.L28:
	movq	-2184(%rbp), %rcx
	movq	-2176(%rbp), %rdx
	movq	-2168(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BIO_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$158, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L29
	movl	-12(%rbp), %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$159, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L6
.L29:
	movl	-28(%rbp), %edx
	leaq	-2160(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$163, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L49
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	leaq	-1104(%rbp), %rax
	movl	$1056, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-12(%rbp), %eax
	cltq
	movzbl	-2160(%rbp,%rax), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	movb	%dl, -1104(%rbp,%rax)
	movl	-12(%rbp), %edx
	leaq	-1104(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movzbl	-2160(%rbp,%rax), %eax
	notl	%eax
	movzbl	%al, %edi
	movl	-12(%rbp), %eax
	cltq
	movzbl	-1104(%rbp,%rax), %eax
	movzbl	%al, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$170, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	jne	.L31
	movl	-12(%rbp), %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$171, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L6
.L31:
	movl	-16(%rbp), %eax
	movl	$1056, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	movl	-16(%rbp), %eax
	cltq
	leaq	-1104(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	addl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-16(%rbp), %eax
	movslq	%eax, %rsi
	leaq	inp.0(%rip), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-1104(%rbp), %rsi
	pushq	%rsi
	movl	$1024, %r9d
	movq	%rdi, %r8
	movl	$177, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L32
	movl	-12(%rbp), %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$178, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L42
.L32:
	addl	$1, -12(%rbp)
.L27:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L33
	movl	$1, -12(%rbp)
	jmp	.L34
.L41:
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$188, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L42
.L35:
	movq	-2184(%rbp), %rcx
	movq	-2176(%rbp), %rdx
	movq	-2168(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BIO_set_cipher@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L36
	movl	-12(%rbp), %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$191, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L6
.L36:
	movl	-28(%rbp), %edx
	leaq	-2160(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$195, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	leaq	-1104(%rbp), %rax
	movl	$1056, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -16(%rbp)
	jmp	.L38
.L39:
	movl	-32(%rbp), %eax
	addl	%eax, -16(%rbp)
.L38:
	movl	-16(%rbp), %eax
	cltq
	leaq	-1104(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L39
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	-16(%rbp), %eax
	movslq	%eax, %rsi
	leaq	inp.0(%rip), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-1104(%rbp), %rsi
	pushq	%rsi
	movl	$1024, %r9d
	movq	%rdi, %r8
	movl	$204, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L40
	movl	-12(%rbp), %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$205, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L42
.L40:
	addl	$1, -12(%rbp)
.L34:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -12(%rbp)
	jl	.L41
	movl	$1, %eax
	jmp	.L42
.L43:
	nop
	jmp	.L6
.L44:
	nop
	jmp	.L6
.L45:
	nop
	jmp	.L6
.L46:
	nop
	jmp	.L6
.L47:
	nop
	jmp	.L6
.L48:
	nop
	jmp	.L6
.L49:
	nop
	jmp	.L6
.L50:
	nop
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$0, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	do_bio_cipher, .-do_bio_cipher
	.type	do_test_bio_cipher, @function
do_test_bio_cipher:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L52
	cmpl	$1, -12(%rbp)
	je	.L53
	jmp	.L56
.L52:
	leaq	KEY(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_bio_cipher
	jmp	.L55
.L53:
	leaq	IV(%rip), %rdx
	leaq	KEY(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_bio_cipher
	jmp	.L55
.L56:
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	do_test_bio_cipher, .-do_test_bio_cipher
	.type	test_bio_enc_aes_128_cbc, @function
test_bio_enc_aes_128_cbc:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	do_test_bio_cipher
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_bio_enc_aes_128_cbc, .-test_bio_enc_aes_128_cbc
	.type	test_bio_enc_aes_128_ctr, @function
test_bio_enc_aes_128_ctr:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	call	EVP_aes_128_ctr@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	do_test_bio_cipher
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_bio_enc_aes_128_ctr, .-test_bio_enc_aes_128_ctr
	.type	test_bio_enc_aes_256_cfb, @function
test_bio_enc_aes_256_cfb:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	call	EVP_aes_256_cfb128@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	do_test_bio_cipher
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_bio_enc_aes_256_cfb, .-test_bio_enc_aes_256_cfb
	.type	test_bio_enc_aes_256_ofb, @function
test_bio_enc_aes_256_ofb:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	call	EVP_aes_256_ofb@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	do_test_bio_cipher
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_bio_enc_aes_256_ofb, .-test_bio_enc_aes_256_ofb
	.type	test_bio_enc_chacha20, @function
test_bio_enc_chacha20:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	call	EVP_chacha20@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	do_test_bio_cipher
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_bio_enc_chacha20, .-test_bio_enc_chacha20
	.type	test_bio_enc_chacha20_poly1305, @function
test_bio_enc_chacha20_poly1305:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	call	EVP_chacha20_poly1305@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	do_test_bio_cipher
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_bio_enc_chacha20_poly1305, .-test_bio_enc_chacha20_poly1305
	.section	.rodata
.LC22:
	.string	"cipher"
	.align 8
.LC23:
	.string	"(key_size = EVP_CIPHER_key_length(cipher))"
	.align 8
.LC24:
	.string	"(iv_size = EVP_CIPHER_iv_length(cipher))"
.LC25:
	.string	"mem = BIO_new(BIO_s_mem())"
.LC26:
	.string	"b64 = BIO_new(BIO_f_base64())"
	.align 8
.LC27:
	.string	"cbio = BIO_new(BIO_f_cipher())"
.LC28:
	.string	"BIO_push(b64, mem)"
.LC29:
	.string	"BIO_push(cbio, b64)"
	.align 8
.LC30:
	.string	"BIO_get_cipher_ctx(cbio, &ctx)"
	.align 8
.LC31:
	.string	"EVP_CipherInit_ex(ctx, cipher, NULL, KEY, IV, ENCRYPT)"
	.align 8
.LC32:
	.string	"BIO_write(cbio, pbuf, sizeof(pbuf) - 1)"
.LC33:
	.string	"BIO_flush(cbio)"
	.align 8
.LC34:
	.string	"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_GET_TAG, sizeof(tag), tag)"
.LC35:
	.string	"BIO_reset(mem)"
	.align 8
.LC36:
	.string	"EVP_CipherInit_ex(ctx, cipher, NULL, KEY, IV, DECRYPT)"
	.align 8
.LC37:
	.string	"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_SET_TAG, sizeof(tag), tag)"
	.align 8
.LC38:
	.string	"(n = BIO_read(cbio, cbuf, sizeof(cbuf)))"
.LC39:
	.string	"BIO_get_cipher_status(cbio)"
.LC40:
	.string	"pbuf"
.LC41:
	.string	"cbuf"
	.text
	.type	test_bio_enc_eof_read_flush, @function
test_bio_enc_eof_read_flush:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movabsq	$6998711895514707009, %rax
	movq	%rax, -91(%rbp)
	movabsq	$31093507613553761, %rax
	movq	%rax, -84(%rbp)
	call	EVP_aes_256_gcm@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	leaq	-144(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-56(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$276, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$277, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L76
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L76
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$279, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	call	BIO_f_base64@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$280, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$281, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$282, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$283, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L76
	leaq	-120(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$284, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L76
	movq	-120(%rbp), %rax
	leaq	IV(%rip), %rcx
	leaq	KEY(%rip), %rdx
	movq	-56(%rbp), %rsi
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$285, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	leaq	-91(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$286, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L76
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$287, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L76
	movq	-120(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$288, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L76
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$297, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L77
	call	BIO_f_base64@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$298, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	call	BIO_f_cipher@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$299, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$300, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$301, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	leaq	-120(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$302, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L77
	movq	-120(%rbp), %rax
	leaq	IV(%rip), %rcx
	leaq	KEY(%rip), %rdx
	movq	-56(%rbp), %rsi
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-120(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$304, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L77
	leaq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$306, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L77
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$113, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$307, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L77
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$309, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$113, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$310, %esi
	call	test_true@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ebx, %eax
	testl	%eax, %eax
	jne	.L77
	movl	-76(%rbp), %eax
	movslq	%eax, %r8
	leaq	-112(%rbp), %rdi
	leaq	.LC40(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$14
	leaq	-91(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$311, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L77
	movl	$1, -44(%rbp)
	jmp	.L72
.L76:
	nop
	jmp	.L72
.L77:
	nop
.L72:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_bio_enc_eof_read_flush, .-test_bio_enc_eof_read_flush
	.section	.rodata
.LC42:
	.string	"test_bio_enc_aes_128_cbc"
.LC43:
	.string	"test_bio_enc_aes_128_ctr"
.LC44:
	.string	"test_bio_enc_aes_256_cfb"
.LC45:
	.string	"test_bio_enc_aes_256_ofb"
.LC46:
	.string	"test_bio_enc_chacha20"
	.align 8
.LC47:
	.string	"test_bio_enc_chacha20_poly1305"
.LC48:
	.string	"test_bio_enc_eof_read_flush"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_bio_enc_aes_128_cbc(%rip), %rsi
	leaq	.LC42(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bio_enc_aes_128_ctr(%rip), %rsi
	leaq	.LC43(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bio_enc_aes_256_cfb(%rip), %rsi
	leaq	.LC44(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bio_enc_aes_256_ofb(%rip), %rsi
	leaq	.LC45(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bio_enc_chacha20(%rip), %rsi
	leaq	.LC46(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bio_enc_chacha20_poly1305(%rip), %rsi
	leaq	.LC47(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_bio_enc_eof_read_flush(%rip), %rdx
	leaq	.LC48(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	setup_tests, .-setup_tests
	.local	inp.0
	.comm	inp.0,1056,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
