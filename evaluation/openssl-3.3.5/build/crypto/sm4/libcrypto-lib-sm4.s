	.file	"sm4.c"
	.text
	.section	.rodata
	.align 32
	.type	SM4_S, @object
	.size	SM4_S, 256
SM4_S:
	.base64	"1pDp/szhPbcWthTCKPssBStnmnYqvgTDqkQTJkmGBpmcQlD0ke+YejNUC0Ptz6xi5LMcqckI6JWA35T6dY8/pkcHp/zzcxe6g1k8GeaFT6hoa4GycWTai/jrD0twVp01HiQOXmNY0aIlInw7ASF4h9QARlef0ydSTDYC56DEyJ7qv4rSQMc4taP38s75YRWh4K5dpJs0GlWtkzIw9Yyx4x324i6CZspgwCkjqw1TTm/V2zdF3v2OLwP/anJtbFtRjRuvkrvdvH8R2VxBHxBa2ArBMYilzXu9LXTQErjltLCJaZdKDJZ3fmW58QnFbsaEGPB97DrcTSB57l8+18s5"
	.ascii	"H"
	.align 32
	.type	SM4_SBOX_T0, @object
	.size	SM4_SBOX_T0, 1024
SM4_SBOX_T0:
	.long	-1898620069
	.long	-795721150
	.long	1307223975
	.long	117308411
	.long	-53529805
	.long	1709344647
	.long	-918686476
	.long	1807081182
	.long	1310087256
	.long	1857346266
	.long	1142181968
	.long	-893318389
	.long	-2010603360
	.long	402190319
	.long	-1674792784
	.long	285545492
	.long	-2027180884
	.long	-77161059
	.long	-224892310
	.long	-1367877159
	.long	-2111133528
	.long	1186790138
	.long	335810576
	.long	-809496817
	.long	44608170
	.long	1413812497
	.long	1595100236
	.long	-1104766824
	.long	1833444645
	.long	-1635509734
	.long	503715864
	.long	-40147354
	.long	-325160334
	.long	1245907209
	.long	273760577
	.long	620221395
	.long	-711768506
	.long	1408024511
	.long	-124099998
	.long	-1837372951
	.long	-13382452
	.long	72700241
	.long	655043628
	.long	1329728781
	.long	1508816823
	.long	-204718273
	.long	481211058
	.long	-362575479
	.long	1961333651
	.long	2142359246
	.long	1813803120
	.long	229353126
	.long	-305518809
	.long	671621152
	.long	1223402403
	.long	-1047046570
	.long	-2138963454
	.long	-1545830529
	.long	-996781486
	.long	318368747
	.long	-1586178603
	.long	-1282589122
	.long	-1019216644
	.long	1050974874
	.long	1531321629
	.long	453450780
	.long	1000709790
	.long	218100723
	.long	1072746447
	.long	-1082995251
	.long	1259822172
	.long	1387850474
	.long	-1887367666
	.long	1029203301
	.long	-868421392
	.long	2098816100
	.long	2128976795
	.long	-1853417962
	.long	1934507325
	.long	145400482
	.long	-932601439
	.long	-949310035
	.long	-2055010810
	.long	2058406602
	.long	-1250900539
	.long	-194670191
	.long	-1294374037
	.long	-1484181970
	.long	419161059
	.long	1206431663
	.long	856636476
	.long	1732914477
	.long	-1334722111
	.long	240605529
	.long	-375425418
	.long	-516565804
	.long	1713272952
	.long	-1272672112
	.long	906901560
	.long	643791225
	.long	-278753907
	.long	945381729
	.long	-1781381305
	.long	715164298
	.long	-1322937196
	.long	-1440577400
	.long	-1937903119
	.long	-683938580
	.long	83952644
	.long	-1524530044
	.long	-1736842783
	.long	-1685774818
	.long	-2066263213
	.long	0
	.long	1581717785
	.long	190209373
	.long	-476217730
	.long	-1613738161
	.long	-1155031908
	.long	441665865
	.long	2085433649
	.long	-298395432
	.long	167905288
	.long	2078580639
	.long	547521154
	.long	-725150957
	.long	-389340381
	.long	-425952646
	.long	1122610091
	.long	1136525054
	.long	-1568134614
	.long	-1697559733
	.long	1078001921
	.long	-607903969
	.long	-667361056
	.long	1639438038
	.long	799116942
	.long	737468383
	.long	988924875
	.long	-154322117
	.long	502982631
	.long	-446659195
	.long	1091916884
	.long	631473798
	.long	1625523075
	.long	380418746
	.long	693925237
	.long	883331730
	.long	-140939666
	.long	-466300720
	.long	1914333288
	.long	22304085
	.long	430945974
	.long	-544125362
	.long	-97335096
	.long	-265240384
	.long	569825239
	.long	-1131531726
	.long	1974716102
	.long	1876987791
	.long	1763538036
	.long	787864539
	.long	1793166219
	.long	-1775322952
	.long	-1971320310
	.long	-26764903
	.long	-490132693
	.long	-530480767
	.long	-1060961533
	.long	-1926650716
	.long	-1356624756
	.long	128560814
	.long	957166644
	.long	525487437
	.long	1984903481
	.long	-747717187
	.long	-2116659369
	.long	-1210552465
	.long	-348660516
	.long	1363416341
	.long	-1495434373
	.long	167704567
	.long	-1232324038
	.long	-1825588036
	.long	251857932
	.long	66912255
	.long	-1033131607
	.long	-1166816823
	.long	-647187019
	.long	-596790863
	.long	928673133
	.long	357582149
	.long	-1181796810
	.long	1998285932
	.long	330153662
	.long	-628078006
	.long	1471803118
	.long	-1445038217
	.long	1287582450
	.long	-2088829443
	.long	1427194948
	.long	-1109760153
	.long	744321393
	.long	1161823493
	.long	1663007868
	.long	1343242304
	.long	844851561
	.long	-1193581725
	.long	571090984
	.long	-977139961
	.long	-181287740
	.long	-1467342302
	.long	833066646
	.long	-103925961
	.long	-1753551379
	.long	1237317366
	.long	-1725057868
	.long	-1535782447
	.long	-1865202877
	.long	1511147592
	.long	1488642786
	.long	1910937495
	.long	1689703122
	.long	1890763458
	.long	-1383389658
	.long	-848779867
	.long	-879403426
	.long	1649092905
	.long	1007431728
	.long	-829138342
	.long	-1418273315
	.long	-2038433287
	.long	-245066347
	.long	1572595430
	.long	905103303
	.long	755573796
	.long	-775547113
	.long	-697321031
	.long	-557507813
	.long	-1803152878
	.long	2014863456
	.long	821281731
	.long	-1988299275
	.long	1559212979
	.long	-767891224
	.long	-1394642061
	.long	2035037493
	.long	-1608482688
	.long	-1653021211
	.long	1458420667
	.long	593395069
	.long	-968951560
	.long	-1949016225
	.long	-406311121
	.long	-583408412
	.long	1749623073
	.data
	.align 32
	.type	SM4_SBOX_T1, @object
	.size	SM4_SBOX_T1, 1024
