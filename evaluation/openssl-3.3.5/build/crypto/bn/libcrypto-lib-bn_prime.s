	.file	"bn_prime.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
	.align 32
	.type	primes, @object
	.size	primes, 4096
primes:
	.value	2
	.value	3
	.value	5
	.value	7
	.value	11
	.value	13
	.value	17
	.value	19
	.value	23
	.value	29
	.value	31
	.value	37
	.value	41
	.value	43
	.value	47
	.value	53
	.value	59
	.value	61
	.value	67
	.value	71
	.value	73
	.value	79
	.value	83
	.value	89
	.value	97
	.value	101
	.value	103
	.value	107
	.value	109
	.value	113
	.value	127
	.value	131
	.value	137
	.value	139
	.value	149
	.value	151
	.value	157
	.value	163
	.value	167
	.value	173
	.value	179
	.value	181
	.value	191
	.value	193
	.value	197
	.value	199
	.value	211
	.value	223
	.value	227
	.value	229
	.value	233
	.value	239
	.value	241
	.value	251
	.value	257
	.value	263
	.value	269
	.value	271
	.value	277
	.value	281
	.value	283
	.value	293
	.value	307
	.value	311
	.value	313
	.value	317
	.value	331
	.value	337
	.value	347
	.value	349
	.value	353
	.value	359
	.value	367
	.value	373
	.value	379
	.value	383
	.value	389
	.value	397
	.value	401
	.value	409
	.value	419
	.value	421
	.value	431
	.value	433
	.value	439
	.value	443
	.value	449
	.value	457
	.value	461
	.value	463
	.value	467
	.value	479
	.value	487
	.value	491
	.value	499
	.value	503
	.value	509
	.value	521
	.value	523
	.value	541
	.value	547
	.value	557
	.value	563
	.value	569
	.value	571
	.value	577
	.value	587
	.value	593
	.value	599
	.value	601
	.value	607
	.value	613
	.value	617
	.value	619
	.value	631
	.value	641
	.value	643
	.value	647
	.value	653
	.value	659
	.value	661
	.value	673
	.value	677
	.value	683
	.value	691
	.value	701
	.value	709
	.value	719
	.value	727
	.value	733
	.value	739
	.value	743
	.value	751
	.value	757
	.value	761
	.value	769
	.value	773
	.value	787
	.value	797
	.value	809
	.value	811
	.value	821
	.value	823
	.value	827
	.value	829
	.value	839
	.value	853
	.value	857
	.value	859
	.value	863
	.value	877
	.value	881
	.value	883
	.value	887
	.value	907
	.value	911
	.value	919
	.value	929
	.value	937
	.value	941
	.value	947
	.value	953
	.value	967
	.value	971
	.value	977
	.value	983
	.value	991
	.value	997
	.value	1009
	.value	1013
	.value	1019
	.value	1021
	.value	1031
	.value	1033
	.value	1039
	.value	1049
	.value	1051
	.value	1061
	.value	1063
	.value	1069
	.value	1087
	.value	1091
	.value	1093
	.value	1097
	.value	1103
	.value	1109
	.value	1117
	.value	1123
	.value	1129
	.value	1151
	.value	1153
	.value	1163
	.value	1171
	.value	1181
	.value	1187
	.value	1193
	.value	1201
	.value	1213
	.value	1217
	.value	1223
	.value	1229
	.value	1231
	.value	1237
	.value	1249
	.value	1259
	.value	1277
	.value	1279
	.value	1283
	.value	1289
	.value	1291
	.value	1297
	.value	1301
	.value	1303
	.value	1307
	.value	1319
	.value	1321
	.value	1327
	.value	1361
	.value	1367
	.value	1373
	.value	1381
	.value	1399
	.value	1409
	.value	1423
	.value	1427
	.value	1429
	.value	1433
	.value	1439
	.value	1447
	.value	1451
	.value	1453
	.value	1459
	.value	1471
	.value	1481
	.value	1483
	.value	1487
	.value	1489
	.value	1493
	.value	1499
	.value	1511
	.value	1523
	.value	1531
	.value	1543
	.value	1549
	.value	1553
	.value	1559
	.value	1567
	.value	1571
	.value	1579
	.value	1583
	.value	1597
	.value	1601
	.value	1607
	.value	1609
	.value	1613
	.value	1619
	.value	1621
	.value	1627
	.value	1637
	.value	1657
	.value	1663
	.value	1667
	.value	1669
	.value	1693
	.value	1697
	.value	1699
	.value	1709
	.value	1721
	.value	1723
	.value	1733
	.value	1741
	.value	1747
	.value	1753
	.value	1759
	.value	1777
	.value	1783
	.value	1787
	.value	1789
	.value	1801
	.value	1811
	.value	1823
	.value	1831
	.value	1847
	.value	1861
	.value	1867
	.value	1871
	.value	1873
	.value	1877
	.value	1879
	.value	1889
	.value	1901
	.value	1907
	.value	1913
	.value	1931
	.value	1933
	.value	1949
	.value	1951
	.value	1973
	.value	1979
	.value	1987
	.value	1993
	.value	1997
	.value	1999
	.value	2003
	.value	2011
	.value	2017
	.value	2027
	.value	2029
	.value	2039
	.value	2053
	.value	2063
	.value	2069
	.value	2081
	.value	2083
	.value	2087
	.value	2089
	.value	2099
	.value	2111
	.value	2113
	.value	2129
	.value	2131
	.value	2137
	.value	2141
	.value	2143
	.value	2153
	.value	2161
	.value	2179
	.value	2203
	.value	2207
	.value	2213
	.value	2221
	.value	2237
	.value	2239
	.value	2243
	.value	2251
	.value	2267
	.value	2269
	.value	2273
	.value	2281
	.value	2287
	.value	2293
	.value	2297
	.value	2309
	.value	2311
	.value	2333
	.value	2339
	.value	2341
	.value	2347
	.value	2351
	.value	2357
	.value	2371
	.value	2377
	.value	2381
	.value	2383
	.value	2389
	.value	2393
	.value	2399
	.value	2411
	.value	2417
	.value	2423
	.value	2437
	.value	2441
	.value	2447
	.value	2459
	.value	2467
	.value	2473
	.value	2477
	.value	2503
	.value	2521
	.value	2531
	.value	2539
	.value	2543
	.value	2549
	.value	2551
	.value	2557
	.value	2579
	.value	2591
	.value	2593
	.value	2609
	.value	2617
	.value	2621
	.value	2633
	.value	2647
	.value	2657
	.value	2659
	.value	2663
	.value	2671
	.value	2677
	.value	2683
	.value	2687
	.value	2689
	.value	2693
	.value	2699
	.value	2707
	.value	2711
	.value	2713
	.value	2719
	.value	2729
	.value	2731
	.value	2741
	.value	2749
	.value	2753
	.value	2767
	.value	2777
	.value	2789
	.value	2791
	.value	2797
	.value	2801
	.value	2803
	.value	2819
	.value	2833
	.value	2837
	.value	2843
	.value	2851
	.value	2857
	.value	2861
	.value	2879
	.value	2887
	.value	2897
	.value	2903
	.value	2909
	.value	2917
	.value	2927
	.value	2939
	.value	2953
	.value	2957
	.value	2963
	.value	2969
	.value	2971
	.value	2999
	.value	3001
	.value	3011
	.value	3019
	.value	3023
	.value	3037
	.value	3041
	.value	3049
	.value	3061
	.value	3067
	.value	3079
	.value	3083
	.value	3089
	.value	3109
	.value	3119
	.value	3121
	.value	3137
	.value	3163
	.value	3167
	.value	3169
	.value	3181
	.value	3187
	.value	3191
	.value	3203
	.value	3209
	.value	3217
	.value	3221
	.value	3229
	.value	3251
	.value	3253
	.value	3257
	.value	3259
	.value	3271
	.value	3299
	.value	3301
	.value	3307
	.value	3313
	.value	3319
	.value	3323
	.value	3329
	.value	3331
	.value	3343
	.value	3347
	.value	3359
	.value	3361
	.value	3371
	.value	3373
	.value	3389
	.value	3391
	.value	3407
	.value	3413
	.value	3433
	.value	3449
	.value	3457
	.value	3461
	.value	3463
	.value	3467
	.value	3469
	.value	3491
	.value	3499
	.value	3511
	.value	3517
	.value	3527
	.value	3529
	.value	3533
	.value	3539
	.value	3541
	.value	3547
	.value	3557
	.value	3559
	.value	3571
	.value	3581
	.value	3583
	.value	3593
	.value	3607
	.value	3613
	.value	3617
	.value	3623
	.value	3631
	.value	3637
	.value	3643
	.value	3659
	.value	3671
	.value	3673
	.value	3677
	.value	3691
	.value	3697
	.value	3701
	.value	3709
	.value	3719
	.value	3727
	.value	3733
	.value	3739
	.value	3761
	.value	3767
	.value	3769
	.value	3779
	.value	3793
	.value	3797
	.value	3803
	.value	3821
	.value	3823
	.value	3833
	.value	3847
	.value	3851
	.value	3853
	.value	3863
	.value	3877
	.value	3881
	.value	3889
	.value	3907
	.value	3911
	.value	3917
	.value	3919
	.value	3923
	.value	3929
	.value	3931
	.value	3943
	.value	3947
	.value	3967
	.value	3989
	.value	4001
	.value	4003
	.value	4007
	.value	4013
	.value	4019
	.value	4021
	.value	4027
	.value	4049
	.value	4051
	.value	4057
	.value	4073
	.value	4079
	.value	4091
	.value	4093
	.value	4099
	.value	4111
	.value	4127
	.value	4129
	.value	4133
	.value	4139
	.value	4153
	.value	4157
	.value	4159
	.value	4177
	.value	4201
	.value	4211
	.value	4217
	.value	4219
	.value	4229
	.value	4231
	.value	4241
	.value	4243
	.value	4253
	.value	4259
	.value	4261
	.value	4271
	.value	4273
	.value	4283
	.value	4289
	.value	4297
	.value	4327
	.value	4337
	.value	4339
	.value	4349
	.value	4357
	.value	4363
	.value	4373
	.value	4391
	.value	4397
	.value	4409
	.value	4421
	.value	4423
	.value	4441
	.value	4447
	.value	4451
	.value	4457
	.value	4463
	.value	4481
	.value	4483
	.value	4493
	.value	4507
	.value	4513
	.value	4517
	.value	4519
	.value	4523
	.value	4547
	.value	4549
	.value	4561
	.value	4567
	.value	4583
	.value	4591
	.value	4597
	.value	4603
	.value	4621
	.value	4637
	.value	4639
	.value	4643
	.value	4649
	.value	4651
	.value	4657
	.value	4663
	.value	4673
	.value	4679
	.value	4691
	.value	4703
	.value	4721
	.value	4723
	.value	4729
	.value	4733
	.value	4751
	.value	4759
	.value	4783
	.value	4787
	.value	4789
	.value	4793
	.value	4799
	.value	4801
	.value	4813
	.value	4817
	.value	4831
	.value	4861
	.value	4871
	.value	4877
	.value	4889
	.value	4903
	.value	4909
	.value	4919
	.value	4931
	.value	4933
	.value	4937
	.value	4943
	.value	4951
	.value	4957
	.value	4967
	.value	4969
	.value	4973
	.value	4987
	.value	4993
	.value	4999
	.value	5003
	.value	5009
	.value	5011
	.value	5021
	.value	5023
	.value	5039
	.value	5051
	.value	5059
	.value	5077
	.value	5081
	.value	5087
	.value	5099
	.value	5101
	.value	5107
	.value	5113
	.value	5119
	.value	5147
	.value	5153
	.value	5167
	.value	5171
	.value	5179
	.value	5189
	.value	5197
	.value	5209
	.value	5227
	.value	5231
	.value	5233
	.value	5237
	.value	5261
	.value	5273
	.value	5279
	.value	5281
	.value	5297
	.value	5303
	.value	5309
	.value	5323
	.value	5333
	.value	5347
	.value	5351
	.value	5381
	.value	5387
	.value	5393
	.value	5399
	.value	5407
	.value	5413
	.value	5417
	.value	5419
	.value	5431
	.value	5437
	.value	5441
	.value	5443
	.value	5449
	.value	5471
	.value	5477
	.value	5479
	.value	5483
	.value	5501
	.value	5503
	.value	5507
	.value	5519
	.value	5521
	.value	5527
	.value	5531
	.value	5557
	.value	5563
	.value	5569
	.value	5573
	.value	5581
	.value	5591
	.value	5623
	.value	5639
	.value	5641
	.value	5647
	.value	5651
	.value	5653
	.value	5657
	.value	5659
	.value	5669
	.value	5683
	.value	5689
	.value	5693
	.value	5701
	.value	5711
	.value	5717
	.value	5737
	.value	5741
	.value	5743
	.value	5749
	.value	5779
	.value	5783
	.value	5791
	.value	5801
	.value	5807
	.value	5813
	.value	5821
	.value	5827
	.value	5839
	.value	5843
	.value	5849
	.value	5851
	.value	5857
	.value	5861
	.value	5867
	.value	5869
	.value	5879
	.value	5881
	.value	5897
	.value	5903
	.value	5923
	.value	5927
	.value	5939
	.value	5953
	.value	5981
	.value	5987
	.value	6007
	.value	6011
	.value	6029
	.value	6037
	.value	6043
	.value	6047
	.value	6053
	.value	6067
	.value	6073
	.value	6079
	.value	6089
	.value	6091
	.value	6101
	.value	6113
	.value	6121
	.value	6131
	.value	6133
	.value	6143
	.value	6151
	.value	6163
	.value	6173
	.value	6197
	.value	6199
	.value	6203
	.value	6211
	.value	6217
	.value	6221
	.value	6229
	.value	6247
	.value	6257
	.value	6263
	.value	6269
	.value	6271
	.value	6277
	.value	6287
	.value	6299
	.value	6301
	.value	6311
	.value	6317
	.value	6323
	.value	6329
	.value	6337
	.value	6343
	.value	6353
	.value	6359
	.value	6361
	.value	6367
	.value	6373
	.value	6379
	.value	6389
	.value	6397
	.value	6421
	.value	6427
	.value	6449
	.value	6451
	.value	6469
	.value	6473
	.value	6481
	.value	6491
	.value	6521
	.value	6529
	.value	6547
	.value	6551
	.value	6553
	.value	6563
	.value	6569
	.value	6571
	.value	6577
	.value	6581
	.value	6599
	.value	6607
	.value	6619
	.value	6637
	.value	6653
	.value	6659
	.value	6661
	.value	6673
	.value	6679
	.value	6689
	.value	6691
	.value	6701
	.value	6703
	.value	6709
	.value	6719
	.value	6733
	.value	6737
	.value	6761
	.value	6763
	.value	6779
	.value	6781
	.value	6791
	.value	6793
	.value	6803
	.value	6823
	.value	6827
	.value	6829
	.value	6833
	.value	6841
	.value	6857
	.value	6863
	.value	6869
	.value	6871
	.value	6883
	.value	6899
	.value	6907
	.value	6911
	.value	6917
	.value	6947
	.value	6949
	.value	6959
	.value	6961
	.value	6967
	.value	6971
	.value	6977
	.value	6983
	.value	6991
	.value	6997
	.value	7001
	.value	7013
	.value	7019
	.value	7027
	.value	7039
	.value	7043
	.value	7057
	.value	7069
	.value	7079
	.value	7103
	.value	7109
	.value	7121
	.value	7127
	.value	7129
	.value	7151
	.value	7159
	.value	7177
	.value	7187
	.value	7193
	.value	7207
	.value	7211
	.value	7213
	.value	7219
	.value	7229
	.value	7237
	.value	7243
	.value	7247
	.value	7253
	.value	7283
	.value	7297
	.value	7307
	.value	7309
	.value	7321
	.value	7331
	.value	7333
	.value	7349
	.value	7351
	.value	7369
	.value	7393
	.value	7411
	.value	7417
	.value	7433
	.value	7451
	.value	7457
	.value	7459
	.value	7477
	.value	7481
	.value	7487
	.value	7489
	.value	7499
	.value	7507
	.value	7517
	.value	7523
	.value	7529
	.value	7537
	.value	7541
	.value	7547
	.value	7549
	.value	7559
	.value	7561
	.value	7573
	.value	7577
	.value	7583
	.value	7589
	.value	7591
	.value	7603
	.value	7607
	.value	7621
	.value	7639
	.value	7643
	.value	7649
	.value	7669
	.value	7673
	.value	7681
	.value	7687
	.value	7691
	.value	7699
	.value	7703
	.value	7717
	.value	7723
	.value	7727
	.value	7741
	.value	7753
	.value	7757
	.value	7759
	.value	7789
	.value	7793
	.value	7817
	.value	7823
	.value	7829
	.value	7841
	.value	7853
	.value	7867
	.value	7873
	.value	7877
	.value	7879
	.value	7883
	.value	7901
	.value	7907
	.value	7919
	.value	7927
	.value	7933
	.value	7937
	.value	7949
	.value	7951
	.value	7963
	.value	7993
	.value	8009
	.value	8011
	.value	8017
	.value	8039
	.value	8053
	.value	8059
	.value	8069
	.value	8081
	.value	8087
	.value	8089
	.value	8093
	.value	8101
	.value	8111
	.value	8117
	.value	8123
	.value	8147
	.value	8161
	.value	8167
	.value	8171
	.value	8179
	.value	8191
	.value	8209
	.value	8219
	.value	8221
	.value	8231
	.value	8233
	.value	8237
	.value	8243
	.value	8263
	.value	8269
	.value	8273
	.value	8287
	.value	8291
	.value	8293
	.value	8297
	.value	8311
	.value	8317
	.value	8329
	.value	8353
	.value	8363
	.value	8369
	.value	8377
	.value	8387
	.value	8389
	.value	8419
	.value	8423
	.value	8429
	.value	8431
	.value	8443
	.value	8447
	.value	8461
	.value	8467
	.value	8501
	.value	8513
	.value	8521
	.value	8527
	.value	8537
	.value	8539
	.value	8543
	.value	8563
	.value	8573
	.value	8581
	.value	8597
	.value	8599
	.value	8609
	.value	8623
	.value	8627
	.value	8629
	.value	8641
	.value	8647
	.value	8663
	.value	8669
	.value	8677
	.value	8681
	.value	8689
	.value	8693
	.value	8699
	.value	8707
	.value	8713
	.value	8719
	.value	8731
	.value	8737
	.value	8741
	.value	8747
	.value	8753
	.value	8761
	.value	8779
	.value	8783
	.value	8803
	.value	8807
	.value	8819
	.value	8821
	.value	8831
	.value	8837
	.value	8839
	.value	8849
	.value	8861
	.value	8863
	.value	8867
	.value	8887
	.value	8893
	.value	8923
	.value	8929
	.value	8933
	.value	8941
	.value	8951
	.value	8963
	.value	8969
	.value	8971
	.value	8999
	.value	9001
	.value	9007
	.value	9011
	.value	9013
	.value	9029
	.value	9041
	.value	9043
	.value	9049
	.value	9059
	.value	9067
	.value	9091
	.value	9103
	.value	9109
	.value	9127
	.value	9133
	.value	9137
	.value	9151
	.value	9157
	.value	9161
	.value	9173
	.value	9181
	.value	9187
	.value	9199
	.value	9203
	.value	9209
	.value	9221
	.value	9227
	.value	9239
	.value	9241
	.value	9257
	.value	9277
	.value	9281
	.value	9283
	.value	9293
	.value	9311
	.value	9319
	.value	9323
	.value	9337
	.value	9341
	.value	9343
	.value	9349
	.value	9371
	.value	9377
	.value	9391
	.value	9397
	.value	9403
	.value	9413
	.value	9419
	.value	9421
	.value	9431
	.value	9433
	.value	9437
	.value	9439
	.value	9461
	.value	9463
	.value	9467
	.value	9473
	.value	9479
	.value	9491
	.value	9497
	.value	9511
	.value	9521
	.value	9533
	.value	9539
	.value	9547
	.value	9551
	.value	9587
	.value	9601
	.value	9613
	.value	9619
	.value	9623
	.value	9629
	.value	9631
	.value	9643
	.value	9649
	.value	9661
	.value	9677
	.value	9679
	.value	9689
	.value	9697
	.value	9719
	.value	9721
	.value	9733
	.value	9739
	.value	9743
	.value	9749
	.value	9767
	.value	9769
	.value	9781
	.value	9787
	.value	9791
	.value	9803
	.value	9811
	.value	9817
	.value	9829
	.value	9833
	.value	9839
	.value	9851
	.value	9857
	.value	9859
	.value	9871
	.value	9883
	.value	9887
	.value	9901
	.value	9907
	.value	9923
	.value	9929
	.value	9931
	.value	9941
	.value	9949
	.value	9967
	.value	9973
	.value	10007
	.value	10009
	.value	10037
	.value	10039
	.value	10061
	.value	10067
	.value	10069
	.value	10079
	.value	10091
	.value	10093
	.value	10099
	.value	10103
	.value	10111
	.value	10133
	.value	10139
	.value	10141
	.value	10151
	.value	10159
	.value	10163
	.value	10169
	.value	10177
	.value	10181
	.value	10193
	.value	10211
	.value	10223
	.value	10243
	.value	10247
	.value	10253
	.value	10259
	.value	10267
	.value	10271
	.value	10273
	.value	10289
	.value	10301
	.value	10303
	.value	10313
	.value	10321
	.value	10331
	.value	10333
	.value	10337
	.value	10343
	.value	10357
	.value	10369
	.value	10391
	.value	10399
	.value	10427
	.value	10429
	.value	10433
	.value	10453
	.value	10457
	.value	10459
	.value	10463
	.value	10477
	.value	10487
	.value	10499
	.value	10501
	.value	10513
	.value	10529
	.value	10531
	.value	10559
	.value	10567
	.value	10589
	.value	10597
	.value	10601
	.value	10607
	.value	10613
	.value	10627
	.value	10631
	.value	10639
	.value	10651
	.value	10657
	.value	10663
	.value	10667
	.value	10687
	.value	10691
	.value	10709
	.value	10711
	.value	10723
	.value	10729
	.value	10733
	.value	10739
	.value	10753
	.value	10771
	.value	10781
	.value	10789
	.value	10799
	.value	10831
	.value	10837
	.value	10847
	.value	10853
	.value	10859
	.value	10861
	.value	10867
	.value	10883
	.value	10889
	.value	10891
	.value	10903
	.value	10909
	.value	10937
	.value	10939
	.value	10949
	.value	10957
	.value	10973
	.value	10979
	.value	10987
	.value	10993
	.value	11003
	.value	11027
	.value	11047
	.value	11057
	.value	11059
	.value	11069
	.value	11071
	.value	11083
	.value	11087
	.value	11093
	.value	11113
	.value	11117
	.value	11119
	.value	11131
	.value	11149
	.value	11159
	.value	11161
	.value	11171
	.value	11173
	.value	11177
	.value	11197
	.value	11213
	.value	11239
	.value	11243
	.value	11251
	.value	11257
	.value	11261
	.value	11273
	.value	11279
	.value	11287
	.value	11299
	.value	11311
	.value	11317
	.value	11321
	.value	11329
	.value	11351
	.value	11353
	.value	11369
	.value	11383
	.value	11393
	.value	11399
	.value	11411
	.value	11423
	.value	11437
	.value	11443
	.value	11447
	.value	11467
	.value	11471
	.value	11483
	.value	11489
	.value	11491
	.value	11497
	.value	11503
	.value	11519
	.value	11527
	.value	11549
	.value	11551
	.value	11579
	.value	11587
	.value	11593
	.value	11597
	.value	11617
	.value	11621
	.value	11633
	.value	11657
	.value	11677
	.value	11681
	.value	11689
	.value	11699
	.value	11701
	.value	11717
	.value	11719
	.value	11731
	.value	11743
	.value	11777
	.value	11779
	.value	11783
	.value	11789
	.value	11801
	.value	11807
	.value	11813
	.value	11821
	.value	11827
	.value	11831
	.value	11833
	.value	11839
	.value	11863
	.value	11867
	.value	11887
	.value	11897
	.value	11903
	.value	11909
	.value	11923
	.value	11927
	.value	11933
	.value	11939
	.value	11941
	.value	11953
	.value	11959
	.value	11969
	.value	11971
	.value	11981
	.value	11987
	.value	12007
	.value	12011
	.value	12037
	.value	12041
	.value	12043
	.value	12049
	.value	12071
	.value	12073
	.value	12097
	.value	12101
	.value	12107
	.value	12109
	.value	12113
	.value	12119
	.value	12143
	.value	12149
	.value	12157
	.value	12161
	.value	12163
	.value	12197
	.value	12203
	.value	12211
	.value	12227
	.value	12239
	.value	12241
	.value	12251
	.value	12253
	.value	12263
	.value	12269
	.value	12277
	.value	12281
	.value	12289
	.value	12301
	.value	12323
	.value	12329
	.value	12343
	.value	12347
	.value	12373
	.value	12377
	.value	12379
	.value	12391
	.value	12401
	.value	12409
	.value	12413
	.value	12421
	.value	12433
	.value	12437
	.value	12451
	.value	12457
	.value	12473
	.value	12479
	.value	12487
	.value	12491
	.value	12497
	.value	12503
	.value	12511
	.value	12517
	.value	12527
	.value	12539
	.value	12541
	.value	12547
	.value	12553
	.value	12569
	.value	12577
	.value	12583
	.value	12589
	.value	12601
	.value	12611
	.value	12613
	.value	12619
	.value	12637
	.value	12641
	.value	12647
	.value	12653
	.value	12659
	.value	12671
	.value	12689
	.value	12697
	.value	12703
	.value	12713
	.value	12721
	.value	12739
	.value	12743
	.value	12757
	.value	12763
	.value	12781
	.value	12791
	.value	12799
	.value	12809
	.value	12821
	.value	12823
	.value	12829
	.value	12841
	.value	12853
	.value	12889
	.value	12893
	.value	12899
	.value	12907
	.value	12911
	.value	12917
	.value	12919
	.value	12923
	.value	12941
	.value	12953
	.value	12959
	.value	12967
	.value	12973
	.value	12979
	.value	12983
	.value	13001
	.value	13003
	.value	13007
	.value	13009
	.value	13033
	.value	13037
	.value	13043
	.value	13049
	.value	13063
	.value	13093
	.value	13099
	.value	13103
	.value	13109
	.value	13121
	.value	13127
	.value	13147
	.value	13151
	.value	13159
	.value	13163
	.value	13171
	.value	13177
	.value	13183
	.value	13187
	.value	13217
	.value	13219
	.value	13229
	.value	13241
	.value	13249
	.value	13259
	.value	13267
	.value	13291
	.value	13297
	.value	13309
	.value	13313
	.value	13327
	.value	13331
	.value	13337
	.value	13339
	.value	13367
	.value	13381
	.value	13397
	.value	13399
	.value	13411
	.value	13417
	.value	13421
	.value	13441
	.value	13451
	.value	13457
	.value	13463
	.value	13469
	.value	13477
	.value	13487
	.value	13499
	.value	13513
	.value	13523
	.value	13537
	.value	13553
	.value	13567
	.value	13577
	.value	13591
	.value	13597
	.value	13613
	.value	13619
	.value	13627
	.value	13633
	.value	13649
	.value	13669
	.value	13679
	.value	13681
	.value	13687
	.value	13691
	.value	13693
	.value	13697
	.value	13709
	.value	13711
	.value	13721
	.value	13723
	.value	13729
	.value	13751
	.value	13757
	.value	13759
	.value	13763
	.value	13781
	.value	13789
	.value	13799
	.value	13807
	.value	13829
	.value	13831
	.value	13841
	.value	13859
	.value	13873
	.value	13877
	.value	13879
	.value	13883
	.value	13901
	.value	13903
	.value	13907
	.value	13913
	.value	13921
	.value	13931
	.value	13933
	.value	13963
	.value	13967
	.value	13997
	.value	13999
	.value	14009
	.value	14011
	.value	14029
	.value	14033
	.value	14051
	.value	14057
	.value	14071
	.value	14081
	.value	14083
	.value	14087
	.value	14107
	.value	14143
	.value	14149
	.value	14153
	.value	14159
	.value	14173
	.value	14177
	.value	14197
	.value	14207
	.value	14221
	.value	14243
	.value	14249
	.value	14251
	.value	14281
	.value	14293
	.value	14303
	.value	14321
	.value	14323
	.value	14327
	.value	14341
	.value	14347
	.value	14369
	.value	14387
	.value	14389
	.value	14401
	.value	14407
	.value	14411
	.value	14419
	.value	14423
	.value	14431
	.value	14437
	.value	14447
	.value	14449
	.value	14461
	.value	14479
	.value	14489
	.value	14503
	.value	14519
	.value	14533
	.value	14537
	.value	14543
	.value	14549
	.value	14551
	.value	14557
	.value	14561
	.value	14563
	.value	14591
	.value	14593
	.value	14621
	.value	14627
	.value	14629
	.value	14633
	.value	14639
	.value	14653
	.value	14657
	.value	14669
	.value	14683
	.value	14699
	.value	14713
	.value	14717
	.value	14723
	.value	14731
	.value	14737
	.value	14741
	.value	14747
	.value	14753
	.value	14759
	.value	14767
	.value	14771
	.value	14779
	.value	14783
	.value	14797
	.value	14813
	.value	14821
	.value	14827
	.value	14831
	.value	14843
	.value	14851
	.value	14867
	.value	14869
	.value	14879
	.value	14887
	.value	14891
	.value	14897
	.value	14923
	.value	14929
	.value	14939
	.value	14947
	.value	14951
	.value	14957
	.value	14969
	.value	14983
	.value	15013
	.value	15017
	.value	15031
	.value	15053
	.value	15061
	.value	15073
	.value	15077
	.value	15083
	.value	15091
	.value	15101
	.value	15107
	.value	15121
	.value	15131
	.value	15137
	.value	15139
	.value	15149
	.value	15161
	.value	15173
	.value	15187
	.value	15193
	.value	15199
	.value	15217
	.value	15227
	.value	15233
	.value	15241
	.value	15259
	.value	15263
	.value	15269
	.value	15271
	.value	15277
	.value	15287
	.value	15289
	.value	15299
	.value	15307
	.value	15313
	.value	15319
	.value	15329
	.value	15331
	.value	15349
	.value	15359
	.value	15361
	.value	15373
	.value	15377
	.value	15383
	.value	15391
	.value	15401
	.value	15413
	.value	15427
	.value	15439
	.value	15443
	.value	15451
	.value	15461
	.value	15467
	.value	15473
	.value	15493
	.value	15497
	.value	15511
	.value	15527
	.value	15541
	.value	15551
	.value	15559
	.value	15569
	.value	15581
	.value	15583
	.value	15601
	.value	15607
	.value	15619
	.value	15629
	.value	15641
	.value	15643
	.value	15647
	.value	15649
	.value	15661
	.value	15667
	.value	15671
	.value	15679
	.value	15683
	.value	15727
	.value	15731
	.value	15733
	.value	15737
	.value	15739
	.value	15749
	.value	15761
	.value	15767
	.value	15773
	.value	15787
	.value	15791
	.value	15797
	.value	15803
	.value	15809
	.value	15817
	.value	15823
	.value	15859
	.value	15877
	.value	15881
	.value	15887
	.value	15889
	.value	15901
	.value	15907
	.value	15913
	.value	15919
	.value	15923
	.value	15937
	.value	15959
	.value	15971
	.value	15973
	.value	15991
	.value	16001
	.value	16007
	.value	16033
	.value	16057
	.value	16061
	.value	16063
	.value	16067
	.value	16069
	.value	16073
	.value	16087
	.value	16091
	.value	16097
	.value	16103
	.value	16111
	.value	16127
	.value	16139
	.value	16141
	.value	16183
	.value	16187
	.value	16189
	.value	16193
	.value	16217
	.value	16223
	.value	16229
	.value	16231
	.value	16249
	.value	16253
	.value	16267
	.value	16273
	.value	16301
	.value	16319
	.value	16333
	.value	16339
	.value	16349
	.value	16361
	.value	16363
	.value	16369
	.value	16381
	.value	16411
	.value	16417
	.value	16421
	.value	16427
	.value	16433
	.value	16447
	.value	16451
	.value	16453
	.value	16477
	.value	16481
	.value	16487
	.value	16493
	.value	16519
	.value	16529
	.value	16547
	.value	16553
	.value	16561
	.value	16567
	.value	16573
	.value	16603
	.value	16607
	.value	16619
	.value	16631
	.value	16633
	.value	16649
	.value	16651
	.value	16657
	.value	16661
	.value	16673
	.value	16691
	.value	16693
	.value	16699
	.value	16703
	.value	16729
	.value	16741
	.value	16747
	.value	16759
	.value	16763
	.value	16787
	.value	16811
	.value	16823
	.value	16829
	.value	16831
	.value	16843
	.value	16871
	.value	16879
	.value	16883
	.value	16889
	.value	16901
	.value	16903
	.value	16921
	.value	16927
	.value	16931
	.value	16937
	.value	16943
	.value	16963
	.value	16979
	.value	16981
	.value	16987
	.value	16993
	.value	17011
	.value	17021
	.value	17027
	.value	17029
	.value	17033
	.value	17041
	.value	17047
	.value	17053
	.value	17077
	.value	17093
	.value	17099
	.value	17107
	.value	17117
	.value	17123
	.value	17137
	.value	17159
	.value	17167
	.value	17183
	.value	17189
	.value	17191
	.value	17203
	.value	17207
	.value	17209
	.value	17231
	.value	17239
	.value	17257
	.value	17291
	.value	17293
	.value	17299
	.value	17317
	.value	17321
	.value	17327
	.value	17333
	.value	17341
	.value	17351
	.value	17359
	.value	17377
	.value	17383
	.value	17387
	.value	17389
	.value	17393
	.value	17401
	.value	17417
	.value	17419
	.value	17431
	.value	17443
	.value	17449
	.value	17467
	.value	17471
	.value	17477
	.value	17483
	.value	17489
	.value	17491
	.value	17497
	.value	17509
	.value	17519
	.value	17539
	.value	17551
	.value	17569
	.value	17573
	.value	17579
	.value	17581
	.value	17597
	.value	17599
	.value	17609
	.value	17623
	.value	17627
	.value	17657
	.value	17659
	.value	17669
	.value	17681
	.value	17683
	.value	17707
	.value	17713
	.value	17729
	.value	17737
	.value	17747
	.value	17749
	.value	17761
	.value	17783
	.value	17789
	.value	17791
	.value	17807
	.value	17827
	.value	17837
	.value	17839
	.value	17851
	.value	17863
	.align 32
	.type	small_prime_factors, @object
	.size	small_prime_factors, 136
