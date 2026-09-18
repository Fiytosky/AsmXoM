	.file	"pkcs7_test.c"
	.text
	.section	.rodata
	.align 32
	.type	cert_der, @object
	.size	cert_der, 341
cert_der:
	.base64	"MIIBUTCB96ADAgECAgIDCTAKBggqhkjOPQQDAjAnMQswCQYDVQQGEwJVUzEYMBYGA1UEAwwPY3J5cHRvZ3JhcGh5IENBMB4XDTE3MDEwMTEyMDEwMFoXDTM4MTIzMTA4MzAwMFowJzELMAkGA1UEBhMCVVMxGDAWBgNVBAMMD2NyeXB0b2dyYXBoeSBDQTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABBj/z7v5Obj13cPuwECLBnUGq0/N2CxSJE4f4BBGZ7VfFblivTvPDG++Gve0oQ+0uctuhrNQ+WxRv8GC177F+QWjEzARMA8GA1UdEwEB/wQFMAMBAf8w"
	.base64	"CgYIKoZIzj0EAwIDSQAwRgIhANES742XWm64tkGnz8DnpG6u2lHkZFQr3oaVvPcemvlbAiEA0WGGzmYx5C9UvfXIK7NEziT4pQtyESE0uRVKXw4nMqk="
	.align 8
.LC0:
	.string	"MIME-Version: 1.0\nContent-Type: multipart/signed; protocol=\"application/x-pkcs7-signature\"; micalg=\"sha-256\"; boundary=\"----9B5319FF2E4428B17CD26B69294E7F31\"\n\n"
	.align 8
.LC1:
	.string	"This is an S/MIME signed message\n\n------9B5319FF2E4428B17CD26B69294E7F31\n"
	.align 8
.LC2:
	.string	"Content-Type: text/plain\r\n\r\nhello world\n------9B5319FF2E4428B17CD26B69294E7F31\n"
	.align 8
.LC3:
	.string	"Content-Type: application/x-pkcs7-signature; name=\"smime.p7s\"\n"
	.align 8
.LC4:
	.string	"Content-Transfer-Encoding: base64\nContent-Disposition: attachment; filename=\"smime.p7s\"\n\n"
	.align 8
.LC5:
	.ascii	"MIIDEgYJKoZIhvcNAQcCoIIDAzCCAv8CAQExDzANBglghkgBZQMEAgEFADAL"
	.ascii	"Bgkq\nhkiG9w0BBwGgggFVMIIBUTCB96ADAgECAgIDCTAKBggqhkjOPQQDAj"
	.ascii	"AnMQswCQYD\nVQQG"
	.string	"EwJVUzEYMBYGA1UEAwwPY3J5cHRvZ3JhcGh5IENBMB4XDTE3MDEwMTEyMDEw\nMFoXDTM4MTIzMTA4MzAwMFowJzELMAkGA1UEBhMCVVMxGDAWBgNVBAMMD2NyeXB0\nb2dyYXBoeSBDQTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABBj/z7v5Obj13cPu\nwECLBnUGq0/N2CxSJE4f4BBGZ7VfFblivTvPDG++Gve0oQ+0uctuhrNQ+WxRv8GC\n"
	.align 8
.LC6:
	.ascii	"177F+QWjEzARMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwIDSQAwRgIh"
	.ascii	"ANES\n742XWm64tkGnz8DnpG6u2lHkZFQr3oaVvPcemvlbAiEA0WGGzmYx5C"
	.ascii	"9UvfXIK7NE\nziT4"
	.string	"pQtyESE0uRVKXw4nMqkxggGBMIIBfQIBATAtMCcxCzAJBgNVBAYTAlVTMRgw\nFgYDVQQDDA9jcnlwdG9ncmFwaHkgQ0ECAgMJMA0GCWCGSAFlAwQCAQUAoIHkMBgG\nCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDUyMDE4\nNTA0OVowLwYJKoZIhvcNAQkEMSIEIOdwMRgQrqcnmMYvag+BVvErcc6bwUXI94Ds\n"
	.align 8
.LC7:
	.ascii	"QkiyIU9pMHkGCSqGSIb3DQEJDzFsMGowCwYJYIZIAWUDBAEqMAsGCWCGSAFl"
	.ascii	"AwQB\nFjALBglghkgBZQM"
	.string	"EAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqG\nSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMAoGCCqGSM49BAMCBEcw\nRQIhANYMJku1fW9T1MIEcAyREArz9kXCY4tWck5Pt0xzrYhaAiBDSP6e43zj4YtI\nuvQW+Lzv+dNF8EPuhgoPNe17RuUSLw==\n\n------9B5319FF2E4428B17CD26B69294E7F31--\n\n"
	.align 8
.LC8:
	.string	"Content-Type: text/plain\r\n\r\nhello world"
.LC9:
	.string	"bio = BIO_new(BIO_s_mem())"
.LC10:
	.string	"../test/pkcs7_test.c"
	.align 8
.LC11:
	.string	"msg_bio = BIO_new_mem_buf(signed_data, strlen(signed_data))"
	.align 8
.LC12:
	.string	"x509_bio = BIO_new_mem_buf(cert_der, sizeof(cert_der))"
	.align 8
.LC13:
	.string	"cert = d2i_X509_bio(x509_bio, NULL)"
.LC14:
	.string	"0"
.LC15:
	.string	"ERR_peek_error()"
.LC16:
	.string	"store = X509_STORE_new()"
	.align 8
.LC17:
	.string	"X509_STORE_add_cert(store, cert)"
	.align 8
.LC18:
	.string	"p7 = SMIME_read_PKCS7(bio, NULL)"
	.align 8
.LC19:
	.string	"PKCS7_verify(p7, NULL, store, msg_bio, NULL, PKCS7_TEXT)"
	.text
	.type	pkcs7_verify_test, @function
pkcs7_verify_test:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -72(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$71, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L9
	movq	$0, -16(%rbp)
	jmp	.L4
.L5:
	movq	-16(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	addq	$1, -16(%rbp)
.L4:
	cmpq	$7, -16(%rbp)
	jbe	.L5
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$76, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	leaq	cert_der(%rip), %rax
	movl	$341, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$77, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_X509_bio@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$78, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	call	X509_STORE_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_cert@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$81, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SMIME_read_PKCS7@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$82, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	PKCS7_verify@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC10(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	movl	%eax, -4(%rbp)
	jmp	.L3
.L9:
	nop
.L3:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	pkcs7_verify_test, .-pkcs7_verify_test
	.section	.rodata
.LC20:
	.string	"pkcs7_verify_test"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	pkcs7_verify_test(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
