	.file	"ssl_err.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"application data after close notify"
.LC1:
	.string	"app data in handshake"
	.align 8
.LC2:
	.string	"attempt to reuse session in different context"
	.align 8
.LC3:
	.string	"at least (D)TLS 1.2 needed in Suite B mode"
.LC4:
	.string	"bad certificate"
.LC5:
	.string	"bad change cipher spec"
.LC6:
	.string	"bad cipher"
.LC7:
	.string	"bad compression algorithm"
.LC8:
	.string	"bad data"
.LC9:
	.string	"bad data returned by callback"
.LC10:
	.string	"bad decompression"
.LC11:
	.string	"bad dh value"
.LC12:
	.string	"bad digest length"
.LC13:
	.string	"bad early data"
.LC14:
	.string	"bad ecc cert"
.LC15:
	.string	"bad ecpoint"
.LC16:
	.string	"bad extension"
.LC17:
	.string	"bad handshake length"
.LC18:
	.string	"bad handshake state"
.LC19:
	.string	"bad hello request"
.LC20:
	.string	"bad hrr version"
.LC21:
	.string	"bad key share"
.LC22:
	.string	"bad key update"
.LC23:
	.string	"bad legacy version"
.LC24:
	.string	"bad length"
.LC25:
	.string	"bad packet"
.LC26:
	.string	"bad packet length"
.LC27:
	.string	"bad protocol version number"
.LC28:
	.string	"bad psk"
.LC29:
	.string	"bad psk identity"
.LC30:
	.string	"bad record type"
.LC31:
	.string	"bad rsa encrypt"
.LC32:
	.string	"bad signature"
.LC33:
	.string	"bad srp a length"
.LC34:
	.string	"bad srp parameters"
.LC35:
	.string	"bad srtp mki value"
	.align 8
.LC36:
	.string	"bad srtp protection profile list"
.LC37:
	.string	"bad ssl filetype"
.LC38:
	.string	"bad value"
.LC39:
	.string	"bad write retry"
.LC40:
	.string	"binder does not verify"
.LC41:
	.string	"bio not set"
.LC42:
	.string	"block cipher pad is wrong"
.LC43:
	.string	"bn lib"
.LC44:
	.string	"callback failed"
.LC45:
	.string	"cannot change cipher"
.LC46:
	.string	"cannot get group name"
.LC47:
	.string	"ca dn length mismatch"
.LC48:
	.string	"ca key too small"
.LC49:
	.string	"ca md too weak"
.LC50:
	.string	"ccs received early"
.LC51:
	.string	"certificate verify failed"
.LC52:
	.string	"cert cb error"
.LC53:
	.string	"cert length mismatch"
	.align 8
.LC54:
	.string	"ciphersuite digest has changed"
.LC55:
	.string	"cipher code wrong length"
.LC56:
	.string	"clienthello tlsext"
.LC57:
	.string	"compressed length too long"
.LC58:
	.string	"compression disabled"
.LC59:
	.string	"compression failure"
	.align 8
.LC60:
	.string	"compression id not within private range"
.LC61:
	.string	"compression library error"
.LC62:
	.string	"connection type not set"
.LC63:
	.string	"conn use only"
.LC64:
	.string	"context not dane enabled"
.LC65:
	.string	"cookie gen callback failure"
.LC66:
	.string	"cookie mismatch"
.LC67:
	.string	"copy parameters failed"
	.align 8
.LC68:
	.string	"custom ext handler already installed"
.LC69:
	.string	"dane already enabled"
	.align 8
.LC70:
	.string	"dane cannot override mtype full"
.LC71:
	.string	"dane not enabled"
.LC72:
	.string	"dane tlsa bad certificate"
	.align 8
.LC73:
	.string	"dane tlsa bad certificate usage"
.LC74:
	.string	"dane tlsa bad data length"
.LC75:
	.string	"dane tlsa bad digest length"
.LC76:
	.string	"dane tlsa bad matching type"
.LC77:
	.string	"dane tlsa bad public key"
.LC78:
	.string	"dane tlsa bad selector"
.LC79:
	.string	"dane tlsa null data"
.LC80:
	.string	"data between ccs and finished"
.LC81:
	.string	"data length too long"
.LC82:
	.string	"decryption failed"
	.align 8
.LC83:
	.string	"decryption failed or bad record mac"
.LC84:
	.string	"dh key too small"
	.align 8
.LC85:
	.string	"dh public value length is wrong"
.LC86:
	.string	"digest check failed"
.LC87:
	.string	"dtls message too big"
