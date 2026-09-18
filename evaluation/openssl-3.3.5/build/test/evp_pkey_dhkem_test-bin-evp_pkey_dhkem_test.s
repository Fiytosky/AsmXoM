	.file	"evp_pkey_dhkem_test.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB347:
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
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	libctx
	.comm	libctx,8,8
	.local	nullprov
	.comm	nullprov,8,8
	.local	libprov
	.comm	libprov,8,8
	.local	opparam
	.comm	opparam,80,32
	.local	rkey
	.comm	rkey,16,16
	.local	rctx
	.comm	rctx,16,16
	.section	.rodata
.LC0:
	.string	"P-256"
.LC1:
	.string	"P-384"
.LC2:
	.string	"P-521"
.LC3:
	.string	"X25519"
.LC4:
	.string	"X448"
	.section	.data.rel.local,"aw"
	.align 32
	.type	dhkem_supported_curves, @object
	.size	dhkem_supported_curves, 40
dhkem_supported_curves:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.section	.rodata
	.align 32
	.type	x25519_ikme, @object
	.size	x25519_ikme, 32
x25519_ikme:
	.base64	"cmhgDUA/zkMVYa71g+4WE1J8/2VcE0PymBLmZwbfMjQ="
	.align 32
	.type	x25519_ikme_priv, @object
	.size	x25519_ikme_priv, 32
x25519_ikme_priv:
	.base64	"UsSnWKgCzYuTbs7qMUQyeY1bry1+kjXcCEqxuc+i9zY="
	.align 32
	.type	x25519_ikme_pub, @object
	.size	x25519_ikme_pub, 32
x25519_ikme_pub:
	.base64	"N/2jVnvb1ijohmjDyNfpfR0SU7bU6m1EwVD3QfG/RDE="
	.align 32
	.type	x25519_rpub, @object
	.size	x25519_rpub, 32
x25519_rpub:
	.base64	"OUjP4K0d22ldeA5ZB3GV2mxWUGsCcyl5SrAryoCBXE0="
	.align 32
	.type	x25519_rpriv, @object
	.size	x25519_rpriv, 32
x25519_rpriv:
	.base64	"RhLFUCY/yK1YN13z9VeqxTHSaFCQPlWp8j8h2FNOisg="
	.align 32
	.type	x25519_expected_enc, @object
	.size	x25519_expected_enc, 32
x25519_expected_enc:
	.base64	"N/2jVnvb1ijohmjDyNfpfR0SU7bU6m1EwVD3QfG/RDE="
	.align 32
	.type	x25519_expected_secret, @object
	.size	x25519_expected_secret, 32
x25519_expected_secret:
	.base64	"/g4YyfAkzkN5muOTx+j+j86dIYh16CJ7AYfATn0uofw="
	.align 32
	.type	x25519_auth_ikme, @object
	.size	x25519_auth_ikme, 32
x25519_auth_ikme:
	.base64	"bm2PIA6i+yDDCwA6i09DPS9O1MJljVvIzi/vcYBZyfc="
	.align 32
	.type	x25519_auth_rpub, @object
	.size	x25519_auth_rpub, 32
x25519_auth_rpub:
	.base64	"FjLVwvccKzjQqPzDWTVSAMqosf/fKGGAgEZskJy2my4="
	.align 32
	.type	x25519_auth_rpriv, @object
	.size	x25519_auth_rpriv, 32
x25519_auth_rpriv:
	.base64	"/epnz4MfHKmNjiex9qvrW3dF6dNTSLgPpAf/aVj5E34="
	.align 32
	.type	x25519_auth_spub, @object
	.size	x25519_auth_spub, 32
x25519_auth_spub:
	.base64	"iwxwhz3Frst/nuTmJAajl7NQ5XASvkXPU7cQWucxeQs="
	.align 32
	.type	x25519_auth_spriv, @object
	.size	x25519_auth_spriv, 32
x25519_auth_spriv:
	.base64	"3EoUYxPM5gonilMj0yHwUcVwfpxFuiGjR5/s33b8ad0="
	.align 32
	.type	x25519_auth_expected_enc, @object
	.size	x25519_auth_expected_enc, 32
x25519_auth_expected_enc:
	.base64	"I/uVJXGhSiXj1ngUDNDl60eglhuxivz4WJblRTwxLnY="
	.align 32
	.type	x25519_auth_expected_secret, @object
	.size	x25519_auth_expected_secret, 32
x25519_auth_expected_secret:
	.base64	"LW20z3Gdxyk/y/P6ZGkHCOROK+vIH4RghneVjA1ESKc="
	.align 32
	.type	p256_ikme, @object
	.size	p256_ikme, 32
p256_ikme:
	.base64	"QnDlT/0I151ZKAIK9Ghtj2t9NdvkcCZfH1qiKBbOhg4="
	.align 32
	.type	p256_ikme_pub, @object
	.size	p256_ikme_pub, 65
p256_ikme_pub:
	.base64	"BKknGcYZXVCFEE9GmouYFNWDj/crYFAeLERm5eZ7MlrJhTbXthoa9LeOW3+VHAkAvoY8QDzmXJv8uTgmVyItGMQ="
	.align 32
	.type	p256_ikme_priv, @object
	.size	p256_ikme_priv, 32
p256_ikme_priv:
	.base64	"SZV4jvS51hMrJJzlmncoFJPrOa83PSNqH+QVywwte+s="
	.align 32
	.type	p256_ikmr, @object
	.size	p256_ikmr, 32
p256_ikmr:
	.base64	"Zos3Fx8QcvPPEuqKI2pF3yP8E7gq82Ca0eNU9u+BdVA="
	.align 32
	.type	p256_ikmr_pub, @object
	.size	p256_ikmr_pub, 65
p256_ikmr_pub:
	.base64	"BP6MGc4JBRkevCmKkkV5JTHybwzs4kYGOei8Oct/cGqCanebTPlpuKDlOcf2L7PTCtaqj4DjDx0Siq/WiiznLqA="
	.align 32
	.type	p256_ikmr_priv, @object
	.size	p256_ikmr_priv, 32
p256_ikmr_priv:
	.base64	"885/2uV+GjENh/HrvebzKL4Kmc28rfTWWJzyneS4/9I="
	.align 32
	.type	p256_expected_enc, @object
	.size	p256_expected_enc, 65
p256_expected_enc:
	.base64	"BKknGcYZXVCFEE9GmouYFNWDj/crYFAeLERm5eZ7MlrJhTbXthoa9LeOW3+VHAkAvoY8QDzmXJv8uTgmVyItGMQ="
	.align 32
	.type	p256_expected_secret, @object
	.size	p256_expected_secret, 32
p256_expected_secret:
	.base64	"wNJq6rU2YJpXKwdpXZM7WJ3PNj/52TyTrepTeuq7jLg="
	.align 32
	.type	p521_ikme, @object
	.size	p521_ikme, 66
p521_ikme:
	.base64	"fwarghUQX8RqzusuPcUCi0Q2T5YEJusNjkAmwvi11+ephmiPFZGr9at1PDV6XW8EQEFLTtTt5xMXdyrJjZI59wkE"
	.align 32
	.type	p521_ikme_pub, @object
	.size	p521_ikme_pub, 133
p521_ikme_pub:
	.base64	"BAE4s4XKFrsNX6DAZl+71+aePuKfY5kdPptfp0CquJAKru1G7XOkkFV1hCWgzjZQfFSynMW4Wlzua64M8cIfJzHs4gE9w/t8jSFlS7FhtGOWLKGejGVP8kyU3SiY3hIFHx7QaSI3+wKy+NHcHHPps2a1KetDbpiplu5SKu+GPdVznS8psA=="
	.align 32
	.type	p521_ikme_priv, @object
	.size	p521_ikme_priv, 66
p521_ikme_priv:
	.base64	"AUeExpLaNd9uzemO5DrEJdvdCWnAxytC8ucIq51TVBWoVpvaz8wKEUyFuOPyas9NaBFfjJGmYXjNvQO3vMUpHjdL"
	.align 32
	.type	p521_ikmr_pub, @object
	.size	p521_ikmr_pub, 133
