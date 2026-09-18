	.file	"cms.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB6:
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
.LFE6:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB7:
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
.LFE7:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB8:
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
.LFE8:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB329:
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
.LFE329:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB330:
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
.LFE330:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB331:
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
.LFE331:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB485:
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
	je	.L14
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	ossl_check_GENERAL_NAME_type, @function
ossl_check_GENERAL_NAME_type:
.LFB511:
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
.LFE511:
	.size	ossl_check_GENERAL_NAME_type, .-ossl_check_GENERAL_NAME_type
	.type	ossl_check_const_GENERAL_NAME_sk_type, @function
ossl_check_const_GENERAL_NAME_sk_type:
.LFB512:
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
.LFE512:
	.size	ossl_check_const_GENERAL_NAME_sk_type, .-ossl_check_const_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAME_sk_type, @function
ossl_check_GENERAL_NAME_sk_type:
.LFB513:
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
.LFE513:
	.size	ossl_check_GENERAL_NAME_sk_type, .-ossl_check_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAMES_type, @function
ossl_check_GENERAL_NAMES_type:
.LFB517:
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
.LFE517:
	.size	ossl_check_GENERAL_NAMES_type, .-ossl_check_GENERAL_NAMES_type
	.type	ossl_check_const_GENERAL_NAMES_sk_type, @function
ossl_check_const_GENERAL_NAMES_sk_type:
.LFB518:
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
.LFE518:
	.size	ossl_check_const_GENERAL_NAMES_sk_type, .-ossl_check_const_GENERAL_NAMES_sk_type
	.type	ossl_check_GENERAL_NAMES_sk_type, @function
ossl_check_GENERAL_NAMES_sk_type:
.LFB519:
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
.LFE519:
	.size	ossl_check_GENERAL_NAMES_sk_type, .-ossl_check_GENERAL_NAMES_sk_type
	.type	ossl_check_GENERAL_NAMES_freefunc_type, @function
ossl_check_GENERAL_NAMES_freefunc_type:
.LFB522:
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
.LFE522:
	.size	ossl_check_GENERAL_NAMES_freefunc_type, .-ossl_check_GENERAL_NAMES_freefunc_type
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB631:
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
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
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
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.type	ossl_check_const_CMS_SignerInfo_sk_type, @function
ossl_check_const_CMS_SignerInfo_sk_type:
.LFB648:
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
.LFE648:
	.size	ossl_check_const_CMS_SignerInfo_sk_type, .-ossl_check_const_CMS_SignerInfo_sk_type
	.local	verify_err
	.comm	verify_err,4,4
	.globl	cms_options
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: %s [options] [cert...]\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"General options:\n"
.LC4:
	.string	"in"
.LC5:
	.string	"Input file"
.LC6:
	.string	"out"
.LC7:
	.string	"Output file"
.LC8:
	.string	"config"
	.align 8
.LC9:
	.string	"Load a configuration file (this may load modules)"
.LC10:
	.string	"Operation options:\n"
.LC11:
	.string	"encrypt"
.LC12:
	.string	"Encrypt message"
.LC13:
	.string	"decrypt"
.LC14:
	.string	"Decrypt encrypted message"
.LC15:
	.string	"sign"
.LC16:
	.string	"Sign message"
.LC17:
	.string	"verify"
.LC18:
	.string	"Verify signed message"
.LC19:
	.string	"resign"
.LC20:
	.string	"Resign a signed message"
.LC21:
	.string	"sign_receipt"
	.align 8
.LC22:
	.string	"Generate a signed receipt for a message"
.LC23:
	.string	"verify_receipt"
	.align 8
.LC24:
	.string	"Verify receipts; exit if receipt signatures do not verify"
.LC25:
	.string	"digest"
	.align 8
.LC26:
	.string	"Sign a pre-computed digest in hex notation"
.LC27:
	.string	"digest_create"
	.align 8
.LC28:
	.string	"Create a CMS \"DigestedData\" object"
.LC29:
	.string	"digest_verify"
	.align 8
.LC30:
	.string	"Verify a CMS \"DigestedData\" object and output it"
.LC31:
	.string	"compress"
	.align 8
.LC32:
	.string	"Create a CMS \"CompressedData\" object"
.LC33:
	.string	"uncompress"
	.align 8
.LC34:
	.string	"Uncompress a CMS \"CompressedData\" object"
.LC35:
	.string	"EncryptedData_encrypt"
	.align 8
.LC36:
	.string	"Create CMS \"EncryptedData\" object using symmetric key"
.LC37:
	.string	"EncryptedData_decrypt"
	.align 8
.LC38:
	.string	"Decrypt CMS \"EncryptedData\" object using symmetric key"
.LC39:
	.string	"data_create"
.LC40:
	.string	"Create a CMS \"Data\" object"
.LC41:
	.string	"data_out"
	.align 8
.LC42:
	.string	"Copy CMS \"Data\" object to output"
.LC43:
	.string	"cmsout"
.LC44:
	.string	"Output CMS structure"
.LC45:
	.string	"File format options:\n"
.LC46:
	.string	"inform"
	.align 8
.LC47:
	.string	"Input format SMIME (default), PEM or DER"
.LC48:
	.string	"outform"
	.align 8
.LC49:
	.string	"Output format SMIME (default), PEM or DER"
.LC50:
	.string	"rctform"
.LC51:
	.string	"Receipt file format"
.LC52:
	.string	"stream"
.LC53:
	.string	"Enable CMS streaming"
.LC54:
	.string	"indef"
.LC55:
	.string	"Same as -stream"
.LC56:
	.string	"noindef"
.LC57:
	.string	"Disable CMS streaming"
.LC58:
	.string	"binary"
	.align 8
.LC59:
	.string	"Treat input as binary: do not translate to canonical form"
.LC60:
	.string	"crlfeol"
	.align 8
.LC61:
	.string	"Use CRLF as EOL termination instead of LF only"
.LC62:
	.string	"asciicrlf"
	.align 8
.LC63:
	.string	"Perform CRLF canonicalisation when signing"
.LC64:
	.string	"Keys and passwords options:\n"
.LC65:
	.string	"pwri_password"
	.align 8
.LC66:
	.string	"Specific password for recipient"
.LC67:
	.string	"secretkey"
	.align 8
.LC68:
	.string	"Use specified hex-encoded key to decrypt/encrypt recipients or content"
.LC69:
	.string	"secretkeyid"
	.align 8
.LC70:
	.string	"Identity of the -secretkey for CMS \"KEKRecipientInfo\" object"
.LC71:
	.string	"inkey"
	.align 8
.LC72:
	.string	"Input private key (if not signer or recipient)"
.LC73:
	.string	"passin"
.LC74:
	.string	"Input file pass phrase source"
.LC75:
	.string	"keyopt"
	.align 8
.LC76:
	.string	"Set public key parameters as n:v pairs"
.LC77:
	.string	"keyform"
	.align 8
.LC78:
	.string	"Input private key format (ENGINE, other values ignored)"
.LC79:
	.string	"engine"
	.align 8
.LC80:
	.string	"Use engine e, possibly a hardware device"
.LC81:
	.string	"Provider options:\n"
.LC82:
	.string	"provider-path"
	.align 8
.LC83:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC84:
	.string	"provider"
	.align 8
.LC85:
	.string	"Provider to load (can be specified multiple times)"
.LC86:
	.string	"propquery"
	.align 8
.LC87:
	.string	"Property query used when fetching algorithms"
.LC88:
	.string	"Random state options:\n"
.LC89:
	.string	"rand"
	.align 8
.LC90:
	.string	"Load the given file(s) into the random number generator"
.LC91:
	.string	"writerand"
	.align 8
.LC92:
	.string	"Write random data to the specified file"
	.align 8
.LC93:
	.string	"Encryption and decryption options:\n"
.LC94:
	.string	"originator"
.LC95:
	.string	"Originator certificate file"
.LC96:
	.string	"recip"
.LC97:
	.string	"Recipient cert file"
.LC98:
	.string	"cert..."
	.align 8
.LC99:
	.string	"Recipient certs (optional; used only when encrypting)"
.LC100:
	.string	""
	.align 8
.LC101:
	.string	"The encryption algorithm to use (any supported cipher)"
.LC102:
	.string	"wrap"
	.align 8
.LC103:
	.string	"Key wrap algorithm to use when encrypting with key agreement"
.LC104:
	.string	"aes128-wrap"
.LC105:
	.string	"Use AES128 to wrap key"
.LC106:
	.string	"aes192-wrap"
.LC107:
	.string	"Use AES192 to wrap key"
.LC108:
	.string	"aes256-wrap"
.LC109:
	.string	"Use AES256 to wrap key"
.LC110:
	.string	"des3-wrap"
.LC111:
	.string	"Use 3DES-EDE to wrap key"
.LC112:
	.string	"debug_decrypt"
	.align 8
.LC113:
	.string	"Disable MMA protection, return error if no recipient found (see doc)"
.LC114:
	.string	"Signing options:\n"
.LC115:
	.string	"md"
.LC116:
	.string	"Digest algorithm to use"
.LC117:
	.string	"signer"
.LC118:
	.string	"Signer certificate input file"
.LC119:
	.string	"certfile"
.LC120:
	.string	"Other certificates file"
.LC121:
	.string	"cades"
	.align 8
.LC122:
	.string	"Include signingCertificate attribute (CAdES-BES)"
.LC123:
	.string	"nodetach"
.LC124:
	.string	"Use opaque signing"
.LC125:
	.string	"nocerts"
	.align 8
.LC126:
	.string	"Don't include signer's certificate when signing"
.LC127:
	.string	"noattr"
	.align 8
.LC128:
	.string	"Don't include any signed attributes"
.LC129:
	.string	"nosmimecap"
	.align 8
.LC130:
	.string	"Omit the SMIMECapabilities attribute"
.LC131:
	.string	"receipt_request_all"
	.align 8
.LC132:
	.string	"When signing, create a receipt request for all recipients"
.LC133:
	.string	"receipt_request_first"
	.align 8
.LC134:
	.string	"When signing, create a receipt request for first recipient"
.LC135:
	.string	"receipt_request_from"
	.align 8
.LC136:
	.string	"Create signed receipt request with specified email address"
.LC137:
	.string	"receipt_request_to"
	.align 8
.LC138:
	.string	"Create signed receipt targeted to specified address"
.LC139:
	.string	"Verification options:\n"
	.align 8
.LC140:
	.string	"Signer certificate(s) output file"
.LC141:
	.string	"content"
	.align 8
.LC142:
	.string	"Supply or override content for detached signature"
.LC143:
	.string	"no_content_verify"
	.align 8
.LC144:
	.string	"Do not verify signed content signatures"
.LC145:
	.string	"no_attr_verify"
	.align 8
.LC146:
	.string	"Do not verify signed attribute signatures"
.LC147:
	.string	"nosigs"
	.align 8
.LC148:
	.string	"Don't verify message signature"
.LC149:
	.string	"noverify"
	.align 8