SM4_SBOX_T1:
	.long	1536087387
	.long	1120965186
	.long	-1488065881
	.long	-83427845
	.long	872206131
	.long	-2023366009
	.long	-188137996
	.long	-563366434
	.long	1481512536
	.long	-630278950
	.long	1346638928
	.long	197837067
	.long	-1601689440
	.long	-283641617
	.long	-1331942224
	.long	336659732
	.long	-1400427604
	.long	-1644468579
	.long	1794283626
	.long	-642877479
	.long	-1467864408
	.long	-96027398
	.long	269747216
	.long	265273359
	.long	-1442666326
	.long	290735377
	.long	1281299276
	.long	-1732368744
	.long	627918885
	.long	446596122
	.long	404620824
	.long	1727896422
	.long	1928109682
	.long	155861769
	.long	1091588417
	.long	-752551981
	.long	1188401990
	.long	-1085018945
	.long	1660459618
	.long	-376275991
	.long	-855690292
	.long	1359238481
	.long	740756268
	.long	223298061
	.long	-1218842953
	.long	1072942143
	.long	-1306743118
	.long	-1981127799
	.long	-1821055085
	.long	-830492210
	.long	1886133360
	.long	-1509053530
	.long	669895207
	.long	539494432
	.long	-1555502173
	.long	1455527766
	.long	41976322
	.long	2141445247
	.long	1388615250
	.long	-351077909
	.long	-710839083
	.long	1051954494
	.long	-54312964
	.long	-1707170662
	.long	492520989
	.long	471533340
	.long	-1640258146
	.long	-217251853
	.long	-817893169
	.long	-843091251
	.long	1548425052
	.long	-363677462
	.long	244285710
	.long	1698519141
	.long	-255050512
	.long	1685920100
	.long	-1686182501
	.long	378636054
	.long	1030966845
	.long	-1576490334
	.long	-1580701279
	.long	-1379439955
	.long	109413126
	.long	-897929014
	.long	-977964859
	.long	-1846254191
	.long	1806883179
	.long	782731566
	.long	-484901917
	.long	-1354241873
	.long	1009979196
	.long	761743917
	.long	-1045401151
	.long	1494112089
	.long	1995022198
	.long	-723438124
	.long	2019958392
	.long	-1867242352
	.long	943066680
	.long	2032557945
	.long	-1913691507
	.long	1631082849
	.long	1201001031
	.long	-1976917878
	.long	-1800329836
	.long	-2002115960
	.long	-242450959
	.long	-321438740
	.long	67436804
	.long	-2069552764
	.long	-510101023
	.long	513508638
	.long	1401214803
	.long	0
	.long	425608985
	.long	1561024093
	.long	2128846206
	.long	1335873615
	.long	-1665456228
	.long	1226462025
	.long	830229809
	.long	-655477032
	.long	134873608
	.long	-1619270497
	.long	-2111790462
	.long	332711699
	.long	602458915
	.long	2061933690
	.long	-1421678165
	.long	-29114882
	.long	715294762
	.long	1268437323
	.long	20988161
	.long	534496287
	.long	-522700576
	.long	-698239018
	.long	-1909481074
	.long	-550767393
	.long	-885329461
	.long	1006030139
	.long	-417465625
	.long	-2048565115
	.long	1413551444
	.long	-2044353658
	.long	-2090802301
	.long	-1172919110
	.long	1965644917
	.long	-1842043246
	.long	1861720430
	.long	-790350640
	.long	1752308328
	.long	1426150485
	.long	-1239830602
	.long	1323274574
	.long	-923127096
	.long	-1058000704
	.long	-685639977
	.long	851217970
	.long	-965364794
	.long	-1888493425
	.long	1953045876
	.long	-617679397
	.long	-1955929717
	.long	-1198117192
	.long	176848906
	.long	-1711380583
	.long	736282923
	.long	-2116001407
	.long	62964483
	.long	-1534252636
	.long	-1934679156
	.long	-1375229522
	.long	876154164
	.long	1293898317
	.long	964054841
	.long	-1110217027
	.long	1468126807
	.long	1874319471
	.long	-588564516
	.long	357647381
	.long	2074533243
	.long	-150339849
	.long	985041978
	.long	-1131204676
	.long	202310412
	.long	-16515841
	.long	-1446876247
	.long	-910527543
	.long	-1244042059
	.long	-1310954063
	.long	1832344173
	.long	1159024709
	.long	918130486
	.long	1819745132
	.long	-1106006594
	.long	1255837770
	.long	-296240658
	.long	2007621239
	.long	-229851406
	.long	-41713923
	.long	1146425668
	.long	1740495463
	.long	1898732913
	.long	88424453
	.long	2086870908
	.long	1078988864
	.long	1764907881
	.long	1673059171
	.long	673319464
	.long	130400775
	.long	-990563900
	.long	581470754
	.long	-1775130730
	.long	939118135
	.long	-308839699
	.long	-162938890
	.long	-1265029708
	.long	-777751087
	.long	1133564739
	.long	1213862472
	.long	-497501470
	.long	-1754143081
	.long	-765151534
	.long	-1032801598
	.long	648907558
	.long	-1513264987
	.long	1590400350
	.long	694307625
	.long	809241648
	.long	1523487834
	.long	-575965475
	.long	-108625927
	.long	-1779342187
	.long	-430064666
	.long	-952765753
	.long	606931236
	.long	399623703
	.long	-1177129031
	.long	467584283
	.long	311723538
	.long	1618483296
	.long	-1020202045
	.long	-175538955
	.long	-1285754957
	.long	-388875544
	.long	1940709235
	.long	897141813
	.long	-2136989568
	.long	-442664731
	.long	-1151930949
	.long	2099469949
	.long	-121225480
	.long	1602999391
	.long	803719215
	.long	-455263772
	.long	560482593
	.align 32
	.type	SM4_SBOX_T2, @object
	.size	SM4_SBOX_T2, 1024
