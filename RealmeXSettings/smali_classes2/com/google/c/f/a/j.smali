.class public final Lcom/google/c/f/a/j;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final a:Lcom/google/c/f/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/c/f/a/a/a;

    invoke-direct {v0}, Lcom/google/c/f/a/a/a;-><init>()V

    sput-object v0, Lcom/google/c/f/a/j;->a:Lcom/google/c/f/a/a/a;

    return-void
.end method

.method private static a([I)I
    .locals 4

    .line 175
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    .line 176
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static a(I[I[I[I[[I)Lcom/google/c/b/e;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;,
            Lcom/google/c/d;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 294
    array-length v3, v2

    new-array v3, v3, [I

    const/16 v4, 0x64

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_1b

    const/4 v6, 0x0

    .line 298
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 299
    aget v7, v2, v6

    aget-object v8, p4, v6

    aget v9, v3, v6

    aget v8, v8, v9

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    .line 50266
    :try_start_0
    array-length v7, v0

    if-eqz v7, :cond_16

    add-int/lit8 v7, p0, 0x1

    shl-int v7, v6, v7

    if-eqz v1, :cond_1

    .line 50279
    array-length v8, v1

    div-int/lit8 v9, v7, 0x2

    add-int/lit8 v9, v9, 0x3

    if-gt v8, v9, :cond_15

    :cond_1
    if-ltz v7, :cond_15

    const/16 v8, 0x200

    if-gt v7, v8, :cond_15

    .line 50286
    sget-object v8, Lcom/google/c/f/a/j;->a:Lcom/google/c/f/a/a/a;

    .line 50287
    new-instance v9, Lcom/google/c/f/a/a/c;

    iget-object v10, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    invoke-direct {v9, v10, v0}, Lcom/google/c/f/a/a/c;-><init>(Lcom/google/c/f/a/a/b;[I)V

    .line 50288
    new-array v10, v7, [I

    move v11, v7

    const/4 v12, 0x0

    :goto_2
    if-lez v11, :cond_3

    .line 50291
    iget-object v13, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    .line 50331
    iget-object v13, v13, Lcom/google/c/f/a/a/b;->b:[I

    aget v13, v13, v11

    .line 50291
    invoke-virtual {v9, v13}, Lcom/google/c/f/a/a/c;->b(I)I

    move-result v13

    sub-int v14, v7, v11

    .line 50292
    aput v13, v10, v14

    if-eqz v13, :cond_2

    move v12, v6

    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_3
    if-nez v12, :cond_4

    move/from16 v16, v5

    const/4 v4, 0x0

    goto/16 :goto_a

    .line 50302
    :cond_4
    iget-object v9, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    .line 50332
    iget-object v9, v9, Lcom/google/c/f/a/a/b;->e:Lcom/google/c/f/a/a/c;

    .line 50303
    array-length v11, v1

    move-object v12, v9

    const/4 v9, 0x0

    :goto_3
    const/4 v13, 0x2

    if-ge v9, v11, :cond_5

    aget v14, v1, v9

    .line 50304
    iget-object v15, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    array-length v4, v0

    sub-int/2addr v4, v6

    sub-int/2addr v4, v14

    .line 50333
    iget-object v14, v15, Lcom/google/c/f/a/a/b;->b:[I

    aget v4, v14, v4

    .line 50306
    new-instance v14, Lcom/google/c/f/a/a/c;

    iget-object v15, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    new-array v13, v13, [I

    iget-object v6, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v4}, Lcom/google/c/f/a/a/b;->c(II)I

    move-result v4

    aput v4, v13, v2

    const/4 v2, 0x1

    aput v2, v13, v2

    invoke-direct {v14, v15, v13}, Lcom/google/c/f/a/a/c;-><init>(Lcom/google/c/f/a/a/b;[I)V

    .line 50307
    invoke-virtual {v12, v14}, Lcom/google/c/f/a/a/c;->c(Lcom/google/c/f/a/a/c;)Lcom/google/c/f/a/a/c;

    move-result-object v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    const/4 v6, 0x1

    goto :goto_3

    .line 50310
    :cond_5
    new-instance v2, Lcom/google/c/f/a/a/c;

    iget-object v4, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    invoke-direct {v2, v4, v10}, Lcom/google/c/f/a/a/c;-><init>(Lcom/google/c/f/a/a/b;[I)V

    .line 50313
    iget-object v4, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    const/4 v6, 0x1

    invoke-virtual {v4, v7, v6}, Lcom/google/c/f/a/a/b;->a(II)Lcom/google/c/f/a/a/c;

    move-result-object v4

    .line 50380
    iget-object v9, v4, Lcom/google/c/f/a/a/c;->b:[I

    array-length v9, v9

    sub-int/2addr v9, v6

    .line 50381
    iget-object v10, v2, Lcom/google/c/f/a/a/c;->b:[I

    array-length v10, v10

    sub-int/2addr v10, v6

    if-ge v9, v10, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    .line 50342
    :goto_4
    iget-object v6, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    .line 50382
    iget-object v6, v6, Lcom/google/c/f/a/a/b;->d:Lcom/google/c/f/a/a/c;

    .line 50343
    iget-object v9, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    .line 50383
    iget-object v9, v9, Lcom/google/c/f/a/a/b;->e:Lcom/google/c/f/a/a/c;

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    move-object/from16 v19, v9

    move-object v9, v6

    move-object/from16 v6, v19

    .line 50384
    :goto_5
    iget-object v10, v2, Lcom/google/c/f/a/a/c;->b:[I

    array-length v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .line 50346
    div-int/lit8 v11, v7, 0x2

    if-lt v10, v11, :cond_c

    .line 50353
    invoke-virtual {v2}, Lcom/google/c/f/a/a/c;->a()Z

    move-result v10

    if-nez v10, :cond_b

    .line 50358
    iget-object v10, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    .line 50385
    iget-object v10, v10, Lcom/google/c/f/a/a/b;->d:Lcom/google/c/f/a/a/c;

    .line 50386
    iget-object v11, v2, Lcom/google/c/f/a/a/c;->b:[I

    array-length v11, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 50359
    invoke-virtual {v2, v11}, Lcom/google/c/f/a/a/c;->a(I)I

    move-result v11

    .line 50360
    iget-object v12, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    invoke-virtual {v12, v11}, Lcom/google/c/f/a/a/b;->a(I)I

    move-result v11

    .line 50387
    :goto_6
    iget-object v12, v4, Lcom/google/c/f/a/a/c;->b:[I

    array-length v12, v12

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    .line 50388
    iget-object v15, v2, Lcom/google/c/f/a/a/c;->b:[I

    array-length v15, v15

    sub-int/2addr v15, v14

    if-lt v12, v15, :cond_a

    .line 50361
    invoke-virtual {v4}, Lcom/google/c/f/a/a/c;->a()Z

    move-result v12

    if-nez v12, :cond_a

    .line 50389
    iget-object v12, v4, Lcom/google/c/f/a/a/c;->b:[I

    array-length v12, v12

    sub-int/2addr v12, v14

    .line 50390
    iget-object v15, v2, Lcom/google/c/f/a/a/c;->b:[I

    array-length v15, v15

    sub-int/2addr v15, v14

    sub-int/2addr v12, v15

    .line 50363
    iget-object v15, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    .line 50391
    iget-object v13, v4, Lcom/google/c/f/a/a/c;->b:[I

    array-length v13, v13

    sub-int/2addr v13, v14

    .line 50363
    invoke-virtual {v4, v13}, Lcom/google/c/f/a/a/c;->a(I)I

    move-result v13

    invoke-virtual {v15, v13, v11}, Lcom/google/c/f/a/a/b;->d(II)I

    move-result v13

    .line 50364
    iget-object v14, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    invoke-virtual {v14, v12, v13}, Lcom/google/c/f/a/a/b;->a(II)Lcom/google/c/f/a/a/c;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/google/c/f/a/a/c;->a(Lcom/google/c/f/a/a/c;)Lcom/google/c/f/a/a/c;

    move-result-object v10

    if-ltz v12, :cond_9

    if-nez v13, :cond_7

    .line 50396
    iget-object v12, v2, Lcom/google/c/f/a/a/c;->a:Lcom/google/c/f/a/a/b;

    .line 50404
    iget-object v12, v12, Lcom/google/c/f/a/a/b;->d:Lcom/google/c/f/a/a/c;

    move/from16 v16, v5

    move-object/from16 v17, v10

    goto :goto_8

    .line 50398
    :cond_7
    iget-object v14, v2, Lcom/google/c/f/a/a/c;->b:[I

    array-length v14, v14

    add-int/2addr v12, v14

    .line 50399
    new-array v12, v12, [I
    :try_end_0
    .catch Lcom/google/c/d; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v14, :cond_8

    move/from16 v16, v5

    .line 50401
    :try_start_1
    iget-object v5, v2, Lcom/google/c/f/a/a/c;->a:Lcom/google/c/f/a/a/b;

    move-object/from16 v17, v10

    iget-object v10, v2, Lcom/google/c/f/a/a/c;->b:[I

    aget v10, v10, v15

    invoke-virtual {v5, v10, v13}, Lcom/google/c/f/a/a/b;->d(II)I

    move-result v5

    aput v5, v12, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v16

    move-object/from16 v10, v17

    goto :goto_7

    :cond_8
    move/from16 v16, v5

    move-object/from16 v17, v10

    .line 50403
    new-instance v5, Lcom/google/c/f/a/a/c;

    iget-object v10, v2, Lcom/google/c/f/a/a/c;->a:Lcom/google/c/f/a/a/b;

    invoke-direct {v5, v10, v12}, Lcom/google/c/f/a/a/c;-><init>(Lcom/google/c/f/a/a/b;[I)V

    move-object v12, v5

    .line 50365
    :goto_8
    invoke-virtual {v4, v12}, Lcom/google/c/f/a/a/c;->b(Lcom/google/c/f/a/a/c;)Lcom/google/c/f/a/a/c;

    move-result-object v4

    move/from16 v5, v16

    move-object/from16 v10, v17

    const/4 v13, 0x2

    goto :goto_6

    :cond_9
    move/from16 v16, v5

    .line 50393
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_a
    move/from16 v16, v5

    .line 50368
    invoke-virtual {v10, v6}, Lcom/google/c/f/a/a/c;->c(Lcom/google/c/f/a/a/c;)Lcom/google/c/f/a/a/c;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/c/f/a/a/c;->b(Lcom/google/c/f/a/a/c;)Lcom/google/c/f/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/c/f/a/a/c;->b()Lcom/google/c/f/a/a/c;

    move-result-object v5

    move-object v9, v6

    const/4 v13, 0x2

    move-object v6, v5

    move/from16 v5, v16

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    goto/16 :goto_5

    :cond_b
    move/from16 v16, v5

    .line 50355
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object v2

    throw v2

    :cond_c
    move/from16 v16, v5

    const/4 v4, 0x0

    .line 50371
    invoke-virtual {v6, v4}, Lcom/google/c/f/a/a/c;->a(I)I

    move-result v5

    if-eqz v5, :cond_14

    .line 50376
    iget-object v4, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    invoke-virtual {v4, v5}, Lcom/google/c/f/a/a/b;->a(I)I

    move-result v4

    .line 50377
    invoke-virtual {v6, v4}, Lcom/google/c/f/a/a/c;->c(I)Lcom/google/c/f/a/a/c;

    move-result-object v5

    .line 50378
    invoke-virtual {v2, v4}, Lcom/google/c/f/a/a/c;->c(I)Lcom/google/c/f/a/a/c;

    move-result-object v2

    const/4 v4, 0x2

    .line 50379
    new-array v4, v4, [Lcom/google/c/f/a/a/c;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 50315
    aget-object v2, v4, v6

    .line 50316
    aget-object v4, v4, v5

    .line 50320
    invoke-virtual {v8, v2}, Lcom/google/c/f/a/a/a;->a(Lcom/google/c/f/a/a/c;)[I

    move-result-object v5

    .line 50321
    invoke-virtual {v8, v4, v2, v5}, Lcom/google/c/f/a/a/a;->a(Lcom/google/c/f/a/a/c;Lcom/google/c/f/a/a/c;[I)[I

    move-result-object v2

    const/4 v4, 0x0

    .line 50323
    :goto_9
    array-length v6, v5

    if-ge v4, v6, :cond_f

    .line 50324
    array-length v6, v0

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    iget-object v9, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    aget v10, v5, v4

    if-eqz v10, :cond_e

    .line 50408
    iget-object v9, v9, Lcom/google/c/f/a/a/b;->c:[I

    aget v9, v9, v10

    sub-int/2addr v6, v9

    if-ltz v6, :cond_d

    .line 50328
    iget-object v9, v8, Lcom/google/c/f/a/a/a;->a:Lcom/google/c/f/a/a/b;

    aget v10, v0, v6

    aget v11, v2, v4

    invoke-virtual {v9, v10, v11}, Lcom/google/c/f/a/a/b;->c(II)I

    move-result v9

    aput v9, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 50326
    :cond_d
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object v2

    throw v2

    .line 50406
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 50330
    :cond_f
    array-length v4, v5

    .line 50409
    :goto_a
    array-length v2, v0

    const/4 v5, 0x4

    if-lt v2, v5, :cond_13

    const/4 v2, 0x0

    .line 50417
    aget v5, v0, v2

    .line 50418
    array-length v2, v0

    if-gt v5, v2, :cond_12

    if-nez v5, :cond_11

    .line 50423
    array-length v2, v0

    if-ge v7, v2, :cond_10

    .line 50424
    array-length v2, v0

    sub-int/2addr v2, v7

    const/4 v5, 0x0

    aput v2, v0, v5

    goto :goto_b

    .line 50426
    :cond_10
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v2

    throw v2

    .line 50275
    :cond_11
    :goto_b
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/c/f/a/e;->a([ILjava/lang/String;)Lcom/google/c/b/e;

    move-result-object v2

    .line 50276
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 50430
    iput-object v4, v2, Lcom/google/c/b/e;->e:Ljava/lang/Integer;

    .line 50277
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 50432
    iput-object v4, v2, Lcom/google/c/b/e;->f:Ljava/lang/Integer;

    return-object v2

    .line 50419
    :cond_12
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v2

    throw v2

    .line 50412
    :cond_13
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v2

    throw v2

    .line 50373
    :cond_14
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object v2

    throw v2

    :cond_15
    move/from16 v16, v5

    .line 50284
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object v2

    throw v2

    :cond_16
    move/from16 v16, v5

    .line 50267
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v2

    throw v2
    :try_end_1
    .catch Lcom/google/c/d; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move/from16 v16, v5

    .line 306
    :catch_1
    array-length v2, v3

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    .line 309
    :goto_c
    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 310
    aget v4, v3, v2

    aget-object v5, p4, v2

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_17

    .line 311
    aget v4, v3, v2

    add-int/2addr v4, v6

    aput v4, v3, v2

    goto :goto_d

    :cond_17
    const/4 v4, 0x0

    .line 314
    aput v4, v3, v2

    .line 315
    array-length v5, v3

    sub-int/2addr v5, v6

    if-eq v2, v5, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 316
    :cond_18
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object v0

    throw v0

    :cond_19
    :goto_d
    move-object/from16 v2, p3

    move/from16 v4, v16

    goto/16 :goto_0

    .line 307
    :cond_1a
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object v0

    throw v0

    .line 321
    :cond_1b
    invoke-static {}, Lcom/google/c/d;->a()Lcom/google/c/d;

    move-result-object v0

    throw v0
.end method

.method public static a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;II)Lcom/google/c/b/e;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/h;,
            Lcom/google/c/d;
        }
    .end annotation

    .line 58
    new-instance v6, Lcom/google/c/f/a/c;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/c/f/a/c;-><init>(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)V

    const/4 v1, 0x0

    move v2, v1

    move-object v9, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v2, v11, :cond_10

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    .line 64
    invoke-static/range {v3 .. v8}, Lcom/google/c/f/a/j;->a(Lcom/google/c/b/b;Lcom/google/c/f/a/c;Lcom/google/c/q;ZII)Lcom/google/c/f/a/h;

    move-result-object v3

    :cond_0
    move-object v12, v3

    if-eqz p3, :cond_1

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 68
    invoke-static/range {v3 .. v8}, Lcom/google/c/f/a/j;->a(Lcom/google/c/b/b;Lcom/google/c/f/a/c;Lcom/google/c/q;ZII)Lcom/google/c/f/a/h;

    move-result-object v3

    move-object v10, v3

    :cond_1
    if-nez v12, :cond_2

    if-nez v10, :cond_2

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_2
    if-eqz v12, :cond_7

    .line 1183
    invoke-virtual {v12}, Lcom/google/c/f/a/h;->b()Lcom/google/c/f/a/a;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v10, :cond_5

    .line 1186
    invoke-virtual {v10}, Lcom/google/c/f/a/h;->b()Lcom/google/c/f/a/a;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 1189
    :cond_4
    invoke-virtual {v12}, Lcom/google/c/f/a/h;->b()Lcom/google/c/f/a/a;

    move-result-object v3

    .line 1190
    invoke-virtual {v10}, Lcom/google/c/f/a/h;->b()Lcom/google/c/f/a/a;

    move-result-object v4

    .line 2039
    iget v5, v3, Lcom/google/c/f/a/a;->a:I

    .line 3039
    iget v6, v4, Lcom/google/c/f/a/a;->a:I

    if-eq v5, v6, :cond_9

    .line 3043
    iget v5, v3, Lcom/google/c/f/a/a;->b:I

    .line 4043
    iget v6, v4, Lcom/google/c/f/a/a;->b:I

    if-eq v5, v6, :cond_9

    .line 4047
    iget v5, v3, Lcom/google/c/f/a/a;->e:I

    .line 5047
    iget v4, v4, Lcom/google/c/f/a/a;->e:I

    if-eq v5, v4, :cond_9

    goto :goto_4

    :cond_5
    :goto_2
    if-nez v12, :cond_6

    goto :goto_4

    .line 1187
    :cond_6
    invoke-virtual {v12}, Lcom/google/c/f/a/h;->b()Lcom/google/c/f/a/a;

    move-result-object v3

    goto :goto_5

    :cond_7
    :goto_3
    if-nez v10, :cond_8

    :goto_4
    const/4 v3, 0x0

    goto :goto_5

    .line 1184
    :cond_8
    invoke-virtual {v10}, Lcom/google/c/f/a/h;->b()Lcom/google/c/f/a/a;

    move-result-object v3

    :cond_9
    :goto_5
    if-nez v3, :cond_a

    goto :goto_1

    .line 1136
    :cond_a
    invoke-static {v12}, Lcom/google/c/f/a/j;->a(Lcom/google/c/f/a/h;)Lcom/google/c/f/a/c;

    move-result-object v4

    invoke-static {v10}, Lcom/google/c/f/a/j;->a(Lcom/google/c/f/a/h;)Lcom/google/c/f/a/c;

    move-result-object v5

    if-nez v4, :cond_b

    move-object v4, v5

    goto :goto_6

    :cond_b
    if-nez v5, :cond_c

    goto :goto_6

    .line 5076
    :cond_c
    new-instance v6, Lcom/google/c/f/a/c;

    iget-object v14, v4, Lcom/google/c/f/a/c;->a:Lcom/google/c/b/b;

    iget-object v15, v4, Lcom/google/c/f/a/c;->b:Lcom/google/c/q;

    iget-object v4, v4, Lcom/google/c/f/a/c;->c:Lcom/google/c/q;

    iget-object v7, v5, Lcom/google/c/f/a/c;->d:Lcom/google/c/q;

    iget-object v5, v5, Lcom/google/c/f/a/c;->e:Lcom/google/c/q;

    move-object v13, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lcom/google/c/f/a/c;-><init>(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)V

    move-object v4, v6

    .line 1138
    :goto_6
    new-instance v5, Lcom/google/c/f/a/f;

    invoke-direct {v5, v3, v4}, Lcom/google/c/f/a/f;-><init>(Lcom/google/c/f/a/a;Lcom/google/c/f/a/c;)V

    move-object v4, v5

    :goto_7
    if-eqz v4, :cond_f

    if-nez v2, :cond_e

    .line 5257
    iget-object v3, v4, Lcom/google/c/f/a/f;->c:Lcom/google/c/f/a/c;

    if-eqz v3, :cond_e

    .line 6257
    iget-object v3, v4, Lcom/google/c/f/a/f;->c:Lcom/google/c/f/a/c;

    .line 7153
    iget v3, v3, Lcom/google/c/f/a/c;->h:I

    .line 8153
    iget v5, v9, Lcom/google/c/f/a/c;->h:I

    if-lt v3, v5, :cond_d

    .line 8257
    iget-object v3, v4, Lcom/google/c/f/a/f;->c:Lcom/google/c/f/a/c;

    .line 9157
    iget v3, v3, Lcom/google/c/f/a/c;->i:I

    .line 10157
    iget v5, v9, Lcom/google/c/f/a/c;->i:I

    if-le v3, v5, :cond_e

    .line 10257
    :cond_d
    iget-object v9, v4, Lcom/google/c/f/a/f;->c:Lcom/google/c/f/a/c;

    add-int/lit8 v2, v2, 0x1

    move-object v3, v12

    goto/16 :goto_0

    .line 11253
    :cond_e
    iput-object v9, v4, Lcom/google/c/f/a/f;->c:Lcom/google/c/f/a/c;

    goto :goto_8

    .line 73
    :cond_f
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    :cond_10
    move-object v12, v3

    .line 12241
    :goto_8
    iget v2, v4, Lcom/google/c/f/a/f;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 12261
    iget-object v5, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aput-object v12, v5, v1

    .line 13261
    iget-object v5, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aput-object v10, v5, v2

    if-eqz v12, :cond_11

    move v5, v3

    goto :goto_9

    :cond_11
    move v5, v1

    :goto_9
    move/from16 v7, p5

    move/from16 v8, p6

    move v6, v3

    :goto_a
    if-gt v6, v2, :cond_2a

    if-eqz v5, :cond_12

    move v12, v6

    goto :goto_b

    :cond_12
    sub-int v12, v2, v6

    .line 13265
    :goto_b
    iget-object v13, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v13, v13, v12

    if-nez v13, :cond_29

    if-eqz v12, :cond_14

    if-ne v12, v2, :cond_13

    goto :goto_d

    .line 99
    :cond_13
    new-instance v13, Lcom/google/c/f/a/g;

    invoke-direct {v13, v9}, Lcom/google/c/f/a/g;-><init>(Lcom/google/c/f/a/c;)V

    :goto_c
    move-object v15, v13

    goto :goto_f

    .line 97
    :cond_14
    :goto_d
    new-instance v13, Lcom/google/c/f/a/h;

    if-nez v12, :cond_15

    move v14, v3

    goto :goto_e

    :cond_15
    move v14, v1

    :goto_e
    invoke-direct {v13, v9, v14}, Lcom/google/c/f/a/h;-><init>(Lcom/google/c/f/a/c;Z)V

    goto :goto_c

    .line 14261
    :goto_f
    iget-object v13, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aput-object v15, v13, v12

    .line 15153
    iget v13, v9, Lcom/google/c/f/a/c;->h:I

    move v14, v7

    move v7, v13

    move v13, v8

    const/4 v8, -0x1

    .line 15157
    :goto_10
    iget v0, v9, Lcom/google/c/f/a/c;->i:I

    if-gt v7, v0, :cond_28

    if-eqz v5, :cond_16

    move v0, v3

    goto :goto_11

    :cond_16
    const/4 v0, -0x1

    :goto_11
    sub-int v3, v12, v0

    .line 15359
    invoke-static {v4, v3}, Lcom/google/c/f/a/j;->a(Lcom/google/c/f/a/f;I)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 16265
    iget-object v1, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v1, v1, v3

    .line 15360
    invoke-virtual {v1, v7}, Lcom/google/c/f/a/g;->c(I)Lcom/google/c/f/a/d;

    move-result-object v1

    goto :goto_12

    :cond_17
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_19

    if-eqz v5, :cond_18

    .line 17060
    iget v0, v1, Lcom/google/c/f/a/d;->b:I

    goto :goto_13

    .line 18056
    :cond_18
    iget v0, v1, Lcom/google/c/f/a/d;->a:I

    :goto_13
    move/from16 v21, v2

    goto/16 :goto_17

    .line 18265
    :cond_19
    iget-object v1, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v1, v1, v12

    .line 15365
    invoke-virtual {v1, v7}, Lcom/google/c/f/a/g;->a(I)Lcom/google/c/f/a/d;

    move-result-object v1

    if-eqz v1, :cond_1b

    if-eqz v5, :cond_1a

    .line 19056
    iget v0, v1, Lcom/google/c/f/a/d;->a:I

    goto :goto_13

    .line 19060
    :cond_1a
    iget v0, v1, Lcom/google/c/f/a/d;->b:I

    goto :goto_13

    .line 15369
    :cond_1b
    invoke-static {v4, v3}, Lcom/google/c/f/a/j;->a(Lcom/google/c/f/a/f;I)Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 19265
    iget-object v1, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v1, v1, v3

    .line 15370
    invoke-virtual {v1, v7}, Lcom/google/c/f/a/g;->a(I)Lcom/google/c/f/a/d;

    move-result-object v1

    :cond_1c
    if-eqz v1, :cond_1e

    if-eqz v5, :cond_1d

    .line 20060
    iget v0, v1, Lcom/google/c/f/a/d;->b:I

    goto :goto_13

    .line 21056
    :cond_1d
    iget v0, v1, Lcom/google/c/f/a/d;->a:I

    goto :goto_13

    :cond_1e
    move v1, v12

    const/4 v3, 0x0

    :goto_14
    sub-int/2addr v1, v0

    .line 15377
    invoke-static {v4, v1}, Lcom/google/c/f/a/j;->a(Lcom/google/c/f/a/f;I)Z

    move-result v16

    if-eqz v16, :cond_22

    .line 21265
    iget-object v11, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v11, v11, v1

    .line 22081
    iget-object v11, v11, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 15379
    array-length v10, v11

    move/from16 p5, v1

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v10, :cond_21

    move/from16 v21, v2

    aget-object v2, v11, v1

    if-eqz v2, :cond_20

    if-eqz v5, :cond_1f

    .line 23060
    iget v1, v2, Lcom/google/c/f/a/d;->b:I

    goto :goto_16

    .line 24056
    :cond_1f
    iget v1, v2, Lcom/google/c/f/a/d;->a:I

    :goto_16
    mul-int/2addr v0, v3

    .line 24060
    iget v3, v2, Lcom/google/c/f/a/d;->b:I

    .line 25056
    iget v2, v2, Lcom/google/c/f/a/d;->a:I

    sub-int/2addr v3, v2

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_17

    :cond_20
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v21

    goto :goto_15

    :cond_21
    move/from16 v21, v2

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p5

    const/4 v11, 0x2

    goto :goto_14

    :cond_22
    move/from16 v21, v2

    if-eqz v5, :cond_23

    .line 25257
    iget-object v0, v4, Lcom/google/c/f/a/f;->c:Lcom/google/c/f/a/c;

    .line 26145
    iget v0, v0, Lcom/google/c/f/a/c;->f:I

    goto :goto_17

    .line 26257
    :cond_23
    iget-object v0, v4, Lcom/google/c/f/a/f;->c:Lcom/google/c/f/a/c;

    .line 27149
    iget v0, v0, Lcom/google/c/f/a/c;->g:I

    :goto_17
    if-ltz v0, :cond_24

    .line 28149
    iget v1, v9, Lcom/google/c/f/a/c;->g:I

    if-le v0, v1, :cond_25

    :cond_24
    const/4 v0, -0x1

    if-eq v8, v0, :cond_26

    move v0, v8

    .line 29145
    :cond_25
    iget v1, v9, Lcom/google/c/f/a/c;->f:I

    .line 29149
    iget v2, v9, Lcom/google/c/f/a/c;->g:I

    move v3, v13

    move-object/from16 v13, p0

    move v10, v14

    move v14, v1

    move-object v1, v15

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v0

    move/from16 v18, v7

    move/from16 v19, v10

    move/from16 v20, v3

    .line 113
    invoke-static/range {v13 .. v20}, Lcom/google/c/f/a/j;->a(Lcom/google/c/b/b;IIZIIII)Lcom/google/c/f/a/d;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 116
    invoke-virtual {v1, v7, v2}, Lcom/google/c/f/a/g;->a(ILcom/google/c/f/a/d;)V

    .line 118
    invoke-virtual {v2}, Lcom/google/c/f/a/d;->c()I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 119
    invoke-virtual {v2}, Lcom/google/c/f/a/d;->c()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v0

    goto :goto_18

    :cond_26
    move v3, v13

    move v10, v14

    move-object v1, v15

    :cond_27
    move v13, v3

    move v14, v10

    :goto_18
    add-int/lit8 v7, v7, 0x1

    move-object v15, v1

    move/from16 v2, v21

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x2

    goto/16 :goto_10

    :cond_28
    move/from16 v21, v2

    move v3, v13

    move v10, v14

    move v8, v3

    move v7, v10

    goto :goto_19

    :cond_29
    move/from16 v21, v2

    :goto_19
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v21

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x2

    goto/16 :goto_a

    .line 30245
    :cond_2a
    iget-object v0, v4, Lcom/google/c/f/a/f;->a:Lcom/google/c/f/a/a;

    .line 31047
    iget v0, v0, Lcom/google/c/f/a/a;->e:I

    .line 31241
    iget v1, v4, Lcom/google/c/f/a/f;->d:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 29325
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/google/c/f/a/b;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/c/f/a/b;

    const/4 v1, 0x0

    .line 29327
    :goto_1a
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    const/4 v2, 0x0

    .line 29328
    :goto_1b
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2b

    .line 29329
    aget-object v3, v0, v1

    new-instance v5, Lcom/google/c/f/a/b;

    invoke-direct {v5}, Lcom/google/c/f/a/b;-><init>()V

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 32043
    :cond_2c
    iget-object v1, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v4, v1}, Lcom/google/c/f/a/f;->a(Lcom/google/c/f/a/g;)V

    .line 32044
    iget-object v1, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    iget v3, v4, Lcom/google/c/f/a/f;->d:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    aget-object v1, v1, v3

    invoke-virtual {v4, v1}, Lcom/google/c/f/a/f;->a(Lcom/google/c/f/a/g;)V

    const/16 v1, 0x3a0

    move v3, v1

    .line 32098
    :goto_1c
    iget-object v6, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v6, v6, v2

    if-eqz v6, :cond_30

    iget-object v6, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    iget v7, v4, Lcom/google/c/f/a/f;->d:I

    add-int/2addr v7, v5

    aget-object v6, v6, v7

    if-nez v6, :cond_2d

    goto :goto_20

    .line 32101
    :cond_2d
    iget-object v6, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v6, v6, v2

    .line 33081
    iget-object v2, v6, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 32102
    iget-object v6, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    iget v7, v4, Lcom/google/c/f/a/f;->d:I

    add-int/2addr v7, v5

    aget-object v5, v6, v7

    .line 34081
    iget-object v5, v5, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    const/4 v6, 0x0

    .line 32103
    :goto_1d
    array-length v7, v2

    if-ge v6, v7, :cond_30

    .line 32104
    aget-object v7, v2, v6

    if-eqz v7, :cond_2f

    aget-object v7, v5, v6

    if-eqz v7, :cond_2f

    aget-object v7, v2, v6

    .line 35072
    iget v7, v7, Lcom/google/c/f/a/d;->e:I

    .line 32104
    aget-object v8, v5, v6

    .line 36072
    iget v8, v8, Lcom/google/c/f/a/d;->e:I

    if-ne v7, v8, :cond_2f

    const/4 v7, 0x1

    .line 32107
    :goto_1e
    iget v8, v4, Lcom/google/c/f/a/f;->d:I

    if-gt v7, v8, :cond_2f

    .line 32108
    iget-object v8, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v8, v8, v7

    .line 36081
    iget-object v8, v8, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 32108
    aget-object v8, v8, v6

    if-eqz v8, :cond_2e

    .line 32112
    aget-object v9, v2, v6

    .line 37072
    iget v9, v9, Lcom/google/c/f/a/d;->e:I

    .line 37076
    iput v9, v8, Lcom/google/c/f/a/d;->e:I

    .line 32113
    invoke-virtual {v8}, Lcom/google/c/f/a/d;->a()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 32114
    iget-object v8, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v8, v8, v7

    .line 37081
    iget-object v8, v8, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    const/4 v9, 0x0

    .line 32114
    aput-object v9, v8, v6

    goto :goto_1f

    :cond_2e
    const/4 v9, 0x0

    :goto_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_2f
    const/4 v9, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_30
    :goto_20
    const/4 v9, 0x0

    .line 37147
    iget-object v2, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-nez v2, :cond_31

    goto :goto_23

    .line 37151
    :cond_31
    iget-object v2, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v2, v2, v5

    .line 38081
    iget-object v2, v2, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 37152
    :goto_21
    array-length v7, v2

    if-ge v5, v7, :cond_35

    .line 37153
    aget-object v7, v2, v5

    if-eqz v7, :cond_34

    .line 37156
    aget-object v7, v2, v5

    .line 39072
    iget v7, v7, Lcom/google/c/f/a/d;->e:I

    move v10, v6

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 37158
    :goto_22
    iget v11, v4, Lcom/google/c/f/a/f;->d:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    if-ge v6, v11, :cond_33

    const/4 v11, 0x2

    if-ge v8, v11, :cond_33

    .line 37159
    iget-object v11, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v11, v11, v6

    .line 39081
    iget-object v11, v11, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 37159
    aget-object v11, v11, v5

    if-eqz v11, :cond_32

    .line 37161
    invoke-static {v7, v8, v11}, Lcom/google/c/f/a/f;->a(IILcom/google/c/f/a/d;)I

    move-result v8

    .line 37162
    invoke-virtual {v11}, Lcom/google/c/f/a/d;->a()Z

    move-result v11

    if-nez v11, :cond_32

    add-int/lit8 v10, v10, 0x1

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_33
    move v6, v10

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_35
    move v5, v6

    .line 39122
    :goto_23
    iget-object v2, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    iget v6, v4, Lcom/google/c/f/a/f;->d:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aget-object v2, v2, v6

    if-nez v2, :cond_36

    const/4 v8, 0x0

    goto :goto_26

    .line 39126
    :cond_36
    iget-object v2, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    iget v6, v4, Lcom/google/c/f/a/f;->d:I

    add-int/2addr v6, v7

    aget-object v2, v2, v6

    .line 40081
    iget-object v2, v2, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 39127
    :goto_24
    array-length v10, v2

    if-ge v6, v10, :cond_39

    .line 39128
    aget-object v10, v2, v6

    if-eqz v10, :cond_38

    .line 39131
    aget-object v10, v2, v6

    .line 41072
    iget v10, v10, Lcom/google/c/f/a/d;->e:I

    .line 39133
    iget v11, v4, Lcom/google/c/f/a/f;->d:I

    add-int/2addr v11, v7

    const/4 v7, 0x0

    :goto_25
    if-lez v11, :cond_38

    const/4 v12, 0x2

    if-ge v7, v12, :cond_38

    .line 39134
    iget-object v12, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v12, v12, v11

    .line 41081
    iget-object v12, v12, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 39134
    aget-object v12, v12, v6

    if-eqz v12, :cond_37

    .line 39136
    invoke-static {v10, v7, v12}, Lcom/google/c/f/a/f;->a(IILcom/google/c/f/a/d;)I

    move-result v7

    .line 39137
    invoke-virtual {v12}, Lcom/google/c/f/a/d;->a()Z

    move-result v12

    if-nez v12, :cond_37

    add-int/lit8 v8, v8, 0x1

    :cond_37
    add-int/lit8 v11, v11, -0x1

    goto :goto_25

    :cond_38
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_24

    :cond_39
    :goto_26
    add-int v2, v5, v8

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto/16 :goto_2c

    :cond_3a
    const/4 v5, 0x1

    .line 32073
    :goto_27
    iget v6, v4, Lcom/google/c/f/a/f;->d:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_43

    .line 32074
    iget-object v6, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v6, v6, v5

    .line 42081
    iget-object v6, v6, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    const/4 v7, 0x0

    .line 32075
    :goto_28
    array-length v8, v6

    if-ge v7, v8, :cond_42

    .line 32076
    aget-object v8, v6, v7

    if-eqz v8, :cond_41

    .line 32079
    aget-object v8, v6, v7

    invoke-virtual {v8}, Lcom/google/c/f/a/d;->a()Z

    move-result v8

    if-nez v8, :cond_41

    .line 42187
    aget-object v8, v6, v7

    .line 42188
    iget-object v10, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    add-int/lit8 v11, v5, -0x1

    aget-object v10, v10, v11

    .line 43081
    iget-object v10, v10, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 42190
    iget-object v11, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    add-int/lit8 v12, v5, 0x1

    aget-object v11, v11, v12

    if-eqz v11, :cond_3b

    .line 42191
    iget-object v11, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    aget-object v11, v11, v12

    .line 44081
    iget-object v11, v11, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    goto :goto_29

    :cond_3b
    move-object v11, v10

    :goto_29
    const/16 v12, 0xe

    .line 42194
    new-array v13, v12, [Lcom/google/c/f/a/d;

    .line 42196
    aget-object v14, v10, v7

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const/4 v14, 0x3

    .line 42197
    aget-object v15, v11, v7

    aput-object v15, v13, v14

    if-lez v7, :cond_3c

    add-int/lit8 v14, v7, -0x1

    .line 42200
    aget-object v15, v6, v14

    const/16 v16, 0x0

    aput-object v15, v13, v16

    const/4 v15, 0x4

    .line 42201
    aget-object v16, v10, v14

    aput-object v16, v13, v15

    const/4 v15, 0x5

    .line 42202
    aget-object v14, v11, v14

    aput-object v14, v13, v15

    :cond_3c
    const/4 v14, 0x1

    if-le v7, v14, :cond_3d

    const/16 v14, 0x8

    add-int/lit8 v15, v7, -0x2

    .line 42205
    aget-object v16, v6, v15

    aput-object v16, v13, v14

    const/16 v14, 0xa

    .line 42206
    aget-object v16, v10, v15

    aput-object v16, v13, v14

    const/16 v14, 0xb

    .line 42207
    aget-object v15, v11, v15

    aput-object v15, v13, v14

    .line 42209
    :cond_3d
    array-length v14, v6

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ge v7, v14, :cond_3e

    add-int/lit8 v14, v7, 0x1

    .line 42210
    aget-object v16, v6, v14

    aput-object v16, v13, v15

    const/4 v15, 0x6

    .line 42211
    aget-object v16, v10, v14

    aput-object v16, v13, v15

    const/4 v15, 0x7

    .line 42212
    aget-object v14, v11, v14

    aput-object v14, v13, v15

    .line 42214
    :cond_3e
    array-length v14, v6

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    if-ge v7, v14, :cond_3f

    const/16 v14, 0x9

    add-int/lit8 v15, v7, 0x2

    .line 42215
    aget-object v16, v6, v15

    aput-object v16, v13, v14

    const/16 v14, 0xc

    .line 42216
    aget-object v10, v10, v15

    aput-object v10, v13, v14

    const/16 v10, 0xd

    .line 42217
    aget-object v11, v11, v15

    aput-object v11, v13, v10

    :cond_3f
    const/4 v10, 0x0

    :goto_2a
    if-ge v10, v12, :cond_41

    .line 42219
    aget-object v11, v13, v10

    if-eqz v11, :cond_40

    .line 44233
    invoke-virtual {v11}, Lcom/google/c/f/a/d;->a()Z

    move-result v14

    if-eqz v14, :cond_40

    .line 45064
    iget v14, v11, Lcom/google/c/f/a/d;->c:I

    .line 46064
    iget v15, v8, Lcom/google/c/f/a/d;->c:I

    if-ne v14, v15, :cond_40

    .line 46072
    iget v11, v11, Lcom/google/c/f/a/d;->e:I

    .line 46076
    iput v11, v8, Lcom/google/c/f/a/d;->e:I

    const/4 v11, 0x1

    goto :goto_2b

    :cond_40
    const/4 v11, 0x0

    :goto_2b
    if-nez v11, :cond_41

    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_28

    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_27

    :cond_43
    :goto_2c
    if-lez v2, :cond_45

    if-lt v2, v3, :cond_44

    goto :goto_2d

    :cond_44
    move v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1c

    .line 32051
    :cond_45
    :goto_2d
    iget-object v2, v4, Lcom/google/c/f/a/f;->b:[Lcom/google/c/f/a/g;

    .line 29334
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_2e
    if-ge v5, v3, :cond_49

    aget-object v7, v2, v5

    const/4 v8, 0x1

    add-int/2addr v6, v8

    if-eqz v7, :cond_48

    .line 46081
    iget-object v7, v7, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    .line 29339
    array-length v8, v7

    const/4 v9, 0x0

    :goto_2f
    if-ge v9, v8, :cond_48

    aget-object v10, v7, v9

    if-eqz v10, :cond_46

    .line 47072
    iget v11, v10, Lcom/google/c/f/a/d;->e:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_47

    .line 48072
    iget v11, v10, Lcom/google/c/f/a/d;->e:I

    .line 29343
    aget-object v11, v0, v11

    aget-object v11, v11, v6

    .line 49068
    iget v10, v10, Lcom/google/c/f/a/d;->d:I

    .line 29343
    invoke-virtual {v11, v10}, Lcom/google/c/f/a/b;->a(I)V

    goto :goto_30

    :cond_46
    const/4 v12, -0x1

    :cond_47
    :goto_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :cond_48
    const/4 v12, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_49
    const/4 v5, 0x0

    .line 49230
    aget-object v2, v0, v5

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/c/f/a/b;->a()[I

    move-result-object v2

    .line 50241
    iget v3, v4, Lcom/google/c/f/a/f;->d:I

    .line 50242
    iget-object v5, v4, Lcom/google/c/f/a/f;->a:Lcom/google/c/f/a/a;

    .line 50243
    iget v5, v5, Lcom/google/c/f/a/a;->e:I

    mul-int/2addr v3, v5

    .line 50244
    iget-object v5, v4, Lcom/google/c/f/a/f;->a:Lcom/google/c/f/a/a;

    .line 50245
    iget v5, v5, Lcom/google/c/f/a/a;->b:I

    const/4 v6, 0x2

    shl-int v5, v6, v5

    sub-int/2addr v3, v5

    .line 49234
    array-length v5, v2

    if-nez v5, :cond_4b

    if-lez v3, :cond_4a

    if-gt v3, v1, :cond_4a

    const/4 v1, 0x0

    .line 49238
    aget-object v2, v0, v1

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Lcom/google/c/f/a/b;->a(I)V

    goto :goto_31

    .line 49236
    :cond_4a
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    :cond_4b
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 49239
    aget v2, v2, v1

    if-eq v2, v3, :cond_4c

    .line 49241
    aget-object v2, v0, v1

    aget-object v1, v2, v5

    invoke-virtual {v1, v3}, Lcom/google/c/f/a/b;->a(I)V

    .line 29249
    :cond_4c
    :goto_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50247
    iget-object v2, v4, Lcom/google/c/f/a/f;->a:Lcom/google/c/f/a/a;

    .line 50248
    iget v2, v2, Lcom/google/c/f/a/a;->e:I

    .line 50249
    iget v3, v4, Lcom/google/c/f/a/f;->d:I

    mul-int/2addr v2, v3

    .line 29250
    new-array v2, v2, [I

    .line 29251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29252
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 50250
    :goto_32
    iget-object v7, v4, Lcom/google/c/f/a/f;->a:Lcom/google/c/f/a/a;

    .line 50251
    iget v7, v7, Lcom/google/c/f/a/a;->e:I

    if-ge v6, v7, :cond_50

    const/4 v7, 0x0

    .line 50252
    :goto_33
    iget v8, v4, Lcom/google/c/f/a/f;->d:I

    if-ge v7, v8, :cond_4f

    .line 29255
    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/c/f/a/b;->a()[I

    move-result-object v8

    .line 50253
    iget v10, v4, Lcom/google/c/f/a/f;->d:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v7

    .line 29257
    array-length v7, v8

    if-nez v7, :cond_4d

    .line 29258
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v11, 0x1

    goto :goto_34

    .line 29259
    :cond_4d
    array-length v7, v8

    const/4 v11, 0x1

    if-ne v7, v11, :cond_4e

    const/4 v7, 0x0

    .line 29260
    aget v8, v8, v7

    aput v8, v2, v10

    goto :goto_34

    :cond_4e
    const/4 v7, 0x0

    .line 29262
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29263
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_34
    move v7, v9

    goto :goto_33

    :cond_4f
    const/4 v7, 0x0

    const/4 v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_50
    const/4 v7, 0x0

    .line 29267
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 29268
    :goto_35
    array-length v6, v0

    if-ge v7, v6, :cond_51

    .line 29269
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aput-object v6, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 50254
    :cond_51
    iget-object v3, v4, Lcom/google/c/f/a/f;->a:Lcom/google/c/f/a/a;

    .line 50255
    iget v3, v3, Lcom/google/c/f/a/a;->b:I

    .line 29271
    invoke-static {v1}, Lcom/google/c/f/a;->a(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {v5}, Lcom/google/c/f/a;->a(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-static {v3, v2, v1, v4, v0}, Lcom/google/c/f/a/j;->a(I[I[I[I[[I)Lcom/google/c/b/e;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/c/f/a/h;)Lcom/google/c/f/a/c;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/c/f/a/h;->a()[I

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/google/c/f/a/j;->a([I)I

    move-result v1

    .line 149
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget v6, v0, v4

    sub-int v7, v1, v6

    add-int/2addr v5, v7

    if-gtz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50256
    :cond_1
    iget-object v2, p0, Lcom/google/c/f/a/g;->b:[Lcom/google/c/f/a/d;

    move v4, v3

    :goto_1
    if-lez v5, :cond_2

    .line 156
    aget-object v6, v2, v4

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    :cond_2
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_3

    .line 161
    aget v6, v0, v4

    sub-int v6, v1, v6

    add-int/2addr v3, v6

    .line 162
    aget v6, v0, v4

    if-gtz v6, :cond_3

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 166
    :cond_3
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lez v3, :cond_4

    aget-object v1, v2, v0

    if-nez v1, :cond_4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 50257
    :cond_4
    iget-object v0, p0, Lcom/google/c/f/a/g;->a:Lcom/google/c/f/a/c;

    .line 50258
    iget-boolean p0, p0, Lcom/google/c/f/a/h;->c:Z

    .line 169
    invoke-virtual {v0, v5, v3, p0}, Lcom/google/c/f/a/c;->a(IIZ)Lcom/google/c/f/a/c;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/c/b/b;IIZIIII)Lcom/google/c/f/a/d;
    .locals 7

    .line 400
    invoke-static/range {p0 .. p5}, Lcom/google/c/f/a/j;->b(Lcom/google/c/b/b;IIZII)I

    move-result p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 405
    invoke-static/range {v0 .. v5}, Lcom/google/c/f/a/j;->a(Lcom/google/c/b/b;IIZII)[I

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 410
    :cond_0
    invoke-static {p0}, Lcom/google/c/f/a;->a([I)I

    move-result p2

    if-eqz p3, :cond_1

    add-int p3, p4, p2

    move v6, p4

    move p4, p3

    move p3, v6

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 414
    :goto_0
    array-length p5, p0

    shr-int/lit8 p5, p5, 0x1

    if-ge p3, p5, :cond_2

    .line 415
    aget p5, p0, p3

    .line 416
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aget v0, p0, v0

    aput v0, p0, p3

    .line 417
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aput p5, p0, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    sub-int p3, p4, p2

    .line 436
    :goto_1
    invoke-static {p2, p6, p7}, Lcom/google/c/f/a/j;->a(III)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    .line 442
    :cond_3
    invoke-static {p0}, Lcom/google/c/f/a/i;->a([I)I

    move-result p0

    int-to-long p5, p0

    .line 443
    invoke-static {p5, p6}, Lcom/google/c/f/a;->a(J)I

    move-result p2

    const/4 p5, -0x1

    if-ne p2, p5, :cond_4

    return-object p1

    .line 447
    :cond_4
    new-instance p1, Lcom/google/c/f/a/d;

    invoke-static {p0}, Lcom/google/c/f/a/j;->b(I)I

    move-result p0

    invoke-direct {p1, p3, p4, p0, p2}, Lcom/google/c/f/a/d;-><init>(IIII)V

    return-object p1
.end method

.method private static a(Lcom/google/c/b/b;Lcom/google/c/f/a/c;Lcom/google/c/q;ZII)Lcom/google/c/f/a/h;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v10, p3

    .line 206
    new-instance v11, Lcom/google/c/f/a/h;

    invoke-direct {v11, v0, v10}, Lcom/google/c/f/a/h;-><init>(Lcom/google/c/f/a/c;Z)V

    const/4 v2, 0x0

    move v12, v2

    :goto_0
    const/4 v2, 0x2

    if-ge v12, v2, :cond_4

    if-nez v12, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    move v13, v2

    .line 50259
    iget v2, v1, Lcom/google/c/q;->a:F

    float-to-int v2, v2

    .line 50260
    iget v3, v1, Lcom/google/c/q;->b:F

    float-to-int v3, v3

    move v15, v2

    move v14, v3

    .line 50261
    :goto_2
    iget v2, v0, Lcom/google/c/f/a/c;->i:I

    if-gt v14, v2, :cond_3

    .line 50262
    iget v2, v0, Lcom/google/c/f/a/c;->h:I

    if-lt v14, v2, :cond_3

    const/4 v3, 0x0

    move-object/from16 v9, p0

    .line 50263
    iget v4, v9, Lcom/google/c/b/b;->a:I

    move-object/from16 v2, p0

    move/from16 v5, p3

    move v6, v15

    move v7, v14

    move/from16 v8, p4

    move/from16 v9, p5

    .line 213
    invoke-static/range {v2 .. v9}, Lcom/google/c/f/a/j;->a(Lcom/google/c/b/b;IIZIIII)Lcom/google/c/f/a/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {v11, v14, v2}, Lcom/google/c/f/a/h;->a(ILcom/google/c/f/a/d;)V

    if-eqz v10, :cond_1

    .line 50264
    iget v15, v2, Lcom/google/c/f/a/d;->a:I

    goto :goto_3

    .line 50265
    :cond_1
    iget v15, v2, Lcom/google/c/f/a/d;->b:I

    :cond_2
    :goto_3
    add-int/2addr v14, v13

    goto :goto_2

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    return-object v11
.end method

.method private static a(III)Z
    .locals 0

    add-int/lit8 p1, p1, -0x2

    if-gt p1, p0, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/google/c/f/a/f;I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 50434
    iget p0, p0, Lcom/google/c/f/a/f;->d:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    if-gt p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(I)[I
    .locals 4

    const/16 v0, 0x8

    .line 574
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    return-object v0

    .line 585
    :cond_1
    :goto_1
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/google/c/b/b;IIZII)[I
    .locals 8

    const/16 v0, 0x8

    .line 457
    new-array v1, v0, [I

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    move v6, p3

    move v5, v4

    :goto_1
    if-eqz p3, :cond_1

    if-lt p4, p2, :cond_2

    :cond_1
    if-nez p3, :cond_5

    if-lt p4, p1, :cond_5

    :cond_2
    if-ge v5, v0, :cond_5

    .line 463
    invoke-virtual {p0, p4, p5}, Lcom/google/c/b/b;->a(II)Z

    move-result v7

    if-ne v7, v6, :cond_3

    .line 464
    aget v7, v1, v5

    add-int/2addr v7, v2

    aput v7, v1, v5

    add-int/2addr p4, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    if-nez v6, :cond_4

    move v6, v2

    goto :goto_1

    :cond_4
    move v6, v4

    goto :goto_1

    :cond_5
    if-eq v5, v0, :cond_9

    if-eqz p3, :cond_6

    if-eq p4, p2, :cond_7

    :cond_6
    if-nez p3, :cond_8

    if-ne p4, p1, :cond_8

    :cond_7
    const/4 p0, 0x7

    if-ne v5, p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 p0, 0x0

    return-object p0

    :cond_9
    :goto_2
    return-object v1
.end method

.method private static b(I)I
    .locals 0

    .line 592
    invoke-static {p0}, Lcom/google/c/f/a/j;->a(I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/google/c/f/a/j;->b([I)I

    move-result p0

    return p0
.end method

.method private static b(Lcom/google/c/b/b;IIZII)I
    .locals 7

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    move v4, p3

    move v3, v1

    move p3, v2

    move v1, p4

    :goto_1
    const/4 v5, 0x2

    if-ge p3, v5, :cond_6

    :goto_2
    if-eqz v4, :cond_1

    if-ge v1, p1, :cond_2

    :cond_1
    if-nez v4, :cond_4

    if-ge v1, p2, :cond_4

    .line 492
    :cond_2
    invoke-virtual {p0, v1, p5}, Lcom/google/c/b/b;->a(II)Z

    move-result v6

    if-ne v4, v6, :cond_4

    sub-int v6, p4, v1

    .line 494
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v5, :cond_3

    return p4

    :cond_3
    add-int/2addr v1, v3

    goto :goto_2

    :cond_4
    neg-int v3, v3

    if-nez v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method private static b([I)I
    .locals 2

    const/4 v0, 0x0

    .line 596
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget p0, p0, v1

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method
