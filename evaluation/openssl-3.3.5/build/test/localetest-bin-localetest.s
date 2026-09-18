	.file	"localetest.c"
	.text
	.section	.rodata
.LC1:
	.string	""
	.align 8
.LC2:
	.string	"Cannot set the locale necessary for test"
.LC3:
	.string	"../test/localetest.c"
.LC4:
	.string	"failed"
.LC5:
	.string	"succeeded"
	.align 8
.LC6:
	.string	"Case-insensitive comparison via strcasecmp in current locale %s\n"
	.align 8
.LC7:
	.string	"OPENSSL_strcasecmp(str1, str2)"
.LC8:
	.string	"cert"
.LC9:
	.string	"cert_pubkey"
.LC10:
	.string	"X509_PUBKEY_get0(cert_pubkey)"
	.align 32
.LC0:
	.base64	"MIIDCTCCAfGgAwIBAgIUCOCM0/O/LPINCnXR6Oq+cGHZZ/kwDQYJKoZIhvcNAQELBQAwFDESMBAGA1UEAwwJbG9jYWxob3N0MB4XDTIyMDQxMTE0MTk1N1oXDTIyMDUxMTE0MTk1N1owFDESMBAGA1UEAwwJbG9jYWxob3N0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwx9cVkaNabZIPL/iD6dKRHJ0Nv7oLxBK6UZFcl5I3XWr2WORN5NGKH5FlEuK1QUrmgGWMN7MFC0GCRt9UBSZNmuXbsmxaXDNm3QkmuLUwB687PZ6u6BTk/homhihoVxH"
	.base64	"k9FMNowAs2ba8QWyOq1+S/PTk/pZCZxgN2lh6FozxrIaujbis1jpcwEtNkg2lOSypFvfPV9in9nzJAzwL3FEeRNwlae+6goICqZL6VhrpMLtdB6wO1nV5tuPWGqjfVJA7HK3un4wnRJX8kiugA0K9P0k7dgFspZEAj5uJbDEk9r+eNm70nFpcH+697BPFPeYcQFs7G92A1n/4rqN2SEIswIDAQABo1MwUTAdBgNVHQ4EFgQUWbhuGnLpJx6/gIcPqdAGahEwd44wHwYDVR0jBBgwFoAUWbhuGnLpJx6/gIcPqdAGahEwd44wDwYDVR0TAQH/BAUwAwEB/zANBgkq"
	.base64	"hkiG9w0BAQsFAAOCAQEAmHaePPw/WOjyHy4Roln6J7XsnZcFBiyVpSiIhutOimLph3jYGCJOsY1GSkxufFNiLPJ6laAaMBhqMW8/VSWfZ2BomQ9BCcjiBDMiGunzrs62g2R4ZhTJVMg0cJavFs2434F+8KZ9wROydjrVfmiM1QBwgiN+XskxLzNUqq/N6TiaI1OtTnKnb0dgydMGm3ohxunbPKrAISlfRGpFkHNebXiCy0Lmumey5qIVBOpprj7ADBCZ7KmwfuiU4vOv959l59fiSfpSfbX9oKXgSac9lCAt7IwipaRD+n7QUCG4ZxhEaY/dR0HGNeDpLkGpb0Hu"
	.base64	"ub1F84jBIzWWuvjNS4NzXw=="
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$896, %rsp
	leaq	-816(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$97, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movl	(%rdx), %ecx
	movl	%ecx, (%rax)
	leaq	4(%rax), %rax
	leaq	4(%rdx), %rdx
	movzbl	(%rdx), %ecx
	movb	%cl, (%rax)
	movabsq	$5797367907560355155, %rax
	movabsq	$8747480741579612789, %rdx
	movq	%rax, -848(%rbp)
	movq	%rdx, -840(%rbp)
	movabsq	$31356346280011083, %rax
	movq	%rax, -835(%rbp)
	movabsq	$8103210916774049139, %rax
	movabsq	$8747515925951701621, %rdx
	movq	%rax, -880(%rbp)
	movq	%rdx, -872(%rbp)
	movabsq	$31356346816882027, %rax
	movq	%rax, -867(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, -888(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	setlocale@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L10
.L2:
	leaq	-880(%rbp), %rdx
	leaq	-848(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L4
	leaq	.LC4(%rip), %rax
	jmp	.L5
.L4:
	leaq	.LC5(%rip), %rax
.L5:
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	leaq	-880(%rbp), %rdx
	leaq	-848(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$107, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L10
.L6:
	leaq	-888(%rbp), %rax
	movl	$781, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L10
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_X509_PUBKEY@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$115, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
	jmp	.L10
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	cleanup_tests, .-cleanup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