small_prime_factors:
	.quad	-4309782995084712991
	.quad	8148734346248676703
	.quad	-7646510132918400926
	.quad	4517730358157349163
	.quad	7734177320850080899
	.quad	757968232112212081
	.quad	8633734662503670026
	.quad	-2640354292540616525
	.quad	5389355995458437739
	.quad	-1479623847028275053
	.quad	-2619631085558135356
	.quad	-2856941152863598706
	.quad	3364315195482710596
	.quad	-4925511846872794390
	.quad	3957848698924598975
	.quad	6856453772018472743
	.quad	6065
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	_bignum_small_prime_factors, @object
	.size	_bignum_small_prime_factors, 24
_bignum_small_prime_factors:
	.quad	small_prime_factors
	.long	17
	.long	17
	.long	0
	.long	2
	.text
	.globl	ossl_bn_get0_small_factors
	.type	ossl_bn_get0_small_factors, @function
ossl_bn_get0_small_factors:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	_bignum_small_prime_factors(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_bn_get0_small_factors, .-ossl_bn_get0_small_factors
	.type	calc_trial_divisions, @function
calc_trial_divisions:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$512, -4(%rbp)
	jg	.L8
	movl	$64, %eax
	jmp	.L9
.L8:
	cmpl	$1024, -4(%rbp)
	jg	.L10
	movl	$128, %eax
	jmp	.L9
.L10:
	cmpl	$2048, -4(%rbp)
	jg	.L11
	movl	$384, %eax
	jmp	.L9
.L11:
	cmpl	$4096, -4(%rbp)
	jg	.L12
	movl	$1024, %eax
	jmp	.L9
.L12:
	movl	$2048, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	calc_trial_divisions, .-calc_trial_divisions
	.type	bn_mr_min_checks, @function
bn_mr_min_checks:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$2048, -4(%rbp)
	jle	.L14
	movl	$128, %eax
	jmp	.L15
.L14:
	movl	$64, %eax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	bn_mr_min_checks, .-bn_mr_min_checks
	.globl	BN_GENCB_call
	.type	BN_GENCB_call, @function
BN_GENCB_call:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L17
	movl	$1, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L19
	cmpl	$2, %eax
	je	.L20
	nop
	movl	$0, %eax
	jmp	.L18
.L19:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	movl	$1, %eax
	jmp	.L18
.L22:
	movq	-8(%rbp), %rax
	movq	16(%rax), %r8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	*%r8
	movl	$1, %eax
	jmp	.L18
.L20:
	movq	-8(%rbp), %rax
	movq	16(%rax), %r8
	movq	-8(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	*%r8
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_GENCB_call, .-BN_GENCB_call
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_prime.c"
	.text
	.globl	BN_generate_prime_ex2
	.type	BN_generate_prime_ex2, @function
BN_generate_prime_ex2:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	bn_mr_min_checks
	movl	%eax, -28(%rbp)
	cmpl	$1, -60(%rbp)
	jg	.L25
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L25:
	cmpq	$0, -72(%rbp)
	jne	.L27
	cmpl	$0, -64(%rbp)
	je	.L27
	cmpl	$5, -60(%rbp)
	jg	.L27
	cmpl	$3, -60(%rbp)
	je	.L27
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L27:
	leaq	.LC0(%rip), %rax
	movl	$147, %edx
	movq	%rax, %rsi
	movl	$4096, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L26
.L28:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L45
	nop
.L29:
	cmpq	$0, -72(%rbp)
	jne	.L31
	movq	16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	probable_prime
	testl	%eax, %eax
	jne	.L32
	jmp	.L30
.L31:
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	probable_prime_dh
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L46
.L32:
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movq	-88(%rbp), %rcx
	movl	%eax, %edx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L47
	cmpl	$0, -64(%rbp)
	jne	.L34
	movq	-88(%rbp), %rcx
	movq	16(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	bn_is_prime_int
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L48
	cmpl	$0, -8(%rbp)
	jne	.L36
	jmp	.L29
.L34:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L49
	movl	$0, -8(%rbp)
	jmp	.L38
.L44:
	movq	-88(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bn_is_prime_int
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	je	.L50
	cmpl	$0, -44(%rbp)
	jne	.L40
	jmp	.L29
.L40:
	movq	-88(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bn_is_prime_int
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	je	.L51
	cmpl	$0, -44(%rbp)
	jne	.L42
	jmp	.L29
.L42:
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L52
	addl	$1, -8(%rbp)
.L38:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L44
.L36:
	movl	$1, -4(%rbp)
	jmp	.L30
.L45:
	nop
	jmp	.L30
.L46:
	nop
	jmp	.L30
.L47:
	nop
	jmp	.L30
.L48:
	nop
	jmp	.L30
.L49:
	nop
	jmp	.L30
.L50:
	nop
	jmp	.L30
.L51:
	nop
	jmp	.L30
.L52:
	nop
.L30:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$204, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_generate_prime_ex2, .-BN_generate_prime_ex2
	.globl	BN_generate_prime_ex
	.type	BN_generate_prime_ex, @function
BN_generate_prime_ex:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	call	BN_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-8(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_generate_prime_ex2@PLT
	addq	$16, %rsp
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BN_generate_prime_ex, .-BN_generate_prime_ex
	.globl	BN_is_prime_ex
	.type	BN_is_prime_ex, @function
BN_is_prime_ex:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_bn_check_prime@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BN_is_prime_ex, .-BN_is_prime_ex
	.globl	BN_is_prime_fasttest_ex
	.type	BN_is_prime_fasttest_ex, @function
BN_is_prime_fasttest_ex:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_bn_check_prime@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BN_is_prime_fasttest_ex, .-BN_is_prime_fasttest_ex
	.globl	ossl_bn_check_prime
	.type	ossl_bn_check_prime, @function
ossl_bn_check_prime:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edi
	call	bn_mr_min_checks
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L61
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
.L61:
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_is_prime_int
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	ossl_bn_check_prime, .-ossl_bn_check_prime
	.globl	ossl_bn_check_generated_prime
	.type	ossl_bn_check_generated_prime, @function
ossl_bn_check_generated_prime:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	bn_is_prime_int
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	ossl_bn_check_generated_prime, .-ossl_bn_check_generated_prime
	.globl	BN_check_prime
	.type	BN_check_prime, @function
BN_check_prime:
.LFB171:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_bn_check_prime@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BN_check_prime, .-BN_check_prime
	.type	bn_is_prime_int, @function
bn_is_prime_int:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -64(%rbp)
	movq	%r8, -80(%rbp)
	movl	$-1, -8(%rbp)
	movq	$0, -16(%rbp)
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jg	.L68
	movl	$0, %eax
	jmp	.L80
.L68:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L70
	movq	-56(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_is_word@PLT
	testl	%eax, %eax
	je	.L71
	movl	$1, %eax
	jmp	.L80
.L70:
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_is_word@PLT
	jmp	.L80
.L71:
	cmpl	$0, -64(%rbp)
	je	.L72
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edi
	call	calc_trial_divisions
	movl	%eax, -20(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L73
.L76:
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	primes(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_mod_word@PLT
	movq	%rax, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L74
	movl	$-1, %eax
	jmp	.L80
.L74:
	cmpq	$0, -32(%rbp)
	jne	.L75
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	primes(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_is_word@PLT
	jmp	.L80
.L75:
	addl	$1, -4(%rbp)
.L73:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L76
	movq	-80(%rbp), %rax
	movl	$-1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$-1, %eax
	jmp	.L80
.L72:
	cmpq	$0, -72(%rbp)
	jne	.L77
	call	BN_CTX_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L81
.L77:
	leaq	-36(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_bn_miller_rabin_is_prime@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$-1, -8(%rbp)
	jmp	.L78
.L79:
	movl	-36(%rbp), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	jmp	.L78
.L81:
	nop
.L78:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-8(%rbp), %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	bn_is_prime_int, .-bn_is_prime_int
	.globl	ossl_bn_miller_rabin_is_prime
	.type	ossl_bn_miller_rabin_is_prime, @function
ossl_bn_miller_rabin_is_prime:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, -96(%rbp)
	movq	%r9, -120(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L122
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L122
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L122
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L122
	movq	-48(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L122
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L123
	movl	$1, -12(%rbp)
	jmp	.L90
.L91:
	addl	$1, -12(%rbp)
.L90:
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L91
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L124
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L125
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	je	.L125
	cmpl	$0, -92(%rbp)
	jne	.L95
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edi
	call	bn_mr_min_checks
	movl	%eax, -92(%rbp)
.L95:
	movl	$0, -4(%rbp)
	jmp	.L96
.L121:
	movq	-104(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	je	.L126
	movq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L126
	cmpl	$0, -96(%rbp)
	je	.L99
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	je	.L127
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L99
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, -16(%rbp)
	jmp	.L87
.L99:
	movq	-24(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	je	.L128
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L129
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L129
	movl	$1, -8(%rbp)
	jmp	.L105
.L111:
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L130
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L130
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L131
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L132
	addl	$1, -8(%rbp)
.L105:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L111
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L133
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L133
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L135
	jmp	.L110
.L132:
	nop
	jmp	.L110
.L134:
	nop
.L110:
	cmpl	$0, -96(%rbp)
	je	.L115
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L136
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	je	.L136
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L118
	movq	-120(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L119
.L118:
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L119
.L115:
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
.L119:
	movl	$1, -16(%rbp)
	jmp	.L87
.L129:
	nop
	jmp	.L104
.L131:
	nop
.L104:
	movl	-4(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L137
	addl	$1, -4(%rbp)
.L96:
	movl	-4(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L121
	movq	-120(%rbp), %rax
	movl	$3, (%rax)
	movl	$1, -16(%rbp)
	jmp	.L87
.L122:
	nop
	jmp	.L87
.L123:
	nop
	jmp	.L87
.L124:
	nop
	jmp	.L87
.L125:
	nop
	jmp	.L87
.L126:
	nop
	jmp	.L87
.L127:
	nop
	jmp	.L87
.L128:
	nop
	jmp	.L87
.L130:
	nop
	jmp	.L87
.L133:
	nop
	jmp	.L87
.L135:
	nop
	jmp	.L87
.L136:
	nop
	jmp	.L87
.L137:
	nop
.L87:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movl	-16(%rbp), %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	ossl_bn_miller_rabin_is_prime, .-ossl_bn_miller_rabin_is_prime
	.type	probable_prime, @function
probable_prime:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	calc_trial_divisions
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	primes(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %eax
	notq	%rax
	movq	%rax, -48(%rbp)
.L139:
	movq	-96(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	jne	.L140
	movl	$0, %eax
	jmp	.L141
.L140:
	cmpl	$0, -80(%rbp)
	je	.L142
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	jne	.L142
	movl	$0, %eax
	jmp	.L141
.L142:
	movl	$1, -20(%rbp)
	jmp	.L143
.L145:
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	primes(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %edx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_mod_word@PLT
	movq	%rax, -56(%rbp)
	cmpq	$-1, -56(%rbp)
	jne	.L144
	movl	$0, %eax
	jmp	.L141
.L144:
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	movw	%dx, (%rax)
	addl	$1, -20(%rbp)
.L143:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L145
	movq	$0, -32(%rbp)
.L146:
	movl	$1, -20(%rbp)
	jmp	.L147
.L156:
	cmpl	$31, -76(%rbp)
	jg	.L148
	cmpq	$2147483647, -32(%rbp)
	ja	.L148
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	primes(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %edx
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	leaq	primes(%rip), %rax
	movzwl	(%rcx,%rax), %eax
	movzwl	%ax, %eax
	movq	%rdx, %rbx
	imulq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	%rbx, %rax
	jb	.L159
.L148:
	cmpl	$0, -80(%rbp)
	je	.L150
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	primes(%rip), %rdx
	movzwl	(%rcx,%rdx), %edx
	movzwl	%dx, %ebx
	movl	$0, %edx
	divq	%rbx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	cmpq	$1, %rax
	setbe	%al
	jmp	.L151
.L150:
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	primes(%rip), %rdx
	movzwl	(%rcx,%rdx), %edx
	movzwl	%dx, %esi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	testq	%rax, %rax
	sete	%al
.L151:
	testb	%al, %al
	je	.L152
	cmpl	$0, -80(%rbp)
	je	.L153
	movl	$4, %eax
	jmp	.L154
.L153:
	movl	$2, %eax
.L154:
	addq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L146
	jmp	.L139
.L152:
	addl	$1, -20(%rbp)
.L147:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L156
	jmp	.L149
.L159:
	nop
.L149:
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L157
	movl	$0, %eax
	jmp	.L141
.L157:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -76(%rbp)
	je	.L158
	jmp	.L139
.L158:
	movl	$1, %eax
.L141:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	probable_prime, .-probable_prime
	.type	probable_prime_dh, @function
probable_prime_dh:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movl	$0, -24(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	calc_trial_divisions
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	primes(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %eax
	notq	%rax
	movq	%rax, -40(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L190
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	notq	%rax
	cmpq	-40(%rbp), %rax
	jnb	.L191
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	notq	%rax
	movq	%rax, -40(%rbp)
	jmp	.L186
.L191:
	nop
.L163:
.L186:
	movq	16(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_rand_ex@PLT
	testl	%eax, %eax
	je	.L192
	movq	16(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L193
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L194
	cmpq	$0, -104(%rbp)
	jne	.L167
	cmpl	$0, -80(%rbp)
	je	.L168
	movl	$3, %edx
	jmp	.L169
.L168:
	movl	$1, %edx
.L169:
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	jne	.L170
	jmp	.L162
.L167:
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L195
.L170:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -76(%rbp)
	jg	.L171
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	cmpl	$0, -80(%rbp)
	je	.L172
	movl	$5, %edx
	jmp	.L173
.L172:
	movl	$3, %edx
.L173:
	cmpq	%rdx, %rax
	jnb	.L174
.L171:
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L196
.L174:
	movl	$1, -20(%rbp)
	jmp	.L175
.L177:
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	primes(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %edx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_mod_word@PLT
	movq	%rax, -64(%rbp)
	cmpq	$-1, -64(%rbp)
	je	.L197
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	-64(%rbp), %rdx
	movw	%dx, (%rax)
	addl	$1, -20(%rbp)
.L175:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L177
	movq	$0, -32(%rbp)
.L178:
	movl	$1, -20(%rbp)
	jmp	.L179
.L187:
	cmpl	$31, -76(%rbp)
	jg	.L180
	cmpq	$2147483647, -32(%rbp)
	ja	.L180
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	primes(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %edx
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	leaq	primes(%rip), %rax
	movzwl	(%rcx,%rax), %eax
	movzwl	%ax, %eax
	movq	%rdx, %rbx
	imulq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	cmpq	%rbx, %rax
	jb	.L198
.L180:
	cmpl	$0, -80(%rbp)
	je	.L182
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	primes(%rip), %rdx
	movzwl	(%rcx,%rdx), %edx
	movzwl	%dx, %ebx
	movl	$0, %edx
	divq	%rbx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	cmpq	$1, %rax
	setbe	%al
	jmp	.L183
.L182:
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	primes(%rip), %rdx
	movzwl	(%rcx,%rdx), %edx
	movzwl	%dx, %ebx
	movl	$0, %edx
	divq	%rbx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	testq	%rax, %rax
	sete	%al
.L183:
	testb	%al, %al
	je	.L184
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	addq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L178
	jmp	.L186
.L184:
	addl	$1, -20(%rbp)
.L179:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L187
	jmp	.L181
.L198:
	nop
.L181:
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L199
	movl	$1, -24(%rbp)
	jmp	.L162
.L190:
	nop
	jmp	.L162
.L192:
	nop
	jmp	.L162
.L193:
	nop
	jmp	.L162
.L194:
	nop
	jmp	.L162
.L195:
	nop
	jmp	.L162
.L196:
	nop
	jmp	.L162
.L197:
	nop
	jmp	.L162
.L199:
	nop
.L162:
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	probable_prime_dh, .-probable_prime_dh
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"BN_generate_prime_ex2"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
