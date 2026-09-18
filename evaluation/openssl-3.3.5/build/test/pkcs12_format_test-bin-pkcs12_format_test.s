	.file	"pkcs12_format_test.c"
	.text
	.type	ossl_check_const_PKCS12_SAFEBAG_sk_type, @function
ossl_check_const_PKCS12_SAFEBAG_sk_type:
.LFB450:
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
.LFE450:
	.size	ossl_check_const_PKCS12_SAFEBAG_sk_type, .-ossl_check_const_PKCS12_SAFEBAG_sk_type
	.data
	.align 4
	.type	default_libctx, @object
	.size	default_libctx, 4
default_libctx:
	.long	1
	.local	testctx
	.comm	testctx,8,8
	.local	nullprov
	.comm	nullprov,8,8
	.local	deflprov
	.comm	deflprov,8,8
	.local	lgcyprov
	.comm	lgcyprov,8,8
	.section	.rodata
	.align 32
	.type	CERT1, @object
	.size	CERT1, 497
CERT1:
	.base64	"MIIB7TCCAVagAwIBAgIJAItLXmwDKE7mMA0GCSqGSIb3DQEBCwUAMBkxFzAVBgNVBAMMDlAxMlRlc3QtUm9vdC1BMB4XDTE5MDkzMDAwNDY1NloXDTI5MDkyNzAwNDY1NlowGzEZMBcGA1UEAwwQUDEyVGVzdC1TZXJ2ZXItMTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAvNxvjHoqS+pmZgSpBZJT1xM8SeHIu989y4gxByBZkyR/fcaEgRZkSlKmMETcGjDerikYz8fzzwy3jiseIQEL++XmzyuE4TP4ugL8MPrEM8c3xn9yMZIdj6D75UoIMXiAnCO0"
	.base64	"6RlWBPoNBwS3Q6xMSXzCoUTBSH0o5SNmByLV8PECAwEAAaM7MDkwHwYDVR0jBBgwFoAU27u4kk4kCxu7eDP5AQIjDZYYMEcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBPAwDQYJKoZIhvcNAQELBQADgYEAHBPcAvFENmWpvjAcZhQghlqoaSX4GraeXumJuGdwGYdg60sRcYX46ac+IELsQyUBA+VNgyL1jjoaG9Qc2mudEBvuZ04faau8qmKOnsbu1gnAyuCqnweywrsxlqIEYtMTMilnbq0uC+oEfIxaXawUqmF/KGwtZC3Dr3dSkLQ3wDA="
	.align 32
	.type	CERT2, @object
	.size	CERT2, 497
CERT2:
	.base64	"MIIB7TCCAVagAwIBAgIJAItLXmwDKE7nMA0GCSqGSIb3DQEBCwUAMBkxFzAVBgNVBAMMDlAxMlRlc3QtUm9vdC1BMB4XDTE5MDkzMDAwNDY1NloXDTI5MDkyNzAwNDY1NlowGzEZMBcGA1UEAwwQUDEyVGVzdC1DbGllbnQtMTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAqG5Ahp+YWftXv8FVEjjrs0Y0yTVN/QPpOoiel4/07DZ7P7q4pZYwA8XG2ahOvCNRoZbSA5hzthecd9SVHhuzG8hx0S4xx2p1Vwh/unB292f0Tr78cGFBByt8PDuzvNWovSjY"
	.base64	"SdPheMjBQl4YNqhB98iqNf4t0bTMAGeuedMo1VsCAwEAAaM7MDkwHwYDVR0jBBgwFoAU27u4kk4kCxu7eDP5AQIjDZYYMEcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBPAwDQYJKoZIhvcNAQELBQADgYEAO6ZzvuAo7R8peEzAH+mFxo/jh3zZ5wo36Kq10n/4kCCANad5KwSnv+Z7WMvsDljvKnCKVorPa3p0DPQVN5PN5rKhgwnbnk//ahdPM8nMkCpn/xZ4qCwQ4FKM5umQjeBiBJoPRAGCFJJEJWkit7jFlExLHJuSYGaQTrmoTIm7Dws="
	.align 32
	.type	KEY1, @object
	.size	KEY1, 609
