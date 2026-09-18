	.file	"curve448_internal_test.c"
	.text
	.data
	.align 4
	.type	max, @object
	.size	max, 4
max:
	.long	1000
	.local	verbose
	.comm	verbose,4,4
	.section	.rodata
	.align 32
	.type	in_scalar1, @object
	.size	in_scalar1, 56
in_scalar1:
	.base64	"PSYv3fnsjohJUmb+oZo00oiCrO8EUQTQ0arhIXAKd5yYTCT4zdePv/RJQ+ujaPVLKSWaTxxgCtM="
	.align 32
	.type	in_u1, @object
	.size	in_u1, 56
in_u1:
	.base64	"BvzmQPo0h7/aX2zy1SY/iq2IM0y9B0N/Ag8I+YFNwDHdvcOMGcbaJYP6VCnblK2hiqen+074oIY="
	.align 32
	.type	out_u1, @object
	.size	out_u1, 56
out_u1:
	.base64	"zj5P+Vpg3GaX2h2x2F5q+995tQokEtdUbV8jn+FPuq3rRF/GagGwd52YIjlhER4hdmKC9z3Za28="
	.align 32
	.type	in_scalar2, @object
	.size	in_scalar2, 56
in_scalar2:
	.base64	"ID1JRCi4OZNSZl3cpC+d6P72AJCODUYcsCH4xTg0Xdd8PkgG4l9G0zFcROCltDcSgt0sjVvjCV8="
	.align 32
	.type	in_u2, @object
	.size	in_u2, 56
in_u2:
	.base64	"D7zC+ZPNVtMwWwt9nlXUwaj7XbtS+Omh6bYgGxZdAViU5WxNNXC+5S/iBeKKeLkc373nHOjRV9s="
	.align 32
	.type	out_u2, @object
	.size	out_u2, 56
out_u2:
	.base64	"iEoCV2I5/3ovL2Oy22qf83BHrBNWjh4w/mPEp60bPuOlcA3zQyHWIHfmNjPFdcHJVFFOmdp8F50="
	.align 32
	.type	in_u3, @object
	.size	in_u3, 56
in_u3:
	.string	"\005"
	.zero	54
	.align 32
	.type	out_u3, @object
	.size	out_u3, 168
out_u3:
	.base64	"P0gsip8ZsB5sRu6XEdncFP1L9nrzB2XCriuEak0jqM0NuJcIYjlJLK81C1H4M4aLm8KzvKnPQRM="
	.base64	"qjtHSdVbna8eWwAoiCbEZydM4+u91cF7l14J1K9sZ88Q0IcgLbiChuK3n87qPsNT71T6om4hnzg="
	.base64	"B39FNoHKyjaTGYQgu+UVyuAAJHJRmz5nZhp+icq5RpXI9LzWbmG5uclG2o1STePWm9nZ1muZfjc="
	.align 32
	.type	privkey1, @object
	.size	privkey1, 57
privkey1:
	.base64	"bIKlYsuAjRDWMr6JyFE+v2ySnzTd+oyfY8mWDvbjSKNSjIo/zC8ETjmj/FuUSS+PAy51SaIAmPlb"
	.align 32
	.type	pubkey1, @object
	.size	pubkey1, 57
pubkey1:
	.base64	"X9dEm1m0Yf0s54fsYWrUah2hNCSFpw4fig6nXYDpZ3jt8SR2m0bHBhvWeD3x5Q9s0foavq/oJWGA"
	.align 32
	.type	sig1, @object
	.size	sig1, 114
sig1:
	.base64	"Uzo39rvkVyUfAjwNiPl2ri37UEqEPjTSB0/YI9QaWR8rIz8DT2KCgfL9eiLd1H14KMWb0KIb/TmA/w0gKNSxip32PgBsXRwtNFuSXY3AC0EEhS25msXHzdqFMKEToPTbthFJ8FpzYyaMcdlYCP8uZSYA"
	.align 32
	.type	privkey2, @object
	.size	privkey2, 57
