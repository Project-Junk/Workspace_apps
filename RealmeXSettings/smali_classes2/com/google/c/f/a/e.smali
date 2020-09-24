.class final Lcom/google/c/f/a/e;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/f/a/e$a;
    }
.end annotation


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1d

    .line 61
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/c/f/a/e;->a:[C

    const/16 v0, 0x19

    .line 66
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/c/f/a/e;->b:[C

    const/16 v0, 0x10

    .line 77
    new-array v0, v0, [Ljava/math/BigInteger;

    .line 78
    sput-object v0, Lcom/google/c/f/a/e;->c:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v0, 0x384

    .line 79
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/google/c/f/a/e;->c:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v1, 0x2

    .line 81
    :goto_0
    sget-object v2, Lcom/google/c/f/a/e;->c:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 82
    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private static a(I[IILjava/lang/StringBuilder;)I
    .locals 24

    move/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const/16 v6, 0x386

    const-wide/16 v7, 0x384

    const/16 v11, 0x39c

    const/16 v12, 0x385

    const/16 v13, 0x384

    const/4 v14, 0x6

    const/16 v16, 0x0

    if-ne v0, v12, :cond_7

    .line 442
    new-array v0, v14, [C

    .line 443
    new-array v9, v14, [I

    add-int/lit8 v10, p2, 0x1

    .line 445
    aget v19, p1, p2

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v15, v19

    const-wide/16 v20, 0x0

    .line 446
    :goto_0
    aget v2, p1, v16

    if-ge v10, v2, :cond_4

    if-nez v17, :cond_4

    add-int/lit8 v2, v18, 0x1

    .line 447
    aput v15, v9, v18

    mul-long v20, v20, v7

    int-to-long v7, v15

    add-long v20, v20, v7

    add-int/lit8 v7, v10, 0x1

    .line 450
    aget v15, p1, v10

    if-eq v15, v13, :cond_3

    if-eq v15, v12, :cond_3

    if-eq v15, v6, :cond_3

    if-eq v15, v11, :cond_3

    if-eq v15, v5, :cond_3

    if-eq v15, v4, :cond_3

    if-ne v15, v3, :cond_0

    goto :goto_3

    .line 462
    :cond_0
    rem-int/lit8 v8, v2, 0x5

    if-nez v8, :cond_2

    if-lez v2, :cond_2

    move/from16 v2, v16

    :goto_1
    if-ge v2, v14, :cond_1

    rsub-int/lit8 v8, v2, 0x5

    const-wide/16 v22, 0x100

    move/from16 p0, v15

    .line 466
    rem-long v14, v20, v22

    long-to-int v10, v14

    int-to-char v10, v10

    aput-char v10, v0, v8

    const/16 v8, 0x8

    shr-long v20, v20, v8

    add-int/lit8 v2, v2, 0x1

    move/from16 v15, p0

    const/4 v14, 0x6

    goto :goto_1

    :cond_1
    move/from16 p0, v15

    .line 469
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move v10, v7

    move/from16 v18, v16

    goto :goto_2

    :cond_2
    move/from16 p0, v15

    move/from16 v15, p0

    move/from16 v18, v2

    move v10, v7

    :goto_2
    const-wide/16 v7, 0x384

    const/4 v14, 0x6

    goto :goto_0

    :cond_3
    :goto_3
    move/from16 p0, v15

    add-int/lit8 v10, v7, -0x1

    move/from16 v15, p0

    move/from16 v18, v2

    const-wide/16 v7, 0x384

    const/4 v14, 0x6

    const/16 v17, 0x1

    goto :goto_0

    .line 476
    :cond_4
    aget v0, p1, v16

    if-ne v10, v0, :cond_5

    if-ge v15, v13, :cond_5

    add-int/lit8 v0, v18, 0x1

    .line 477
    aput v15, v9, v18

    goto :goto_4

    :cond_5
    move/from16 v0, v18

    :goto_4
    move/from16 v2, v16

    :goto_5
    if-ge v2, v0, :cond_6

    .line 484
    aget v3, v9, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v0, v10

    goto/16 :goto_a

    :cond_7
    if-ne v0, v11, :cond_d

    move/from16 v0, p2

    move/from16 v2, v16

    move v15, v2

    const-wide/16 v17, 0x0

    .line 493
    :goto_6
    aget v7, p1, v16

    if-ge v0, v7, :cond_e

    if-nez v15, :cond_e

    add-int/lit8 v7, v0, 0x1

    .line 494
    aget v0, p1, v0

    if-ge v0, v13, :cond_9

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0x384

    mul-long v17, v17, v8

    int-to-long v8, v0

    add-long v17, v17, v8

    :cond_8
    move v0, v7

    goto :goto_7

    :cond_9
    if-eq v0, v13, :cond_a

    if-eq v0, v12, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v11, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_a

    if-ne v0, v3, :cond_8

    :cond_a
    add-int/lit8 v7, v7, -0x1

    move v0, v7

    const/4 v15, 0x1

    .line 511
    :goto_7
    rem-int/lit8 v7, v2, 0x5

    if-nez v7, :cond_c

    if-lez v2, :cond_c

    const/4 v7, 0x6

    .line 514
    new-array v2, v7, [C

    move/from16 v8, v16

    :goto_8
    if-ge v8, v7, :cond_b

    rsub-int/lit8 v9, v8, 0x5

    const-wide/16 v20, 0xff

    and-long v3, v17, v20

    long-to-int v3, v3

    int-to-char v3, v3

    .line 516
    aput-char v3, v2, v9

    const/16 v3, 0x8

    shr-long v17, v17, v3

    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    goto :goto_8

    :cond_b
    const/16 v3, 0x8

    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    goto :goto_9

    :cond_c
    const/16 v3, 0x8

    const/4 v7, 0x6

    :goto_9
    const/16 v3, 0x39a

    const/16 v4, 0x39b

    goto :goto_6

    :cond_d
    move/from16 v0, p2

    :cond_e
    :goto_a
    return v0
.end method

.method private static a([IILcom/google/c/f/c;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 145
    aget v2, p0, v1

    if-gt v0, v2, :cond_6

    const/4 v0, 0x2

    .line 149
    new-array v2, v0, [I

    move v3, p1

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 151
    aget v4, p0, v3

    aput v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {v2, v0}, Lcom/google/c/f/a/e;->a([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2034
    iput p1, p2, Lcom/google/c/f/c;->a:I

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-static {p0, v3, p1}, Lcom/google/c/f/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2042
    iput-object p1, p2, Lcom/google/c/f/c;->b:Ljava/lang/String;

    .line 160
    aget p1, p0, v0

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    const/4 v4, 0x1

    if-ne p1, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 162
    aget p1, p0, v1

    sub-int/2addr p1, v0

    new-array p1, p1, [I

    move v2, v1

    move v5, v2

    .line 166
    :goto_1
    aget v6, p0, v1

    if-ge v0, v6, :cond_3

    if-nez v2, :cond_3

    add-int/lit8 v6, v0, 0x1

    .line 167
    aget v0, p0, v0

    const/16 v7, 0x384

    if-ge v0, v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    .line 169
    aput v0, p1, v5

    move v0, v6

    move v5, v7

    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 2058
    iput-boolean v4, p2, Lcom/google/c/f/c;->d:Z

    add-int/lit8 v0, v6, 0x1

    move v2, v4

    goto :goto_1

    .line 178
    :cond_2
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 183
    :cond_3
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 3050
    iput-object p0, p2, Lcom/google/c/f/c;->c:[I

    goto :goto_2

    .line 184
    :cond_4
    aget p0, p0, v0

    if-ne p0, v3, :cond_5

    .line 3058
    iput-boolean v4, p2, Lcom/google/c/f/c;->d:Z

    add-int/lit8 v0, v0, 0x1

    :cond_5
    :goto_2
    return v0

    .line 147
    :cond_6
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0
.end method

.method private static a([IILjava/lang/StringBuilder;)I
    .locals 16

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 204
    aget v2, p0, v1

    sub-int v2, v2, p1

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [I

    .line 206
    aget v4, p0, v1

    sub-int v4, v4, p1

    shl-int/2addr v4, v3

    new-array v4, v4, [I

    move/from16 v5, p1

    move v6, v1

    move v7, v6

    .line 210
    :goto_0
    aget v8, p0, v1

    const/16 v9, 0x391

    const/16 v10, 0x384

    if-ge v5, v8, :cond_3

    if-nez v6, :cond_3

    add-int/lit8 v8, v5, 0x1

    .line 211
    aget v5, p0, v5

    if-ge v5, v10, :cond_0

    .line 213
    div-int/lit8 v9, v5, 0x1e

    aput v9, v2, v7

    add-int/lit8 v9, v7, 0x1

    .line 214
    rem-int/lit8 v5, v5, 0x1e

    aput v5, v2, v9

    add-int/lit8 v7, v7, 0x2

    :goto_1
    move v5, v8

    goto :goto_0

    :cond_0
    if-eq v5, v9, :cond_2

    const/16 v9, 0x3a0

    if-eq v5, v9, :cond_1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    add-int/lit8 v8, v8, -0x1

    move v6, v3

    goto :goto_1

    :cond_1
    :pswitch_1
    add-int/lit8 v5, v8, -0x1

    move v6, v3

    goto :goto_0

    :pswitch_2
    add-int/lit8 v5, v7, 0x1

    .line 220
    aput v10, v2, v7

    move v7, v5

    goto :goto_1

    .line 249
    :cond_2
    aput v9, v2, v7

    add-int/lit8 v5, v8, 0x1

    .line 250
    aget v8, p0, v8

    .line 251
    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3289
    :cond_3
    sget v3, Lcom/google/c/f/a/e$a;->a:I

    .line 3290
    sget v6, Lcom/google/c/f/a/e$a;->a:I

    move v8, v6

    move v6, v3

    move v3, v1

    :goto_2
    if-ge v3, v7, :cond_22

    .line 3293
    aget v11, v2, v3

    .line 3295
    sget-object v12, Lcom/google/c/f/a/e$1;->a:[I

    add-int/lit8 v13, v6, -0x1

    aget v12, v12, v13

    const/16 v13, 0x1c

    const/16 v14, 0x1b

    const/16 v1, 0x1d

    const/16 v15, 0x1a

    packed-switch v12, :pswitch_data_2

    goto/16 :goto_9

    :pswitch_3
    if-ge v11, v1, :cond_4

    .line 3403
    sget-object v1, Lcom/google/c/f/a/e;->a:[C

    aget-char v1, v1, v11

    goto :goto_3

    :cond_4
    if-ne v11, v1, :cond_5

    .line 3406
    sget v1, Lcom/google/c/f/a/e$a;->a:I

    goto :goto_5

    :cond_5
    if-ne v11, v9, :cond_6

    .line 3410
    aget v1, v4, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    if-ne v11, v10, :cond_9

    .line 3412
    sget v1, Lcom/google/c/f/a/e$a;->a:I

    goto :goto_5

    :pswitch_4
    if-ge v11, v15, :cond_7

    add-int/lit8 v11, v11, 0x41

    int-to-char v1, v11

    :goto_3
    move v6, v8

    goto/16 :goto_a

    :cond_7
    if-ne v11, v15, :cond_8

    move v6, v8

    goto/16 :goto_8

    :cond_8
    if-ne v11, v10, :cond_9

    .line 3394
    sget v1, Lcom/google/c/f/a/e$a;->a:I

    goto :goto_5

    :cond_9
    :goto_4
    move v6, v8

    goto/16 :goto_9

    :pswitch_5
    if-ge v11, v1, :cond_a

    .line 3373
    sget-object v1, Lcom/google/c/f/a/e;->a:[C

    aget-char v1, v1, v11

    goto/16 :goto_a

    :cond_a
    if-ne v11, v1, :cond_b

    .line 3376
    sget v1, Lcom/google/c/f/a/e$a;->a:I

    goto :goto_5

    :cond_b
    if-ne v11, v9, :cond_c

    .line 3378
    aget v1, v4, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_c
    if-ne v11, v10, :cond_20

    .line 3380
    sget v1, Lcom/google/c/f/a/e$a;->a:I

    goto :goto_5

    :pswitch_6
    const/16 v12, 0x19

    if-ge v11, v12, :cond_d

    .line 3348
    sget-object v1, Lcom/google/c/f/a/e;->b:[C

    aget-char v1, v1, v11

    goto/16 :goto_a

    :cond_d
    if-ne v11, v12, :cond_e

    .line 3351
    sget v1, Lcom/google/c/f/a/e$a;->d:I

    :goto_5
    move v6, v1

    goto/16 :goto_9

    :cond_e
    if-ne v11, v15, :cond_f

    goto :goto_8

    :cond_f
    if-ne v11, v14, :cond_10

    .line 3355
    sget v1, Lcom/google/c/f/a/e$a;->b:I

    goto :goto_5

    :cond_10
    if-ne v11, v13, :cond_11

    .line 3357
    sget v1, Lcom/google/c/f/a/e$a;->a:I

    goto :goto_5

    :cond_11
    if-ne v11, v1, :cond_12

    .line 3361
    sget v1, Lcom/google/c/f/a/e$a;->f:I

    goto :goto_6

    :cond_12
    if-ne v11, v9, :cond_13

    .line 3363
    aget v1, v4, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_13
    if-ne v11, v10, :cond_20

    .line 3365
    sget v1, Lcom/google/c/f/a/e$a;->a:I

    goto :goto_5

    :pswitch_7
    if-ge v11, v15, :cond_14

    add-int/lit8 v11, v11, 0x61

    goto :goto_7

    :cond_14
    if-ne v11, v15, :cond_15

    goto :goto_8

    :cond_15
    if-ne v11, v14, :cond_16

    .line 3330
    sget v1, Lcom/google/c/f/a/e$a;->e:I

    :goto_6
    move v8, v6

    goto :goto_5

    :cond_16
    if-ne v11, v13, :cond_17

    .line 3332
    sget v1, Lcom/google/c/f/a/e$a;->c:I

    goto :goto_5

    :cond_17
    if-ne v11, v1, :cond_18

    .line 3336
    sget v1, Lcom/google/c/f/a/e$a;->f:I

    goto :goto_6

    :cond_18
    if-ne v11, v9, :cond_19

    .line 3338
    aget v1, v4, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_19
    if-ne v11, v10, :cond_20

    .line 3340
    sget v1, Lcom/google/c/f/a/e$a;->a:I

    goto :goto_5

    :pswitch_8
    if-ge v11, v15, :cond_1a

    add-int/lit8 v11, v11, 0x41

    :goto_7
    int-to-char v1, v11

    goto :goto_a

    :cond_1a
    if-ne v11, v15, :cond_1b

    :goto_8
    const/16 v1, 0x20

    goto :goto_a

    :cond_1b
    if-ne v11, v14, :cond_1c

    .line 3305
    sget v1, Lcom/google/c/f/a/e$a;->b:I

    goto :goto_5

    :cond_1c
    if-ne v11, v13, :cond_1d

    .line 3307
    sget v1, Lcom/google/c/f/a/e$a;->c:I

    goto :goto_5

    :cond_1d
    if-ne v11, v1, :cond_1e

    .line 3311
    sget v1, Lcom/google/c/f/a/e$a;->f:I

    goto :goto_6

    :cond_1e
    if-ne v11, v9, :cond_1f

    .line 3313
    aget v1, v4, v3

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1f
    if-ne v11, v10, :cond_20

    .line 3315
    sget v1, Lcom/google/c/f/a/e$a;->a:I

    goto :goto_5

    :cond_20
    :goto_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_21

    .line 3419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_21
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_22
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static a([ILjava/lang/String;)Lcom/google/c/b/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 95
    aget v1, p0, v1

    .line 96
    new-instance v3, Lcom/google/c/f/c;

    invoke-direct {v3}, Lcom/google/c/f/c;-><init>()V

    :goto_0
    const/4 v4, 0x0

    .line 97
    aget v4, p0, v4

    if-ge v2, v4, :cond_3

    const/16 v4, 0x391

    if-eq v1, v4, :cond_1

    const/16 v4, 0x3a0

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    add-int/lit8 v2, v2, -0x1

    .line 126
    invoke-static {p0, v2, v0}, Lcom/google/c/f/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 112
    :pswitch_0
    invoke-static {v1, p0, v2, v0}, Lcom/google/c/f/a/e;->a(I[IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 120
    :pswitch_1
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 106
    :pswitch_2
    invoke-static {p0, v2, v0}, Lcom/google/c/f/a/e;->b([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 103
    :pswitch_3
    invoke-static {v1, p0, v2, v0}, Lcom/google/c/f/a/e;->a(I[IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 100
    :pswitch_4
    invoke-static {p0, v2, v0}, Lcom/google/c/f/a/e;->a([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_1

    .line 115
    :cond_0
    invoke-static {p0, v2, v3}, Lcom/google/c/f/a/e;->a([IILcom/google/c/f/c;)I

    move-result v1

    goto :goto_1

    .line 109
    :cond_1
    invoke-static {v1, p0, v2, v0}, Lcom/google/c/f/a/e;->a(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 129
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 130
    aget v1, p0, v1

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    .line 135
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_4

    .line 138
    new-instance p0, Lcom/google/c/b/e;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/c/b/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1085
    iput-object v3, p0, Lcom/google/c/b/e;->g:Ljava/lang/Object;

    return-object p0

    .line 136
    :cond_4
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    .line 619
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_0

    .line 621
    sget-object v4, Lcom/google/c/f/a/e;->c:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 624
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    .line 627
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 625
    :cond_1
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object p0

    throw p0
.end method

.method private static b([IILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/h;
        }
    .end annotation

    const/16 v0, 0xf

    .line 539
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 541
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_6

    if-nez v2, :cond_6

    add-int/lit8 v4, p1, 0x1

    .line 542
    aget p1, p0, p1

    .line 543
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v2, v6

    :cond_0
    const/16 v5, 0x384

    if-ge p1, v5, :cond_1

    .line 547
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eq p1, v5, :cond_2

    const/16 v5, 0x385

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_2

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_2

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_3

    :cond_2
    add-int/lit8 v4, v4, -0x1

    move v2, v6

    .line 560
    :cond_3
    :goto_1
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_4

    const/16 v5, 0x386

    if-eq p1, v5, :cond_4

    if-eqz v2, :cond_5

    .line 567
    :cond_4
    invoke-static {v0, v3}, Lcom/google/c/f/a/e;->a([II)Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :cond_5
    move p1, v4

    goto :goto_0

    :cond_6
    return p1
.end method