KEY1:
	.base64	"MIICXQIBAAKBgQC83G+MeipL6mZmBKkFklPXEzxJ4ci73z3LiDEHIFmTJH99xoSBFmRKUqYwRNwaMN6uKRjPx/PPDLeOKx4hAQv75ebPK4ThM/i6Avww+sQzxzfGf3Ixkh2PoPvlSggxeICcI7TpGVYE+g0HBLdDrExJfMKhRMFIfSjlI2YHItXw8QIDAQABAoGBAKVt+Y/1WqNQ2Q03u84TlLjqMn8M9UYLkBd+XmO9pHjNGZfUkjB4qrSnnMbfKmUOtZ+chA1NOnT80LQJdMS4JAOo8PgNXI7fS+EKj0/Vx5tUVY8AXOpMc/kbv7iTMyDORdkDArI2xQowUHiA"
	.base64	"ZgAiOIbPY0pcvyvZbubwOa0SJUG5AkEA83wHmWQ6KIyNBf4ytUyMbd49FgigAWFPjqD3Jia1jsB6zoY03rjvhgG+JKqbNpNym/nGy3aEZwYGMFDfQhfgpwJBAMaRoEE0EWdLCA/ap5nsWBGlgttQ/nfi0VOcfei/53ypAbGHw1J5niynbwI3Mu8kMSELhgUySi4LZQXT1jCy/KcCQQDC7THcQJw66ELiYF5SPMVUFA6NfDw0vqYFhqI2XdkOPtRSUKk1AZNoki6ahicaqzKe4nmfW/Ol0vHTbns+G4WTAkBouLZ+jLo88oou6k8H02hi7hoEFkQN7/YblWWl0UeB"
	.base64	"LBSzjvkIzxEHVcoqrffTvQ+X8N7ecLZEcEf3+c91YX/zAkA4SmevrrayagAlWqRlILETvYP/tLz03aG7HJY3NfS/7UztkuisycGloyNmQIqh5uOV/sRT9X1uykVC5MKf5R61"
	.align 32
	.type	KEY2, @object
	.size	KEY2, 608
KEY2:
	.base64	"MIICXAIBAAKBgQCobkCGn5hZ+1e/wVUSOOuzRjTJNU39A+k6iJ6Xj/TsNns/urilljADxcbZqE68I1GhltIDmHO2F5x31JUeG7MbyHHRLjHHanVXCH+6cHb3Z/ROvvxwYUEHK3w8O7O81ai9KNhJ0+F4yMFCXhg2qEH3yKo1/i3RtMwAZ6550yjVWwIDAQABAoGBAKYAg/grM6z72/BSS9Y545Q9jakBsGu+fxABts0KRQrKZ47YKUSKUahmNSYwi+lBpiLs0vBYQTMm8j/odU/HXS5aqHrSv1mghnkLkmyVXYdjXNYawPZ6FY3HPLaeplhGm78+KIzfGoeqfvXy"
	.base64	"y16ELfaCfolO9eY8koAemBxqe1cBAkEA3WCV16GdDKGExTnKZ0wcBnFbXC2Nzs3iecgzvlA3YJ87uVlVIh+lSx3KOKCrh5yGDtscT08H7Rg/BTzseBH2mQJBAMLFz76VkevPR/MzMsd+k1b32PnUttYgrLqKIBkUq8VdsgjMd3xlqNtmlzZELGPAan6wC1yQElC0NmDDHyIMyBMCQDPIfgR8l2H2/jmsNP5IvV18cqRzO3KeklVuUTw5Q1rkpHHMxa8/u8iAZWctnjIQmQMsmcirce0x+Lve7ml/ujECQH68YFVO1chu9A5Xvi75Ob5ZP6Iwu1fRoxMuVXx8atje"
	.base64	"Ar6e7RDQxXMd6j6xVYEC70jIHFx6krBY0xlbXaK2VmkCQB4Aap+67kZaxbWfkTPdyZZ1t4fPGBy3uT8EELh1qbigMTUDMInIN2ggMJk5ltYrPV5FhPfSYVDJULqNCKrQCB4="
.LC0:
	.string	"friendlyName"
.LC1:
	.string	"george"
.LC2:
	.string	"localKeyID"
.LC3:
	.string	"1234567890"
.LC4:
	.string	"1.2.3.4.5"
.LC5:
	.string	"MyCustomAttribute"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ATTRS1, @object
	.size	ATTRS1, 64
ATTRS1:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	0
	.quad	0
	.section	.rodata
.LC6:
	.string	"janet"
.LC7:
	.string	"987654321"
.LC8:
	.string	"1.2.3.5.8.13"