privkey2:
	.base64	"xOqwXTVwB8Yy89u0hImSTVUrCP4MNToNSh8ArNosRjr76mfF6NKHfF47w5emWZSe+AIelU4KEidO"
	.align 32
	.type	pubkey2, @object
	.size	pubkey2, 57
pubkey2:
	.base64	"Q7oo9DDN/0Vq5TFUX37NCsg0pV2TWMA3K/oMbGeYwIZq6gHrAHQoArhDjqTLghacI1FgYntMOpSA"
	.type	msg2, @object
	.size	msg2, 1
msg2:
	.ascii	"\003"
	.align 32
	.type	sig2, @object
	.size	sig2, 114
sig2:
	.base64	"Jrj5Fye9Yol68V5B60PDd++5xhDUjyM1ywvQCHgQ9DUlQbFDxLmBt+GPYt6MzfYz/BvwN6t813mAXg28wKrhy87hr7LgJ982vATc7L8VQzbBnwr34KZHKQXnmfGVPSoP8zSKshqkra/R0jREHPgHwDoA"
	.align 32
	.type	privkey3, @object
	.size	privkey3, 57
privkey3:
	.base64	"xOqwXTVwB8Yy89u0hImSTVUrCP4MNToNSh8ArNosRjr76mfF6NKHfF47w5emWZSe+AIelU4KEidO"
	.align 32
	.type	pubkey3, @object
	.size	pubkey3, 57
pubkey3:
	.base64	"Q7oo9DDN/0Vq5TFUX37NCsg0pV2TWMA3K/oMbGeYwIZq6gHrAHQoArhDjqTLghacI1FgYntMOpSA"
	.type	msg3, @object
	.size	msg3, 1
msg3:
	.ascii	"\003"
	.type	context3, @object
	.size	context3, 3
context3:
	.ascii	"foo"
	.align 32
	.type	sig3, @object
	.size	sig3, 114
sig3:
	.base64	"1Pj2Exdw3Ub0CGfW/V1QVd5DVB+MXjWrvNABsyqJ99IVH3ZH8R2Moq4nn7hC1gchf85uBC9oFeoADIV0HeXI2hFEpqGrp/lt5CUF16cphST9pTj8y7t1T1eMHK0Q1U0NVChAfoXcvJikkVXBN2TmbDwA"
	.align 32
	.type	privkey4, @object
	.size	privkey4, 57
privkey4:
	.base64	"zSPST3FCdOdENDI3uTKQ9RH2Ql+Y5kRZ/yA+iYUIP/32BQBVOrwOBc0CGEvbicTM1n4YeVEmfrMo"
	.align 32
	.type	pubkey4, @object
	.size	pubkey4, 57
pubkey4:
	.base64	"3OqeePNaG/NJmoMbELhskKrAHNhLZ6AQm1WjbpMoseNl/OFh1xznExpUPqTLX36fHYsAaWRHABQA"
	.align 8
	.type	msg4, @object
	.size	msg4, 11
msg4:
	.base64	"DD5UQHTsY7AmXgw="
	.align 32
	.type	sig4, @object
	.size	sig4, 114
sig4:
	.base64	"HwqIiM4l6NRYohEwh5uECpCJ2ZmqugOerz46+gkKCdOJ26gsT/KuisXN+3xV6U1dlhop/gEJlB4AuNve6m07BRBo33JUwM3BKcvmLbLclX27R7Uf0/IT+4aY8GR3QlClAolhyb+P/Zc/5dXCBkkrFA4A"
	.align 32
	.type	privkey5, @object
	.size	privkey5, 57
privkey5:
	.base64	"JYzdStoy7Zyf9U5jdWrlgvuPqyrHIfLI5nanJ2hRPZOfY93bVWCRM/Ka34bsmSncy1LBxf0v9+Ib"
	.align 32
	.type	pubkey5, @object
	.size	pubkey5, 57