.LC88:
	.string	"duplicate compression id"
.LC89:
	.string	"ecc cert not for signing"
.LC90:
	.string	"ecdh required for suiteb mode"
.LC91:
	.string	"ee key too small"
.LC92:
	.string	"empty raw public key"
	.align 8
.LC93:
	.string	"empty srtp protection profile list"
.LC94:
	.string	"encrypted length too long"
.LC95:
	.string	"error in received cipher list"
	.align 8
.LC96:
	.string	"error setting tlsa base domain"
.LC97:
	.string	"exceeds max fragment size"
.LC98:
	.string	"excessive message size"
.LC99:
	.string	"extension not received"
.LC100:
	.string	"extra data in message"
.LC101:
	.string	"ext length mismatch"
.LC102:
	.string	"failed to get parameter"
.LC103:
	.string	"failed to init async"
	.align 8
.LC104:
	.string	"feature negotiation not complete"
.LC105:
	.string	"feature not renegotiable"
.LC106:
	.string	"fragmented client hello"
.LC107:
	.string	"got a fin before a ccs"
.LC108:
	.string	"https proxy request"
.LC109:
	.string	"http request"
.LC110:
	.string	"illegal point compression"
.LC111:
	.string	"illegal Suite B digest"
.LC112:
	.string	"inappropriate fallback"
.LC113:
	.string	"inconsistent compression"
.LC114:
	.string	"inconsistent early data alpn"
.LC115:
	.string	"inconsistent early data sni"
.LC116:
	.string	"inconsistent extms"
.LC117:
	.string	"insufficient security"
.LC118:
	.string	"invalid alert"
.LC119:
	.string	"invalid ccs message"
.LC120:
	.string	"invalid certificate or alg"
.LC121:
	.string	"invalid command"
.LC122:
	.string	"invalid compression algorithm"
.LC123:
	.string	"invalid config"
.LC124:
	.string	"invalid configuration name"
.LC125:
	.string	"invalid context"
.LC126:
	.string	"invalid ct validation type"
.LC127:
	.string	"invalid key update type"
.LC128:
	.string	"invalid max early data"
.LC129:
	.string	"invalid null cmd name"
.LC130:
	.string	"invalid raw public key"
.LC131:
	.string	"invalid record"
.LC132:
	.string	"invalid sequence number"
.LC133:
	.string	"invalid serverinfo data"
.LC134:
	.string	"invalid session id"
.LC135:
	.string	"invalid srp username"
.LC136:
	.string	"invalid status response"
.LC137:
	.string	"invalid ticket keys length"
	.align 8
.LC138:
	.string	"legacy sigalg disallowed or unsupported"
.LC139:
	.string	"length mismatch"
.LC140:
	.string	"length too long"
.LC141:
	.string	"length too short"
.LC142:
	.string	"library bug"
.LC143:
	.string	"library has no ciphers"
	.align 8
.LC144:
	.string	"maximum encrypted pkts reached"
.LC145:
	.string	"missing dsa signing cert"
.LC146:
	.string	"missing ecdsa signing cert"
.LC147:
	.string	"missing fatal"
.LC148:
	.string	"missing parameters"
	.align 8
.LC149:
	.string	"missing psk kex modes extension"
.LC150:
	.string	"missing rsa certificate"
.LC151:
	.string	"missing rsa encrypting cert"
.LC152:
	.string	"missing rsa signing cert"
.LC153:
	.string	"missing sigalgs extension"
.LC154:
	.string	"missing signing cert"
.LC155:
	.string	"can't find SRP server param"
	.align 8
.LC156:
	.string	"missing supported groups extension"
.LC157:
	.string	"missing tmp dh key"
.LC158:
	.string	"missing tmp ecdh key"
	.align 8
.LC159:
	.string	"mixed handshake and non handshake data"
.LC160:
	.string	"not on record boundary"
.LC161:
	.string	"not replacing certificate"
.LC162:
	.string	"not server"
.LC163:
	.string	"no application protocol"
.LC164:
	.string	"no certificates returned"
.LC165:
	.string	"no certificate assigned"
.LC166:
	.string	"no certificate set"
.LC167:
	.string	"no change following hrr"
.LC168:
	.string	"no ciphers available"
.LC169:
	.string	"no ciphers specified"
.LC170:
	.string	"no cipher match"
.LC171:
	.string	"no client cert method"
.LC172:
	.string	"no compression specified"
.LC173:
	.string	"no cookie callback set"
	.align 8
.LC174:
	.string	"Peer haven't sent GOST certificate, required for selected ciphersuite"