p521_ikmr_pub:
	.base64	"BAG0VJjBcU4tzhZ9PK8WLkXgZCr8ftQ133kCzK4OhLoPfTc/ZGt3OLu9yhHtkb3q483LozAfJFe+RS8nH6aDdYDmYQEq9JWDpi5I1EvtNQxxGMDY3IYcI4xyor2hf2RwT0ZLVzOOf0C2CVlIDA5Y5lWbGQ2BZj7YFuUjtrakGPZtJFHsZA=="
	.align 32
	.type	p521_ikmr_priv, @object
	.size	p521_ikmr_priv, 66
p521_ikmr_priv:
	.base64	"AUYmgDaa43Xks3kQcKdFjtUnhC9qmKef9eDUy96DwnGWo5FpVmVVI6aiVWp69ixcravi752jdguyHgBSAveyRihH"
	.align 32
	.type	p521_expected_enc, @object
	.size	p521_expected_enc, 133
p521_expected_enc:
	.base64	"BAE4s4XKFrsNX6DAZl+71+aePuKfY5kdPptfp0CquJAKru1G7XOkkFV1hCWgzjZQfFSynMW4Wlzua64M8cIfJzHs4gE9w/t8jSFlS7FhtGOWLKGejGVP8kyU3SiY3hIFHx7QaSI3+wKy+NHcHHPps2a1KetDbpiplu5SKu+GPdVznS8psA=="
	.align 32
	.type	p521_expected_secret, @object
	.size	p521_expected_secret, 64
p521_expected_secret:
	.base64	"d2q0ITAvbv99fLXLGtrqDNUIcsccLWPDDE8dXkNlMzb+8zsQPGfnqYrdLTtm4v2pW1sqZnqp2sflnMHUbTDoGA=="
	.align 32
	.type	p521_auth_ikme, @object
	.size	p521_auth_ikme, 66
p521_auth_ikme:
	.base64	"/hxYnCoFiTiVpTfzjHy0MAtafo/vPWzLjwekmAKcYekCYuAJ3CVMf2I1+cay/Wrv8KcU2xMbCSWMFuIXt70qphmw"
	.align 32
	.type	p521_auth_ikmr_pub, @object
	.size	p521_auth_ikmr_pub, 133
p521_auth_ikmr_pub:
	.base64	"BAB9QZuINOdRPQ58xmQkoTbsXhE5WrNT2jJONYZnPuc9U6s08woLQqktBU0NsyG4D2IX5lXjBPcnk3Z8QjF4XEpKbgCPMbk7ek8rjNEuX+WgUj3HE1PGbL2tUchrngvfzZpFaY8tqxgJqxsPiPVCJyMshYrMxE2ajUF3WsAmNBVkotdJ9A=="
	.align 32
	.type	p521_auth_ikmr_priv, @object
	.size	p521_auth_ikmr_priv, 66
p521_auth_ikmr_priv:
	.base64	"AT7zJpQJmFRKiZ4V4XJlSP9Du9sjqFh6o7750bhXM42HKH31ZnA3tRnWoUZh6VA8/JWhVNk1ZtjITpXOk60FKToL"
	.align 32
	.type	p521_auth_ikms_pub, @object
	.size	p521_auth_ikms_pub, 133
p521_auth_ikms_pub:
	.base64	"BAFcw2NmMuqaOHnkMkC+rl0VpE+6gZKC+sJqGcmJ+v3Q8zC4Uh3/fcOTEBsBjB5lsHvp9fyaKKH0UNalQe4NdiIRMwAejw9qBat5+bm7nMzhQqRT1ZxavrtWdIOdk1o8oaP7wyhTmmCzvDwF/tIoOFhKcmucF2eWytAWm6QJMzLL0tw6nw=="
	.align 32
	.type	p521_auth_ikms_priv, @object
	.size	p521_auth_ikms_priv, 66
p521_auth_ikms_priv:
	.base64	"ABAYWEWZYl/5lTuTBYSYUNXjS9eJ1LgRAROWYvvqi2UI3bnQGbDWkuc39mvq4/H3g+dEICqvb+oBUGwnKH41n+d2"
	.align 32
	.type	p521_auth_expected_enc, @object
	.size	p521_auth_expected_enc, 133
p521_auth_expected_enc:
	.base64	"BAF94S7ef3LLEB2rNqERJlyXs2VIFtzWGD+AnUs9ER/nWUl/iu/cXbtA0+bSHbFb3GDxXypCB2G8ru9zuJHCsRfpzwHikyC3mbvIav3F6pfZQeocW9Xr7qx6eEs7q1JHRvPmQOwm7hvZElX5Mw2XT4RQhGN+4Ob+n1BcW4fIak4abDCW3Q=="
	.align 32
	.type	p521_auth_expected_secret, @object
	.size	p521_auth_expected_secret, 64
p521_auth_expected_secret:
	.base64	"JmSPoqLesL/FY0mlkP1MtxCKUXl7Y0aU/AIGHo2Rs1dqxzami/hI/ipY37GVbSZuaCCaTWMeUTut+PTc/ADzCg=="
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ec_derivekey_data, @object
	.size	ec_derivekey_data, 168
ec_derivekey_data:
	.quad	.LC0
	.quad	p256_ikme
	.quad	32
	.quad	p256_ikme_pub
	.quad	65
	.quad	p256_ikme_priv
	.quad	32
	.quad	.LC0
	.quad	p256_ikmr
	.quad	32
	.quad	p256_ikmr_pub
	.quad	65
	.quad	p256_ikmr_priv
	.quad	32
	.quad	.LC2
	.quad	p521_ikme
	.quad	66
	.quad	p521_ikme_pub
	.quad	133
	.quad	p521_ikme_priv
	.quad	66
	.align 32
	.type	ec_encapdata, @object
	.size	ec_encapdata, 600
ec_encapdata:
	.quad	.LC0
	.quad	p256_ikme
	.quad	32
	.quad	p256_ikmr_pub
	.quad	65
	.quad	p256_ikmr_priv
	.quad	32
	.quad	p256_expected_enc
	.quad	65
	.quad	p256_expected_secret
	.quad	32
	.zero	32
	.quad	.LC3
	.quad	x25519_ikme
	.quad	32
	.quad	x25519_rpub
	.quad	32
	.quad	x25519_rpriv
	.quad	32
	.quad	x25519_expected_enc
	.quad	32
	.quad	x25519_expected_secret
	.quad	32
	.zero	32
	.quad	.LC2
	.quad	p521_ikme
	.quad	66
	.quad	p521_ikmr_pub
	.quad	133
	.quad	p521_ikmr_priv
	.quad	66
	.quad	p521_expected_enc
	.quad	133
	.quad	p521_expected_secret
	.quad	64
	.zero	32
	.quad	.LC2
	.quad	p521_auth_ikme
	.quad	66
	.quad	p521_auth_ikmr_pub
	.quad	133
	.quad	p521_auth_ikmr_priv
	.quad	66
	.quad	p521_auth_expected_enc
	.quad	133
	.quad	p521_auth_expected_secret
	.quad	64
	.quad	p521_auth_ikms_pub
	.quad	133
	.quad	p521_auth_ikms_priv
	.quad	66
	.quad	.LC3
	.quad	x25519_auth_ikme
	.quad	32
	.quad	x25519_auth_rpub
	.quad	32
	.quad	x25519_auth_rpriv
	.quad	32
	.quad	x25519_auth_expected_enc
	.quad	32
	.quad	x25519_auth_expected_secret
	.quad	32
	.quad	x25519_auth_spub
	.quad	32
	.quad	x25519_auth_spriv
	.quad	32
	.section	.rodata
	.align 32
	.type	x448_ikmr, @object
	.size	x448_ikmr, 56
x448_ikmr:
	.base64	"1F0WUt90kgq/lKKIPIMFD1Av9RL/tW8Httgz7I3adLahwcxNQqImQcCWPTwh7YJh80TcngUBqBw="
	.align 32
	.type	x448_ikmr_priv, @object
	.size	x448_ikmr_priv, 56