pubkey5:
	.base64	"O6FtoMbyzB8wGHdAdW9eeY1rxfwBXXxjzJUQ7j/UStwk2OlotuRub5TRm5RTYXJr114UnvCYF/WA"
	.align 8
	.type	msg5, @object
	.size	msg5, 12
msg5:
	.base64	"ZKZfPN7c3WaBHikV"
	.align 32
	.type	sig5, @object
	.size	sig5, 114
sig5:
	.base64	"fu6rfE5Q+3mbQY7l4xl/9r8V1DoUw0OJtZ3Rp7G4W0rpBDispjS+pF46JpXxJw8H/c33xiuO/q8AtFwslrpFfrGovwdaPbKOXCT2uSPtStdHw8ngPHB577h8sRDTqZhh5yADy65ta4uCfk5sFDBk/zwA"
	.align 32
	.type	privkey6, @object
	.size	privkey6, 57
privkey6:
	.base64	"fvToRUQjZ1L7tWuPMaI6EOQoFPX1XKA3zcwRxkyaOylJwbtgcAMUYRcypsL+qY7rwCZqEak5cBAO"
	.align 32
	.type	pubkey6, @object
	.size	pubkey6, 57
pubkey6:
	.base64	"s9oHmwqkk6V3ICnwRnuuvuWoES2dOiJTI2HaKU97s4FcXcWeF2tNnzgcoJOOE8bAexdL5l36V46A"
	.align 8
	.type	msg6, @object
	.size	msg6, 13
msg6:
	.base64	"ZKZfPN7c3WaBHikV5w=="
	.align 32
	.type	sig6, @object
	.size	sig6, 114
sig6:
	.base64	"ahIGb1UzG2wirNXVv8XXEij72oCujewmvdMGdDxQJ8tIkIEMFiwCdGhnXs9kWoMXbA1zI6LM3i2A7+WhJo6Kyh1vvBlNP3fESYbrSrQXeRmti+wz60e7tfxuKBlv0cr1a05+C6VRkjTQRxVaxyehBTEA"
	.align 32
	.type	privkey7, @object
	.size	privkey7, 57
privkey7:
	.base64	"1l3zQa0T4AhWdoi67dqOnc3BfcAkl06ltCJ7ZTDjOb/yH5nmjKaWjzzKbf4PufT6tPoTXVVC6j8B"
	.align 32
	.type	pubkey7, @object
	.size	pubkey7, 57
pubkey7:
	.base64	"35cF9Y7bq4Asf4Njz+VWCrHGEywgqfHdFjSDom+KxTo51oCL9KHfvSYbCZuwOz+1CQbLKL2KCB8A"
	.align 32
	.type	msg7, @object
	.size	msg7, 64
msg7:
	.base64	"vQ9qN0fNVhvd30ZAozJGGkowoSpDTNC/QNdm2cbUWOVRIgSjDBfR9QtQeWMfZOsxEhgtowBYNUYRE3GNGl75RA=="
	.align 32
	.type	sig7, @object
	.size	sig7, 114
sig7:
	.base64	"VUvCSAhgtJ6rhTLSpTO31XjvRz7rWMmLstDhzkiKmLGN/em5uQd15n9H1KHDSCBY78n0DSygM6CAG2PUWztyLvVSutO0zLZn2jUBkrYcUIz3trWtrcLI2aRG7wA/sFy6XzDojjbsJwOzScoinCZwgzkA"
	.align 32
	.type	privkey8, @object
	.size	privkey8, 57
privkey8:
	.base64	"LsX+PBcEWr2xNqXmqRPjKrda5otT0vwUm3flBBMtN1abfnZrp0oZvWFiNDohyFkKqc68qQFMY231"
	.align 32
	.type	pubkey8, @object
	.size	pubkey8, 57
pubkey8:
	.base64	"eXVvAU3P4gefXdnnGL5BceLvJIagjyUYb2v/Q6mTa5v+EkArCK5leYo9geIunsgOdpCGLvPU7ToA"
	.align 32
	.type	msg8, @object
	.size	msg8, 256