.LC175:
	.string	"no method specified"
.LC176:
	.string	"no pem extensions"
.LC177:
	.string	"no private key assigned"
.LC178:
	.string	"no protocols available"
.LC179:
	.string	"no renegotiation"
.LC180:
	.string	"no required digest"
.LC181:
	.string	"no shared cipher"
.LC182:
	.string	"no shared groups"
	.align 8
.LC183:
	.string	"no shared signature algorithms"
.LC184:
	.string	"no srtp profiles"
.LC185:
	.string	"no stream"
.LC186:
	.string	"no suitable digest algorithm"
.LC187:
	.string	"no suitable groups"
.LC188:
	.string	"no suitable key share"
.LC189:
	.string	"no suitable record layer"
	.align 8
.LC190:
	.string	"no suitable signature algorithm"
.LC191:
	.string	"no valid scts"
.LC192:
	.string	"no verify cookie callback"
.LC193:
	.string	"null ssl ctx"
.LC194:
	.string	"null ssl method passed"
.LC195:
	.string	"ocsp callback failure"
	.align 8
.LC196:
	.string	"old session cipher not returned"
	.align 8
.LC197:
	.string	"old session compression algorithm not returned"
.LC198:
	.string	"overflow error"
.LC199:
	.string	"packet length too long"
.LC200:
	.string	"parse tlsext"
.LC201:
	.string	"path too long"
	.align 8
.LC202:
	.string	"peer did not return a certificate"
.LC203:
	.string	"pem name bad prefix"
.LC204:
	.string	"pem name too short"
.LC205:
	.string	"pipeline failure"
.LC206:
	.string	"poll request not supported"
	.align 8
.LC207:
	.string	"post handshake auth encoding err"
.LC208:
	.string	"private key mismatch"
.LC209:
	.string	"protocol is shutdown"
.LC210:
	.string	"psk identity not found"
.LC211:
	.string	"psk no client cb"
.LC212:
	.string	"psk no server cb"
.LC213:
	.string	"quic handshake layer error"
.LC214:
	.string	"quic network error"
.LC215:
	.string	"quic protocol error"
.LC216:
	.string	"read bio not set"
.LC217:
	.string	"read timeout expired"
.LC218:
	.string	"records not released"
.LC219:
	.string	"record layer failure"
.LC220:
	.string	"record length mismatch"
.LC221:
	.string	"record too small"
.LC222:
	.string	"remote peer address not set"
.LC223:
	.string	"renegotiate ext too long"
.LC224:
	.string	"renegotiation encoding err"
.LC225:
	.string	"renegotiation mismatch"
.LC226:
	.string	"request pending"
.LC227:
	.string	"request sent"
.LC228:
	.string	"required cipher missing"
	.align 8
.LC229:
	.string	"required compression algorithm missing"
	.align 8
.LC230:
	.string	"scsv received when renegotiating"
.LC231:
	.string	"sct verification failed"
.LC232:
	.string	"sequence ctr wrapped"
.LC233:
	.string	"serverhello tlsext"
	.align 8
.LC234:
	.string	"session id context uninitialized"
.LC235:
	.string	"shutdown while in init"
.LC236:
	.string	"signature algorithms error"
	.align 8
.LC237:
	.string	"signature for non signing certificate"
.LC238:
	.string	"error with the srp params"
	.align 8
.LC239:
	.string	"srtp could not allocate profiles"
	.align 8
.LC240:
	.string	"srtp protection profile list too long"
	.align 8
.LC241:
	.string	"srtp unknown protection profile"
	.align 8
.LC242:
	.string	"ssl3 ext invalid max fragment length"
.LC243:
	.string	"ssl3 ext invalid servername"
	.align 8
.LC244:
	.string	"ssl3 ext invalid servername type"
.LC245:
	.string	"ssl3 session id too long"
.LC246:
	.string	"ssl/tls alert bad certificate"
.LC247:
	.string	"ssl/tls alert bad record mac"
	.align 8
.LC248:
	.string	"ssl/tls alert certificate expired"
	.align 8
.LC249:
	.string	"ssl/tls alert certificate revoked"
	.align 8
.LC250:
	.string	"ssl/tls alert certificate unknown"
	.align 8
.LC251:
	.string	"ssl/tls alert decompression failure"
	.align 8
.LC252:
	.string	"ssl/tls alert handshake failure"
	.align 8
.LC253:
	.string	"ssl/tls alert illegal parameter"
.LC254:
	.string	"ssl/tls alert no certificate"
	.align 8
.LC255:
	.string	"ssl/tls alert unexpected message"
	.align 8