SM4_SBOX_T2:
	.long	1532726997
	.long	1111675026
	.long	-1482207766
	.long	-67434755
	.long	859045071
	.long	-2021169694
	.long	-185284291
	.long	-555848779
	.long	1482182166
	.long	-623219020
	.long	1347437588
	.long	185322177
	.long	-1600092120
	.long	-269543432
	.long	-1330602964
	.long	336859397
	.long	-1397979349
	.long	-1650590874
	.long	1785393816
	.long	-640045449
	.long	-1465351638
	.long	-84261188
	.long	269489156
	.long	252694464
	.long	-1431698776
	.long	286348357
	.long	1280073491
	.long	-1734820314
	.long	623209800
	.long	437952132
	.long	404233734
	.long	1718025627
	.long	1920134302
	.long	151603779
	.long	1094783057
	.long	-741137161
	.long	1179047315
	.long	-1077980180
	.long	1650653338
	.long	-370568581
	.long	-858980557
	.long	1364264021
	.long	741091083
	.long	218976066
	.long	-1212720658
	.long	1061155788
	.long	-1296950098
	.long	-1987450269
	.long	-1819052825
	.long	-825327695
	.long	1886415900
	.long	-1499066965
	.long	656928202
	.long	538978312
	.long	-1549580053
	.long	1448526231
	.long	33718402
	.long	2139071452
	.long	1381155990
	.long	-336915719
	.long	-707419788
	.long	1044296589
	.long	-50543809
	.long	-1701167452
	.long	488463174
	.long	471603975
	.long	-1633797211
	.long	-202175233
	.long	-808501264
	.long	-842154126
	.long	1549552407
	.long	-353742152
	.long	235835265
	.long	1701133656
	.long	-252654532
	.long	1684307225
	.long	-1684308251
	.long	370577799
	.long	1027437390
	.long	-1566439254
	.long	-1583232919
	.long	-1381120150
	.long	101090691
	.long	-892699984
	.long	-976898704
	.long	-1852705691
	.long	1802220249
	.long	774809481
	.long	-471656197
	.long	-1347467288
	.long	1010578191
	.long	757950282
	.long	-1044270991
	.long	1499008599
	.long	1987504543
	.long	-724246219
	.long	2021156382
	.long	-1869564892
	.long	943207950
	.long	2037982815
	.long	-1920077982
	.long	1633761369
	.long	1195873746
	.long	-1970656608
	.long	-1802194651
	.long	-2004309470
	.long	-235828099
	.long	-320022725
	.long	67372289
	.long	-2071681759
	.long	-505309063
	.long	505322373
	.long	1397982423
	.long	0
	.long	421092935
	.long	1566378838
	.long	2122245021
	.long	1330618320
	.long	-1667450073
	.long	1229527635
	.long	825326669
	.long	-656871882
	.long	134744578
	.long	-1616938012
	.long	-2105401182
	.long	320066759
	.long	589555915
	.long	2054874780
	.long	-1414839575
	.long	-16890947
	.long	707437192
	.long	1263246033
	.long	16859201
	.long	522181572
	.long	-522135496
	.long	-690593353
	.long	-1903284319
	.long	-539022348
	.long	-875873551
	.long	993785549
	.long	-404283910
	.long	-2054822560
	.long	1414807829
	.long	-2038028893
	.long	-2088541981
	.long	-1162209620
	.long	1970612572
	.long	-1835912026
	.long	1852766105
	.long	-791616460
	.long	1751675418
	.long	1431634260
	.long	-1229579857
	.long	1313791889
	.long	-926352846
	.long	-1061097424
	.long	-673766922
	.long	842185870
	.long	-960072269
	.long	-1886425120
	.long	1953786141
	.long	-606392587
	.long	-1953797407
	.long	-1195862482
	.long	168462976
	.long	-1717961113
	.long	724296393
	.long	-2122194847
	.long	50577603
	.long	-1532719831
	.long	-1936937181
	.long	-1364326487
	.long	875837709
	.long	1296899922
	.long	960067151
	.long	-1111633042
	.long	1465352662
	.long	1869592536
	.long	-589501641
	.long	353718596
	.long	2071701213
	.long	-134804994
	.long	976926348
	.long	-1128492241
	.long	202116867
	.long	-64516
	.long	-1448492437
	.long	-909526413
	.long	-1246373524
	.long	-1313743763
	.long	1835874138
	.long	1162155344
	.long	909556111
	.long	1819047707
	.long	-1094839379
	.long	1246419600
	.long	-286369863
	.long	2004330974
	.long	-219001666
	.long	-33717378
	.long	1145328913
	.long	1734852058
	.long	1903242333
	.long	84231488
	.long	2088526623
	.long	1077956624
	.long	1768501851
	.long	1667479771
	.long	673718794
	.long	117949890
	.long	-993725135
	.long	572696714
	.long	-1768541785
	.long	926415310
	.long	-303196294
	.long	-151631425
	.long	-1263232723
	.long	-774790027
	.long	1128501459
	.long	1212701202
	.long	-488482630
	.long	-1751682586
	.long	-757963594
	.long	-1027444558
	.long	640069003
	.long	-1515860632
	.long	1583270805
	.long	690577995
	.long	808467468
	.long	1515900564
	.long	-572675210
	.long	-101087617
	.long	-1785335452
	.long	-421110341
	.long	-943245838
	.long	606350601
	.long	387436998
	.long	-1179003281
	.long	454811333
	.long	303207558
	.long	1616934936
	.long	-1010618125
	.long	-168457860
	.long	-1280090897
	.long	-387395014
	.long	1936960735
	.long	892696908
	.long	-2139054048
	.long	-437936776
	.long	-1145350419
	.long	2105353054
	.long	-117914050
	.long	1600097236
	.long	791668680
	.long	-454763207
	.long	555837513
	.align 32
	.type	SM4_SBOX_T3, @object
	.size	SM4_SBOX_T3, 1024