msg8:
	.base64	"FXd1MrC90NE4n2NsX2ubpzTJCvVyh34tJy3QeKoeVnz6gOEpKLtUIzDoQJ8xdFBBB+zV76xhrnUE2r4qYC7eieXMpiV6fHfienArOuOfx2n8VPI5WuahF4yrRzjlQwcvwcF3/nHpLiW/A+Tsty9Htk0EZarqTH+tNyU2yLpRamA5w8Kjnw5NgyvkMt+ppwam5cfhnzl5ZMpCWAAvfAVBtZAxbbxWIraypv56Sr/9lhBeynbqe5iBavB0jBDfBIzgEtkBAVpR8YnziIFFwDZQqiPOiUw72IngMNVlBxxZ9AmpmBtRh4/W/BEGJNy83gv3ppzM44+r34bzvvYESBne"
	.ascii	"\021"
	.align 32
	.type	sig8, @object
	.size	sig8, 114
sig8:
	.base64	"xlDduwYBwZyhFDnhZA3ZMfQ8UY6lvqcNPc3l9Bkf5T8Az5ZlRrcrzH1Yviubre8odDlU46RKI/iA6NTxz84temFFLSbaBYlvClDaZqI5qKGIttglszBa13tz+6wINuzGCYf9CFJ8Go6A1YI+Zcr+Kj0A"
	.align 32
	.type	privkey9, @object
	.size	privkey9, 57
privkey9:
	.base64	"hy0JN4D103MN98ISZks3uKDyT1aBDaqDgs1Po/d2NOxE3FTxwu2b6ob6+3Yy2L4ZnqFl9a1V3Zzo"
	.align 32
	.type	pubkey9, @object
	.size	pubkey9, 57
pubkey9:
	.base64	"qBsuinClrJT/28ybrfw/6wgB8lhXi7EUrUTs4ewOeZ2gjv+4HF1oXAxW9k7srvjN8RzDhzeDjPQA"
	.align 32
	.type	msg9, @object
	.size	msg9, 1023
msg9:
	.base64	"bd+ALhquSYaTX3+YG6PwNR1ic8CgwiycDoM5Fo5nVBKj3r+vQ17WUVWAB9tDhLZQ/MB+O1hqJ6T3oArIpv7CzYauS/FXDEHmpAyTHbJ7L6oVqM7dUs/3NixObiPa7A+8Onm2gG4xbvzHtoEZv0a8dqJgZ6U/KW2v29wRx393d+lyZgz0tqmzaaZmXwLgzJtu360Ta0+r5yPSgT2zE2z96bbQRDIv7ilHlS4DG3OrXGAzSbMHvcJ7xsuLi7170yMhm4AzpYG1nq3rsJs8Tz0id9TwNDYkrMgXgEcoslq3lxcrTFwhoi+ceDnWQwAjLrZuU/Mccj+jf+OHx9PlC9+Y"
	.base64	"E6MOW7Es9M2TDEDPtOH8YiWSpJWIeUSU1W0k6ktAyJ/AWWzJ67lhyMsQrd6Xal1gKxw/hbm5oAHtPGpNOxQ39SCWzRlW0EKll9VhpZbs09FzWo1XDqDsJyJaLEqv8mMG0VJsGvPKbZz1osmPR+HEbbmjMjTP1NgfLJhTignr52mY0Nj9JZl8fSVcbWbs5vpW8RFElQ8Cd5XmUwCPS9fKLe6F2OkPPcMVEwzioAN1oxjHw9l74sjOW220GmJU/yZPphVbruOwdzwPSXxXPxm7T0JAKB8LH0976Fek5Z1BbAa0xQ+gnhgQ3caxRnuurFo2aNEbbsqpAUQAFvOJ+ArM"
	.base64	"Tbl3Al5/WSQ4jH40CnMuVURA52Vw+N1xt9ZAs0UNH9XwQQoY+aNJT3B8cXt5tL91yYQAsJayFlO10hfPNWXJWXRW9wcDSXoHh2OCm8AbscvI+gTq3JpuP2aZWHqedclOW6sANuCy5xE5LP8AR9DWsFvSpYi8EJcYlUJZ8dhmeKV5oxIPGc+ylj8Xeutw8tSESCYmLlG4AnEnIGjvWzhW+oU1qiqIstQfKg4v2nYkwoUCcqxKL1Yfjy96MYv9XK+WlhSeSsgkrTRgU4/cJUIb7sLMaBgWLQa77QxAo4cZI0nbZ6EYutps1asBQO4nMgT2KKrRwTX3cCeaZR4k2MFN"
	.base64	"daYFnXa5am/YV9714LNUsnq5N6WBXRa1+uQH/xgiLG0e0mO+aMlfMtkIvYlc12IHrnJkh1Z/mmfa15q+wxb2g7F/LQK/B+Csi1vGFiz5RpezwnzR/qSbJ/I7opAYcZYlBlIMOS2otq0NmfcBP7wGwsF6VpUAyKdpZIHBzTPpsU5AuC55pfXbglcbqXuuOtPgR5UVuw4rDzv80f0zA078YkXt3X7iCG3a4mANjKc+IU6MKwvbKwR8akZKVi7Xe3PS2EHEs0lzVRJXcTt1NjLvujSBaavJCmj0JhGkASbXyyG1hpVWgYb35WnS/w+edF0Eh90uuZfK/Fq/ndEC5i/2"
	.base64	"bLqH"
	.align 32
	.type	sig9, @object
	.size	sig9, 114