.LC256:
	.string	"ssl/tls alert unsupported certificate"
.LC257:
	.string	"ssl command section empty"
.LC258:
	.string	"ssl command section not found"
	.align 8
.LC259:
	.string	"ssl ctx has no default ssl version"
.LC260:
	.string	"ssl handshake failure"
.LC261:
	.string	"ssl library has no ciphers"
.LC262:
	.string	"ssl negative length"
.LC263:
	.string	"ssl section empty"
.LC264:
	.string	"ssl section not found"
	.align 8
.LC265:
	.string	"ssl session id callback failed"
.LC266:
	.string	"ssl session id conflict"
	.align 8
.LC267:
	.string	"ssl session id context too long"
.LC268:
	.string	"ssl session id has bad length"
.LC269:
	.string	"ssl session id too long"
.LC270:
	.string	"ssl session version mismatch"
.LC271:
	.string	"still in init"
.LC272:
	.string	"stream count limited"
.LC273:
	.string	"stream finished"
.LC274:
	.string	"stream recv only"
.LC275:
	.string	"stream reset"
.LC276:
	.string	"stream send only"
	.align 8
.LC277:
	.string	"tlsv13 alert certificate required"
	.align 8
.LC278:
	.string	"tlsv13 alert missing extension"
.LC279:
	.string	"tlsv1 alert access denied"
.LC280:
	.string	"tlsv1 alert decode error"
.LC281:
	.string	"tlsv1 alert decryption failed"
.LC282:
	.string	"tlsv1 alert decrypt error"
	.align 8
.LC283:
	.string	"tlsv1 alert export restriction"
	.align 8
.LC284:
	.string	"tlsv1 alert inappropriate fallback"
	.align 8
.LC285:
	.string	"tlsv1 alert insufficient security"
.LC286:
	.string	"tlsv1 alert internal error"
	.align 8
.LC287:
	.string	"tlsv1 alert no application protocol"
.LC288:
	.string	"tlsv1 alert no renegotiation"
.LC289:
	.string	"tlsv1 alert protocol version"
.LC290:
	.string	"tlsv1 alert record overflow"
.LC291:
	.string	"tlsv1 alert unknown ca"
	.align 8
.LC292:
	.string	"tlsv1 alert unknown psk identity"
.LC293:
	.string	"tlsv1 alert user cancelled"
	.align 8
.LC294:
	.string	"tlsv1 bad certificate hash value"
	.align 8
.LC295:
	.string	"tlsv1 bad certificate status response"
	.align 8
.LC296:
	.string	"tlsv1 certificate unobtainable"
.LC297:
	.string	"tlsv1 unrecognized name"
.LC298:
	.string	"tlsv1 unsupported extension"
.LC299:
	.string	"tls illegal exporter label"
	.align 8
.LC300:
	.string	"tls invalid ecpointformat list"
.LC301:
	.string	"too many key updates"
.LC302:
	.string	"too many warn alerts"
.LC303:
	.string	"too much early data"
	.align 8
.LC304:
	.string	"unable to find ecdh parameters"
	.align 8
.LC305:
	.string	"unable to find public key parameters"
	.align 8
.LC306:
	.string	"unable to load ssl3 md5 routines"
	.align 8
.LC307:
	.string	"unable to load ssl3 sha1 routines"
.LC308:
	.string	"unexpected ccs message"
.LC309:
	.string	"unexpected end of early data"
.LC310:
	.string	"unexpected eof while reading"
.LC311:
	.string	"unexpected message"
.LC312:
	.string	"unexpected record"
.LC313:
	.string	"uninitialized"
.LC314:
	.string	"unknown alert type"
.LC315:
	.string	"unknown certificate type"
.LC316:
	.string	"unknown cipher returned"
.LC317:
	.string	"unknown cipher type"
.LC318:
	.string	"unknown cmd name"
.LC319:
	.string	"unknown command"
.LC320:
	.string	"unknown digest"
.LC321:
	.string	"unknown key exchange type"
.LC322:
	.string	"unknown mandatory parameter"
.LC323:
	.string	"unknown pkey type"
.LC324:
	.string	"unknown protocol"
.LC325:
	.string	"unknown ssl version"
.LC326:
	.string	"unknown state"
	.align 8
.LC327:
	.string	"unsafe legacy renegotiation disabled"
.LC328:
	.string	"unsolicited extension"
	.align 8
.LC329:
	.string	"unsupported compression algorithm"
.LC330:
	.string	"unsupported config value"
	.align 8
.LC331:
	.string	"unsupported config value class"
