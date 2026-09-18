	.file	"provider_predefined.c"
	.text
	.globl	ossl_predefined_providers
	.section	.rodata
.LC0:
	.string	"default"
.LC1:
	.string	"base"
.LC2:
	.string	"null"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_predefined_providers, @object
	.size	ossl_predefined_providers, 160
ossl_predefined_providers:
	.quad	.LC0
	.quad	0
	.quad	ossl_default_provider_init
	.quad	0
	.byte	1
	.zero	7
	.quad	.LC1
	.quad	0
	.quad	ossl_base_provider_init
	.quad	0
	.byte	0
	.zero	7
	.quad	.LC2
	.quad	0
	.quad	ossl_null_provider_init
	.quad	0
	.byte	0
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	7
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