.LC9:
	.string	"AnotherCustomAttribute"
	.section	.data.rel.ro.local
	.align 32
	.type	ATTRS2, @object
	.size	ATTRS2, 64
ATTRS2:
	.quad	.LC0
	.quad	.LC6
	.quad	.LC2
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	0
	.quad	0
	.section	.rodata
.LC10:
	.string	"wildduk"
.LC11:
	.string	"1122334455"
.LC12:
	.string	"oracle-jdk-trustedkeyusage"
.LC13:
	.string	"anyExtendedKeyUsage"
	.section	.data.rel.ro.local
	.align 32
	.type	ATTRS3, @object
	.size	ATTRS3, 64
ATTRS3:
	.quad	.LC0
	.quad	.LC10
	.quad	.LC2
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	0
	.quad	0
	.align 32
	.type	ATTRS4, @object
	.size	ATTRS4, 48
ATTRS4:
	.quad	.LC0
	.quad	.LC10
	.quad	.LC2
	.quad	.LC11
	.quad	0
	.quad	0
	.section	.rodata
.LC14:
	.string	"Password1"
	.section	.data.rel.ro.local
	.align 16
	.type	enc_default, @object
	.size	enc_default, 24
enc_default:
	.long	146
	.zero	4
	.quad	.LC14
	.long	1000
	.zero	4
	.align 16
	.type	mac_default, @object
	.size	mac_default, 24
mac_default:
	.long	64
	.zero	4
	.quad	.LC14
	.long	1000
	.zero	4
	.section	.rodata
	.align 32
	.type	enc_nids_all, @object
	.size	enc_nids_all, 64
enc_nids_all:
	.long	419
	.long	427
	.long	44
	.long	31
	.long	5
	.long	37
	.long	10
	.long	169
	.long	170
	.long	148
	.long	149
	.long	68
	.long	144
	.long	145
	.long	147
	.long	146
	.align 16
	.type	enc_nids_no_legacy, @object
	.size	enc_nids_no_legacy, 20
enc_nids_no_legacy:
	.long	419
	.long	427
	.long	44
	.long	147
	.long	146
	.align 16
	.type	mac_nids, @object
	.size	mac_nids, 24
mac_nids:
	.long	64
	.long	4
	.long	672
	.long	674
	.long	1097
	.long	1099
	.align 8
	.type	iters, @object
	.size	iters, 8
iters:
	.long	1
	.long	1000
.LC15:
	.string	""
	.section	.data.rel.local,"aw"
	.align 16
	.type	passwords, @object
	.size	passwords, 16
passwords:
	.quad	.LC14
	.quad	.LC15
	.section	.rodata
.LC16:
	.string	"My custom secret OID"
.LC17:
	.string	"CustomSecretOID"
.LC18:
	.string	"1.3.5.7.9"
	.align 8
.LC19:
	.string	"OBJ_create(\"1.3.5.7.9\", \"CustomSecretOID\", \"My custom secret OID\")"
.LC20:
	.string	"../test/pkcs12_format_test.c"
	.text
	.type	get_custom_oid, @function
get_custom_oid:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	sec_nid.2(%rip), %eax
	cmpl	$-1, %eax
	je	.L4
	movl	sec_nid.2(%rip), %eax
	jmp	.L5
.L4:
	leaq	.LC16(%rip), %rdx
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movl	%eax, %ecx
	movl	$328, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$-1, %eax
	jmp	.L5
.L6:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, sec_nid.2(%rip)
	movl	sec_nid.2(%rip), %eax
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	get_custom_oid, .-get_custom_oid
	.section	.rodata
.LC21:
	.string	"1cert.p12"
	.text
	.type	test_single_cert_no_attrs, @function
test_single_cert_no_attrs:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$497, %edx
	movq	%rax, %rdi
	call	add_certbag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_contentinfo@PLT
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$497, %edx
	movq	%rax, %rdi
	call	check_certbag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	test_single_cert_no_attrs, .-test_single_cert_no_attrs
	.section	.rodata
.LC22:
	.string	"1key_ciph-%s_iter-%d.p12"
	.text
	.type	test_single_key, @function
test_single_key:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC22(%rip), %rdx
	leaq	-112(%rbp), %rax
	movl	%ebx, %r8d
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	movq	-120(%rbp), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$609, %edx
	movq	%rax, %rdi
	call	add_keybag@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_contentinfo@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_pkcs12@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_contentinfo@PLT
	movq	-120(%rbp), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$609, %edx
	movq	%rax, %rdi
	call	check_keybag@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	test_single_key, .-test_single_key
	.type	test_single_key_enc_alg, @function