x448_ikmr_priv:
	.base64	"J6Q1RgjzvdOPH1rzBfPgaC7+TiWAgknY/LVZJ/ap9Ea43B0KLDuMsTOlZztZptVc51TsDJpVVAE="
	.align 32
	.type	x448_ikmr_pub, @object
	.size	x448_ikmr_pub, 56
x448_ikmr_pub:
	.base64	"FF0IPqemN527Mty9iv9MIG6l0Gm3XpbG3So+OPRBRxrJetymQf2tZmhalvMrfD4GRjX6s8yJI04="
	.section	.data.rel.ro.local
	.align 32
	.type	ecx_derivekey_data, @object
	.size	ecx_derivekey_data, 112
ecx_derivekey_data:
	.quad	.LC3
	.quad	x25519_ikme
	.quad	32
	.quad	x25519_ikme_pub
	.quad	32
	.quad	x25519_ikme_priv
	.quad	32
	.quad	.LC4
	.quad	x448_ikmr
	.quad	56
	.quad	x448_ikmr_pub
	.quad	56
	.quad	x448_ikmr_priv
	.quad	56
	.section	.rodata
.LC5:
	.string	"EC"
.LC6:
	.string	"priv"
.LC7:
	.string	"group"
.LC8:
	.string	"pub"
	.text
	.type	new_raw_private_key, @function
new_raw_private_key:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L5
	movq	libctx(%rip), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	jmp	.L6