.LC150:
	.string	"Don't verify signers certificate"
.LC151:
	.string	"nointern"
	.align 8
.LC152:
	.string	"Don't search certificates in message for signer"
	.align 8
.LC153:
	.string	"Check signingCertificate (CAdES-BES)"
.LC154:
	.string	"verify_retcode"
	.align 8
.LC155:
	.string	"Exit non-zero on verification failure"
.LC156:
	.string	"CAfile"
.LC157:
	.string	"Trusted certificates file"
.LC158:
	.string	"CApath"
	.align 8
.LC159:
	.string	"Trusted certificates directory"
.LC160:
	.string	"CAstore"
	.align 8
.LC161:
	.string	"Trusted certificates store URI"
.LC162:
	.string	"no-CAfile"
	.align 8
.LC163:
	.string	"Do not load the default certificates file"
.LC164:
	.string	"no-CApath"
	.align 8
.LC165:
	.string	"Do not load certificates from the default certificates directory"
.LC166:
	.string	"no-CAstore"
	.align 8
.LC167:
	.string	"Do not load certificates from the default certificates store"
.LC168:
	.string	"Output options:\n"
.LC169:
	.string	"keyid"
.LC170:
	.string	"Use subject key identifier"
.LC171:
	.string	"econtent_type"
.LC172:
	.string	"OID for external content"
.LC173:
	.string	"text"
	.align 8
.LC174:
	.string	"Include or delete text MIME headers"
.LC175:
	.string	"certsout"
.LC176:
	.string	"Certificate output file"
.LC177:
	.string	"to"
.LC178:
	.string	"To address"
.LC179:
	.string	"from"
.LC180:
	.string	"From address"
.LC181:
	.string	"subject"
.LC182:
	.string	"Subject"
.LC183:
	.string	"Printing options:\n"
.LC184:
	.string	"noout"
	.align 8
.LC185:
	.string	"For the -cmsout operation do not output the parsed CMS structure"
.LC186:
	.string	"print"
	.align 8
.LC187:
	.string	"For the -cmsout operation print out all fields of the CMS structure"
.LC188:
	.string	"nameopt"
	.align 8
.LC189:
	.string	"For the -print option specifies various strings printing options"
.LC190:
	.string	"receipt_request_print"
.LC191:
	.string	"Print CMS Receipt Request"
.LC192:
	.string	"Validation options:\n"
.LC193:
	.string	"policy"
	.align 8
.LC194:
	.string	"adds policy to the acceptable policy set"
.LC195:
	.string	"purpose"
.LC196:
	.string	"certificate chain purpose"
.LC197:
	.string	"verify_name"
.LC198:
	.string	"verification policy name"
.LC199:
	.string	"verify_depth"
.LC200:
	.string	"chain depth limit"
.LC201:
	.string	"auth_level"
	.align 8
.LC202:
	.string	"chain authentication security level"
.LC203:
	.string	"attime"
.LC204:
	.string	"verification epoch time"
.LC205:
	.string	"verify_hostname"
.LC206:
	.string	"expected peer hostname"
.LC207:
	.string	"verify_email"
.LC208:
	.string	"expected peer email"
.LC209:
	.string	"verify_ip"
.LC210:
	.string	"expected peer IP address"
.LC211:
	.string	"ignore_critical"
	.align 8
.LC212:
	.string	"permit unhandled critical extensions"
.LC213:
	.string	"issuer_checks"
.LC214:
	.string	"(deprecated)"
.LC215:
	.string	"crl_check"
	.align 8
.LC216:
	.string	"check leaf certificate revocation"
.LC217:
	.string	"crl_check_all"
.LC218:
	.string	"check full chain revocation"
.LC219:
	.string	"policy_check"
.LC220:
	.string	"perform rfc5280 policy checks"
.LC221:
	.string	"explicit_policy"
	.align 8
.LC222:
	.string	"set policy variable require-explicit-policy"
.LC223:
	.string	"inhibit_any"
	.align 8
.LC224:
	.string	"set policy variable inhibit-any-policy"
.LC225:
	.string	"inhibit_map"
	.align 8
.LC226:
	.string	"set policy variable inhibit-policy-mapping"
.LC227:
	.string	"x509_strict"
	.align 8
.LC228:
	.string	"disable certificate compatibility work-arounds"
.LC229:
	.string	"extended_crl"
.LC230:
	.string	"enable extended CRL features"
.LC231:
	.string	"use_deltas"
.LC232:
	.string	"use delta CRLs"
.LC233:
	.string	"policy_print"
	.align 8
.LC234:
	.string	"print policy processing diagnostics"
.LC235:
	.string	"check_ss_sig"
.LC236:
	.string	"check root CA self-signatures"
.LC237:
	.string	"trusted_first"
	.align 8
.LC238:
	.string	"search trust store first (default)"
.LC239:
	.string	"suiteB_128_only"
.LC240:
	.string	"Suite B 128-bit-only mode"
.LC241:
	.string	"suiteB_128"
	.align 8
.LC242:
	.string	"Suite B 128-bit mode allowing 192-bit algorithms"
.LC243:
	.string	"suiteB_192"
.LC244:
	.string	"Suite B 192-bit-only mode"
.LC245:
	.string	"partial_chain"
	.align 8
.LC246:
	.string	"accept chains anchored by intermediate trust-store CAs"
.LC247:
	.string	"no_alt_chains"
.LC248:
	.string	"no_check_time"
	.align 8
.LC249:
	.string	"ignore certificate validity time"
.LC250:
	.string	"allow_proxy_certs"
	.align 8
.LC251:
	.string	"allow the use of proxy certificates"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	cms_options, @object
	.size	cms_options, 3240
cms_options:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC3
	.quad	.LC4
	.long	4
	.long	60
	.quad	.LC5
	.quad	.LC6
	.long	5
	.long	62
	.quad	.LC7
	.quad	.LC8
	.long	1605
	.long	60
	.quad	.LC9
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC10
	.quad	.LC11
	.long	6
	.long	45
	.quad	.LC12
	.quad	.LC13
	.long	7
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	8
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	12
	.long	45
	.quad	.LC18
	.quad	.LC19
	.long	11
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	10
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	14
	.long	60
	.quad	.LC24
	.quad	.LC25
	.long	19
	.long	115
	.quad	.LC26
	.quad	.LC27
	.long	20
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	18
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	21
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	22
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	24
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	23
	.long	45
	.quad	.LC38
	.quad	.LC39
	.long	17
	.long	45
	.quad	.LC40
	.quad	.LC41
	.long	16
	.long	45
	.quad	.LC42
	.quad	.LC43
	.long	15
	.long	45
	.quad	.LC44
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC45
	.quad	.LC46
	.long	2
	.long	99
	.quad	.LC47
	.quad	.LC48
	.long	3
	.long	99
	.quad	.LC49
	.quad	.LC50
	.long	46
	.long	70
	.quad	.LC51
	.quad	.LC52
	.long	39
	.long	45
	.quad	.LC53
	.quad	.LC54
	.long	39
	.long	45
	.quad	.LC55
	.quad	.LC56
	.long	40
	.long	45
	.quad	.LC57
	.quad	.LC58
	.long	34
	.long	45
	.quad	.LC59
	.quad	.LC60
	.long	41
	.long	45
	.quad	.LC61
	.quad	.LC62
	.long	27
	.long	45
	.quad	.LC63
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC64
	.quad	.LC65
	.long	59
	.long	115
	.quad	.LC66
	.quad	.LC67
	.long	57
	.long	115
	.quad	.LC68
	.quad	.LC69
	.long	58
	.long	115
	.quad	.LC70
	.quad	.LC71
	.long	69
	.long	115
	.quad	.LC72
	.quad	.LC73
	.long	61
	.long	115
	.quad	.LC74
	.quad	.LC75
	.long	71
	.long	115
	.quad	.LC76
	.quad	.LC77
	.long	70
	.long	102
	.quad	.LC78
	.quad	.LC79
	.long	79
	.long	115
	.quad	.LC80
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC81
	.quad	.LC82
	.long	1602
	.long	115
	.quad	.LC83
	.quad	.LC84
	.long	1601
	.long	115
	.quad	.LC85
	.quad	.LC86
	.long	1603
	.long	115
	.quad	.LC87
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC88
	.quad	.LC89
	.long	1501
	.long	115
	.quad	.LC90
	.quad	.LC91
	.long	1502
	.long	62
	.quad	.LC92
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC93
	.quad	.LC94
	.long	2033
	.long	115
	.quad	.LC95
	.quad	.LC96
	.long	66
	.long	60
	.quad	.LC97
	.quad	.LC98
	.long	0
	.long	46
	.quad	.LC99
	.quad	.LC100
	.long	2032
	.long	45
	.quad	.LC101
	.quad	.LC102
	.long	78
	.long	115
	.quad	.LC103
	.quad	.LC104
	.long	74
	.long	45
	.quad	.LC105
	.quad	.LC106
	.long	75
	.long	45
	.quad	.LC107
	.quad	.LC108
	.long	76
	.long	45
	.quad	.LC109
	.quad	.LC110
	.long	77
	.long	45
	.quad	.LC111
	.quad	.LC112
	.long	25
	.long	45
	.quad	.LC113
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC114
	.quad	.LC115
	.long	68
	.long	115
	.quad	.LC116
	.quad	.LC117
	.long	65
	.long	115
	.quad	.LC118
	.quad	.LC119
	.long	47
	.long	60
	.quad	.LC120
	.quad	.LC121
	.long	9
	.long	45
	.quad	.LC122
	.quad	.LC123
	.long	32
	.long	45
	.quad	.LC124
	.quad	.LC125
	.long	30
	.long	45
	.quad	.LC126
	.quad	.LC127
	.long	31
	.long	45
	.quad	.LC128
	.quad	.LC129
	.long	33
	.long	45
	.quad	.LC130
	.quad	.LC131
	.long	44
	.long	45
	.quad	.LC132
	.quad	.LC133
	.long	45
	.long	45
	.quad	.LC134
	.quad	.LC135
	.long	72
	.long	115
	.quad	.LC136
	.quad	.LC137
	.long	73
	.long	115
	.quad	.LC138
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC139
	.quad	.LC117
	.long	-2
	.long	115
	.quad	.LC140
	.quad	.LC141
	.long	54
	.long	60
	.quad	.LC142
	.quad	.LC143
	.long	37
	.long	45
	.quad	.LC144
	.quad	.LC145
	.long	38
	.long	45
	.quad	.LC146
	.quad	.LC147
	.long	36
	.long	45
	.quad	.LC148
	.quad	.LC149
	.long	29
	.long	45
	.quad	.LC150
	.quad	.LC151
	.long	28
	.long	45
	.quad	.LC152
	.quad	.LC121
	.long	-2
	.long	45
	.quad	.LC153
	.quad	.LC154
	.long	13
	.long	45
	.quad	.LC155
	.quad	.LC156
	.long	48
	.long	60
	.quad	.LC157
	.quad	.LC158
	.long	49
	.long	47
	.quad	.LC159
	.quad	.LC160
	.long	50
	.long	58
	.quad	.LC161
	.quad	.LC162
	.long	52
	.long	45
	.quad	.LC163
	.quad	.LC164
	.long	51
	.long	45
	.quad	.LC165
	.quad	.LC166
	.long	53
	.long	45
	.quad	.LC167
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC168
	.quad	.LC169
	.long	35
	.long	45
	.quad	.LC170
	.quad	.LC171
	.long	60
	.long	115
	.quad	.LC172
	.quad	.LC173
	.long	26
	.long	45
	.quad	.LC174
	.quad	.LC175
	.long	67
	.long	62
	.quad	.LC176
	.quad	.LC177
	.long	62
	.long	115
	.quad	.LC178
	.quad	.LC179
	.long	63
	.long	115
	.quad	.LC180
	.quad	.LC181
	.long	64
	.long	115
	.quad	.LC182
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC183
	.quad	.LC184
	.long	42
	.long	45
	.quad	.LC185
	.quad	.LC186
	.long	55
	.long	45
	.quad	.LC187
	.quad	.LC188
	.long	56
	.long	115
	.quad	.LC189
	.quad	.LC190
	.long	43
	.long	45
	.quad	.LC191
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC192
	.quad	.LC193
	.long	2001
	.long	115
	.quad	.LC194
	.quad	.LC195
	.long	2002
	.long	115
	.quad	.LC196
	.quad	.LC197
	.long	2003
	.long	115
	.quad	.LC198
	.quad	.LC199
	.long	2004
	.long	110
	.quad	.LC200
	.quad	.LC201
	.long	2029
	.long	110
	.quad	.LC202
	.quad	.LC203
	.long	2005
	.long	77
	.quad	.LC204
	.quad	.LC205
	.long	2006
	.long	115
	.quad	.LC206
	.quad	.LC207
	.long	2007
	.long	115
	.quad	.LC208
	.quad	.LC209
	.long	2008
	.long	115
	.quad	.LC210
	.quad	.LC211
	.long	2009
	.long	45
	.quad	.LC212
	.quad	.LC213
	.long	2010
	.long	45
	.quad	.LC214
	.quad	.LC215
	.long	2011
	.long	45
	.quad	.LC216
	.quad	.LC217
	.long	2012
	.long	45
	.quad	.LC218
	.quad	.LC219
	.long	2013
	.long	45
	.quad	.LC220
	.quad	.LC221
	.long	2014
	.long	45
	.quad	.LC222
	.quad	.LC223
	.long	2015
	.long	45
	.quad	.LC224
	.quad	.LC225
	.long	2016
	.long	45
	.quad	.LC226
	.quad	.LC227
	.long	2017
	.long	45
	.quad	.LC228
	.quad	.LC229
	.long	2018
	.long	45
	.quad	.LC230
	.quad	.LC231
	.long	2019
	.long	45
	.quad	.LC232
	.quad	.LC233
	.long	2020
	.long	45
	.quad	.LC234
	.quad	.LC235
	.long	2021
	.long	45
	.quad	.LC236
	.quad	.LC237
	.long	2022
	.long	45
	.quad	.LC238
	.quad	.LC239
	.long	2023
	.long	45
	.quad	.LC240
	.quad	.LC241
	.long	2024
	.long	45
	.quad	.LC242
	.quad	.LC243
	.long	2025
	.long	45
	.quad	.LC244
	.quad	.LC245
	.long	2026
	.long	45
	.quad	.LC246
	.quad	.LC247
	.long	2027
	.long	45
	.quad	.LC214
	.quad	.LC248
	.long	2028
	.long	45
	.quad	.LC249
	.quad	.LC250
	.long	2030
	.long	45
	.quad	.LC251
	.quad	0
	.zero	16
	.section	.rodata
	.align 8