test_single_key_enc_alg:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	lgcyprov(%rip), %rax
	testq	%rax, %rax
	jne	.L12
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	enc_nids_no_legacy(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -32(%rbp)
	jmp	.L13
.L12:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	enc_nids_all(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -32(%rbp)
.L13:
	leaq	.LC14(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$1000, %eax
	movl	%eax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_single_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	test_single_key_enc_alg, .-test_single_key_enc_alg
	.type	test_single_key_enc_pass, @function
test_single_key_enc_pass:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$146, %eax
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	passwords(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$1000, %eax
	movl	%eax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_single_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	test_single_key_enc_pass, .-test_single_key_enc_pass
	.type	test_single_key_enc_iter, @function
test_single_key_enc_iter:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$146, %eax
	movl	%eax, -32(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	iters(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_single_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	test_single_key_enc_iter, .-test_single_key_enc_iter
	.section	.rodata
.LC23:
	.string	"1keyattrs.p12"
	.text
	.type	test_single_key_with_attrs, @function
test_single_key_with_attrs:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS1(%rip), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$609, %edx
	movq	%rax, %rdi
	call	add_keybag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_contentinfo@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS1(%rip), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$609, %edx
	movq	%rax, %rdi
	call	check_keybag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	test_single_key_with_attrs, .-test_single_key_with_attrs
	.section	.rodata
.LC24:
	.string	"1cert_mac-%s_iter-%d.p12"
	.text
	.type	test_single_cert_mac, @function
test_single_cert_mac:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC24(%rip), %rdx
	leaq	-112(%rbp), %rax
	movl	%ebx, %r8d
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	CERT1(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$497, %edx
	movq	%rax, %rdi
	call	add_certbag@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_contentinfo@PLT
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_pkcs12_with_mac@PLT
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_pkcs12_with_mac@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_contentinfo@PLT
	leaq	CERT1(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$497, %edx
	movq	%rax, %rdi
	call	check_certbag@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	test_single_cert_mac, .-test_single_cert_mac
	.type	test_single_cert_mac_alg, @function
test_single_cert_mac_alg:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mac_nids(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -32(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$1000, %eax
	movl	%eax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_single_cert_mac
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	test_single_cert_mac_alg, .-test_single_cert_mac_alg
	.type	test_single_cert_mac_pass, @function
test_single_cert_mac_pass:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$64, %eax
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	passwords(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$1000, %eax
	movl	%eax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_single_cert_mac
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	test_single_cert_mac_pass, .-test_single_cert_mac_pass
	.type	test_single_cert_mac_iter, @function
test_single_cert_mac_iter:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$64, %eax
	movl	%eax, -32(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	iters(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_single_cert_mac
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	test_single_cert_mac_iter, .-test_single_cert_mac_iter
	.section	.rodata
.LC25:
	.string	"1cert1key.p12"
	.text
	.type	test_cert_key_with_attrs_and_mac, @function
test_cert_key_with_attrs_and_mac:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	ATTRS1(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	add_certbag@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS1(%rip), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$609, %edx
	movq	%rax, %rdi
	call	add_keybag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_contentinfo@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_pkcs12_with_mac@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_pkcs12_with_mac@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_contentinfo@PLT
	leaq	ATTRS1(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	check_certbag@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS1(%rip), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$609, %edx
	movq	%rax, %rdi
	call	check_keybag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	test_cert_key_with_attrs_and_mac, .-test_cert_key_with_attrs_and_mac
	.section	.rodata
.LC26:
	.string	"1cert1key_enc.p12"
	.text
	.type	test_cert_key_encrypted_content, @function
test_cert_key_encrypted_content:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	ATTRS1(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	add_certbag@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS1(%rip), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$609, %edx
	movq	%rax, %rdi
	call	add_keybag@PLT
	leaq	enc_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_contentinfo_encrypted@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_pkcs12_with_mac@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_pkcs12_with_mac@PLT
	leaq	enc_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_contentinfo_encrypted@PLT
	leaq	ATTRS1(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	check_certbag@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS1(%rip), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$609, %edx
	movq	%rax, %rdi
	call	check_keybag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	test_cert_key_encrypted_content, .-test_cert_key_encrypted_content
	.section	.rodata
.LC27:
	.string	"1secret.p12"
.LC28:
	.string	"VerySecretMessage"
	.text
	.type	test_single_secret_encrypted_content, @function
test_single_secret_encrypted_content:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -8(%rbp)
	call	get_custom_oid
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	ATTRS1(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	add_secretbag@PLT
	leaq	enc_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_contentinfo_encrypted@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_pkcs12_with_mac@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_pkcs12_with_mac@PLT
	leaq	enc_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_contentinfo_encrypted@PLT
	leaq	ATTRS1(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_secretbag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	test_single_secret_encrypted_content, .-test_single_secret_encrypted_content
	.section	.rodata
.LC29:
	.string	"1secret_ciph-%s_iter-%d.p12"
	.text
	.type	test_single_secret, @function
test_single_secret:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC29(%rip), %rdx
	leaq	-112(%rbp), %rax
	movl	%ebx, %r8d
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -24(%rbp)
	call	get_custom_oid
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	ATTRS1(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	add_secretbag@PLT
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_contentinfo_encrypted@PLT
	leaq	mac_default(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_pkcs12_with_mac@PLT
	leaq	mac_default(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_pkcs12_with_mac@PLT
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_contentinfo_encrypted@PLT
	leaq	ATTRS1(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_secretbag@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	test_single_secret, .-test_single_secret
	.type	test_single_secret_enc_alg, @function
test_single_secret_enc_alg:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	lgcyprov(%rip), %rax
	testq	%rax, %rax
	jne	.L38
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	enc_nids_no_legacy(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -32(%rbp)
	jmp	.L39
.L38:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	enc_nids_all(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -32(%rbp)
.L39:
	leaq	.LC14(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$1000, %eax
	movl	%eax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	test_single_secret
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	test_single_secret_enc_alg, .-test_single_secret_enc_alg
	.section	.rodata
.LC30:
	.string	"multi_contents.p12"
.LC31:
	.string	"VeryVerySecretMessage"
	.text
	.type	test_multiple_contents, @function
test_multiple_contents:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -8(%rbp)
	call	get_custom_oid
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	ATTRS1(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	add_certbag@PLT
	leaq	ATTRS2(%rip), %rdx
	leaq	CERT2(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	add_certbag@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS1(%rip), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$609, %edx
	movq	%rax, %rdi
	call	add_keybag@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS2(%rip), %rdx
	leaq	KEY2(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$608, %edx
	movq	%rax, %rdi
	call	add_keybag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	ATTRS1(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	add_secretbag@PLT
	leaq	enc_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_contentinfo_encrypted@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_pkcs12_with_mac@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_pkcs12_with_mac@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_contentinfo@PLT
	leaq	ATTRS1(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	check_certbag@PLT
	leaq	ATTRS2(%rip), %rdx
	leaq	CERT2(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	check_certbag@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS1(%rip), %rdx
	leaq	KEY1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$609, %edx
	movq	%rax, %rdi
	call	check_keybag@PLT
	leaq	enc_default(%rip), %rcx
	leaq	ATTRS2(%rip), %rdx
	leaq	KEY2(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$608, %edx
	movq	%rax, %rdi
	call	check_keybag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	leaq	enc_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_contentinfo_encrypted@PLT
	leaq	ATTRS1(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_secretbag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	test_multiple_contents, .-test_multiple_contents
	.section	.rodata
.LC32:
	.string	"jdk_trusted.p12"
	.text
	.type	test_jdk_trusted_attr, @function
test_jdk_trusted_attr:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	ATTRS3(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	add_certbag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_contentinfo@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	end_pkcs12_with_mac@PLT
	leaq	mac_default(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_check_pkcs12_with_mac@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_contentinfo@PLT
	leaq	ATTRS3(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	check_certbag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	test_jdk_trusted_attr, .-test_jdk_trusted_attr
	.section	.rodata
.LC33:
	.string	"attrs.p12"
.LC34:
	.string	"attrs"
	.text
	.type	test_set0_attrs, @function
test_set0_attrs:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	new_pkcs12_builder@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_contentinfo@PLT
	leaq	ATTRS4(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	add_certbag@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_attrs@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC13(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, %rdx
	movl	$6, %esi
	movl	$1283, %edi
	call	X509_ATTRIBUTE_create@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509at_add1_attr@PLT
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_set0_attrs@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_attrs@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$777, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	start_check_contentinfo@PLT
	leaq	ATTRS3(%rip), %rdx
	leaq	CERT1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$497, %edx
	movq	%rax, %rdi
	call	check_certbag@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_contentinfo@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_check_pkcs12@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	jmp	.L49
.L51:
	nop
.L47:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_pkcs12_builder@PLT
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	test_set0_attrs, .-test_set0_attrs
	.section	.rodata
	.align 8
.LC35:
	.string	"pkey = d2i_PrivateKey_ex(EVP_PKEY_RSA, NULL, &p, sizeof(rsa_key), NULL, NULL)"
.LC36:
	.string	"0"
.LC37:
	.string	"ERR_peek_error()"
.LC38:
	.string	"p12"
	.text
	.type	pkcs12_create_test, @function
pkcs12_create_test:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	rsa_key.1(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$609, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$6, %edi
	call	d2i_PrivateKey_ex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$867, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$870, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L60
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$1
	pushq	$2
	pushq	$146
	movl	$146, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS12_create@PLT
	addq	$32, %rsp
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$875, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$878, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L62
	movl	$1, -4(%rbp)
	jmp	.L54
.L59:
	nop
	jmp	.L54
.L60:
	nop
	jmp	.L54
.L61:
	nop
	jmp	.L54
.L62:
	nop
.L54:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	pkcs12_create_test, .-pkcs12_create_test
	.section	.rodata
.LC39:
	.string	"cert"
.LC40:
	.string	"pkey"
.LC41:
	.string	"pass"
.LC42:
	.string	"bio"
.LC43:
	.string	"1"
.LC44:
	.string	"i2d_PKCS12_bio(bio, p12)"
.LC45:
	.string	"p12_parsed"
	.align 8
.LC46:
	.string	"PKCS12_parse(p12_parsed, \"pass\", &pkey_parsed, &cert_parsed, NULL)"
.LC47:
	.string	"new_pass"
.LC48:
	.string	"p12_recreated"
	.text
	.type	pkcs12_recreate_test, @function
pkcs12_recreate_test:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -32(%rbp)
	leaq	CERT1(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	KEY1(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -40(%rbp)
	leaq	-80(%rbp), %rax
	movl	$497, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$903, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L77
	leaq	-88(%rbp), %rax
	movl	$609, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_AutoPrivateKey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$906, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L78
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC41(%rip), %rdi
	pushq	$0
	pushq	$1
	pushq	$2
	pushq	$427
	movl	$427, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	PKCS12_create@PLT
	addq	$32, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$910, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L79
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$912, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L80
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$916, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PKCS12_bio@PLT
	movl	%eax, %esi
	leaq	.LC43(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$918, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L82
	movq	testctx(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$21, %edi
	call	PKCS12_init_ex@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$921, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_PKCS12_bio@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$924, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L84
	movq	-72(%rbp), %rax
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	.LC41(%rip), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PKCS12_parse@PLT
	movl	%eax, %esi
	leaq	.LC43(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$926, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	.LC47(%rip), %rdi
	pushq	$0
	pushq	$1
	pushq	$2
	pushq	$427
	movl	$427, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	PKCS12_create@PLT
	addq	$32, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$934, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L86
	call	ERR_peek_error@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$936, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L87
	movl	$1, -4(%rbp)
	jmp	.L65
.L77:
	nop
	jmp	.L65
.L78:
	nop
	jmp	.L65
.L79:
	nop
	jmp	.L65
.L80:
	nop
	jmp	.L65
.L81:
	nop
	jmp	.L65
.L82:
	nop
	jmp	.L65
.L83:
	nop
	jmp	.L65
.L84:
	nop
	jmp	.L65
.L85:
	nop
	jmp	.L65
.L86:
	nop
	jmp	.L65
.L87:
	nop
.L65:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	pkcs12_recreate_test, .-pkcs12_recreate_test
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC49:
	.string	"testctx"
.LC50:
	.string	"null"
.LC51:
	.string	"nullprov"
.LC52:
	.string	"default"
.LC53:
	.string	"deflprov"
.LC54:
	.string	"legacy"
	.align 8
.LC55:
	.string	"OSSL_PROVIDER_available(NULL, \"default\")"
.LC56:
	.string	"fips"
	.align 8
.LC57:
	.string	"OSSL_PROVIDER_available(NULL, \"fips\")"
.LC58:
	.string	"test_single_cert_no_attrs"
.LC59:
	.string	"test_single_key_enc_alg"
.LC60:
	.string	"test_single_secret_enc_alg"
.LC61:
	.string	"pkcs12_create_test"
.LC62:
	.string	"pkcs12_recreate_test"
.LC63:
	.string	"test_single_key_enc_pass"
.LC64:
	.string	"test_single_key_enc_iter"
.LC65:
	.string	"test_single_key_with_attrs"
.LC66:
	.string	"test_single_cert_mac_alg"
.LC67:
	.string	"test_single_cert_mac_pass"
.LC68:
	.string	"test_single_cert_mac_iter"
	.align 8
.LC69:
	.string	"test_cert_key_with_attrs_and_mac"
	.align 8
.LC70:
	.string	"test_cert_key_encrypted_content"
	.align 8
.LC71:
	.string	"test_single_secret_encrypted_content"
.LC72:
	.string	"test_multiple_contents"
.LC73:
	.string	"test_jdk_trusted_attr"
.LC74:
	.string	"test_set0_attrs"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L91
.L98:
	cmpl	$505, -4(%rbp)
	jg	.L92
	cmpl	$500, -4(%rbp)
	jge	.L91
	cmpl	$3, -4(%rbp)
	je	.L94
	cmpl	$3, -4(%rbp)
	jg	.L92
	cmpl	$1, -4(%rbp)
	je	.L95
	cmpl	$2, -4(%rbp)
	je	.L96
	jmp	.L92
.L95:
	movl	$1, %edi
	call	PKCS12_helper_set_write_files@PLT
	jmp	.L91
.L96:
	movl	$1, %edi
	call	PKCS12_helper_set_legacy@PLT
	jmp	.L91
.L94:
	movl	$0, default_libctx(%rip)
	jmp	.L91
.L92:
	movl	$0, %eax
	jmp	.L97
.L91:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L98
	movl	default_libctx(%rip), %eax
	testl	%eax, %eax
	jne	.L99
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, testctx(%rip)
	movq	testctx(%rip), %rax
	leaq	.LC49(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$997, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L97
.L100:
	leaq	.LC50(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, nullprov(%rip)
	movq	nullprov(%rip), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$1000, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L99
	movl	$0, %eax
	jmp	.L97
.L99:
	movq	testctx(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, deflprov(%rip)
	movq	deflprov(%rip), %rax
	leaq	.LC53(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movq	%rax, %rcx
	movl	$1005, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L97
.L101:
	movq	testctx(%rip), %rax
	leaq	.LC54(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, lgcyprov(%rip)
	movq	testctx(%rip), %rax
	movq	%rax, %rdi
	call	PKCS12_helper_set_libctx@PLT
	movl	default_libctx(%rip), %eax
	testl	%eax, %eax
	jne	.L102
	leaq	.LC52(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movl	%eax, %ecx
	movl	$1016, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L103
	leaq	.LC56(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC20(%rip), %rdi
	movl	%eax, %ecx
	movl	$1017, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L102
.L103:
	movl	$0, %eax
	jmp	.L97
.L102:
	leaq	test_single_cert_no_attrs(%rip), %rdx
	leaq	.LC58(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movq	lgcyprov(%rip), %rax
	testq	%rax, %rax
	jne	.L104
	leaq	test_single_key_enc_alg(%rip), %rsi
	leaq	.LC59(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_single_secret_enc_alg(%rip), %rsi
	leaq	.LC60(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	jmp	.L105
.L104:
	leaq	test_single_key_enc_alg(%rip), %rsi
	leaq	.LC59(%rip), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_single_secret_enc_alg(%rip), %rsi
	leaq	.LC60(%rip), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
.L105:
	movl	default_libctx(%rip), %eax
	testl	%eax, %eax
	je	.L106
	leaq	pkcs12_create_test(%rip), %rdx
	leaq	.LC61(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L106:
	movl	default_libctx(%rip), %eax
	testl	%eax, %eax
	je	.L107
	leaq	pkcs12_recreate_test(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L107:
	leaq	test_single_key_enc_pass(%rip), %rsi
	leaq	.LC63(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_single_key_enc_iter(%rip), %rsi
	leaq	.LC64(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_single_key_with_attrs(%rip), %rdx
	leaq	.LC65(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_single_cert_mac_alg(%rip), %rsi
	leaq	.LC66(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_single_cert_mac_pass(%rip), %rsi
	leaq	.LC67(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_single_cert_mac_iter(%rip), %rsi
	leaq	.LC68(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_cert_key_with_attrs_and_mac(%rip), %rdx
	leaq	.LC69(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_cert_key_encrypted_content(%rip), %rdx
	leaq	.LC70(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_single_secret_encrypted_content(%rip), %rdx
	leaq	.LC71(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multiple_contents(%rip), %rdx
	leaq	.LC72(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_jdk_trusted_attr(%rip), %rdx
	leaq	.LC73(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_set0_attrs(%rip), %rdx
	leaq	.LC74(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	nullprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	deflprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	lgcyprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	testctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	cleanup_tests, .-cleanup_tests
	.data
	.align 4
	.type	sec_nid.2, @object
	.size	sec_nid.2, 4
sec_nid.2:
	.long	-1
	.section	.rodata
	.align 32
	.type	rsa_key.1, @object
	.size	rsa_key.1, 609
rsa_key.1:
	.base64	"MIICXQIBAAKBgQC7JHoJfg6yNzLMOWet8Z49a4KD0dCspMAYvo2YAMB7/wdEycocujbhJ2n/seONi+5XqTqqFkM5VBl8rmkkFPZk/7x0xmdsTPECSWnHK+HhoaNDFPR3j8jQhVo1laxiqcEhAHegi5cwtFosuJAvSKAFKEvyD43si00DQnXWrYHAEQIDAQABAoGAAPy5SiYHiVErU3KR4Bg+pl4x75wMFiRC0Cgz+frQPFQEBsAV9RuasyQxqzxrR0Ow0qncBeGBWbYE6WZhqtcLAI895b+i+F4lbB4iD7T9QeIDMV/aIMXA81UO4cns1z4qDAHKeyLLrPQrJ/B4"
	.base64	"X7XC+egUWm5+hr1qmyAMusyXIBECQQDJWZ8piluf4yrYfsJAn6hF5T4RjTztbqvO0GVG2McHY7UjNPSffhzHx/ll0fQEQji+OgydCCX8o3HZrgw5YfSJAkEA7e+rqdU5nO5ZG//PSEQbtjLnRiTzBH/elQhtdZ5nF7pcpNTi4k13zutmKcWW4GK75azcRGJUhu1kDM7QYAOdSQJAVNkYcifkvna7GmooL5VYEsQsqLbM4v0NF2TIGNfG3z1MGp75KrC5LhL97MNRwe2p/bd2k0HYyCKUGnf2nMPDiQJBAI75pwittSoE240EobUGIDTSz8CJsXIxuDmLz+KOpdpP"
	.base64	"RR5TQmbEMEspjsFpFymMiuYPgmihQbO2cJl1qScY5OkCQQCJ6m5tcN8lXxg/SNpjEIv+qAyUD96XVlOJlOIeLHQ8kYE0C6ZA+MsqYIzgAreJk88Yn0lU/X0/mu/UpE/BRZmR"
.LC75:
	.string	"Usage: %s [options]\n"
.LC76:
	.string	"Valid options are:\n"
.LC77:
	.string	"help"
.LC78:
	.string	"Display this summary"
.LC79:
	.string	"list"
	.align 8
.LC80:
	.string	"Display the list of tests available"
.LC81:
	.string	"test"
	.align 8
.LC82:
	.string	"Run a single test by id or name"
.LC83:
	.string	"iter"
	.align 8
.LC84:
	.string	"Run a single iteration of a test"
.LC85:
	.string	"indent"
	.align 8
.LC86:
	.string	"Number of tabs added to output"
.LC87:
	.string	"seed"
	.align 8
.LC88:
	.string	"Seed value to randomize tests with"
.LC89:
	.string	"write"
.LC90:
	.string	"Write PKCS12 objects to file"
.LC91:
	.string	"Test the legacy APIs"
.LC92:
	.string	"context"
	.align 8
.LC93:
	.string	"Explicitly use a non-default library context"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 288
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC75
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC76
	.quad	.LC77
	.long	500
	.long	45
	.quad	.LC78
	.quad	.LC79
	.long	501
	.long	45
	.quad	.LC80
	.quad	.LC81
	.long	502
	.long	115
	.quad	.LC82
	.quad	.LC83
	.long	503
	.long	110
	.quad	.LC84
	.quad	.LC85
	.long	504
	.long	112
	.quad	.LC86
	.quad	.LC87
	.long	505
	.long	110
	.quad	.LC88
	.quad	.LC89
	.long	1
	.long	45
	.quad	.LC90
	.quad	.LC54
	.long	2
	.long	45
	.quad	.LC91
	.quad	.LC92
	.long	3
	.long	45
	.quad	.LC93
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