SM4_SBOX_T3:
	.long	-715433074
	.long	-1841151280
	.long	-358111411
	.long	-33817850
	.long	-818727940
	.long	-494434459
	.long	1039463625
	.long	-1243685269
	.long	374888526
	.long	-1260725650
	.long	340807748
	.long	-1056240694
	.long	681615496
	.long	-118493417
	.long	749777052
	.long	85201937
	.long	732736647
	.long	1721605627
	.long	-1737856270
	.long	2010765742
	.long	715696258
	.long	-1124402618
	.long	68161556
	.long	-1072754737
	.long	-1465210366
	.long	1158746452
	.long	323767391
	.long	647534782
	.long	1210393965
	.long	-2078664034
	.long	102242334
	.long	-1687787779
	.long	-1636666644
	.long	1124665674
	.long	1363230992
	.long	-137112796
	.long	-1824110891
	.long	-322977965
	.long	-1704828168
	.long	2078927250
	.long	869059839
	.long	1431392516
	.long	187444263
	.long	1108151631
	.long	-289949863
	.long	-868270093
	.long	-1364020708
	.long	1669958122
	.long	-409758860
	.long	-1311846785
	.long	477130860
	.long	-1415141875
	.long	-903403539
	.long	136323112
	.long	-341597368
	.long	-1755949375
	.long	-2113797504
	.long	-595624029
	.long	-1772989756
	.long	-101979374
	.long	1960170913
	.long	-1925300557
	.long	1073544387
	.long	-1533371842
	.long	1176313179
	.long	119282715
	.long	-1516331461
	.long	-789748
	.long	-254816449
	.long	1926090175
	.long	391928907
	.long	-1192564142
	.long	-2129785201
	.long	1483040061
	.long	1022423244
	.long	426009725
	.long	-442786946
	.long	-2028595567
	.long	1312636275
	.long	-1432182264
	.long	1772200392
	.long	1789767111
	.long	-2096757115
	.long	-1328887174
	.long	1892009397
	.long	1704038900
	.long	-647271502
	.long	-1993462105
	.long	-68951272
	.long	-391139513
	.long	255605811
	.long	1244474727
	.long	1908523440
	.long	1465473294
	.long	-1619626263
	.long	903140577
	.long	511211622
	.long	613454004
	.long	238565430
	.long	1601796390
	.long	1653444079
	.long	1499554104
	.long	-767080555
	.long	-1601533398
	.long	630494385
	.long	579373226
	.long	2113008012
	.long	1005382871
	.long	17040389
	.long	562332837
	.long	2044846488
	.long	-2061623653
	.long	-682404988
	.long	0
	.long	1192827230
	.long	1448959243
	.long	-1652654365
	.long	-800108641
	.long	664575163
	.long	1397311770
	.long	1295069564
	.long	920180974
	.long	34080778
	.long	-459300997
	.long	-1568505312
	.long	-955051052
	.long	-886889496
	.long	-1669694746
	.long	-374625470
	.long	-1107362237
	.long	-2010502494
	.long	-783594598
	.long	1090584896
	.long	-1004593189
	.long	954261720
	.long	-1210657183
	.long	-1584493009
	.long	-186654933
	.long	-238302406
	.long	-851756042
	.long	-85465315
	.long	1619363301
	.long	357848129
	.long	-1551464923
	.long	-477920416
	.long	-1397048810
	.long	1551201577
	.long	-1500343756
	.long	-1720815881
	.long	886100196
	.long	443050098
	.long	1414878465
	.long	-1346980327
	.long	-1857138977
	.long	852019450
	.long	817938672
	.long	-153626847
	.long	-1909312836
	.long	-1278818699
	.long	-527462545
	.long	494171241
	.long	-170140882
	.long	-510948502
	.long	783857814
	.long	-2146825590
	.long	1738119678
	.long	-919917598
	.long	1635877344
	.long	-1023212608
	.long	698655885
	.long	596413615
	.long	-1448169977
	.long	221525049
	.long	1380797727
	.long	1329150326
	.long	1857928659
	.long	-698919039
	.long	-663785545
	.long	937221355
	.long	1142232401
	.long	-579109978
	.long	-17303799
	.long	-1942340938
	.long	800898195
	.long	51121167
	.long	-50331901
	.long	1806281154
	.long	1942604218
	.long	1823847897
	.long	1840361948
	.long	1517120823
	.long	1346716949
	.long	-1892272455
	.long	460090487
	.long	-1380008429
	.long	-1874179366
	.long	-1175523753
	.long	-562595927
	.long	-1091374516
	.long	2130574723
	.long	289686613
	.long	-630757443
	.long	1567715628
	.long	1074070853
	.long	528252003
	.long	272646224
	.long	1533634866
	.long	-614243400
	.long	170403874
	.long	-1039726651
	.long	834979061
	.long	-1977474392
	.long	-1483303375
	.long	-835241991
	.long	2062413207
	.long	-1074334135
	.long	766817433
	.long	1976684964
	.long	-750566512
	.long	306727002
	.long	-1159536040
	.long	-426272911
	.long	-1227697564
	.long	-1295859088
	.long	-1960434003
	.long	1755686349
	.long	-1788977461
	.long	1260988770
	.long	204484668
	.long	-1806017842
	.long	1994251691
	.long	2147088774
	.long	1687524849
	.long	-1142495651
	.long	-221788363
	.long	153363501
	.long	-971565103
	.long	1874442710
	.long	-988079138
	.long	-2045635948
	.long	408969336
	.long	-205274320
	.long	2096493961
	.long	-273435812
	.long	988342482
	.long	-546081876
	.long	1278555513
	.long	545292448
	.long	2028332445
	.long	-306463914
	.long	1585282339
	.long	1056504006
	.long	-731947125
	.long	-936431641
	.long	971302109
	.long	1226908008
	.text
	.type	rotl, @function