.LC332:
	.string	"unsupported config value op"
.LC333:
	.string	"unsupported elliptic curve"
.LC334:
	.string	"unsupported protocol"
.LC335:
	.string	"unsupported ssl version"
.LC336:
	.string	"unsupported status type"
.LC337:
	.string	"unsupported write flag"
.LC338:
	.string	"use srtp not negotiated"
.LC339:
	.string	"version too high"
.LC340:
	.string	"version too low"
.LC341:
	.string	"wrong certificate type"
.LC342:
	.string	"wrong cipher returned"
.LC343:
	.string	"wrong curve"
.LC344:
	.string	"wrong rpk type"
.LC345:
	.string	"wrong signature length"
.LC346:
	.string	"wrong signature size"
.LC347:
	.string	"wrong signature type"
.LC348:
	.string	"wrong ssl version"
.LC349:
	.string	"wrong version number"
.LC350:
	.string	"x509 lib"
	.align 8
.LC351:
	.string	"x509 verification setup problems"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	SSL_str_reasons, @object
	.size	SSL_str_reasons, 5648
SSL_str_reasons:
	.quad	167772451
	.quad	.LC0
	.quad	167772260
	.quad	.LC1
	.quad	167772432
	.quad	.LC2
	.quad	167772318
	.quad	.LC3
	.quad	167772508
	.quad	.LC4
	.quad	167772263
	.quad	.LC5
	.quad	167772346
	.quad	.LC6
	.quad	167772486
	.quad	.LC7
	.quad	167772550
	.quad	.LC8
	.quad	167772266
	.quad	.LC9
	.quad	167772267
	.quad	.LC10
	.quad	167772262
	.quad	.LC11
	.quad	167772271
	.quad	.LC12
	.quad	167772393
	.quad	.LC13
	.quad	167772464
	.quad	.LC14
	.quad	167772466
	.quad	.LC15
	.quad	167772270
	.quad	.LC16
	.quad	167772492
	.quad	.LC17
	.quad	167772396
	.quad	.LC18
	.quad	167772265
	.quad	.LC19
	.quad	167772423
	.quad	.LC20
	.quad	167772268
	.quad	.LC21
	.quad	167772282
	.quad	.LC22
	.quad	167772452
	.quad	.LC23
	.quad	167772431
	.quad	.LC24
	.quad	167772400
	.quad	.LC25
	.quad	167772275
	.quad	.LC26
	.quad	167772276
	.quad	.LC27
	.quad	167772379
	.quad	.LC28
	.quad	167772274
	.quad	.LC29
	.quad	167772603
	.quad	.LC30
	.quad	167772279
	.quad	.LC31
	.quad	167772283
	.quad	.LC32
	.quad	167772507
	.quad	.LC33
	.quad	167772531
	.quad	.LC34
	.quad	167772512
	.quad	.LC35
	.quad	167772513
	.quad	.LC36
	.quad	167772284
	.quad	.LC37
	.quad	167772544
	.quad	.LC38
	.quad	167772287
	.quad	.LC39
	.quad	167772413
	.quad	.LC40
	.quad	167772288
	.quad	.LC41
	.quad	167772289
	.quad	.LC42
	.quad	167772290
	.quad	.LC43
	.quad	167772394
	.quad	.LC44
	.quad	167772269
	.quad	.LC45
	.quad	167772459
	.quad	.LC46
	.quad	167772291
	.quad	.LC47
	.quad	167772557
	.quad	.LC48
	.quad	167772558
	.quad	.LC49
	.quad	167772293
	.quad	.LC50
	.quad	167772294
	.quad	.LC51
	.quad	167772537
	.quad	.LC52
	.quad	167772295
	.quad	.LC53
	.quad	167772378
	.quad	.LC54
	.quad	167772297
	.quad	.LC55
	.quad	167772386
	.quad	.LC56
	.quad	167772300
	.quad	.LC57
	.quad	167772503
	.quad	.LC58
	.quad	167772301
	.quad	.LC59
	.quad	167772467
	.quad	.LC60
	.quad	167772302
	.quad	.LC61
	.quad	167772304
	.quad	.LC62
	.quad	167772516
	.quad	.LC63
	.quad	167772327
	.quad	.LC64
	.quad	167772560
	.quad	.LC65
	.quad	167772468
	.quad	.LC66
	.quad	167772456
	.quad	.LC67
	.quad	167772366
	.quad	.LC68
	.quad	167772332
	.quad	.LC69
	.quad	167772333
	.quad	.LC70
	.quad	167772335
	.quad	.LC71
	.quad	167772340
	.quad	.LC72
	.quad	167772344
	.quad	.LC73
	.quad	167772349
	.quad	.LC74
	.quad	167772352
	.quad	.LC75
	.quad	167772360
	.quad	.LC76
	.quad	167772361
	.quad	.LC77
	.quad	167772362
	.quad	.LC78
	.quad	167772363
	.quad	.LC79
	.quad	167772305
	.quad	.LC80
	.quad	167772306
	.quad	.LC81
	.quad	167772307
	.quad	.LC82
	.quad	167772441
	.quad	.LC83
	.quad	167772554
	.quad	.LC84
	.quad	167772308
	.quad	.LC85
	.quad	167772309
	.quad	.LC86
	.quad	167772494
	.quad	.LC87
	.quad	167772469
	.quad	.LC88
	.quad	167772478
	.quad	.LC89
	.quad	167772534
	.quad	.LC90
	.quad	167772559
	.quad	.LC91
	.quad	167772509
	.quad	.LC92
	.quad	167772514
	.quad	.LC93
	.quad	167772310
	.quad	.LC94
	.quad	167772311
	.quad	.LC95
	.quad	167772364
	.quad	.LC96
	.quad	167772354
	.quad	.LC97
	.quad	167772312
	.quad	.LC98
	.quad	167772439
	.quad	.LC99
	.quad	167772313
	.quad	.LC100
	.quad	167772323
	.quad	.LC101
	.quad	167772476
	.quad	.LC102
	.quad	167772565
	.quad	.LC103
	.quad	167772577
	.quad	.LC104
	.quad	167772573
	.quad	.LC105
	.quad	167772561
	.quad	.LC106
	.quad	167772314
	.quad	.LC107
	.quad	167772315
	.quad	.LC108
	.quad	167772316
	.quad	.LC109
	.quad	167772322
	.quad	.LC110
	.quad	167772540
	.quad	.LC111
	.quad	167772533
	.quad	.LC112
	.quad	167772500
	.quad	.LC113
	.quad	167772382
	.quad	.LC114
	.quad	167772391
	.quad	.LC115
	.quad	167772264
	.quad	.LC116
	.quad	167772401
	.quad	.LC117
	.quad	167772365
	.quad	.LC118
	.quad	167772420
	.quad	.LC119
	.quad	167772398
	.quad	.LC120
	.quad	167772440
	.quad	.LC121
	.quad	167772501
	.quad	.LC122
	.quad	167772443
	.quad	.LC123
	.quad	167772273
	.quad	.LC124
	.quad	167772442
	.quad	.LC125
	.quad	167772372
	.quad	.LC126
	.quad	167772280
	.quad	.LC127
	.quad	167772334
	.quad	.LC128
	.quad	167772545
	.quad	.LC129
	.quad	167772510
	.quad	.LC130
	.quad	167772477
	.quad	.LC131
	.quad	167772562
	.quad	.LC132
	.quad	167772548
	.quad	.LC133
	.quad	167773159
	.quad	.LC134
	.quad	167772517
	.quad	.LC135
	.quad	167772488
	.quad	.LC136
	.quad	167772485
	.quad	.LC137
	.quad	167772493
	.quad	.LC138
	.quad	167772319
	.quad	.LC139
	.quad	167772564
	.quad	.LC140
	.quad	167772320
	.quad	.LC141
	.quad	167772434
	.quad	.LC142
	.quad	167772321
	.quad	.LC143
	.quad	167772555
	.quad	.LC144
	.quad	167772325
	.quad	.LC145
	.quad	167772541
	.quad	.LC146
	.quad	167772416
	.quad	.LC147
	.quad	167772450
	.quad	.LC148
	.quad	167772470
	.quad	.LC149
	.quad	167772328
	.quad	.LC150
	.quad	167772329
	.quad	.LC151
	.quad	167772330
	.quad	.LC152
	.quad	167772272
	.quad	.LC153
	.quad	167772381
	.quad	.LC154
	.quad	167772518
	.quad	.LC155
	.quad	167772369
	.quad	.LC156
	.quad	167772331
	.quad	.LC157
	.quad	167772471
	.quad	.LC158
	.quad	167772453
	.quad	.LC159
	.quad	167772342
	.quad	.LC160
	.quad	167772449
	.quad	.LC161
	.quad	167772444
	.quad	.LC162
	.quad	167772395
	.quad	.LC163
	.quad	167772336
	.quad	.LC164
	.quad	167772337
	.quad	.LC165
	.quad	167772339
	.quad	.LC166
	.quad	167772374
	.quad	.LC167
	.quad	167772341
	.quad	.LC168
	.quad	167772343
	.quad	.LC169
	.quad	167772345
	.quad	.LC170
	.quad	167772491
	.quad	.LC171
	.quad	167772347
	.quad	.LC172
	.quad	167772447
	.quad	.LC173
	.quad	167772490
	.quad	.LC174
	.quad	167772348
	.quad	.LC175
	.quad	167772549
	.quad	.LC176
	.quad	167772350
	.quad	.LC177
	.quad	167772351
	.quad	.LC178
	.quad	167772499
	.quad	.LC179
	.quad	167772484
	.quad	.LC180
	.quad	167772353
	.quad	.LC181
	.quad	167772570
	.quad	.LC182
	.quad	167772536
	.quad	.LC183
	.quad	167772519
	.quad	.LC184
	.quad	167772515
	.quad	.LC185
	.quad	167772457
	.quad	.LC186
	.quad	167772455
	.quad	.LC187
	.quad	167772261
	.quad	.LC188
	.quad	167772482
	.quad	.LC189
	.quad	167772278
	.quad	.LC190
	.quad	167772376
	.quad	.LC191
	.quad	167772563
	.quad	.LC192
	.quad	167772355
	.quad	.LC193
	.quad	167772356
	.quad	.LC194
	.quad	167772465
	.quad	.LC195
	.quad	167772357
	.quad	.LC196
	.quad	167772504
	.quad	.LC197
	.quad	167772397
	.quad	.LC198
	.quad	167772358
	.quad	.LC199
	.quad	167772387
	.quad	.LC200
	.quad	167772430
	.quad	.LC201
	.quad	167772359
	.quad	.LC202
	.quad	167772551
	.quad	.LC203
	.quad	167772552
	.quad	.LC204
	.quad	167772566
	.quad	.LC205
	.quad	167772578
	.quad	.LC206
	.quad	167772438
	.quad	.LC207
	.quad	167772448
	.quad	.LC208
	.quad	167772367
	.quad	.LC209
	.quad	167772383
	.quad	.LC210
	.quad	167772384
	.quad	.LC211
	.quad	167772385
	.quad	.LC212
	.quad	167772553
	.quad	.LC213
	.quad	167772547
	.quad	.LC214
	.quad	167772542
	.quad	.LC215
	.quad	167772371
	.quad	.LC216
	.quad	167772472
	.quad	.LC217
	.quad	167772481
	.quad	.LC218
	.quad	167772473
	.quad	.LC219
	.quad	167772373
	.quad	.LC220
	.quad	167772458
	.quad	.LC221
	.quad	167772506
	.quad	.LC222
	.quad	167772495
	.quad	.LC223
	.quad	167772496
	.quad	.LC224
	.quad	167772497
	.quad	.LC225
	.quad	167772445
	.quad	.LC226
	.quad	167772446
	.quad	.LC227
	.quad	167772375
	.quad	.LC228
	.quad	167772502
	.quad	.LC229
	.quad	167772505
	.quad	.LC230
	.quad	167772368
	.quad	.LC231
	.quad	167772487
	.quad	.LC232
	.quad	167772435
	.quad	.LC233
	.quad	167772437
	.quad	.LC234
	.quad	167772567
	.quad	.LC235
	.quad	167772520
	.quad	.LC236
	.quad	167772380
	.quad	.LC237
	.quad	167772521
	.quad	.LC238
	.quad	167772522
	.quad	.LC239
	.quad	167772523
	.quad	.LC240
	.quad	167772524
	.quad	.LC241
	.quad	167772392
	.quad	.LC242
	.quad	167772479
	.quad	.LC243
	.quad	167772480
	.quad	.LC244
	.quad	167772460
	.quad	.LC245
	.quad	167773202
	.quad	.LC246
	.quad	167773180
	.quad	.LC247
	.quad	167773205
	.quad	.LC248
	.quad	167773204
	.quad	.LC249
	.quad	167773206
	.quad	.LC250
	.quad	167773190
	.quad	.LC251
	.quad	167773200
	.quad	.LC252
	.quad	167773207
	.quad	.LC253
	.quad	167773201
	.quad	.LC254
	.quad	167773170
	.quad	.LC255
	.quad	167773203
	.quad	.LC256
	.quad	167772277
	.quad	.LC257
	.quad	167772285
	.quad	.LC258
	.quad	167772388
	.quad	.LC259
	.quad	167772389
	.quad	.LC260
	.quad	167772390
	.quad	.LC261
	.quad	167772532
	.quad	.LC262
	.quad	167772286
	.quad	.LC263
	.quad	167772296
	.quad	.LC264
	.quad	167772461
	.quad	.LC265
	.quad	167772462
	.quad	.LC266
	.quad	167772433
	.quad	.LC267
	.quad	167772463
	.quad	.LC268
	.quad	167772568
	.quad	.LC269
	.quad	167772370
	.quad	.LC270
	.quad	167772281
	.quad	.LC271
	.quad	167772571
	.quad	.LC272
	.quad	167772525
	.quad	.LC273
	.quad	167772526
	.quad	.LC274
	.quad	167772535
	.quad	.LC275
	.quad	167772539
	.quad	.LC276
	.quad	167773276
	.quad	.LC277
	.quad	167773269
	.quad	.LC278
	.quad	167773209
	.quad	.LC279
	.quad	167773210
	.quad	.LC280
	.quad	167773181
	.quad	.LC281
	.quad	167773211
	.quad	.LC282
	.quad	167773220
	.quad	.LC283
	.quad	167773246
	.quad	.LC284
	.quad	167773231
	.quad	.LC285
	.quad	167773240
	.quad	.LC286
	.quad	167773280
	.quad	.LC287
	.quad	167773260
	.quad	.LC288
	.quad	167773230
	.quad	.LC289
	.quad	167773182
	.quad	.LC290
	.quad	167773208
	.quad	.LC291
	.quad	167773275
	.quad	.LC292
	.quad	167773250
	.quad	.LC293
	.quad	167773274
	.quad	.LC294
	.quad	167773273
	.quad	.LC295
	.quad	167773271
	.quad	.LC296
	.quad	167773272
	.quad	.LC297
	.quad	167773270
	.quad	.LC298
	.quad	167772527
	.quad	.LC299
	.quad	167772317
	.quad	.LC300
	.quad	167772292
	.quad	.LC301
	.quad	167772569
	.quad	.LC302
	.quad	167772324
	.quad	.LC303
	.quad	167772474
	.quad	.LC304
	.quad	167772399
	.quad	.LC305
	.quad	167772402
	.quad	.LC306
	.quad	167772403
	.quad	.LC307
	.quad	167772422
	.quad	.LC308
	.quad	167772338
	.quad	.LC309
	.quad	167772454
	.quad	.LC310
	.quad	167772404
	.quad	.LC311
	.quad	167772405
	.quad	.LC312
	.quad	167772436
	.quad	.LC313
	.quad	167772406
	.quad	.LC314
	.quad	167772407
	.quad	.LC315
	.quad	167772408
	.quad	.LC316
	.quad	167772409
	.quad	.LC317
	.quad	167772546
	.quad	.LC318
	.quad	167772299
	.quad	.LC319
	.quad	167772528
	.quad	.LC320
	.quad	167772410
	.quad	.LC321
	.quad	167772483
	.quad	.LC322
	.quad	167772411
	.quad	.LC323
	.quad	167772412
	.quad	.LC324
	.quad	167772414
	.quad	.LC325
	.quad	167772415
	.quad	.LC326
	.quad	167772498
	.quad	.LC327
	.quad	167772377
	.quad	.LC328
	.quad	167772417
	.quad	.LC329
	.quad	167772574
	.quad	.LC330
	.quad	167772575
	.quad	.LC331
	.quad	167772576
	.quad	.LC332
	.quad	167772475
	.quad	.LC333
	.quad	167772418
	.quad	.LC334
	.quad	167772419
	.quad	.LC335
	.quad	167772489
	.quad	.LC336
	.quad	167772572
	.quad	.LC337
	.quad	167772529
	.quad	.LC338
	.quad	167772326
	.quad	.LC339
	.quad	167772556
	.quad	.LC340
	.quad	167772543
	.quad	.LC341
	.quad	167772421
	.quad	.LC342
	.quad	167772538
	.quad	.LC343
	.quad	167772511
	.quad	.LC344
	.quad	167772424
	.quad	.LC345
	.quad	167772425
	.quad	.LC346
	.quad	167772530
	.quad	.LC347
	.quad	167772426
	.quad	.LC348
	.quad	167772427
	.quad	.LC349
	.quad	167772428
	.quad	.LC350
	.quad	167772429
	.quad	.LC351
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_SSL_strings
	.type	ossl_err_load_SSL_strings, @function
ossl_err_load_SSL_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$167772451, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L2
	leaq	SSL_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L2:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_SSL_strings, .-ossl_err_load_SSL_strings
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