sig9:
	.base64	"4wE0WkGjmk1y//jfacmAdaDMCCuAL8mytrxQP5JrZb3ff0yPHLSfY5avyKcKvm2K7w20eNTGspcAdsagSE/nbXazqXYl158c4kDnxXZ1DSlVKChvcZtBPemto+jreO1XNgPOMNi7dheF3DDbwyCGnhoA"
	.align 32
	.type	phprivkey1, @object
	.size	phprivkey1, 57
phprivkey1:
	.base64	"gz/mJAkje51i7HdYdSCRHpp1nOwdGXVbfakBuW3KPULveCLg1RBBJ9wF1tvv3mnjqyzsfIZ8bixJ"
	.align 32
	.type	phpubkey1, @object
	.size	phpubkey1, 57
phpubkey1:
	.base64	"JZtxwZ+D73enq9JlJMvbMWG1kKSPfRfePuC6nFK+t0PAlCihMdaxtXMD2Q2BMsJ21e09XQHA9TiA"
	.type	phmsg1, @object
	.size	phmsg1, 3
phmsg1:
	.ascii	"abc"
	.align 32
	.type	phsig1, @object
	.size	phsig1, 114
phsig1:
	.base64	"gi9pAfdIDz1fVixZKZTZaTYCh1YUSDJWUFYAu8KBrjgfVNa84uqRFXSTL1Kk5srdeHaTdew//RuAGg2bP0AwzUM5ZLZFfqOUdlESFPl0abV90y28VgqalNAL/wdiBGSjrSA999x842DDzTaW2dn6uQ8A"
	.align 32
	.type	phprivkey2, @object
	.size	phprivkey2, 57
phprivkey2:
	.base64	"gz/mJAkje51i7HdYdSCRHpp1nOwdGXVbfakBuW3KPULveCLg1RBBJ9wF1tvv3mnjqyzsfIZ8bixJ"
	.align 32
	.type	phpubkey2, @object
	.size	phpubkey2, 57
phpubkey2:
	.base64	"JZtxwZ+D73enq9JlJMvbMWG1kKSPfRfePuC6nFK+t0PAlCihMdaxtXMD2Q2BMsJ21e09XQHA9TiA"
	.type	phmsg2, @object
	.size	phmsg2, 3