.L5:
	movq	libctx(%rip), %rax
	leaq	.LC5(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
.L6:
	cmpq	$0, -16(%rbp)
	jne	.L7
	movl	$0, %eax
	jmp	.L20
.L7:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L21
	cmpl	$0, -44(%rbp)
	je	.L11
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	jne	.L12
	jmp	.L10
.L11:
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L22
	movq	-72(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	je	.L23
	movq	-32(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L24
.L12:
	cmpq	$0, -96(%rbp)
	je	.L15
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	je	.L25
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L26
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	jle	.L27
	movq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	jle	.L28
	movl	$1, -4(%rbp)
	jmp	.L10
.L21:
	nop
	jmp	.L10
.L22:
	nop
	jmp	.L10
.L23:
	nop
	jmp	.L10
.L24:
	nop
	jmp	.L10
.L25:
	nop
	jmp	.L10
.L26:
	nop
	jmp	.L10
.L27:
	nop
	jmp	.L10
.L28:
	nop
.L10:
	cmpl	$0, -4(%rbp)
	jne	.L19
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -56(%rbp)
.L19:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-56(%rbp), %rax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	new_raw_private_key, .-new_raw_private_key
	.type	new_raw_public_key, @function
new_raw_public_key:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -56(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L30
	movq	libctx(%rip), %rax
	movq	-184(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -32(%rbp)
	jmp	.L31
.L30:
	movq	libctx(%rip), %rax
	leaq	.LC5(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -32(%rbp)
.L31:
	cmpq	$0, -32(%rbp)
	jne	.L32
	movl	$0, %eax
	jmp	.L39
.L32:
	cmpl	$0, -44(%rbp)
	jne	.L34
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-256(%rbp), %rax
	movq	-184(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
.L34:
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-256(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	-192(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	jle	.L40
	leaq	-176(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$134, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	jle	.L41
	movl	$1, -20(%rbp)
	jmp	.L36
.L40:
	nop
	jmp	.L36
.L41:
	nop
.L36:
	cmpl	$0, -20(%rbp)
	jne	.L38
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -56(%rbp)
.L38:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-56(%rbp), %rax
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	new_raw_public_key, .-new_raw_public_key
	.section	.rodata
.LC9:
	.string	"DHKEM"
.LC10:
	.string	"operation"
.LC11:
	.string	"ikme"
	.align 8
.LC12:
	.string	"sctx = EVP_PKEY_CTX_new_from_pkey(libctx, rpub, NULL)"
.LC13:
	.string	"../test/dhkem_test.inc"
.LC14:
	.string	"1"
	.align 8
.LC15:
	.string	"EVP_PKEY_encapsulate_init(sctx, params)"
	.align 8
.LC16:
	.string	"EVP_PKEY_auth_encapsulate_init(sctx, spriv, params)"
	.align 8
.LC17:
	.string	"EVP_PKEY_encapsulate(sctx, NULL, &enclen, NULL, &secretlen)"
	.align 8
.LC18:
	.string	"EVP_PKEY_encapsulate(sctx, enc, &enclen, secret, &secretlen)"
.LC19:
	.string	"t->expected_enc"
.LC20:
	.string	"enc"
.LC21:
	.string	"t->expected_secret"
.LC22:
	.string	"secret"
	.text
	.type	do_encap, @function
do_encap:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$776, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -712(%rbp)
	movq	%rsi, -720(%rbp)
	movq	%rdx, -728(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -560(%rbp)
	movq	$0, -552(%rbp)
	movq	$0, -544(%rbp)
	movq	$0, -536(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$0, -512(%rbp)
	movq	$0, -504(%rbp)
	movq	$0, -496(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -480(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -456(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -440(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -416(%rbp)
	movq	$0, -408(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -32(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-784(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-712(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-712(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-784(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-784(%rbp), %rax
	movq	-776(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-752(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	libctx(%rip), %rax
	movq	-720(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC13(%rip), %rdi
	movq	%rax, %rcx
	movl	$667, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L50
	movq	-712(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	leaq	-704(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$670, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L46
	jmp	.L44
.L45:
	leaq	-704(%rbp), %rdx
	movq	-728(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$673, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L51
.L46:
	leaq	-568(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$676, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L47
	leaq	-568(%rbp), %rdi
	leaq	-304(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$678, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L47
	movq	-712(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-712(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-576(%rbp), %r9
	leaq	-560(%rbp), %r8
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC13(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$680, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L47
	movq	-712(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-712(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-568(%rbp), %r9
	leaq	-304(%rbp), %r8
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC13(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$681, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	movl	%eax, -20(%rbp)
	jmp	.L44
.L50:
	nop
	jmp	.L44
.L51:
	nop
.L44:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	do_encap, .-do_encap
	.section	.rodata
	.align 8
.LC23:
	.string	"recipctx = EVP_PKEY_CTX_new_from_pkey(libctx, rpriv, NULL)"
	.align 8
.LC24:
	.string	"EVP_PKEY_decapsulate_init(recipctx, opparam)"
	.align 8
.LC25:
	.string	"EVP_PKEY_auth_decapsulate_init(recipctx, spub, opparam)"
	.align 8
.LC26:
	.string	"EVP_PKEY_decapsulate(recipctx, NULL, &secretlen, t->expected_enc, t->expected_enclen)"
	.align 8
.LC27:
	.string	"EVP_PKEY_decapsulate(recipctx, secret, &secretlen, t->expected_enc, t->expected_enclen)"
	.text
	.type	do_decap, @function
do_decap:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -280(%rbp)
	movq	libctx(%rip), %rax
	movq	-304(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC13(%rip), %rdi
	movq	%rax, %rcx
	movl	$696, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	movq	-296(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$699, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L56
	jmp	.L54
.L55:
	leaq	opparam(%rip), %rdx
	movq	-312(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$702, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L61
.L56:
	movq	-296(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-296(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-280(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$706, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	-296(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-296(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-280(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$709, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	-296(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-296(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-280(%rbp), %r9
	leaq	-272(%rbp), %r8
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC13(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$712, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	movl	%eax, -4(%rbp)
	jmp	.L54
.L60:
	nop
	jmp	.L54
.L61:
	nop
.L54:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	do_decap, .-do_decap
	.section	.rodata
.LC28:
	.string	"Auth"
.LC29:
	.string	""
.LC30:
	.string	"Test %s %s Decapsulate"
	.align 8
.LC31:
	.string	"rpub = new_raw_public_key(t->curve, t->rpub, t->rpublen)"
.LC32:
	.string	"../test/evp_pkey_dhkem_test.c"
	.align 8
.LC33:
	.string	"spriv = new_raw_private_key(t->curve, t->spriv, t->sprivlen, t->spub, t->spublen)"
	.text
	.type	test_dhkem_encapsulate, @function
test_dhkem_encapsulate:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	imulq	$120, %rax, %rax
	leaq	ec_encapdata(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L63
	leaq	.LC28(%rip), %rax
	jmp	.L64
.L63:
	leaq	.LC29(%rip), %rax
.L64:
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	.LC30(%rip), %rdi
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %eax
	call	test_note@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	new_raw_public_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$48, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	new_raw_private_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$52, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L70
.L67:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_encap
	movl	%eax, -4(%rbp)
	jmp	.L66
.L69:
	nop
	jmp	.L66
.L70:
	nop
.L66:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_dhkem_encapsulate, .-test_dhkem_encapsulate
	.section	.rodata
	.align 8
.LC34:
	.string	"rpriv = new_raw_private_key(t->curve, t->rpriv, t->rprivlen, t->rpub, t->rpublen)"
	.align 8
.LC35:
	.string	"spub = new_raw_public_key(t->curve, t->spub, t->spublen)"
	.text
	.type	test_dhkem_decapsulate, @function
test_dhkem_decapsulate:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	imulq	$120, %rax, %rax
	leaq	ec_encapdata(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L72
	leaq	.LC28(%rip), %rax
	jmp	.L73
.L72:
	leaq	.LC29(%rip), %rax
.L73:
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	.LC30(%rip), %rdi
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %eax
	call	test_note@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	new_raw_private_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$73, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L78
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	new_raw_public_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$77, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L79
.L76:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_decap
	movl	%eax, -4(%rbp)
	jmp	.L75
.L78:
	nop
	jmp	.L75
.L79:
	nop
.L75:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_dhkem_decapsulate, .-test_dhkem_decapsulate
	.section	.rodata
	.align 8
.LC36:
	.string	"EVP_PKEY_encapsulate_init(ctx, NULL)"
	.align 8
.LC37:
	.string	"settableparams = EVP_PKEY_CTX_settable_params(ctx)"
	.align 8
.LC38:
	.string	"p = OSSL_PARAM_locate_const(settableparams, OSSL_KEM_PARAM_OPERATION)"
.LC39:
	.string	"OSSL_PARAM_UTF8_STRING"
.LC40:
	.string	"p->data_type"
	.align 8
.LC41:
	.string	"p = OSSL_PARAM_locate_const(settableparams, OSSL_KEM_PARAM_IKME)"
.LC42:
	.string	"OSSL_PARAM_OCTET_STRING"
	.text
	.type	test_settables, @function
test_settables:
.LFB474:
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
	leaq	0(,%rax,8), %rdx
	leaq	rctx(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L81
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_settable_params@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$95, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	leaq	.LC10(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$96, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L81
	leaq	.LC11(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$99, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L81
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L81
	movl	$1, %eax
	jmp	.L83
.L81:
	movl	$0, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_settables, .-test_settables
	.section	.rodata
	.align 8
.LC43:
	.string	"EVP_PKEY_decapsulate_init(ctx, NULL)"
	.text
	.type	test_init_multiple, @function
test_init_multiple:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rctx(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$109, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$110, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	movl	$1, %eax
	jmp	.L87
.L85:
	movl	$0, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_init_multiple, .-test_init_multiple
	.section	.rodata
.LC44:
	.string	"secp256k1"
.LC45:
	.string	"dhkem-ikm"
	.align 8
.LC46:
	.string	"genctx = EVP_PKEY_CTX_new_from_name(libctx, \"EC\", NULL)"
.LC47:
	.string	"EVP_PKEY_keygen_init(genctx)"
	.align 8
.LC48:
	.string	"EVP_PKEY_CTX_set_params(genctx, params)"
.LC49:
	.string	"0"
	.align 8
.LC50:
	.string	"EVP_PKEY_generate(genctx, &pkey)"
.LC51:
	.string	"P-224"
	.text
	.type	test_ec_dhkem_derivekey_fail, @function
test_ec_dhkem_derivekey_fail:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	leaq	ec_derivekey_data(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	-208(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-208(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC5(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$132, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$133, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-208(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-208(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$144, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L98
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$145, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L98
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$146, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L98
	leaq	-208(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-208(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$155, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L99
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$156, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L99
	movl	$1, -4(%rbp)
	jmp	.L91
.L97:
	nop
	jmp	.L91
.L98:
	nop
	jmp	.L91
.L99:
	nop
.L91:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_ec_dhkem_derivekey_fail, .-test_ec_dhkem_derivekey_fail
	.section	.rodata
.LC52:
	.string	"-2"
	.align 8
.LC53:
	.string	"EVP_PKEY_encapsulate(ctx, NULL, &len, NULL, NULL)"
	.align 8
.LC54:
	.string	"EVP_PKEY_decapsulate(ctx, NULL, &len, t->expected_enc, t->expected_enclen)"
	.text
	.type	test_no_operation_set, @function
test_no_operation_set:
.LFB477:
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
	leaq	0(,%rax,8), %rdx
	leaq	rctx(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	cltq
	imulq	$120, %rax, %rax
	leaq	ec_encapdata(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$174, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L101
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC52(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$175, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L101
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$176, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L101
	movq	-16(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC52(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$177, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L101
	movl	$1, %eax
	jmp	.L103
.L101:
	movl	$0, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_no_operation_set, .-test_no_operation_set
	.section	.rodata
	.align 8
.LC55:
	.string	"EVP_PKEY_encapsulate_init(ctx, params)"
	.align 8
.LC56:
	.string	"EVP_PKEY_encapsulate(ctx, enc, &enclen, secret, &secretlen)"
	.text
	.type	test_ikm_small, @function
test_ikm_small:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$752, %rsp
	movl	%edi, -692(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$256, -552(%rbp)
	movq	$256, -560(%rbp)
	movl	-692(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rctx(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-752(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-752(%rbp), %rax
	movq	-744(%rbp), %rdx
	movq	%rax, -688(%rbp)
	movq	%rdx, -680(%rbp)
	movq	-736(%rbp), %rax
	movq	-728(%rbp), %rdx
	movq	%rax, -672(%rbp)
	movq	%rdx, -664(%rbp)
	movq	-720(%rbp), %rax
	movq	%rax, -656(%rbp)
	leaq	-752(%rbp), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC11(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-752(%rbp), %rax
	movq	-744(%rbp), %rdx
	movq	%rax, -648(%rbp)
	movq	%rdx, -640(%rbp)
	movq	-736(%rbp), %rax
	movq	-728(%rbp), %rdx
	movq	%rax, -632(%rbp)
	movq	%rdx, -624(%rbp)
	movq	-720(%rbp), %rax
	movq	%rax, -616(%rbp)
	leaq	-752(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-752(%rbp), %rax
	movq	-744(%rbp), %rdx
	movq	%rax, -608(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-736(%rbp), %rax
	movq	-728(%rbp), %rdx
	movq	%rax, -592(%rbp)
	movq	%rdx, -584(%rbp)
	movq	-720(%rbp), %rax
	movq	%rax, -576(%rbp)
	leaq	-688(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$200, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L105
	leaq	-552(%rbp), %rdi
	leaq	-288(%rbp), %rcx
	leaq	-560(%rbp), %rdx
	leaq	-544(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$201, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L105
	movl	$1, %eax
	jmp	.L107
.L105:
	movl	$0, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_ikm_small, .-test_ikm_small
	.section	.rodata
	.align 8
.LC57:
	.string	"EVP_PKEY_encapsulate_init(ctx, opparam)"
	.align 8
.LC58:
	.string	"EVP_PKEY_encapsulate(ctx, NULL, &enclen, NULL, &seclen)"
	.align 8
.LC59:
	.string	"EVP_PKEY_encapsulate(ctx, enc, &enclen, sec, &seclen)"
	.align 8
.LC60:
	.string	"EVP_PKEY_decapsulate_init(ctx, opparam)"
	.align 8
.LC61:
	.string	"EVP_PKEY_decapsulate(ctx, sec, &seclen, enc, enclen)"
	.text
	.type	test_input_size_small, @function
test_input_size_small:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movl	%edi, -548(%rbp)
	movl	$0, -4(%rbp)
	movq	$256, -536(%rbp)
	movq	$256, -544(%rbp)
	movl	-548(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rctx(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$215, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L117
	leaq	-536(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$216, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L117
	movq	-544(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -544(%rbp)
	leaq	-536(%rbp), %rdi
	leaq	-272(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	leaq	-528(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$222, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L118
	movq	-544(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)
	movq	-536(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -536(%rbp)
	leaq	-536(%rbp), %rdi
	leaq	-272(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	leaq	-528(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L119
	movq	-536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -536(%rbp)
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$231, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L120
	movq	-536(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -536(%rbp)
	movq	-544(%rbp), %rdi
	leaq	-528(%rbp), %rcx
	leaq	-536(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$235, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L121
	movq	-536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -536(%rbp)
	movq	-544(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rdi
	leaq	-528(%rbp), %rcx
	leaq	-536(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$240, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	jmp	.L111
.L117:
	nop
	jmp	.L111
.L118:
	nop
	jmp	.L111
.L119:
	nop
	jmp	.L111
.L120:
	nop
	jmp	.L111
.L121:
	nop
.L111:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_input_size_small, .-test_input_size_small
	.section	.rodata
	.align 8
.LC62:
	.string	"auth = EVP_PKEY_Q_keygen(libctx, NULL, \"EC\", \"P-521\")"
	.align 8
.LC63:
	.string	"EVP_PKEY_auth_encapsulate_init(rctx[0], auth, opparam)"
	.text
	.type	test_ec_auth_key_curve_mismatch, @function
test_ec_auth_key_curve_mismatch:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC2(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$251, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L123
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	rctx(%rip), %rax
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$254, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_ec_auth_key_curve_mismatch, .-test_ec_auth_key_curve_mismatch
	.section	.rodata
	.align 8
.LC64:
	.string	"EVP_PKEY_auth_encapsulate_init(rctx[id1], rkey[id2], opparam)"
	.text
	.type	test_auth_key_type_mismatch, @function
test_auth_key_type_mismatch:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rkey(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rctx(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	opparam(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_auth_key_type_mismatch, .-test_auth_key_type_mismatch
	.section	.rodata
	.align 8
.LC65:
	.string	"priv = new_raw_private_key(\"P-256\", order, sizeof(order), t->rpub, t->rpublen)"
	.align 8
.LC66:
	.string	"ctx = EVP_PKEY_CTX_new_from_pkey(libctx, priv, NULL)"
	.text
	.type	test_ec_invalid_private_key, @function
test_ec_invalid_private_key:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	leaq	ec_encapdata(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	leaq	order.0(%rip), %rsi
	leaq	.LC0(%rip), %rdi
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$32, %edx
	call	new_raw_private_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$281, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L128
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$283, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L128
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$284, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L128
	movl	$1, %eax
	jmp	.L129
.L128:
	movl	$0, %eax
.L129:
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_ec_invalid_private_key, .-test_ec_invalid_private_key
	.section	.rodata
	.align 8
.LC67:
	.string	"key = new_raw_private_key(t->curve, t->rpriv, t->rprivlen, tmp, sizeof(tmp))"
	.align 8
.LC68:
	.string	"keyctx = EVP_PKEY_CTX_new_from_pkey(libctx, key, NULL)"
	.align 8
.LC69:
	.string	"EVP_PKEY_encapsulate_init(keyctx, opparam)"
	.align 8
.LC70:
	.string	"EVP_PKEY_encapsulate(keyctx, e, &elen, s, &slen)"
	.align 8
.LC71:
	.string	"EVP_PKEY_decapsulate_init(keyctx, opparam)"
	.align 8
.LC72:
	.string	"EVP_PKEY_decapsulate(keyctx, s, &slen, t->expected_enc, t->expected_enclen)"
	.align 8
.LC73:
	.string	"EVP_PKEY_auth_encapsulate_init(ctx, key, opparam)"
	.align 8
.LC74:
	.string	"EVP_PKEY_encapsulate(ctx, e, &elen, s, &slen)"
	.text
	.type	test_ec_public_key_infinity, @function
test_ec_public_key_infinity:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$256, -568(%rbp)
	movq	$256, -576(%rbp)
	movb	$0, -577(%rbp)
	movq	rctx(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	ec_encapdata(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-577(%rbp), %rcx
	movl	$1, %r8d
	movq	%rax, %rdi
	call	new_raw_private_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$303, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L132
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC68(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$305, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L132
	leaq	opparam(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$307, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L132
	leaq	-568(%rbp), %rdi
	leaq	-304(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$308, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L132
	leaq	opparam(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$310, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L132
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-568(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$311, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L132
	leaq	opparam(%rip), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$315, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L132
	leaq	-568(%rbp), %rdi
	leaq	-304(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC74(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$316, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L132
	movl	$1, %eax
	jmp	.L133
.L132:
	movl	$0, %eax
.L133:
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_ec_public_key_infinity, .-test_ec_public_key_infinity
	.section	.rodata
	.align 8
.LC75:
	.string	"EVP_PKEY_auth_encapsulate_init(ctx, NULL, opparam)"
	.align 8
.LC76:
	.string	"EVP_PKEY_auth_decapsulate_init(ctx, NULL, opparam)"
	.align 8
.LC77:
	.string	"EVP_PKEY_decapsulate(ctx, NULL, NULL, t->expected_enc, t->expected_enclen)"
	.align 8
.LC78:
	.string	"EVP_PKEY_encapsulate(ctx, NULL, NULL, NULL, NULL)"
	.text
	.type	test_null_params, @function
test_null_params:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rctx(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	imulq	$120, %rax, %rax
	leaq	ec_encapdata(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	leaq	opparam(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$330, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L136
	leaq	opparam(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$331, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L136
	leaq	opparam(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$333, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L136
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$334, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L136
	leaq	opparam(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$338, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L136
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$339, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L136
	movl	$1, %eax
	jmp	.L138
.L136:
	movl	$0, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_null_params, .-test_null_params
	.section	.rodata
	.align 8
.LC79:
	.string	"EVP_PKEY_encapsulate_init(ctx, badparams)"
.LC80:
	.string	"unknown_op"
.LC81:
	.string	"unknownparam"
	.text
	.type	test_set_params, @function
test_set_params:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movl	%edi, -196(%rbp)
	movl	$0, -4(%rbp)
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rctx(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -180(%rbp)
	leaq	-256(%rbp), %rax
	leaq	-180(%rbp), %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$353, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L147
	leaq	-256(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$359, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L148
	leaq	-256(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$366, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-256(%rbp), %rax
	leaq	-180(%rbp), %rdx
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$372, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L150
	leaq	-256(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$378, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L151
	leaq	-256(%rbp), %rax
	leaq	-180(%rbp), %rdx
	leaq	.LC81(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$384, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	jmp	.L141
.L147:
	nop
	jmp	.L141
.L148:
	nop
	jmp	.L141
.L149:
	nop
	jmp	.L141
.L150:
	nop
	jmp	.L141
.L151:
	nop
.L141:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_set_params, .-test_set_params
	.section	.rodata
.LC82:
	.string	"Encap"
.LC83:
	.string	"Decap"
.LC84:
	.string	"%s %s"
	.align 8
.LC85:
	.string	"priv = new_raw_private_key(t->curve, t->rpriv, t->rprivlen, NULL, 0)"
.LC86:
	.string	"expected"
.LC87:
	.string	"PROV_R_NOT_A_PUBLIC_KEY"
	.align 8
.LC88:
	.string	"ERR_GET_REASON(ERR_get_error())"
	.text
	.type	test_nopublic, @function
test_nopublic:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	-52(%rbp), %eax
	notl	%eax
	andl	$1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$1, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	imulq	$120, %rax, %rax
	leaq	ec_encapdata(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	cmpl	$1, -32(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L153
	leaq	.LC82(%rip), %rax
	jmp	.L154
.L153:
	leaq	.LC83(%rip), %rax
.L154:
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	.LC84(%rip), %rdi
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %eax
	call	test_note@PLT
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	new_raw_private_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC85(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$404, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L162
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$407, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L163
	cmpl	$0, -28(%rbp)
	je	.L158
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC86(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$411, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L159
	jmp	.L156
.L158:
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC86(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$414, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L164
.L159:
	cmpl	$0, -44(%rbp)
	jne	.L160
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC87(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$220, %r9d
	movl	%esi, %r8d
	movl	$418, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L165
.L160:
	movl	$1, -4(%rbp)
	jmp	.L156
.L162:
	nop
	jmp	.L156
.L163:
	nop
	jmp	.L156
.L164:
	nop
	jmp	.L156
.L165:
	nop
.L156:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	test_nopublic, .-test_nopublic
	.section	.rodata
	.align 8
.LC89:
	.string	"auth = new_raw_private_key(t->curve, t->rpriv, t->rprivlen, NULL, expected)"
	.align 8
.LC90:
	.string	"EVP_PKEY_auth_encapsulate_init(ctx, auth, opparam)"
	.align 8
.LC91:
	.string	"EVP_PKEY_auth_decapsulate_init(ctx, auth, opparam)"
	.text
	.type	test_noauthpublic, @function
test_noauthpublic:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	-52(%rbp), %eax
	notl	%eax
	andl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$1, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	imulq	$120, %rax, %rax
	leaq	ec_encapdata(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	rctx(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$1, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L167
	leaq	.LC82(%rip), %rax
	jmp	.L168
.L167:
	leaq	.LC83(%rip), %rax
.L168:
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	.LC84(%rip), %rdi
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %eax
	call	test_note@PLT
	movl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	new_raw_private_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$439, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L175
	cmpl	$0, -20(%rbp)
	je	.L171
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC86(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$444, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L172
	jmp	.L170
.L171:
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_decapsulate_init@PLT
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC86(%rip), %rcx
	leaq	.LC91(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$448, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L176
.L172:
	cmpl	$0, -44(%rbp)
	jne	.L173
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC87(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$220, %r9d
	movl	%esi, %r8d
	movl	$453, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L177
.L173:
	movl	$1, -4(%rbp)
	jmp	.L170
.L175:
	nop
	jmp	.L170
.L176:
	nop
	jmp	.L170
.L177:
	nop
.L170:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	test_noauthpublic, .-test_noauthpublic
	.section	.rodata
.LC92:
	.string	"encoded-pub-key"
	.align 8
.LC93:
	.string	"EVP_PKEY_get_octet_string_param(pkey, OSSL_PKEY_PARAM_ENCODED_PUBLIC_KEY, pubkey, sizeof(pubkey), &pubkeylen)"
	.align 8
.LC94:
	.string	"EVP_PKEY_get_bn_param(pkey, OSSL_PKEY_PARAM_PRIV_KEY, &priv)"
	.align 8
.LC95:
	.string	"privkeylen = BN_bn2bin(priv, privkey)"
.LC96:
	.string	"sizeof(privkey)"
.LC97:
	.string	"privkeylen"
.LC98:
	.string	"t->priv"
.LC99:
	.string	"privkey"
.LC100:
	.string	"t->pub"
.LC101:
	.string	"pubkey"
	.text
	.type	test_ec_dhkem_derivekey, @function
test_ec_dhkem_derivekey:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$464, %rsp
	movl	%edi, -404(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movl	-404(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	leaq	ec_derivekey_data(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -400(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-464(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-464(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC5(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$483, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L179
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$484, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L179
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L179
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$486, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L179
	movq	-40(%rbp), %rax
	leaq	-392(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	.LC92(%rip), %rsi
	movq	%rcx, %r8
	movl	$133, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$487, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	movq	-40(%rbp), %rax
	leaq	-400(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$490, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	movq	-400(%rbp), %rax
	leaq	-384(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$492, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L179
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC96(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$66, %r9d
	movl	%esi, %r8d
	movl	$493, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L179
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-32(%rbp), %r9
	leaq	-384(%rbp), %r8
	leaq	.LC98(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$494, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L179
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-392(%rbp), %r9
	leaq	-304(%rbp), %r8
	leaq	.LC100(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$495, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L179
	movl	$1, %eax
	jmp	.L180
.L179:
	movl	$0, %eax
.L180:
	movl	%eax, -4(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	test_ec_dhkem_derivekey, .-test_ec_dhkem_derivekey
	.section	.rodata
.LC102:
	.string	" with auth"
	.align 8
.LC103:
	.string	"testing encap/decap of curve %s%s\n"
	.align 8
.LC104:
	.string	"recip = EVP_PKEY_Q_keygen(libctx, NULL, curve)"
	.align 8
.LC105:
	.string	"sender_auth = EVP_PKEY_Q_keygen(libctx, NULL, curve)"
	.align 8
.LC106:
	.string	"recip = EVP_PKEY_Q_keygen(libctx, NULL, \"EC\", curve)"
	.align 8
.LC107:
	.string	"sender_auth = EVP_PKEY_Q_keygen(libctx, NULL, \"EC\", curve)"
	.align 8
.LC108:
	.string	"ctx = EVP_PKEY_CTX_new_from_pkey(libctx, recip, NULL)"
	.align 8
.LC109:
	.string	"EVP_PKEY_auth_encapsulate_init(ctx, sender_auth, NULL)"
	.align 8
.LC110:
	.string	"EVP_PKEY_CTX_set_kem_op(ctx, op)"
	.align 8
.LC111:
	.string	"EVP_PKEY_encapsulate(ctx, sender_pub, &sender_publen, sender_secret, &sender_secretlen)"
	.align 8
.LC112:
	.string	"EVP_PKEY_auth_decapsulate_init(ctx, sender_auth, NULL)"
	.align 8
.LC113:
	.string	"EVP_PKEY_decapsulate(ctx, recip_secret, &recip_secretlen, sender_pub, sender_publen)"
.LC114:
	.string	"sender_secret"
.LC115:
	.string	"recip_secret"
	.text
	.type	test_ec_noikme, @function
test_ec_noikme:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$880, %rsp
	movl	%edi, -868(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$256, -840(%rbp)
	movq	$256, -848(%rbp)
	movq	$256, -856(%rbp)
	movl	$5, -36(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	-868(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L183
	movl	$1, -8(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -868(%rbp)
.L183:
	movl	-868(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dhkem_supported_curves(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L184
	leaq	.LC102(%rip), %rax
	jmp	.L185
.L184:
	leaq	.LC29(%rip), %rax
.L185:
	movq	-56(%rbp), %rcx
	leaq	.LC103(%rip), %rdi
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %eax
	call	test_note@PLT
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	jne	.L186
	movq	libctx(%rip), %rax
	movq	-56(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC104(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$532, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L198
	cmpl	$0, -8(%rbp)
	je	.L188
	movq	libctx(%rip), %rax
	movq	-56(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC105(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$534, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L188
	jmp	.L198
.L186:
	movq	libctx(%rip), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$538, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L199
	cmpl	$0, -8(%rbp)
	je	.L188
	movq	libctx(%rip), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC107(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$540, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L199
.L188:
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$545, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L191
	cmpq	$0, -32(%rbp)
	je	.L192
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$547, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L191
.L192:
	cmpq	$0, -32(%rbp)
	jne	.L193
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$550, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L191
.L193:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$551, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L191
	leaq	-840(%rbp), %rdi
	leaq	-320(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-832(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$552, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L191
	cmpq	$0, -32(%rbp)
	je	.L194
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC112(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$555, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L191
.L194:
	cmpq	$0, -32(%rbp)
	jne	.L195
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$558, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L191
.L195:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_kem_op@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$559, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L191
	movq	-856(%rbp), %rdi
	leaq	-832(%rbp), %rcx
	leaq	-848(%rbp), %rdx
	leaq	-576(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$560, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L191
	movq	-840(%rbp), %rsi
	movq	-848(%rbp), %r8
	leaq	-576(%rbp), %rdi
	leaq	.LC114(%rip), %rcx
	leaq	.LC115(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rsi
	leaq	-320(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$562, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L191
	movl	$1, %eax
	jmp	.L196
.L191:
	movl	$0, %eax
.L196:
	movl	%eax, -4(%rbp)
	jmp	.L189
.L198:
	nop
	jmp	.L189
.L199:
	nop
.L189:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	test_ec_noikme, .-test_ec_noikme
	.section	.rodata
	.align 8
.LC116:
	.string	"key = EVP_PKEY_Q_keygen(libctx, NULL, \"EC\", curve)"
	.align 8
.LC117:
	.string	"ctx = EVP_PKEY_CTX_new_from_pkey(libctx, key, NULL)"
	.text
	.type	do_ec_curve_failtest, @function
do_ec_curve_failtest:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	libctx(%rip), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC116(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$578, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L201
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$579, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L201
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC52(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$580, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L201
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC52(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$581, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L201
	movl	$1, %eax
	jmp	.L202
.L201:
	movl	$0, %eax
.L202:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	do_ec_curve_failtest, .-do_ec_curve_failtest
	.type	test_ec_curve_nonnist, @function
test_ec_curve_nonnist:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	call	do_ec_curve_failtest
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	test_ec_curve_nonnist, .-test_ec_curve_nonnist
	.type	test_ec_curve_unsupported, @function
test_ec_curve_unsupported:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	call	do_ec_curve_failtest
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	test_ec_curve_unsupported, .-test_ec_curve_unsupported
	.section	.rodata
	.align 8
.LC118:
	.string	"recippriv = new_raw_private_key(t->curve, t->rpriv, t->rprivlen, pub, 1)"
	.align 8
.LC119:
	.string	"ctx = EVP_PKEY_CTX_new_from_pkey(libctx, recippriv, NULL)"
	.align 8
.LC120:
	.string	"EVP_PKEY_encapsulate(ctx, enc , &enclen, secret, &secretlen)"
	.align 8
.LC121:
	.string	"EVP_PKEY_decapsulate(ctx, secret, &secretlen, t->expected_enc, t->expected_enclen)"
.LC122:
	.string	"PROV_R_INVALID_KEY"
	.text
	.type	test_ec_badpublic, @function
test_ec_badpublic:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$848, %rsp
	movl	%edi, -836(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$256, -568(%rbp)
	movl	-836(%rbp), %eax
	notl	%eax
	andl	$1, %eax
	movl	%eax, -28(%rbp)
	leaq	ec_encapdata(%rip), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L209
	leaq	.LC82(%rip), %rax
	jmp	.L210
.L209:
	leaq	.LC83(%rip), %rax
.L210:
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	.LC84(%rip), %rdi
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %eax
	call	test_note@PLT
	movb	$0, -560(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-560(%rbp), %rcx
	movl	$1, %r8d
	movq	%rax, %rdi
	call	new_raw_private_key
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC118(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$612, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L222
	movq	libctx(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC119(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$616, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L223
	cmpl	$0, -28(%rbp)
	je	.L214
	movq	$256, -576(%rbp)
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$623, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L224
	leaq	-568(%rbp), %rdi
	leaq	-304(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-832(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC120(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$625, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L218
	jmp	.L212
.L214:
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$629, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L225
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-568(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC121(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$631, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L226
.L218:
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC122(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$158, %r9d
	movl	%esi, %r8d
	movl	$637, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L227
	movl	$1, -4(%rbp)
	jmp	.L212
.L222:
	nop
	jmp	.L212
.L223:
	nop
	jmp	.L212
.L224:
	nop
	jmp	.L212
.L225:
	nop
	jmp	.L212
.L226:
	nop
	jmp	.L212
.L227:
	nop
.L212:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	test_ec_badpublic, .-test_ec_badpublic
	.section	.rodata
	.align 8
.LC123:
	.string	"auth = new_raw_private_key(t->curve, t->rpriv, t->rprivlen, pub, 1)"
	.text
	.type	test_ec_badauth, @function
test_ec_badauth:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$848, %rsp
	movl	%edi, -836(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$256, -824(%rbp)
	movq	$256, -832(%rbp)
	movl	-836(%rbp), %eax
	notl	%eax
	andl	$1, %eax
	movl	%eax, -20(%rbp)
	leaq	ec_encapdata(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	rctx(%rip), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L229
	leaq	.LC82(%rip), %rax
	jmp	.L230
.L229:
	leaq	.LC83(%rip), %rax
.L230:
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	.LC84(%rip), %rdi
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %eax
	call	test_note@PLT
	movb	$0, -816(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-816(%rbp), %rcx
	movl	$1, %r8d
	movq	%rax, %rdi
	call	new_raw_private_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC123(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$662, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L239
	cmpl	$0, -20(%rbp)
	je	.L233
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$666, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L240
	leaq	-832(%rbp), %rdi
	leaq	-560(%rbp), %rcx
	leaq	-824(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$668, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L235
	jmp	.L240
.L233:
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC91(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$672, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L241
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-832(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC121(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$673, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L241
.L235:
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC122(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$158, %r9d
	movl	%esi, %r8d
	movl	$678, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L242
	movl	$1, -4(%rbp)
	jmp	.L232
.L239:
	nop
	jmp	.L232
.L240:
	nop
	jmp	.L232
.L241:
	nop
	jmp	.L232
.L242:
	nop
.L232:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	test_ec_badauth, .-test_ec_badauth
	.section	.rodata
	.align 8
.LC124:
	.string	"EVP_PKEY_decapsulate(ctx, secret, &secretlen, enc, t->expected_enclen)"
	.text
	.type	test_ec_invalid_decap_enc_buffer, @function
test_ec_invalid_decap_enc_buffer:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	leaq	ec_encapdata(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$256, -536(%rbp)
	movq	rctx(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rcx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movb	$-1, -272(%rbp)
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$697, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L244
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	leaq	-272(%rbp), %rcx
	leaq	-536(%rbp), %rdx
	leaq	-528(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$698, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L244
	movl	$1, %eax
	jmp	.L246
.L244:
	movl	$0, %eax
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	test_ec_invalid_decap_enc_buffer, .-test_ec_invalid_decap_enc_buffer
	.section	.rodata
	.align 8
.LC125:
	.string	"genctx = EVP_PKEY_CTX_new_from_name(libctx, t->curvename, NULL)"
	.align 8
.LC126:
	.string	"EVP_PKEY_keygen(genctx, &pkey)"
	.align 8
.LC127:
	.string	"EVP_PKEY_get_octet_string_param(pkey, OSSL_PKEY_PARAM_PRIV_KEY, privkey, sizeof(privkey), &privkeylen)"
.LC128:
	.string	"masked_priv"
	.text
	.type	test_ecx_dhkem_derivekey, @function
test_ecx_dhkem_derivekey:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movl	%edi, -340(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -336(%rbp)
	movl	-340(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	leaq	ecx_derivekey_data(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L248
	movzbl	-320(%rbp), %eax
	andl	$-8, %eax
	movb	%al, -320(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	subq	$1, %rax
	movzbl	-320(%rbp,%rax), %edx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	subq	$1, %rax
	andl	$127, %edx
	movb	%dl, -320(%rbp,%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	subq	$1, %rax
	movzbl	-320(%rbp,%rax), %edx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	subq	$1, %rax
	orl	$64, %edx
	movb	%dl, -320(%rbp,%rax)
	jmp	.L249
.L248:
	movzbl	-320(%rbp), %eax
	andl	$-4, %eax
	movb	%al, -320(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	subq	$1, %rax
	movzbl	-320(%rbp,%rax), %edx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	subq	$1, %rax
	orl	$-128, %edx
	movb	%dl, -320(%rbp,%rax)
.L249:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-400(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	libctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC125(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$736, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L250
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$737, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L250
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$738, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L250
	leaq	-120(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC126(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$739, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L250
	movq	-120(%rbp), %rax
	leaq	-328(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	.LC92(%rip), %rsi
	movq	%rcx, %r8
	movl	$64, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$740, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L250
	movq	-120(%rbp), %rax
	leaq	-336(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rcx, %r8
	movl	$64, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC127(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$743, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L250
	movq	-328(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %r8
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	.LC101(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rsi
	leaq	-192(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$746, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L250
	movq	-336(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %r8
	leaq	-320(%rbp), %rdi
	leaq	.LC99(%rip), %rcx
	leaq	.LC128(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rsi
	leaq	-256(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$747, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L250
	movl	$1, %eax
	jmp	.L251
.L250:
	movl	$0, %eax
.L251:
	movl	%eax, -20(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	test_ecx_dhkem_derivekey, .-test_ecx_dhkem_derivekey
	.section	.rodata
	.align 8
.LC129:
	.string	"auth = EVP_PKEY_Q_keygen(libctx, NULL, \"X448\")"
	.align 8
.LC130:
	.string	"EVP_PKEY_auth_encapsulate_init(rctx[TEST_KEYTYPE_X25519], auth, opparam)"
	.text
	.type	test_ecx_auth_key_curve_mismatch, @function
test_ecx_auth_key_curve_mismatch:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$760, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L254
	movl	$0, %eax
	jmp	.L255
.L254:
	movq	8+rctx(%rip), %rax
	leaq	opparam(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_auth_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC130(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$763, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_ecx_auth_key_curve_mismatch, .-test_ecx_auth_key_curve_mismatch
	.section	.rodata
.LC131:
	.string	"ED448"
	.align 8
.LC132:
	.string	"key = EVP_PKEY_Q_keygen(libctx, NULL, \"ED448\")"
	.text
	.type	test_ed_curve_unsupported, @function
test_ed_curve_unsupported:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC131(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC132(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$776, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L257
	movq	libctx(%rip), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC117(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$777, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L257
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC52(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$778, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L257
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decapsulate_init@PLT
	movl	%eax, %esi
	leaq	.LC52(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$-2, %r9d
	movl	%esi, %r8d
	movl	$779, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L257
	movl	$1, %eax
	jmp	.L258
.L257:
	movl	$0, %eax
.L258:
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	test_ed_curve_unsupported, .-test_ed_curve_unsupported
	.section	.rodata
.LC133:
	.string	"default"
	.align 8
.LC134:
	.string	"rkey[TEST_KEYTYPE_P256] = EVP_PKEY_Q_keygen(libctx, NULL, \"EC\", \"P-256\")"
	.align 8
.LC135:
	.string	"rkey[TEST_KEYTYPE_X25519] = EVP_PKEY_Q_keygen(libctx, NULL, \"X25519\")"
	.align 8
.LC136:
	.string	"rctx[TEST_KEYTYPE_P256] = EVP_PKEY_CTX_new_from_pkey(libctx, rkey[TEST_KEYTYPE_P256], NULL)"
	.align 8
.LC137:
	.string	"rctx[TEST_KEYTYPE_X25519] = EVP_PKEY_CTX_new_from_pkey(libctx, rkey[TEST_KEYTYPE_X25519], NULL)"
.LC138:
	.string	"test_dhkem_encapsulate"
.LC139:
	.string	"test_dhkem_decapsulate"
.LC140:
	.string	"test_settables"
.LC141:
	.string	"test_init_multiple"
.LC142:
	.string	"test_auth_key_type_mismatch"
.LC143:
	.string	"test_no_operation_set"
.LC144:
	.string	"test_ikm_small"
.LC145:
	.string	"test_input_size_small"
.LC146:
	.string	"test_null_params"
.LC147:
	.string	"test_set_params"
.LC148:
	.string	"test_nopublic"
.LC149:
	.string	"test_noauthpublic"
.LC150:
	.string	"test_ec_dhkem_derivekey"
.LC151:
	.string	"test_ec_noikme"
	.align 8
.LC152:
	.string	"test_ec_auth_key_curve_mismatch"
.LC153:
	.string	"test_ec_invalid_private_key"
.LC154:
	.string	"test_ec_dhkem_derivekey_fail"
.LC155:
	.string	"test_ec_curve_nonnist"
.LC156:
	.string	"test_ec_curve_unsupported"
	.align 8
.LC157:
	.string	"test_ec_invalid_decap_enc_buffer"
.LC158:
	.string	"test_ec_public_key_infinity"
.LC159:
	.string	"test_ec_badpublic"
.LC160:
	.string	"test_ec_badauth"
.LC161:
	.string	"test_ecx_dhkem_derivekey"
	.align 8
.LC162:
	.string	"test_ecx_auth_key_curve_mismatch"
.LC163:
	.string	"test_ed_curve_unsupported"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	leaq	.LC133(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	leaq	libprov(%rip), %rdx
	movq	-16(%rbp), %rax
	leaq	nullprov(%rip), %rsi
	leaq	libctx(%rip), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_get_libctx@PLT
	testl	%eax, %eax
	jne	.L261
	movl	$0, %eax
	jmp	.L262
.L261:
	leaq	-80(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC10(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, opparam(%rip)
	movq	%rdx, 8+opparam(%rip)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16+opparam(%rip)
	movq	%rdx, 24+opparam(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, 32+opparam(%rip)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 40+opparam(%rip)
	movq	%rdx, 48+opparam(%rip)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 56+opparam(%rip)
	movq	%rdx, 64+opparam(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, 72+opparam(%rip)
	movq	libctx(%rip), %rax
	leaq	.LC0(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, rkey(%rip)
	movq	rkey(%rip), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$799, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L268
	movq	libctx(%rip), %rax
	leaq	.LC3(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, 8+rkey(%rip)
	movq	8+rkey(%rip), %rax
	leaq	.LC135(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$803, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L269
	movq	rkey(%rip), %rcx
	movq	libctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, rctx(%rip)
	movq	rctx(%rip), %rax
	leaq	.LC136(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$807, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L270
	movq	8+rkey(%rip), %rcx
	movq	libctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, 8+rctx(%rip)
	movq	8+rctx(%rip), %rax
	leaq	.LC137(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$812, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L271
	leaq	test_dhkem_encapsulate(%rip), %rsi
	leaq	.LC138(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_dhkem_decapsulate(%rip), %rsi
	leaq	.LC139(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_settables(%rip), %rsi
	leaq	.LC140(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_init_multiple(%rip), %rsi
	leaq	.LC141(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_auth_key_type_mismatch(%rip), %rsi
	leaq	.LC142(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_no_operation_set(%rip), %rsi
	leaq	.LC143(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ikm_small(%rip), %rsi
	leaq	.LC144(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_input_size_small(%rip), %rsi
	leaq	.LC145(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_null_params(%rip), %rsi
	leaq	.LC146(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_set_params(%rip), %rsi
	leaq	.LC147(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_nopublic(%rip), %rsi
	leaq	.LC148(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_noauthpublic(%rip), %rsi
	leaq	.LC149(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ec_dhkem_derivekey(%rip), %rsi
	leaq	.LC150(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ec_noikme(%rip), %rsi
	leaq	.LC151(%rip), %rax
	movl	$1, %ecx
	movl	$10, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ec_auth_key_curve_mismatch(%rip), %rdx
	leaq	.LC152(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_invalid_private_key(%rip), %rdx
	leaq	.LC153(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_dhkem_derivekey_fail(%rip), %rdx
	leaq	.LC154(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_curve_nonnist(%rip), %rdx
	leaq	.LC155(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_curve_unsupported(%rip), %rdx
	leaq	.LC156(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_invalid_decap_enc_buffer(%rip), %rdx
	leaq	.LC157(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_public_key_infinity(%rip), %rdx
	leaq	.LC158(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ec_badpublic(%rip), %rsi
	leaq	.LC159(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ec_badauth(%rip), %rsi
	leaq	.LC160(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ecx_dhkem_derivekey(%rip), %rsi
	leaq	.LC161(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_ecx_auth_key_curve_mismatch(%rip), %rdx
	leaq	.LC162(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ed_curve_unsupported(%rip), %rdx
	leaq	.LC163(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	jmp	.L262
.L268:
	nop
	jmp	.L264
.L269:
	nop
	jmp	.L264
.L270:
	nop
	jmp	.L264
.L271:
	nop
.L264:
	movl	$0, %eax
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	8+rkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	rkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	8+rctx(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	rctx(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	libprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	nullprov(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 32
	.type	order.0, @object
	.size	order.0, 32
order.0:
	.base64	"/////wAAAAD//////////7zm+q2nF56E87nKwvxjJVE="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