rotl:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, %eax
	movb	%al, -8(%rbp)
	movzbl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	roll	%cl, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rotl, .-rotl
	.type	load_u32_be, @function
load_u32_be:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	sall	$2, %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	sall	$2, %eax
	addl	$2, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	sall	$2, %eax
	addl	$3, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	load_u32_be, .-load_u32_be
	.type	store_u32_be, @function
store_u32_be:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	store_u32_be, .-store_u32_be
	.type	SM4_T_non_lin_sub, @function
SM4_T_non_lin_sub:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	-20(%rbp), %eax
	shrl	$24, %eax
	movzbl	%al, %eax
	cltq
	leaq	SM4_S(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cltq
	leaq	SM4_S(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	shrl	$8, %eax
	movzbl	%al, %eax
	cltq
	leaq	SM4_S(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movzbl	%al, %eax
	cltq
	leaq	SM4_S(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	orl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	SM4_T_non_lin_sub, .-SM4_T_non_lin_sub
	.type	SM4_T_slow, @function
SM4_T_slow:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	SM4_T_non_lin_sub
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	rotl
	xorl	-12(%rbp), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	rotl
	xorl	%eax, %ebx
	movl	-12(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	call	rotl
	xorl	%eax, %ebx
	movl	-12(%rbp), %eax
	movl	$24, %esi
	movl	%eax, %edi
	call	rotl
	xorl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	SM4_T_slow, .-SM4_T_slow
	.type	SM4_T, @function
SM4_T:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	movzbl	%al, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	SM4_SBOX_T0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	SM4_SBOX_T1(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movzbl	%al, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	SM4_SBOX_T2(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	SM4_SBOX_T3(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SM4_T, .-SM4_T
	.type	SM4_key_sub, @function
SM4_key_sub:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	SM4_T_non_lin_sub
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	call	rotl
	xorl	-12(%rbp), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	movl	$23, %esi
	movl	%eax, %edi
	call	rotl
	xorl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	SM4_key_sub, .-SM4_key_sub
	.globl	ossl_sm4_set_key
	.type	ossl_sm4_set_key, @function
ossl_sm4_set_key:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	FK.1(%rip), %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	4+FK.1(%rip), %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	8+FK.1(%rip), %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	12+FK.1(%rip), %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L15
.L16:
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	xorl	%eax, %edx
	movl	-20(%rbp), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	CK.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%ecx, %eax
	movl	%eax, %edi
	call	SM4_key_sub
	movl	-32(%rbp), %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	xorl	%eax, %edx
	movl	-32(%rbp), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	CK.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%ecx, %eax
	movl	%eax, %edi
	call	SM4_key_sub
	movl	-28(%rbp), %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %edx
	movl	-32(%rbp), %eax
	xorl	%eax, %edx
	movl	-28(%rbp), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	CK.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%ecx, %eax
	movl	%eax, %edi
	call	SM4_key_sub
	movl	-24(%rbp), %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	xorl	%eax, %edx
	movl	-24(%rbp), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	CK.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%ecx, %eax
	movl	%eax, %edi
	call	SM4_key_sub
	movl	-20(%rbp), %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-28(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movl	-4(%rbp), %eax
	leal	2(%rax), %edx
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movl	-4(%rbp), %eax
	leal	3(%rax), %edx
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$4, -4(%rbp)
.L15:
	cmpl	$31, -4(%rbp)
	jle	.L16
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ossl_sm4_set_key, .-ossl_sm4_set_key
	.globl	ossl_sm4_encrypt
	.type	ossl_sm4_encrypt, @function
ossl_sm4_encrypt:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	44(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	76(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	84(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	88(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	92(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	96(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	104(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	108(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	116(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	124(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -16(%rbp)
	movq	-32(%rbp), %rdx
	movl	-16(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	store_u32_be
	movq	-32(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	store_u32_be
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	store_u32_be
	movq	-32(%rbp), %rax
	leaq	12(%rax), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	store_u32_be
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ossl_sm4_encrypt, .-ossl_sm4_encrypt
	.globl	ossl_sm4_decrypt
	.type	ossl_sm4_decrypt, @function
ossl_sm4_decrypt:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	load_u32_be
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	124(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	116(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	108(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	104(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	96(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	92(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	88(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	84(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	76(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	44(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T
	xorl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	call	SM4_T_slow
	xorl	%eax, -16(%rbp)
	movq	-32(%rbp), %rdx
	movl	-16(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	store_u32_be
	movq	-32(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	store_u32_be
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	store_u32_be
	movq	-32(%rbp), %rax
	leaq	12(%rax), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	store_u32_be
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ossl_sm4_decrypt, .-ossl_sm4_decrypt
	.section	.rodata
	.align 16
	.type	FK.1, @object
	.size	FK.1, 16
FK.1:
	.long	-1548633402
	.long	1453994832
	.long	1736282519
	.long	-1301273892
	.align 32
	.type	CK.0, @object
	.size	CK.0, 128
CK.0:
	.long	462357
	.long	472066609
	.long	943670861
	.long	1415275113
	.long	1886879365
	.long	-1936483679
	.long	-1464879427
	.long	-993275175
	.long	-521670923
	.long	-66909679
	.long	404694573
	.long	876298825
	.long	1347903077
	.long	1819507329
	.long	-2003855715
	.long	-1532251463
	.long	-1060647211
	.long	-589042959
	.long	-117504499
	.long	337322537
	.long	808926789
	.long	1280531041
	.long	1752135293
	.long	-2071227751
	.long	-1599623499
	.long	-1128019247
	.long	-656414995
	.long	-184876535
	.long	269950501
	.long	741554753
	.long	1213159005
	.long	1684763257
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