phmsg2:
	.ascii	"abc"
	.type	phcontext2, @object
	.size	phcontext2, 3
phcontext2:
	.ascii	"foo"
	.align 32
	.type	phsig2, @object
	.size	phsig2, 114
phsig2:
	.base64	"wyKZ1G7I/wK1RUCYKBTc6aBYEvgZYrZJ1SgJWRaiqkgQZbFYBCPvkn7PCvWIj5DaD2qaha1dw/KA2RIkupkRo2U9AOSE4s4jJSFIHIZY3zBLt3Rac1FM25vz4VeEq3EoT40HBKYIxUprYtl761EdEyEA"
	.text
	.type	dohash, @function
dohash:
.LFB474:
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
	call	EVP_shake256@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L2
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L2
	leaq	hashout.1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinalXOF@PLT
	testl	%eax, %eax
	jne	.L3
.L2:
	movl	$0, %eax
	jmp	.L4
.L3:
	leaq	hashout.1(%rip), %rax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	dohash, .-dohash
	.section	.rodata
.LC0:
	.string	"hashctx"
	.align 8
.LC1:
	.string	"../test/curve448_internal_test.c"
	.align 8
.LC2:
	.string	"ossl_ed448_sign(NULL, outsig, NULL, 0, pubkey1, privkey1, NULL, 0, 0, NULL)"
.LC3:
	.string	"0"
	.align 8
.LC4:
	.string	"memcmp(sig1, outsig, sizeof(sig1))"
	.align 8
.LC5:
	.string	"ossl_ed448_sign(NULL, outsig, msg2, sizeof(msg2), pubkey2, privkey2, NULL, 0, 0, NULL)"
	.align 8
.LC6:
	.string	"memcmp(sig2, outsig, sizeof(sig2))"
	.align 8
.LC7:
	.string	"ossl_ed448_sign(NULL, outsig, msg3, sizeof(msg3), pubkey3, privkey3, context3, sizeof(context3), 0, NULL)"
	.align 8
.LC8:
	.string	"memcmp(sig3, outsig, sizeof(sig3))"
	.align 8
.LC9:
	.string	"ossl_ed448_sign(NULL, outsig, msg4, sizeof(msg4), pubkey4, privkey4, NULL, 0, 0, NULL)"
	.align 8
.LC10:
	.string	"memcmp(sig4, outsig, sizeof(sig4))"
	.align 8
.LC11:
	.string	"ossl_ed448_sign(NULL, outsig, msg5, sizeof(msg5), pubkey5, privkey5, NULL, 0, 0, NULL)"
	.align 8
.LC12:
	.string	"memcmp(sig5, outsig, sizeof(sig5))"
	.align 8
.LC13:
	.string	"ossl_ed448_sign(NULL, outsig, msg6, sizeof(msg6), pubkey6, privkey6, NULL, 0, 0, NULL)"
	.align 8
.LC14:
	.string	"memcmp(sig6, outsig, sizeof(sig6))"
	.align 8
.LC15:
	.string	"ossl_ed448_sign(NULL, outsig, msg7, sizeof(msg7), pubkey7, privkey7, NULL, 0, 0, NULL)"
	.align 8
.LC16:
	.string	"memcmp(sig7, outsig, sizeof(sig7))"
	.align 8
.LC17:
	.string	"ossl_ed448_sign(NULL, outsig, msg8, sizeof(msg8), pubkey8, privkey8, NULL, 0, 0, NULL)"
	.align 8
.LC18:
	.string	"memcmp(sig8, outsig, sizeof(sig8))"
	.align 8
.LC19:
	.string	"ossl_ed448_sign(NULL, outsig, msg9, sizeof(msg9), pubkey9, privkey9, NULL, 0, 0, NULL)"
	.align 8
.LC20:
	.string	"memcmp(sig9, outsig, sizeof(sig9))"
	.align 8