.LC252:
	.string	"Error allocating CMS_contentinfo\n"
.LC253:
	.string	"Bad input format for %s\n"
	.align 8
.LC254:
	.string	"Error reading %s Content Info\n"
	.text
	.type	load_content_info, @function
load_content_info:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	CMS_ContentInfo_new_ex@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L37
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC252(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L46
.L37:
	cmpl	$32775, -36(%rbp)
	je	.L39
	cmpl	$32775, -36(%rbp)
	jg	.L40
	cmpl	$4, -36(%rbp)
	je	.L41
	cmpl	$32773, -36(%rbp)
	je	.L42
	jmp	.L40
.L39:
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-40(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SMIME_read_CMS_ex@PLT
	movq	%rax, -24(%rbp)
	jmp	.L43
.L42:
	leaq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PEM_read_bio_CMS@PLT
	movq	%rax, -24(%rbp)
	jmp	.L43
.L41:
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	d2i_CMS_bio@PLT
	movq	%rax, -24(%rbp)
	jmp	.L43
.L40:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC253(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L44
.L43:
	cmpq	$0, -24(%rbp)
	jne	.L45
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC254(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L44
.L45:
	movq	-32(%rbp), %rax
	jmp	.L46
.L44:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movl	$0, %eax
.L46:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	load_content_info, .-load_content_info
	.section	.rodata
.LC255:
	.string	"\n"
.LC256:
	.string	"cipher"
.LC257:
	.string	"%s: Use -help for summary.\n"
.LC258:
	.string	"\r\n"
	.align 8
.LC259:
	.string	"Invalid key (supplied twice) %s\n"
.LC260:
	.string	"Invalid key %s\n"
	.align 8
.LC261:
	.string	"Invalid id (supplied twice) %s\n"
.LC262:
	.string	"Invalid id %s\n"
	.align 8
.LC263:
	.string	"Invalid OID (supplied twice) %s\n"
.LC264:
	.string	"Invalid OID %s\n"
	.align 8
.LC265:
	.string	"Illegal -inkey without -signer\n"
.LC266:
	.string	"recipient certificate file"
.LC267:
	.string	"No key specified\n"
.LC268:
	.string	"key param buffer"
.LC269:
	.string	"../apps/cms.c"
	.align 8
.LC270:
	.string	"No Signed Receipts Recipients\n"
	.align 8
.LC271:
	.string	"Signed receipts only allowed with -sign\n"
	.align 8
.LC272:
	.string	"Multiple signers or keys not allowed\n"
	.align 8
.LC273:
	.string	"Incompatible options: CAdES requires signed attributes\n"
	.align 8
.LC274:
	.string	"Incompatible options: CAdES validation requires certs and signed attributes validations\n"
	.align 8
.LC275:
	.string	"No signer certificate specified\n"
	.align 8
.LC276:
	.string	"No recipient certificate or key specified\n"
	.align 8
.LC277:
	.string	"No recipient(s) certificate(s) specified\n"
	.align 8
.LC278:
	.string	"No operation option (-encrypt|-decrypt|-sign|-verify|...) specified.\n"
.LC279:
	.string	"Error getting password\n"
	.align 8
.LC280:
	.string	"Warning: -nodetach option is ignored for non-signing operation\n"
	.align 8
.LC281:
	.string	"Warning: -contfile option is ignored for the given operation\n"
	.align 8
.LC282:
	.string	"Warning: recipient certificate file parameters ignored for operation other than -encrypt\n"
.LC283:
	.string	"No secret key id\n"
.LC284:
	.string	"certificate file"
.LC285:
	.string	"originator certificate file"
	.align 8
.LC286:
	.string	"receipt signer certificate file"
.LC287:
	.string	"signing key"
	.align 8
.LC288:
	.string	"Cannot use -digest for non-signing operation\n"
	.align 8
.LC289:
	.string	"Cannot use -digest when -in, -nodetach or streaming is used\n"
	.align 8
.LC290:
	.string	"Invalid hex value after -digest\n"
.LC291:
	.string	"SMIME"
.LC292:
	.string	"rb"
.LC293:
	.string	"Can't read content file %s\n"
.LC294:
	.string	"Error writing certs to %s\n"
.LC295:
	.string	"r"
.LC296:
	.string	"Can't open receipt file %s\n"
.LC297:
	.string	"receipt"
	.align 8
.LC298:
	.string	"Cannot use originator for encryption\n"
	.align 8
.LC299:
	.string	"Signed Receipt Request Creation Error\n"
.LC300:
	.string	"signer certificate"
.LC301:
	.string	"Error creating CMS structure\n"
	.align 8
.LC302:
	.string	"Error decrypting CMS using secret key\n"
	.align 8
.LC303:
	.string	"Error decrypting CMS using private key\n"
	.align 8
.LC304:
	.string	"Error decrypting CMS using password\n"
	.align 8
.LC305:
	.string	"Error decrypting CMS structure\n"
.LC306:
	.string	"Verification successful\n"
.LC307:
	.string	"Verification failure\n"
.LC308:
	.string	"CAdES"
.LC309:
	.string	"CMS"
.LC310:
	.string	"%s Verification successful\n"
.LC311:
	.string	"%s Verification failure\n"
.LC312:
	.string	"Error writing signers to %s\n"
.LC313:
	.string	"To: %s%s"
.LC314:
	.string	"From: %s%s"
.LC315:
	.string	"Subject: %s%s"
	.align 8
.LC316:
	.string	"Bad output format for CMS file\n"
.LC317:
	.string	"Error writing CMS output\n"
	.text
	.globl	cms_main
	.type	cms_main, @function
cms_main:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$792, %rsp
	.cfi_offset 3, -24
	movl	%edi, -788(%rbp)
	movq	%rsi, -800(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -704(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -712(%rbp)
	movq	$0, -720(%rbp)
	movq	$0, -728(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -544(%rbp)
	movq	$0, -736(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	call	X509_VERIFY_PARAM_new@PLT
	movq	%rax, -552(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -248(%rbp)
	movl	$0, -252(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -744(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -752(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -376(%rbp)
	movl	$64, -380(%rbp)
	movl	$0, -384(%rbp)
	movl	$0, -388(%rbp)
	movl	$0, -392(%rbp)
	movl	$-1, -396(%rbp)
	movl	$0, -400(%rbp)
	movl	$32775, -756(%rbp)
	movl	$32775, -760(%rbp)
	movl	$0, -404(%rbp)
	movl	$1, -408(%rbp)
	movl	$0, -412(%rbp)
	movl	$-1, -416(%rbp)
	movl	$0, -420(%rbp)
	movl	$32775, -764(%rbp)
	movl	$0, -768(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -440(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -456(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -472(%rbp)
	leaq	.LC255(%rip), %rax
	movq	%rax, -480(%rbp)
	call	app_get0_libctx@PLT
	movq	%rax, -560(%rbp)
	cmpq	$0, -544(%rbp)
	je	.L340
	cmpq	$0, -552(%rbp)
	je	.L340
	leaq	.LC256(%rip), %rax
	movq	%rax, %rdi
	call	opt_set_unknown_name@PLT
	movq	cms_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-800(%rbp), %rcx
	movl	-788(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -568(%rbp)
	jmp	.L51
.L184:
	cmpl	$2033, -572(%rbp)
	je	.L52
	cmpl	$2033, -572(%rbp)
	jg	.L51
	cmpl	$2032, -572(%rbp)
	je	.L53
	cmpl	$2032, -572(%rbp)
	jg	.L51
	cmpl	$2031, -572(%rbp)
	je	.L51
	cmpl	$2031, -572(%rbp)
	jg	.L51
	cmpl	$2030, -572(%rbp)
	jg	.L51
	cmpl	$2001, -572(%rbp)
	jge	.L55
	cmpl	$2000, -572(%rbp)
	je	.L51
	cmpl	$2000, -572(%rbp)
	jg	.L51
	cmpl	$1605, -572(%rbp)
	je	.L56
	cmpl	$1605, -572(%rbp)
	jg	.L51
	cmpl	$1604, -572(%rbp)
	je	.L51
	cmpl	$1604, -572(%rbp)
	jg	.L51
	cmpl	$1603, -572(%rbp)
	jg	.L51
	cmpl	$1601, -572(%rbp)
	jge	.L58
	cmpl	$1600, -572(%rbp)
	je	.L51
	cmpl	$1600, -572(%rbp)
	jg	.L51
	cmpl	$1503, -572(%rbp)
	je	.L51
	cmpl	$1503, -572(%rbp)
	jg	.L51
	cmpl	$1502, -572(%rbp)
	jg	.L51
	cmpl	$1501, -572(%rbp)
	jge	.L60
	cmpl	$1500, -572(%rbp)
	je	.L51
	cmpl	$1500, -572(%rbp)
	jg	.L51
	cmpl	$79, -572(%rbp)
	je	.L61
	cmpl	$79, -572(%rbp)
	jg	.L51
	cmpl	$78, -572(%rbp)
	je	.L62
	cmpl	$78, -572(%rbp)
	jg	.L51
	cmpl	$77, -572(%rbp)
	jg	.L51
	cmpl	$74, -572(%rbp)
	jge	.L63
	cmpl	$73, -572(%rbp)
	je	.L64
	cmpl	$73, -572(%rbp)
	jg	.L51
	cmpl	$72, -572(%rbp)
	je	.L65
	cmpl	$72, -572(%rbp)
	jg	.L51
	cmpl	$71, -572(%rbp)
	je	.L66
	cmpl	$71, -572(%rbp)
	jg	.L51
	cmpl	$70, -572(%rbp)
	je	.L67
	cmpl	$70, -572(%rbp)
	jg	.L51
	cmpl	$69, -572(%rbp)
	je	.L68
	cmpl	$69, -572(%rbp)
	jg	.L51
	cmpl	$68, -572(%rbp)
	je	.L69
	cmpl	$68, -572(%rbp)
	jg	.L51
	cmpl	$67, -572(%rbp)
	je	.L70
	cmpl	$67, -572(%rbp)
	jg	.L51
	cmpl	$66, -572(%rbp)
	je	.L71
	cmpl	$66, -572(%rbp)
	jg	.L51
	cmpl	$65, -572(%rbp)
	je	.L72
	cmpl	$65, -572(%rbp)
	jg	.L51
	cmpl	$64, -572(%rbp)
	je	.L73
	cmpl	$64, -572(%rbp)
	jg	.L51
	cmpl	$63, -572(%rbp)
	je	.L74
	cmpl	$63, -572(%rbp)
	jg	.L51
	cmpl	$62, -572(%rbp)
	je	.L75
	cmpl	$62, -572(%rbp)
	jg	.L51
	cmpl	$61, -572(%rbp)
	je	.L76
	cmpl	$61, -572(%rbp)
	jg	.L51
	cmpl	$60, -572(%rbp)
	je	.L77
	cmpl	$60, -572(%rbp)
	jg	.L51
	cmpl	$59, -572(%rbp)
	je	.L78
	cmpl	$59, -572(%rbp)
	jg	.L51
	cmpl	$58, -572(%rbp)
	je	.L79
	cmpl	$58, -572(%rbp)
	jg	.L51
	cmpl	$57, -572(%rbp)
	je	.L80
	cmpl	$57, -572(%rbp)
	jg	.L51
	cmpl	$56, -572(%rbp)
	je	.L81
	cmpl	$56, -572(%rbp)
	jg	.L51
	cmpl	$55, -572(%rbp)
	je	.L82
	cmpl	$55, -572(%rbp)
	jg	.L51
	cmpl	$54, -572(%rbp)
	je	.L83
	cmpl	$54, -572(%rbp)
	jg	.L51
	cmpl	$53, -572(%rbp)
	je	.L84
	cmpl	$53, -572(%rbp)
	jg	.L51
	cmpl	$52, -572(%rbp)
	je	.L85
	cmpl	$52, -572(%rbp)
	jg	.L51
	cmpl	$51, -572(%rbp)
	je	.L86
	cmpl	$51, -572(%rbp)
	jg	.L51
	cmpl	$50, -572(%rbp)
	je	.L87
	cmpl	$50, -572(%rbp)
	jg	.L51
	cmpl	$49, -572(%rbp)
	je	.L88
	cmpl	$49, -572(%rbp)
	jg	.L51
	cmpl	$48, -572(%rbp)
	je	.L89
	cmpl	$48, -572(%rbp)
	jg	.L51
	cmpl	$47, -572(%rbp)
	je	.L90
	cmpl	$47, -572(%rbp)
	jg	.L51
	cmpl	$46, -572(%rbp)
	je	.L91
	cmpl	$46, -572(%rbp)
	jg	.L51
	cmpl	$45, -572(%rbp)
	je	.L92
	cmpl	$45, -572(%rbp)
	jg	.L51
	cmpl	$44, -572(%rbp)
	je	.L93
	cmpl	$44, -572(%rbp)
	jg	.L51
	cmpl	$43, -572(%rbp)
	je	.L94
	cmpl	$43, -572(%rbp)
	jg	.L51
	cmpl	$42, -572(%rbp)
	je	.L95
	cmpl	$42, -572(%rbp)
	jg	.L51
	cmpl	$41, -572(%rbp)
	je	.L96
	cmpl	$41, -572(%rbp)
	jg	.L51
	cmpl	$40, -572(%rbp)
	je	.L97
	cmpl	$40, -572(%rbp)
	jg	.L51
	cmpl	$39, -572(%rbp)
	je	.L98
	cmpl	$39, -572(%rbp)
	jg	.L51
	cmpl	$38, -572(%rbp)
	je	.L99
	cmpl	$38, -572(%rbp)
	jg	.L51
	cmpl	$37, -572(%rbp)
	je	.L100
	cmpl	$37, -572(%rbp)
	jg	.L51
	cmpl	$36, -572(%rbp)
	je	.L101
	cmpl	$36, -572(%rbp)
	jg	.L51
	cmpl	$35, -572(%rbp)
	je	.L102
	cmpl	$35, -572(%rbp)
	jg	.L51
	cmpl	$34, -572(%rbp)
	je	.L103
	cmpl	$34, -572(%rbp)
	jg	.L51
	cmpl	$33, -572(%rbp)
	je	.L104
	cmpl	$33, -572(%rbp)
	jg	.L51
	cmpl	$32, -572(%rbp)
	je	.L105
	cmpl	$32, -572(%rbp)
	jg	.L51
	cmpl	$31, -572(%rbp)
	je	.L106
	cmpl	$31, -572(%rbp)
	jg	.L51
	cmpl	$30, -572(%rbp)
	je	.L107
	cmpl	$30, -572(%rbp)
	jg	.L51
	cmpl	$29, -572(%rbp)
	je	.L108
	cmpl	$29, -572(%rbp)
	jg	.L51
	cmpl	$28, -572(%rbp)
	je	.L109
	cmpl	$28, -572(%rbp)
	jg	.L51
	cmpl	$27, -572(%rbp)
	je	.L110
	cmpl	$27, -572(%rbp)
	jg	.L51
	cmpl	$26, -572(%rbp)
	je	.L111
	cmpl	$26, -572(%rbp)
	jg	.L51
	cmpl	$25, -572(%rbp)
	je	.L112
	cmpl	$25, -572(%rbp)
	jg	.L51
	cmpl	$24, -572(%rbp)
	je	.L113
	cmpl	$24, -572(%rbp)
	jg	.L51
	cmpl	$23, -572(%rbp)
	je	.L114
	cmpl	$23, -572(%rbp)
	jg	.L51
	cmpl	$22, -572(%rbp)
	je	.L115
	cmpl	$22, -572(%rbp)
	jg	.L51
	cmpl	$21, -572(%rbp)
	je	.L116
	cmpl	$21, -572(%rbp)
	jg	.L51
	cmpl	$20, -572(%rbp)
	je	.L117
	cmpl	$20, -572(%rbp)
	jg	.L51
	cmpl	$19, -572(%rbp)
	je	.L118
	cmpl	$19, -572(%rbp)
	jg	.L51
	cmpl	$18, -572(%rbp)
	je	.L119
	cmpl	$18, -572(%rbp)
	jg	.L51
	cmpl	$17, -572(%rbp)
	je	.L120
	cmpl	$17, -572(%rbp)
	jg	.L51
	cmpl	$16, -572(%rbp)
	je	.L121
	cmpl	$16, -572(%rbp)
	jg	.L51
	cmpl	$15, -572(%rbp)
	je	.L122
	cmpl	$15, -572(%rbp)
	jg	.L51
	cmpl	$14, -572(%rbp)
	je	.L123
	cmpl	$14, -572(%rbp)
	jg	.L51
	cmpl	$13, -572(%rbp)
	je	.L124
	cmpl	$13, -572(%rbp)
	jg	.L51
	cmpl	$12, -572(%rbp)
	je	.L125
	cmpl	$12, -572(%rbp)
	jg	.L51
	cmpl	$11, -572(%rbp)
	je	.L126
	cmpl	$11, -572(%rbp)
	jg	.L51
	cmpl	$10, -572(%rbp)
	je	.L127
	cmpl	$10, -572(%rbp)
	jg	.L51
	cmpl	$9, -572(%rbp)
	je	.L128
	cmpl	$9, -572(%rbp)
	jg	.L51
	cmpl	$8, -572(%rbp)
	je	.L129
	cmpl	$8, -572(%rbp)
	jg	.L51
	cmpl	$7, -572(%rbp)
	je	.L130
	cmpl	$7, -572(%rbp)
	jg	.L51
	cmpl	$6, -572(%rbp)
	je	.L131
	cmpl	$6, -572(%rbp)
	jg	.L51
	cmpl	$5, -572(%rbp)
	je	.L132
	cmpl	$5, -572(%rbp)
	jg	.L51
	cmpl	$4, -572(%rbp)
	je	.L133
	cmpl	$4, -572(%rbp)
	jg	.L51
	cmpl	$3, -572(%rbp)
	je	.L134
	cmpl	$3, -572(%rbp)
	jg	.L51
	cmpl	$2, -572(%rbp)
	je	.L135
	cmpl	$2, -572(%rbp)
	jg	.L51
	cmpl	$0, -572(%rbp)
	jg	.L136
	cmpl	$-1, -572(%rbp)
	jge	.L137
	jmp	.L51
.L136:
	cmpl	$1, -572(%rbp)
	je	.L138
	jmp	.L51
.L341:
	nop
	jmp	.L137
.L342:
	nop
	jmp	.L137
.L343:
	nop
	jmp	.L137
.L348:
	nop
	jmp	.L137
.L357:
	nop
.L137:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-568(%rbp), %rdx
	leaq	.LC257(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L138:
	movq	cms_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -408(%rbp)
	jmp	.L50
.L135:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-756(%rbp), %rax
	movq	%rax, %rdx
	movl	$38, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L341
	jmp	.L51
.L134:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-760(%rbp), %rax
	movq	%rax, %rdx
	movl	$38, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L342
	jmp	.L51
.L132:
	call	opt_arg@PLT
	movq	%rax, -288(%rbp)
	jmp	.L51
.L131:
	movl	$257, -404(%rbp)
	jmp	.L51
.L130:
	movl	$514, -404(%rbp)
	jmp	.L51
.L129:
	movl	$1283, -404(%rbp)
	jmp	.L51
.L125:
	movl	$516, -404(%rbp)
	jmp	.L51
.L126:
	movl	$1797, -404(%rbp)
	jmp	.L51
.L127:
	movl	$774, -404(%rbp)
	jmp	.L51
.L123:
	movl	$519, -404(%rbp)
	call	opt_arg@PLT
	movq	%rax, -296(%rbp)
	jmp	.L51
.L124:
	movl	$1, -420(%rbp)
	jmp	.L51
.L117:
	movl	$264, -404(%rbp)
	jmp	.L51
.L118:
	call	opt_arg@PLT
	movq	%rax, -264(%rbp)
	jmp	.L51
.L119:
	movl	$521, -404(%rbp)
	jmp	.L51
.L116:
	movl	$266, -404(%rbp)
	jmp	.L51
.L115:
	movl	$523, -404(%rbp)
	jmp	.L51
.L113:
	movl	$268, -404(%rbp)
	jmp	.L51
.L114:
	movl	$525, -404(%rbp)
	jmp	.L51
.L120:
	movl	$270, -404(%rbp)
	jmp	.L51
.L121:
	movl	$527, -404(%rbp)
	jmp	.L51
.L122:
	movl	$784, -404(%rbp)
	jmp	.L51
.L112:
	orl	$131072, -380(%rbp)
	jmp	.L51
.L111:
	orl	$1, -380(%rbp)
	jmp	.L51
.L110:
	orl	$524288, -380(%rbp)
	jmp	.L51
.L109:
	orl	$16, -380(%rbp)
	jmp	.L51
.L108:
	orl	$32, -380(%rbp)
	jmp	.L51
.L107:
	orl	$2, -380(%rbp)
	jmp	.L51
.L106:
	orl	$256, -380(%rbp)
	jmp	.L51
.L105:
	andl	$-65, -380(%rbp)
	jmp	.L51
.L104:
	orl	$512, -380(%rbp)
	jmp	.L51
.L103:
	orl	$128, -380(%rbp)
	jmp	.L51
.L128:
	orl	$1048576, -380(%rbp)
	jmp	.L51
.L102:
	orl	$65536, -380(%rbp)
	jmp	.L51
.L101:
	orl	$12, -380(%rbp)
	jmp	.L51
.L100:
	orl	$4, -380(%rbp)
	jmp	.L51
.L99:
	orl	$8, -380(%rbp)
	jmp	.L51
.L98:
	orl	$4096, -380(%rbp)
	jmp	.L51
.L97:
	andl	$-4097, -380(%rbp)
	jmp	.L51
.L96:
	leaq	.LC258(%rip), %rax
	movq	%rax, -480(%rbp)
	orl	$2048, -380(%rbp)
	jmp	.L51
.L95:
	movl	$1, -388(%rbp)
	jmp	.L51
.L94:
	movl	$1, -412(%rbp)
	jmp	.L51
.L93:
	movl	$0, -416(%rbp)
	jmp	.L51
.L92:
	movl	$1, -416(%rbp)
	jmp	.L51
.L91:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-764(%rbp), %rax
	movq	%rax, %rdx
	movl	$38, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L343
	jmp	.L51
.L90:
	call	opt_arg@PLT
	movq	%rax, -176(%rbp)
	jmp	.L51
.L89:
	call	opt_arg@PLT
	movq	%rax, -200(%rbp)
	jmp	.L51
.L88:
	call	opt_arg@PLT
	movq	%rax, -208(%rbp)
	jmp	.L51
.L87:
	call	opt_arg@PLT
	movq	%rax, -216(%rbp)
	jmp	.L51
.L85:
	movl	$1, -244(%rbp)
	jmp	.L51
.L86:
	movl	$1, -248(%rbp)
	jmp	.L51
.L84:
	movl	$1, -252(%rbp)
	jmp	.L51
.L133:
	call	opt_arg@PLT
	movq	%rax, -280(%rbp)
	jmp	.L51
.L83:
	call	opt_arg@PLT
	movq	%rax, -192(%rbp)
	jmp	.L51
.L65:
	cmpq	$0, -112(%rbp)
	jne	.L142
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L344
.L142:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L345
	jmp	.L51
.L64:
	cmpq	$0, -104(%rbp)
	jne	.L144
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L346
.L144:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L347
	jmp	.L51
.L82:
	movl	$1, -392(%rbp)
	movl	-392(%rbp), %eax
	movl	%eax, -388(%rbp)
	jmp	.L51
.L81:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	set_nameopt@PLT
	testl	%eax, %eax
	je	.L348
	jmp	.L51
.L80:
	cmpq	$0, -464(%rbp)
	je	.L147
	call	opt_arg@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC259(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L147:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-776(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -464(%rbp)
	cmpq	$0, -464(%rbp)
	jne	.L148
	call	opt_arg@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC260(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L148:
	movq	-776(%rbp), %rax
	movq	%rax, -432(%rbp)
	jmp	.L51
.L79:
	cmpq	$0, -472(%rbp)
	je	.L149
	call	opt_arg@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC261(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L149:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-776(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -472(%rbp)
	cmpq	$0, -472(%rbp)
	jne	.L150
	call	opt_arg@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC262(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L150:
	movq	-776(%rbp), %rax
	movq	%rax, -440(%rbp)
	jmp	.L51
.L78:
	call	opt_arg@PLT
	movq	%rax, -448(%rbp)
	jmp	.L51
.L77:
	cmpq	$0, -32(%rbp)
	je	.L151
	call	opt_arg@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC263(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L151:
	call	opt_arg@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L51
	call	opt_arg@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC264(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L61:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -88(%rbp)
	jmp	.L51
.L76:
	call	opt_arg@PLT
	movq	%rax, -304(%rbp)
	jmp	.L51
.L75:
	call	opt_arg@PLT
	movq	%rax, -344(%rbp)
	jmp	.L51
.L74:
	call	opt_arg@PLT
	movq	%rax, -352(%rbp)
	jmp	.L51
.L73:
	call	opt_arg@PLT
	movq	%rax, -360(%rbp)
	jmp	.L51
.L70:
	call	opt_arg@PLT
	movq	%rax, -224(%rbp)
	jmp	.L51
.L69:
	call	opt_arg@PLT
	movq	%rax, -232(%rbp)
	jmp	.L51
.L72:
	cmpq	$0, -312(%rbp)
	je	.L153
	cmpq	$0, -120(%rbp)
	jne	.L154
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L349
.L154:
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L350
	cmpq	$0, -184(%rbp)
	jne	.L156
	movq	-312(%rbp), %rax
	movq	%rax, -184(%rbp)
.L156:
	cmpq	$0, -128(%rbp)
	jne	.L157
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L351
.L157:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L352
	movq	$0, -184(%rbp)
.L153:
	call	opt_arg@PLT
	movq	%rax, -312(%rbp)
	jmp	.L51
.L52:
	call	opt_arg@PLT
	movq	%rax, -320(%rbp)
	jmp	.L51
.L68:
	cmpq	$0, -184(%rbp)
	je	.L159
	cmpq	$0, -312(%rbp)
	jne	.L160
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC265(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L50
.L160:
	cmpq	$0, -120(%rbp)
	jne	.L161
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L353
.L161:
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L354
	movq	$0, -312(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L163
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L355
.L163:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L356
.L159:
	call	opt_arg@PLT
	movq	%rax, -184(%rbp)
	jmp	.L51
.L67:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	-768(%rbp), %rax
	movq	%rax, %rdx
	movl	$4094, %esi
	movq	%rcx, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	je	.L357
	jmp	.L51
.L71:
	cmpl	$257, -404(%rbp)
	jne	.L165
	call	opt_arg@PLT
	leaq	.LC266(%rip), %rdx
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L358
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L359
	movq	$0, -136(%rbp)
	jmp	.L51
.L165:
	call	opt_arg@PLT
	movq	%rax, -328(%rbp)
	jmp	.L51
.L53:
	call	opt_unknown@PLT
	movq	%rax, -336(%rbp)
	jmp	.L51
.L66:
	movl	$-1, -396(%rbp)
	cmpl	$257, -404(%rbp)
	jne	.L169
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L170
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	%eax, -396(%rbp)
	jmp	.L170
.L169:
	cmpq	$0, -184(%rbp)
	jne	.L171
	cmpq	$0, -312(%rbp)
	je	.L172
.L171:
	addl	$1, -396(%rbp)
.L172:
	cmpq	$0, -128(%rbp)
	je	.L170
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	%eax, -396(%rbp)
.L170:
	cmpl	$0, -396(%rbp)
	jns	.L173
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC267(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L173:
	cmpq	$0, -376(%rbp)
	je	.L174
	movq	-376(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -396(%rbp)
	je	.L175
.L174:
	leaq	.LC268(%rip), %rax
	movq	%rax, %rsi
	movl	$24, %edi
	call	app_malloc@PLT
	movq	%rax, -688(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	-688(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-688(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L176
	leaq	.LC269(%rip), %rcx
	movq	-688(%rbp), %rax
	movl	$666, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L50
.L176:
	movq	-688(%rbp), %rax
	movl	-396(%rbp), %edx
	movl	%edx, (%rax)
	movq	-688(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -368(%rbp)
	jne	.L177
	movq	-688(%rbp), %rax
	movq	%rax, -368(%rbp)
	jmp	.L178
.L177:
	movq	-376(%rbp), %rax
	movq	-688(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L178:
	movq	-688(%rbp), %rax
	movq	%rax, -376(%rbp)
.L175:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-376(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L360
	jmp	.L51
.L55:
	movq	-552(%rbp), %rdx
	movl	-572(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	opt_verify@PLT
	testl	%eax, %eax
	je	.L361
	addl	$1, -400(%rbp)
	jmp	.L51
.L60:
	movl	-572(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L362
	jmp	.L51
.L58:
	movl	-572(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L363
	jmp	.L51
.L56:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	app_load_config_modules@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L364
	jmp	.L51
.L62:
	call	opt_arg@PLT
	movq	%rax, -240(%rbp)
	jmp	.L51
.L63:
	call	opt_flag@PLT
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	nop
.L51:
	call	opt_next@PLT
	movl	%eax, -572(%rbp)
	cmpl	$0, -572(%rbp)
	jne	.L184
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L365
	cmpq	$0, -232(%rbp)
	je	.L186
	leaq	-728(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_md@PLT
	testl	%eax, %eax
	je	.L366
.L186:
	leaq	-712(%rbp), %rdx
	movq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher_any@PLT
	testl	%eax, %eax
	je	.L367
	cmpq	$0, -240(%rbp)
	je	.L188
	leaq	-720(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	opt_cipher_any@PLT
	testl	%eax, %eax
	je	.L368
.L188:
	call	opt_num_rest@PLT
	movl	%eax, -788(%rbp)
	call	opt_rest@PLT
	movq	%rax, -800(%rbp)
	cmpl	$-1, -416(%rbp)
	jne	.L189
	cmpq	$0, -112(%rbp)
	je	.L190
.L189:
	cmpq	$0, -104(%rbp)
	jne	.L190
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC270(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L137
.L190:
	movl	-404(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L191
	cmpq	$0, -104(%rbp)
	jne	.L192
	cmpq	$0, -112(%rbp)
	je	.L191
.L192:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC271(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L137
.L191:
	movl	-404(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L193
	cmpq	$0, -128(%rbp)
	jne	.L194
	cmpq	$0, -120(%rbp)
	je	.L193
.L194:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC272(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L137
.L193:
	movl	-380(%rbp), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L195
	movl	-380(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L196
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC273(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L137
.L196:
	cmpl	$516, -404(%rbp)
	jne	.L195
	movl	-380(%rbp), %eax
	andl	$40, %eax
	testl	%eax, %eax
	je	.L195
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC274(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L137
.L195:
	movl	-404(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L197
	cmpq	$0, -184(%rbp)
	je	.L198
	cmpq	$0, -312(%rbp)
	jne	.L198
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC265(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L137
.L198:
	cmpq	$0, -312(%rbp)
	je	.L199
	cmpq	$0, -120(%rbp)
	jne	.L200
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L369
.L200:
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L370
	cmpq	$0, -128(%rbp)
	jne	.L202
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L371
.L202:
	cmpq	$0, -184(%rbp)
	jne	.L203
	movq	-312(%rbp), %rax
	movq	%rax, -184(%rbp)
.L203:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jle	.L372
.L199:
	cmpq	$0, -120(%rbp)
	jne	.L204
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC275(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L204:
	movq	$0, -312(%rbp)
	movq	$0, -184(%rbp)
	jmp	.L205
.L197:
	cmpl	$514, -404(%rbp)
	jne	.L206
	cmpq	$0, -328(%rbp)
	jne	.L205
	cmpq	$0, -184(%rbp)
	jne	.L205
	cmpq	$0, -464(%rbp)
	jne	.L205
	cmpq	$0, -448(%rbp)
	jne	.L205
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC276(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L206:
	cmpl	$257, -404(%rbp)
	jne	.L207
	movq	-800(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L205
	cmpq	$0, -464(%rbp)
	jne	.L205
	cmpq	$0, -448(%rbp)
	jne	.L205
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L205
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC277(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L207:
	cmpl	$0, -404(%rbp)
	jne	.L205
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC278(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L137
.L205:
	leaq	-752(%rbp), %rdx
	movq	-304(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L208
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC279(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L208:
	movl	$2, -408(%rbp)
	movl	-404(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L209
	movl	-380(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L210
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC280(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L210:
	andl	$-65, -380(%rbp)
.L209:
	movl	-404(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L211
	cmpq	$0, -192(%rbp)
	je	.L211
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC281(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L211:
	cmpl	$257, -404(%rbp)
	je	.L212
	movq	-800(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L212
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC282(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L212:
	movl	-380(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L213
	movl	-404(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L214
	movl	$2, -760(%rbp)
.L214:
	movl	-404(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L215
	movl	$2, -756(%rbp)
.L215:
	movl	-404(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L216
	movl	-380(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L216
	movl	$1, -384(%rbp)
.L216:
	movl	-404(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L213
	cmpq	$0, -192(%rbp)
	jne	.L213
	movl	$1, -384(%rbp)
.L213:
	cmpl	$257, -404(%rbp)
	jne	.L217
	movq	-712(%rbp), %rax
	testq	%rax, %rax
	jne	.L218
	call	EVP_des_ede3_cbc@PLT
	movq	%rax, -712(%rbp)
.L218:
	cmpq	$0, -464(%rbp)
	je	.L220
	cmpq	$0, -472(%rbp)
	jne	.L220
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC283(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L223:
	movq	-800(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC266(%rip), %rdx
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L373
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L374
	movq	$0, -136(%rbp)
	addq	$8, -800(%rbp)
.L220:
	movq	-800(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L223
.L217:
	cmpq	$0, -176(%rbp)
	je	.L224
	leaq	.LC284(%rip), %rcx
	leaq	-736(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_certs@PLT
	testl	%eax, %eax
	jne	.L224
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L50
.L224:
	cmpq	$0, -328(%rbp)
	je	.L225
	cmpl	$514, -404(%rbp)
	jne	.L225
	leaq	.LC266(%rip), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.L225
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L50
.L225:
	cmpq	$0, -320(%rbp)
	je	.L226
	leaq	.LC285(%rip), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L226
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L50
.L226:
	cmpl	$774, -404(%rbp)
	jne	.L227
	leaq	.LC286(%rip), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.L227
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L50
.L227:
	cmpl	$514, -404(%rbp)
	je	.L228
	cmpl	$257, -404(%rbp)
	jne	.L229
.L228:
	cmpq	$0, -184(%rbp)
	jne	.L231
	movq	-328(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L231
.L229:
	cmpl	$1283, -404(%rbp)
	je	.L232
	cmpl	$774, -404(%rbp)
	jne	.L233
.L232:
	cmpq	$0, -184(%rbp)
	jne	.L231
	movq	-312(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L231
.L233:
	movq	$0, -184(%rbp)
.L231:
	cmpq	$0, -184(%rbp)
	je	.L235
	movq	-752(%rbp), %rdx
	movl	-768(%rbp), %esi
	leaq	.LC287(%rip), %rdi
	movq	-88(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L375
.L235:
	cmpq	$0, -264(%rbp)
	je	.L236
	cmpl	$1283, -404(%rbp)
	je	.L237
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC288(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L237:
	cmpq	$0, -280(%rbp)
	jne	.L238
	movl	-380(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L238
	movl	-380(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L239
.L238:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC289(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L239:
	leaq	-744(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -272(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.L240
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC290(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L236:
	cmpl	$0, -384(%rbp)
	jne	.L241
	movl	-756(%rbp), %eax
	jmp	.L242
.L241:
	movl	$2, %eax
.L242:
	movq	-280(%rbp), %rcx
	movl	%eax, %edx
	movl	$114, %esi
	movq	%rcx, %rdi
	call	bio_open_default@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L376
.L240:
	movl	-404(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L243
	movl	-756(%rbp), %eax
	leaq	.LC291(%rip), %rdi
	leaq	-704(%rbp), %rcx
	movl	-380(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	%rdi, %r8
	movl	%eax, %edi
	call	load_content_info
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L377
	cmpq	$0, -192(%rbp)
	je	.L245
	movq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC292(%rip), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -704(%rbp)
	movq	-704(%rbp), %rax
	testq	%rax, %rax
	jne	.L245
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	leaq	.LC293(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L245:
	cmpq	$0, -224(%rbp)
	je	.L243
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get1_certs@PLT
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	save_certs
	testl	%eax, %eax
	jne	.L246
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-224(%rbp), %rdx
	leaq	.LC294(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$5, -408(%rbp)
	jmp	.L50
.L246:
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
.L243:
	cmpq	$0, -296(%rbp)
	je	.L247
	movl	-764(%rbp), %eax
	cmpl	$4, %eax
	jne	.L248
	leaq	.LC292(%rip), %rax
	movq	%rax, -488(%rbp)
	jmp	.L249
.L248:
	leaq	.LC295(%rip), %rax
	movq	%rax, -488(%rbp)
.L249:
	movq	-488(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L250
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-296(%rbp), %rdx
	leaq	.LC296(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L250:
	movl	-764(%rbp), %eax
	leaq	.LC297(%rip), %rdx
	movq	-56(%rbp), %rsi
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	load_content_info
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L378
.L247:
	cmpl	$0, -384(%rbp)
	jne	.L251
	movl	-760(%rbp), %eax
	jmp	.L252
.L251:
	movl	$2, %eax
.L252:
	movq	-288(%rbp), %rcx
	movl	%eax, %edx
	movl	$119, %esi
	movq	%rcx, %rdi
	call	bio_open_default@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L379
	cmpl	$516, -404(%rbp)
	je	.L254
	cmpl	$519, -404(%rbp)
	jne	.L255
.L254:
	movl	-252(%rbp), %r8d
	movq	-216(%rbp), %rdi
	movl	-248(%rbp), %ecx
	movq	-208(%rbp), %rdx
	movl	-244(%rbp), %esi
	movq	-200(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	setup_verify@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L380
	leaq	cms_cb(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set_verify_cb@PLT
	cmpl	$0, -400(%rbp)
	je	.L255
	movq	-552(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set1_param@PLT
.L255:
	movl	$3, -408(%rbp)
	cmpl	$270, -404(%rbp)
	jne	.L257
	call	app_get0_propq@PLT
	movq	%rax, %rcx
	movl	-380(%rbp), %esi
	movq	-560(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_data_create_ex@PLT
	movq	%rax, -64(%rbp)
	jmp	.L258
.L257:
	cmpl	$264, -404(%rbp)
	jne	.L259
	call	app_get0_propq@PLT
	movq	%rax, %rdi
	movl	-380(%rbp), %edx
	movq	-728(%rbp), %rsi
	movq	-560(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CMS_digest_create_ex@PLT
	movq	%rax, -64(%rbp)
	jmp	.L258
.L259:
	cmpl	$266, -404(%rbp)
	jne	.L260
	movl	-380(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	CMS_compress@PLT
	movq	%rax, -64(%rbp)
	jmp	.L258
.L260:
	cmpl	$257, -404(%rbp)
	jne	.L261
	orl	$16384, -380(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, %rsi
	movl	-380(%rbp), %ecx
	movq	-712(%rbp), %rdx
	movq	-560(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	CMS_encrypt_ex@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L381
	movl	$0, -492(%rbp)
	jmp	.L263
.L272:
	movl	-380(%rbp), %eax
	orl	$262144, %eax
	movl	%eax, -628(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-492(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -640(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -504(%rbp)
	jmp	.L264
.L267:
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -492(%rbp)
	je	.L382
	movq	-504(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
.L264:
	cmpq	$0, -504(%rbp)
	jne	.L267
	jmp	.L266
.L382:
	nop
.L266:
	movl	-628(%rbp), %edi
	movq	-160(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-640(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	CMS_add1_recipient@PLT
	movq	%rax, -648(%rbp)
	cmpq	$0, -648(%rbp)
	je	.L383
	movq	-648(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_get0_pkey_ctx@PLT
	movq	%rax, -656(%rbp)
	cmpq	$0, -656(%rbp)
	je	.L269
	cmpq	$0, -504(%rbp)
	je	.L269
	movq	-504(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-656(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_set_pkey_param
	testl	%eax, %eax
	je	.L384
.L269:
	movq	-712(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_nid@PLT
	movl	%eax, %edx
	movq	-656(%rbp), %rax
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	$12, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	movl	%eax, -660(%rbp)
	cmpl	$0, -660(%rbp)
	jg	.L270
	cmpl	$-2, -660(%rbp)
	jne	.L385
.L270:
	movq	-648(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_type@PLT
	cmpl	$1, %eax
	jne	.L271
	movq	-720(%rbp), %rax
	testq	%rax, %rax
	je	.L271
	movq	-648(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_RecipientInfo_kari_get0_ctx@PLT
	movq	%rax, -672(%rbp)
	movq	-720(%rbp), %rsi
	movq	-672(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	cmpl	$1, %eax
	jne	.L386
.L271:
	addl	$1, -492(%rbp)
.L263:
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -492(%rbp)
	jl	.L272
	cmpq	$0, -464(%rbp)
	je	.L273
	movq	-440(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-432(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_add0_recipient_key@PLT
	addq	$32, %rsp
	testq	%rax, %rax
	je	.L387
	movq	$0, -464(%rbp)
	movq	$0, -472(%rbp)
.L273:
	cmpq	$0, -448(%rbp)
	je	.L275
	leaq	.LC269(%rip), %rcx
	movq	-448(%rbp), %rax
	movl	$1044, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -456(%rbp)
	cmpq	$0, -456(%rbp)
	je	.L388
	movq	-456(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	$-1, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	CMS_add0_recipient_password@PLT
	addq	$16, %rsp
	testq	%rax, %rax
	je	.L389
	movq	$0, -456(%rbp)
.L275:
	movl	-380(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L258
	movl	-380(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_final@PLT
	testl	%eax, %eax
	jne	.L258
	cmpq	$0, -160(%rbp)
	je	.L390
	call	ERR_peek_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$196, %eax
	jne	.L390
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC298(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L261:
	cmpl	$268, -404(%rbp)
	jne	.L279
	call	app_get0_propq@PLT
	movq	%rax, %rdi
	movl	-380(%rbp), %r8d
	movq	-712(%rbp), %rsi
	movq	-560(%rbp), %r9
	movq	-432(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	CMS_EncryptedData_encrypt_ex@PLT
	addq	$16, %rsp
	movq	%rax, -64(%rbp)
	jmp	.L258
.L279:
	cmpl	$774, -404(%rbp)
	jne	.L280
	movq	$0, -608(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_SignerInfos@PLT
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	je	.L391
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -624(%rbp)
	movl	-380(%rbp), %edi
	movq	-736(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-624(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	CMS_sign_receipt@PLT
	movq	%rax, -608(%rbp)
	cmpq	$0, -608(%rbp)
	je	.L392
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movq	-608(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L258
.L280:
	movl	-404(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L258
	cmpl	$1283, -404(%rbp)
	jne	.L283
	movl	-380(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L284
	cmpq	$0, -272(%rbp)
	jne	.L284
	movl	-760(%rbp), %eax
	cmpl	$32775, %eax
	jne	.L284
	orl	$4096, -380(%rbp)
.L284:
	orl	$16384, -380(%rbp)
	call	app_get0_propq@PLT
	movq	%rax, %rcx
	movl	-380(%rbp), %esi
	movq	-736(%rbp), %rax
	movq	-560(%rbp), %rdi
	movq	-40(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	CMS_sign_ex@PLT
	addq	$16, %rsp
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L393
	cmpq	$0, -32(%rbp)
	je	.L286
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_set1_eContentType@PLT
.L286:
	cmpq	$0, -104(%rbp)
	je	.L287
	movq	-112(%rbp), %rdx
	movl	-416(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	make_receipt_request
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L287
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC299(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L50
.L283:
	orl	$32768, -380(%rbp)
.L287:
	movl	$0, -508(%rbp)
	jmp	.L288
.L298:
	movl	-380(%rbp), %eax
	movl	%eax, -524(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-508(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -312(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-508(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -184(%rbp)
	leaq	.LC300(%rip), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.L289
	movl	$2, -408(%rbp)
	jmp	.L50
.L289:
	movq	-752(%rbp), %rdx
	movl	-768(%rbp), %esi
	leaq	.LC287(%rip), %rdi
	movq	-88(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L290
	movl	$2, -408(%rbp)
	jmp	.L50
.L290:
	movq	-368(%rbp), %rax
	movq	%rax, -520(%rbp)
	jmp	.L291
.L294:
	movq	-520(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -508(%rbp)
	jne	.L292
	orl	$262144, -524(%rbp)
	jmp	.L293
.L292:
	movq	-520(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -520(%rbp)
.L291:
	cmpq	$0, -520(%rbp)
	jne	.L294
.L293:
	movl	-524(%rbp), %edi
	movq	-728(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	CMS_add1_signer@PLT
	movq	%rax, -592(%rbp)
	cmpq	$0, -592(%rbp)
	je	.L394
	cmpq	$0, -520(%rbp)
	je	.L296
	movq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_SignerInfo_get0_pkey_ctx@PLT
	movq	%rax, -600(%rbp)
	movq	-520(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-600(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cms_set_pkey_param
	testl	%eax, %eax
	je	.L395
.L296:
	cmpq	$0, -80(%rbp)
	je	.L297
	movq	-80(%rbp), %rdx
	movq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_add1_ReceiptRequest@PLT
	testl	%eax, %eax
	je	.L396
.L297:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, -152(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -96(%rbp)
	addl	$1, -508(%rbp)
.L288:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -508(%rbp)
	jl	.L298
	cmpl	$1283, -404(%rbp)
	jne	.L299
	cmpq	$0, -272(%rbp)
	je	.L299
	movl	-380(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L299
	movl	-380(%rbp), %edx
	movq	-744(%rbp), %rax
	movl	%eax, %edi
	movq	-272(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%edx, %r8d
	movl	$0, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	CMS_final_digest@PLT
	testl	%eax, %eax
	jne	.L258
	jmp	.L50
.L299:
	cmpl	$1283, -404(%rbp)
	jne	.L258
	movl	-380(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L258
	movl	-380(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_final@PLT
	testl	%eax, %eax
	je	.L397
.L258:
	cmpq	$0, -64(%rbp)
	jne	.L301
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC301(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L301:
	movl	$4, -408(%rbp)
	cmpl	$514, -404(%rbp)
	jne	.L302
	movl	-380(%rbp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L303
	movl	-380(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_decrypt@PLT
.L303:
	cmpq	$0, -464(%rbp)
	je	.L304
	movq	-440(%rbp), %rdi
	movq	-472(%rbp), %rcx
	movq	-432(%rbp), %rdx
	movq	-464(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CMS_decrypt_set1_key@PLT
	testl	%eax, %eax
	jne	.L304
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC302(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L50
.L304:
	cmpq	$0, -96(%rbp)
	je	.L305
	movq	-160(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_decrypt_set1_pkey_and_peer@PLT
	testl	%eax, %eax
	jne	.L305
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC303(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L50
.L305:
	cmpq	$0, -448(%rbp)
	je	.L306
	movq	-448(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_decrypt_set1_password@PLT
	testl	%eax, %eax
	jne	.L306
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC304(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L50
.L306:
	movl	-380(%rbp), %esi
	movq	-704(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CMS_decrypt@PLT
	testl	%eax, %eax
	jne	.L307
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC305(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L302:
	cmpl	$527, -404(%rbp)
	jne	.L308
	movl	-380(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CMS_data@PLT
	testl	%eax, %eax
	jne	.L307
	jmp	.L50
.L308:
	cmpl	$523, -404(%rbp)
	jne	.L309
	movl	-380(%rbp), %ecx
	movq	-704(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_uncompress@PLT
	testl	%eax, %eax
	jne	.L307
	jmp	.L50
.L309:
	cmpl	$521, -404(%rbp)
	jne	.L310
	movl	-380(%rbp), %ecx
	movq	-704(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_digest_verify@PLT
	testl	%eax, %eax
	jle	.L311
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC306(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L307
.L311:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC307(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L310:
	cmpl	$525, -404(%rbp)
	jne	.L312
	movl	-380(%rbp), %r8d
	movq	-704(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	-432(%rbp), %rdx
	movq	-464(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CMS_EncryptedData_decrypt@PLT
	testl	%eax, %eax
	jne	.L307
	jmp	.L50
.L312:
	cmpl	$516, -404(%rbp)
	jne	.L313
	movl	-380(%rbp), %r8d
	movq	-704(%rbp), %rcx
	movq	-736(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-168(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CMS_verify@PLT
	testl	%eax, %eax
	jle	.L314
	movl	-380(%rbp), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L315
	leaq	.LC308(%rip), %rax
	jmp	.L316
.L315:
	leaq	.LC309(%rip), %rax
.L316:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC310(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -312(%rbp)
	je	.L321
	jmp	.L339
.L314:
	movl	-380(%rbp), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L318
	leaq	.LC308(%rip), %rax
	jmp	.L319
.L318:
	leaq	.LC309(%rip), %rax
.L319:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC311(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$0, -420(%rbp)
	je	.L398
	movl	verify_err(%rip), %eax
	addl	$32, %eax
	movl	%eax, -408(%rbp)
	jmp	.L398
.L339:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_signers@PLT
	movq	%rax, -680(%rbp)
	movq	-680(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	save_certs
	testl	%eax, %eax
	jne	.L322
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-312(%rbp), %rdx
	leaq	.LC312(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$5, -408(%rbp)
	jmp	.L50
.L322:
	movq	-680(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L321:
	cmpl	$0, -412(%rbp)
	je	.L307
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	receipt_request_print
	jmp	.L307
.L313:
	cmpl	$519, -404(%rbp)
	jne	.L323
	movl	-380(%rbp), %edi
	movq	-736(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	CMS_verify_receipt@PLT
	testl	%eax, %eax
	jle	.L324
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC306(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L307
.L324:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC307(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L323:
	cmpl	$0, -388(%rbp)
	je	.L325
	cmpl	$0, -392(%rbp)
	je	.L326
	movq	$0, -536(%rbp)
	call	get_nameopt@PLT
	cmpq	$8520479, %rax
	je	.L327
	call	ASN1_PCTX_new@PLT
	movq	%rax, -536(%rbp)
	cmpq	$0, -536(%rbp)
	je	.L327
	movq	-536(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ASN1_PCTX_set_flags@PLT
	call	get_nameopt@PLT
	movq	%rax, %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_PCTX_set_str_flags@PLT
	call	get_nameopt@PLT
	movq	%rax, %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_PCTX_set_nm_flags@PLT
.L327:
	movq	-536(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	CMS_ContentInfo_print_ctx@PLT
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_PCTX_free@PLT
	jmp	.L326
.L325:
	movl	-760(%rbp), %eax
	cmpl	$32775, %eax
	jne	.L328
	cmpq	$0, -344(%rbp)
	je	.L329
	movq	-480(%rbp), %rcx
	movq	-344(%rbp), %rdx
	leaq	.LC313(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L329:
	cmpq	$0, -352(%rbp)
	je	.L330
	movq	-480(%rbp), %rcx
	movq	-352(%rbp), %rdx
	leaq	.LC314(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L330:
	cmpq	$0, -360(%rbp)
	je	.L331
	movq	-480(%rbp), %rcx
	movq	-360(%rbp), %rdx
	leaq	.LC315(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L331:
	cmpl	$1797, -404(%rbp)
	jne	.L332
	movq	-704(%rbp), %rdx
	movl	-380(%rbp), %ecx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SMIME_write_CMS@PLT
	movl	%eax, -408(%rbp)
	jmp	.L326
.L332:
	movl	-380(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SMIME_write_CMS@PLT
	movl	%eax, -408(%rbp)
	jmp	.L326
.L328:
	movl	-760(%rbp), %eax
	cmpl	$32773, %eax
	jne	.L333
	movl	-380(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PEM_write_bio_CMS_stream@PLT
	movl	%eax, -408(%rbp)
	jmp	.L326
.L333:
	movl	-760(%rbp), %eax
	cmpl	$4, %eax
	jne	.L334
	movl	-380(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	i2d_CMS_bio_stream@PLT
	movl	%eax, -408(%rbp)
	jmp	.L326
.L334:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC316(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L326:
	cmpl	$0, -408(%rbp)
	jg	.L307
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC317(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$6, -408(%rbp)
	jmp	.L50
.L307:
	movl	$0, -408(%rbp)
	jmp	.L50
.L340:
	nop
	jmp	.L50
.L344:
	nop
	jmp	.L50
.L345:
	nop
	jmp	.L50
.L346:
	nop
	jmp	.L50
.L347:
	nop
	jmp	.L50
.L349:
	nop
	jmp	.L50
.L350:
	nop
	jmp	.L50
.L351:
	nop
	jmp	.L50
.L352:
	nop
	jmp	.L50
.L353:
	nop
	jmp	.L50
.L354:
	nop
	jmp	.L50
.L355:
	nop
	jmp	.L50
.L356:
	nop
	jmp	.L50
.L358:
	nop
	jmp	.L50
.L359:
	nop
	jmp	.L50
.L360:
	nop
	jmp	.L50
.L361:
	nop
	jmp	.L50
.L362:
	nop
	jmp	.L50
.L363:
	nop
	jmp	.L50
.L364:
	nop
	jmp	.L50
.L365:
	nop
	jmp	.L50
.L366:
	nop
	jmp	.L50
.L367:
	nop
	jmp	.L50
.L368:
	nop
	jmp	.L50
.L369:
	nop
	jmp	.L50
.L370:
	nop
	jmp	.L50
.L371:
	nop
	jmp	.L50
.L372:
	nop
	jmp	.L50
.L373:
	nop
	jmp	.L50
.L374:
	nop
	jmp	.L50
.L375:
	nop
	jmp	.L50
.L376:
	nop
	jmp	.L50
.L377:
	nop
	jmp	.L50
.L378:
	nop
	jmp	.L50
.L379:
	nop
	jmp	.L50
.L380:
	nop
	jmp	.L50
.L381:
	nop
	jmp	.L50
.L383:
	nop
	jmp	.L50
.L384:
	nop
	jmp	.L50
.L385:
	nop
	jmp	.L50
.L386:
	nop
	jmp	.L50
.L387:
	nop
	jmp	.L50
.L388:
	nop
	jmp	.L50
.L389:
	nop
	jmp	.L50
.L390:
	nop
	jmp	.L50
.L391:
	nop
	jmp	.L50
.L392:
	nop
	jmp	.L50
.L393:
	nop
	jmp	.L50
.L394:
	nop
	jmp	.L50
.L395:
	nop
	jmp	.L50
.L396:
	nop
	jmp	.L50
.L397:
	nop
	jmp	.L50
.L398:
	nop
.L50:
	cmpl	$0, -408(%rbp)
	je	.L335
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L335:
	movq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-736(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	leaq	.LC269(%rip), %rcx
	movq	-464(%rbp), %rax
	movl	$1296, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC269(%rip), %rcx
	movq	-472(%rbp), %rax
	movl	$1297, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC269(%rip), %rcx
	movq	-456(%rbp), %rax
	movl	$1298, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ReceiptRequest_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-368(%rbp), %rax
	movq	%rax, -376(%rbp)
	jmp	.L336
.L337:
	movq	-376(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-376(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -696(%rbp)
	leaq	.LC269(%rip), %rcx
	movq	-376(%rbp), %rax
	movl	$1307, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-696(%rbp), %rax
	movq	%rax, -376(%rbp)
.L336:
	cmpq	$0, -376(%rbp)
	jne	.L337
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-712(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-728(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ContentInfo_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	leaq	.LC269(%rip), %rcx
	movq	-272(%rbp), %rax
	movl	$1326, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-752(%rbp), %rax
	leaq	.LC269(%rip), %rcx
	movl	$1327, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-408(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	cms_main, .-cms_main
	.section	.rodata
.LC318:
	.string	"w"
	.text
	.type	save_certs, @function
save_certs:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L400
	movl	$1, %eax
	jmp	.L401
.L400:
	leaq	.LC318(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L402
	movl	$0, %eax
	jmp	.L401
.L402:
	movl	$0, -4(%rbp)
	jmp	.L403
.L404:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	addl	$1, -4(%rbp)
.L403:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L404
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$1, %eax
.L401:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	save_certs, .-save_certs
	.type	cms_cb, @function
cms_cb:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, verify_err(%rip)
	cmpl	$43, -4(%rbp)
	je	.L406
	cmpl	$0, -4(%rbp)
	jne	.L407
	cmpl	$2, -20(%rbp)
	je	.L406
.L407:
	movl	-20(%rbp), %eax
	jmp	.L408
.L406:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	policies_print@PLT
	movl	-20(%rbp), %eax
.L408:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	cms_cb, .-cms_cb
	.section	.rodata
.LC319:
	.string	"    "
	.text
	.type	gnames_stack_print, @function
gnames_stack_print:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L410
.L413:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAMES_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L411
.L412:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC319(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_print@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC255(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	addl	$1, -8(%rbp)
.L411:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L412
	addl	$1, -4(%rbp)
.L410:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAMES_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L413
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	gnames_stack_print, .-gnames_stack_print
	.section	.rodata
.LC320:
	.string	"Signer %d:\n"
.LC321:
	.string	"  No Receipt Request\n"
	.align 8
.LC322:
	.string	"  Receipt Request Parse Error\n"
.LC323:
	.string	"  Signed Content ID:\n"
.LC324:
	.string	"  Receipts From"
.LC325:
	.string	" List:\n"
.LC326:
	.string	": First Tier\n"
.LC327:
	.string	": All\n"
.LC328:
	.string	" Unknown (%d)\n"
.LC329:
	.string	"  Receipts To:\n"
	.text
	.type	receipt_request_print, @function
receipt_request_print:
.LFB676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_get0_SignerInfos@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L416
.L424:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CMS_get1_ReceiptRequest@PLT
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC320(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpl	$0, -28(%rbp)
	jne	.L417
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC321(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L418
.L417:
	cmpl	$0, -28(%rbp)
	jns	.L419
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC322(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L418
.L419:
	movq	-48(%rbp), %rax
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rcx
	leaq	-52(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CMS_ReceiptRequest_get0_values@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC323(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -40(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rsi
	movl	$4, %ecx
	movq	%rax, %rdi
	call	BIO_dump_indent@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC324(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L420
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC325(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	gnames_stack_print
	jmp	.L421
.L420:
	movl	-52(%rbp), %eax
	cmpl	$1, %eax
	jne	.L422
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC326(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L421
.L422:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.L423
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC327(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L421
.L423:
	movl	-52(%rbp), %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC328(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L421:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC329(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	gnames_stack_print
.L418:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_ReceiptRequest_free@PLT
	addl	$1, -4(%rbp)
.L416:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CMS_SignerInfo_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L424
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	receipt_request_print, .-receipt_request_print
	.type	make_names_stack, @function
make_names_stack:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L435
	movl	$0, -20(%rbp)
	jmp	.L428
.L433:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movq	%rax, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	a2i_GENERAL_NAME@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L436
	call	GENERAL_NAMES_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L437
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L438
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L439
	movq	$0, -32(%rbp)
	addl	$1, -20(%rbp)
.L428:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L433
	movq	-48(%rbp), %rax
	jmp	.L434
.L435:
	nop
	jmp	.L427
.L436:
	nop
	jmp	.L427
.L437:
	nop
	jmp	.L427
.L438:
	nop
	jmp	.L427
.L439:
	nop
.L427:
	movq	GENERAL_NAMES_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_freefunc_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movl	$0, %eax
.L434:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	make_names_stack, .-make_names_stack
	.type	make_receipt_request, @function
make_receipt_request:
.LFB678:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	make_names_stack
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L447
	cmpq	$0, -72(%rbp)
	je	.L443
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	make_names_stack
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L444
	jmp	.L442
.L443:
	movq	$0, -24(%rbp)
.L444:
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-60(%rbp), %eax
	movq	%rcx, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$-1, %esi
	movl	$0, %edi
	call	CMS_ReceiptRequest_create0_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L448
	movq	-40(%rbp), %rax
	jmp	.L446
.L447:
	nop
	jmp	.L442
.L448:
	nop
.L442:
	movq	GENERAL_NAMES_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	GENERAL_NAMES_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAMES_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L446:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	make_receipt_request, .-make_receipt_request
	.section	.rodata
.LC330:
	.string	"parameter error \"%s\"\n"
	.text
	.type	cms_set_pkey_param, @function
cms_set_pkey_param:
.LFB679:
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
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L450
	movl	$1, %eax
	jmp	.L451
.L450:
	movl	$0, -4(%rbp)
	jmp	.L452
.L454:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_ctrl_string@PLT
	testl	%eax, %eax
	jg	.L453
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC330(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L451
.L453:
	addl	$1, -4(%rbp)
.L452:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L454
	movl	$1, %eax
.L451:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	cms_set_pkey_param, .-cms_set_pkey_param
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