.LC21:
	.string	"ossl_ed448_sign(NULL, outsig, dohash(hashctx, phmsg1, sizeof(phmsg1)), 64, phpubkey1, phprivkey1, NULL, 0, 1, NULL)"
	.align 8
.LC22:
	.string	"memcmp(phsig1, outsig, sizeof(phsig1))"
	.align 8
.LC23:
	.string	"ossl_ed448_sign(NULL, outsig, dohash(hashctx, phmsg2, sizeof(phmsg2)), 64, phpubkey2, phprivkey2, phcontext2, sizeof(phcontext2), 1, NULL)"
	.align 8
.LC24:
	.string	"memcmp(phsig2, outsig, sizeof(phsig2))"
	.text
	.type	test_ed448, @function
test_ed448:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$603, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L6
	leaq	privkey1(%rip), %rcx
	leaq	pubkey1(%rip), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$604, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	sig1(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$606, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	privkey2(%rip), %rsi
	leaq	pubkey2(%rip), %rcx
	leaq	msg2(%rip), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$607, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	sig2(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$609, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	privkey3(%rip), %rdi
	leaq	pubkey3(%rip), %rsi
	leaq	msg3(%rip), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$3
	leaq	context3(%rip), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$610, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	sig3(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$613, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	privkey4(%rip), %rsi
	leaq	pubkey4(%rip), %rcx
	leaq	msg4(%rip), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$11, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$614, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	sig4(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$616, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	privkey5(%rip), %rsi
	leaq	pubkey5(%rip), %rcx
	leaq	msg5(%rip), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$12, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$617, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	sig5(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$619, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	privkey6(%rip), %rsi
	leaq	pubkey6(%rip), %rcx
	leaq	msg6(%rip), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$13, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$620, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	sig6(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$622, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	privkey7(%rip), %rsi
	leaq	pubkey7(%rip), %rcx
	leaq	msg7(%rip), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$64, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$623, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	sig7(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$625, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	privkey8(%rip), %rsi
	leaq	pubkey8(%rip), %rcx
	leaq	msg8(%rip), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$256, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$626, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	sig8(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$628, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	privkey9(%rip), %rsi
	leaq	pubkey9(%rip), %rcx
	leaq	msg9(%rip), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$1023, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$629, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	sig9(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$631, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	phmsg1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dohash
	movq	%rax, %rdx
	leaq	phprivkey1(%rip), %rsi
	leaq	phpubkey1(%rip), %rcx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$1
	pushq	$0
	pushq	$0
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$64, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$632, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	phsig1(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$636, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L6
	leaq	phmsg2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dohash
	movq	%rax, %rdx
	leaq	phprivkey2(%rip), %rdi
	leaq	phpubkey2(%rip), %rsi
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$1
	pushq	$3
	leaq	phcontext2(%rip), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$64, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$637, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L6
	leaq	-128(%rbp), %rax
	leaq	phsig2(%rip), %rcx
	movl	$114, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$642, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
	jmp	.L9
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_ed448, .-test_ed448
	.section	.rodata
	.align 8
.LC25:
	.string	"ossl_x448(out, in_scalar1, in_u1)"
	.align 8
.LC26:
	.string	"memcmp(out, out_u1, sizeof(out))"
	.align 8
.LC27:
	.string	"ossl_x448(out, in_scalar2, in_u2)"
	.align 8
.LC28:
	.string	"memcmp(out, out_u2, sizeof(out))"
.LC29:
	.string	"ossl_x448(out, k, u)"
	.align 8
.LC30:
	.string	"memcmp(out, out_u3[j], sizeof(out))"
.LC31:
	.string	"Failed at iteration %d"
	.text
	.type	test_x448, @function
test_x448:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	$-1, -8(%rbp)
	leaq	in_u1(%rip), %rdx
	leaq	in_scalar1(%rip), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x448@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$659, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	leaq	out_u1(%rip), %rcx
	leaq	-192(%rbp), %rax
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$660, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L11
	leaq	in_u2(%rip), %rdx
	leaq	in_scalar2(%rip), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x448@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$661, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	leaq	out_u2(%rip), %rcx
	leaq	-192(%rbp), %rax
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$662, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L12
.L11:
	movl	$0, %eax
	jmp	.L20
.L12:
	movq	in_u3(%rip), %rax
	movq	8+in_u3(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	16+in_u3(%rip), %rax
	movq	24+in_u3(%rip), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	32+in_u3(%rip), %rax
	movq	40+in_u3(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	48+in_u3(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	in_u3(%rip), %rax
	movq	8+in_u3(%rip), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	16+in_u3(%rip), %rax
	movq	24+in_u3(%rip), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	32+in_u3(%rip), %rax
	movq	40+in_u3(%rip), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	48+in_u3(%rip), %rax
	movq	%rax, -80(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L14
.L19:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L15
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3518437209, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$13, %eax
	imull	$10000, %eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	jne	.L15
	movl	$46, %edi
	call	putchar@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
.L15:
	leaq	-64(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x448@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$673, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L20
.L16:
	cmpl	$1, -4(%rbp)
	je	.L17
	cmpl	$1000, -4(%rbp)
	je	.L17
	cmpl	$1000000, -4(%rbp)
	jne	.L18
.L17:
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	imulq	$56, %rax, %rax
	leaq	out_u3(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-192(%rbp), %rax
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$678, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L18
	movl	-4(%rbp), %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$679, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L20
.L18:
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	addl	$1, -4(%rbp)
.L14:
	movl	max(%rip), %eax
	cmpl	-4(%rbp), %eax
	jnb	.L19
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_x448, .-test_x448
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC32:
	.string	"test_x448"
.LC33:
	.string	"test_ed448"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L24
.L30:
	cmpl	$505, -4(%rbp)
	jg	.L25
	cmpl	$500, -4(%rbp)
	jge	.L24
	cmpl	$1, -4(%rbp)
	je	.L27
	cmpl	$2, -4(%rbp)
	je	.L28
.L25:
	movl	$0, %eax
	jmp	.L29
.L28:
	movl	$1000000, max(%rip)
	jmp	.L24
.L27:
	movl	$1, verbose(%rip)
	nop
.L24:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L30
	leaq	test_x448(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ed448(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	setup_tests, .-setup_tests
	.local	hashout.1
	.comm	hashout.1,64,32
	.section	.rodata
	.align 8
.LC34:
	.string	"Usage: %s [options] conf_file\n"
.LC35:
	.string	"Valid options are:\n"
.LC36:
	.string	"help"
.LC37:
	.string	"Display this summary"
.LC38:
	.string	"list"
	.align 8
.LC39:
	.string	"Display the list of tests available"
.LC40:
	.string	"test"
	.align 8
.LC41:
	.string	"Run a single test by id or name"
.LC42:
	.string	"iter"
	.align 8
.LC43:
	.string	"Run a single iteration of a test"
.LC44:
	.string	"indent"
	.align 8
.LC45:
	.string	"Number of tabs added to output"
.LC46:
	.string	"seed"
	.align 8
.LC47:
	.string	"Seed value to randomize tests with"
.LC48:
	.string	"f"
.LC49:
	.string	"Enables a slow test"
.LC50:
	.string	"v"
	.align 8
.LC51:
	.string	"Enables verbose mode (prints progress dots)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 264
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC34
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC35
	.quad	.LC36
	.long	500
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	501
	.long	45
	.quad	.LC39
	.quad	.LC40
	.long	502
	.long	115
	.quad	.LC41
	.quad	.LC42
	.long	503
	.long	110
	.quad	.LC43
	.quad	.LC44
	.long	504
	.long	112
	.quad	.LC45
	.quad	.LC46
	.long	505
	.long	110
	.quad	.LC47
	.quad	.LC48
	.long	2
	.long	45
	.quad	.LC49
	.quad	.LC50
	.long	1
	.long	45
	.quad	.LC51
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
