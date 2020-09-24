.class public final Lcom/google/c/g/c/c;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/c/g/c/c;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static a(I)I
    .locals 2

    .line 173
    sget-object v0, Lcom/google/c/g/c/c;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 174
    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/google/c/b/a;Lcom/google/c/g/a/f;Lcom/google/c/g/a/j;Lcom/google/c/g/c/b;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/t;
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, -0x1

    move v4, v2

    move v2, v1

    :goto_0
    const/16 v5, 0x8

    if-ge v2, v5, :cond_f

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 242
    invoke-static {v5, v6, v7, v2, v0}, Lcom/google/c/g/c/e;->a(Lcom/google/c/b/a;Lcom/google/c/g/a/f;Lcom/google/c/g/a/j;ILcom/google/c/g/c/b;)V

    const/4 v8, 0x1

    .line 13041
    invoke-static {v0, v8}, Lcom/google/c/g/c/d;->a(Lcom/google/c/g/c/b;Z)I

    move-result v9

    invoke-static {v0, v1}, Lcom/google/c/g/c/d;->a(Lcom/google/c/g/c/b;Z)I

    move-result v10

    add-int/2addr v9, v10

    .line 14053
    iget-object v10, v0, Lcom/google/c/g/c/b;->a:[[B

    .line 15042
    iget v11, v0, Lcom/google/c/g/c/b;->b:I

    .line 16038
    iget v12, v0, Lcom/google/c/g/c/b;->c:I

    move v13, v1

    move v14, v13

    :goto_1
    add-int/lit8 v15, v12, -0x1

    if-ge v13, v15, :cond_2

    move v15, v14

    move v14, v1

    :goto_2
    add-int/lit8 v1, v11, -0x1

    if-ge v14, v1, :cond_1

    .line 13056
    aget-object v1, v10, v13

    aget-byte v1, v1, v14

    .line 13057
    aget-object v16, v10, v13

    add-int/lit8 v17, v14, 0x1

    aget-byte v8, v16, v17

    if-ne v1, v8, :cond_0

    add-int/lit8 v8, v13, 0x1

    aget-object v16, v10, v8

    aget-byte v14, v16, v14

    if-ne v1, v14, :cond_0

    aget-object v8, v10, v8

    aget-byte v8, v8, v17

    if-ne v1, v8, :cond_0

    add-int/lit8 v15, v15, 0x1

    :cond_0
    move/from16 v14, v17

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v13, 0x1

    move v14, v15

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v14, v14, 0x3

    add-int/2addr v9, v14

    .line 17053
    iget-object v1, v0, Lcom/google/c/g/c/b;->a:[[B

    .line 18042
    iget v8, v0, Lcom/google/c/g/c/b;->b:I

    .line 19038
    iget v10, v0, Lcom/google/c/g/c/b;->c:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v10, :cond_a

    move v13, v12

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v8, :cond_9

    add-int/lit8 v14, v12, 0x6

    if-ge v14, v8, :cond_5

    .line 16078
    aget-object v15, v1, v11

    aget-byte v15, v15, v12

    const/4 v5, 0x1

    if-ne v15, v5, :cond_5

    aget-object v15, v1, v11

    add-int/lit8 v16, v12, 0x1

    aget-byte v15, v15, v16

    if-nez v15, :cond_5

    aget-object v15, v1, v11

    add-int/lit8 v16, v12, 0x2

    aget-byte v15, v15, v16

    if-ne v15, v5, :cond_5

    aget-object v15, v1, v11

    add-int/lit8 v16, v12, 0x3

    aget-byte v15, v15, v16

    if-ne v15, v5, :cond_5

    aget-object v15, v1, v11

    add-int/lit8 v16, v12, 0x4

    aget-byte v15, v15, v16

    if-ne v15, v5, :cond_5

    aget-object v15, v1, v11

    add-int/lit8 v16, v12, 0x5

    aget-byte v15, v15, v16

    if-nez v15, :cond_5

    aget-object v15, v1, v11

    aget-byte v14, v15, v14

    if-ne v14, v5, :cond_5

    add-int/lit8 v5, v12, 0xa

    if-ge v5, v8, :cond_3

    aget-object v14, v1, v11

    add-int/lit8 v15, v12, 0x7

    aget-byte v14, v14, v15

    if-nez v14, :cond_3

    aget-object v14, v1, v11

    add-int/lit8 v15, v12, 0x8

    aget-byte v14, v14, v15

    if-nez v14, :cond_3

    aget-object v14, v1, v11

    add-int/lit8 v15, v12, 0x9

    aget-byte v14, v14, v15

    if-nez v14, :cond_3

    aget-object v14, v1, v11

    aget-byte v5, v14, v5

    if-eqz v5, :cond_4

    :cond_3
    add-int/lit8 v5, v12, -0x4

    if-ltz v5, :cond_5

    aget-object v14, v1, v11

    add-int/lit8 v15, v12, -0x1

    aget-byte v14, v14, v15

    if-nez v14, :cond_5

    aget-object v14, v1, v11

    add-int/lit8 v15, v12, -0x2

    aget-byte v14, v14, v15

    if-nez v14, :cond_5

    aget-object v14, v1, v11

    add-int/lit8 v15, v12, -0x3

    aget-byte v14, v14, v15

    if-nez v14, :cond_5

    aget-object v14, v1, v11

    aget-byte v5, v14, v5

    if-nez v5, :cond_5

    :cond_4
    add-int/lit8 v13, v13, 0x28

    :cond_5
    add-int/lit8 v5, v11, 0x6

    if-ge v5, v10, :cond_8

    .line 16098
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    add-int/lit8 v14, v11, 0x1

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-nez v14, :cond_8

    add-int/lit8 v14, v11, 0x2

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-ne v14, v15, :cond_8

    add-int/lit8 v14, v11, 0x3

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-ne v14, v15, :cond_8

    add-int/lit8 v14, v11, 0x4

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-ne v14, v15, :cond_8

    add-int/lit8 v14, v11, 0x5

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-nez v14, :cond_8

    aget-object v5, v1, v5

    aget-byte v5, v5, v12

    if-ne v5, v15, :cond_8

    add-int/lit8 v5, v11, 0xa

    if-ge v5, v10, :cond_6

    add-int/lit8 v14, v11, 0x7

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-nez v14, :cond_6

    add-int/lit8 v14, v11, 0x8

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-nez v14, :cond_6

    add-int/lit8 v14, v11, 0x9

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-nez v14, :cond_6

    aget-object v5, v1, v5

    aget-byte v5, v5, v12

    if-eqz v5, :cond_7

    :cond_6
    add-int/lit8 v5, v11, -0x4

    if-ltz v5, :cond_8

    add-int/lit8 v14, v11, -0x1

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-nez v14, :cond_8

    add-int/lit8 v14, v11, -0x2

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-nez v14, :cond_8

    add-int/lit8 v14, v11, -0x3

    aget-object v14, v1, v14

    aget-byte v14, v14, v12

    if-nez v14, :cond_8

    aget-object v5, v1, v5

    aget-byte v5, v5, v12

    if-nez v5, :cond_8

    :cond_7
    add-int/lit8 v13, v13, 0x28

    :cond_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p0

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p0

    move v12, v13

    goto/16 :goto_3

    :cond_a
    add-int/2addr v9, v12

    .line 20053
    iget-object v1, v0, Lcom/google/c/g/c/b;->a:[[B

    .line 21042
    iget v5, v0, Lcom/google/c/g/c/b;->b:I

    .line 22038
    iget v8, v0, Lcom/google/c/g/c/b;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    if-ge v10, v8, :cond_d

    .line 19133
    aget-object v12, v1, v10

    move v13, v11

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v5, :cond_c

    .line 19135
    aget-byte v14, v12, v11

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    add-int/lit8 v13, v13, 0x1

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    const/4 v15, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v13

    goto :goto_5

    .line 23038
    :cond_d
    iget v1, v0, Lcom/google/c/g/c/b;->c:I

    .line 23042
    iget v5, v0, Lcom/google/c/g/c/b;->b:I

    mul-int/2addr v1, v5

    int-to-double v10, v11

    int-to-double v12, v1

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v12

    .line 19142
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double/2addr v10, v12

    double-to-int v1, v10

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v9, v1

    if-ge v9, v4, :cond_e

    move v3, v2

    move v4, v9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_f
    return v3
.end method

.method private static a(Lcom/google/c/b/a;III)Lcom/google/c/b/a;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/t;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/google/c/b/a;->a()I

    move-result v3

    if-ne v3, v1, :cond_e

    .line 379
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v2, :cond_5

    const/4 v9, 0x1

    .line 382
    new-array v10, v9, [I

    .line 383
    new-array v9, v9, [I

    if-ge v5, v2, :cond_4

    .line 28316
    rem-int v11, v0, v2

    sub-int v12, v2, v11

    .line 28320
    div-int v13, v0, v2

    add-int/lit8 v14, v13, 0x1

    .line 28324
    div-int v15, v1, v2

    add-int/lit8 v16, v15, 0x1

    sub-int/2addr v13, v15

    sub-int v14, v14, v16

    if-ne v13, v14, :cond_3

    add-int v4, v12, v11

    if-ne v2, v4, :cond_2

    add-int v4, v15, v13

    mul-int/2addr v4, v12

    add-int v17, v16, v14

    mul-int v17, v17, v11

    add-int v4, v4, v17

    if-ne v0, v4, :cond_1

    if-ge v5, v12, :cond_0

    const/4 v4, 0x0

    aput v15, v10, v4

    aput v13, v9, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    aput v16, v10, v4

    aput v14, v9, v4

    .line 388
    :goto_1
    aget v11, v10, v4

    .line 389
    new-array v12, v11, [B

    mul-int/lit8 v13, v6, 0x8

    move-object/from16 v14, p0

    .line 390
    invoke-virtual {v14, v13, v12, v11}, Lcom/google/c/b/a;->a(I[BI)V

    .line 391
    aget v9, v9, v4

    invoke-static {v12, v9}, Lcom/google/c/g/c/c;->a([BI)[B

    move-result-object v9

    .line 392
    new-instance v13, Lcom/google/c/g/c/a;

    invoke-direct {v13, v12, v9}, Lcom/google/c/g/c/a;-><init>([B[B)V

    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 395
    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 396
    aget v9, v10, v4

    add-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 28346
    :cond_1
    new-instance v0, Lcom/google/c/t;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28338
    :cond_2
    new-instance v0, Lcom/google/c/t;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28334
    :cond_3
    new-instance v0, Lcom/google/c/t;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28313
    :cond_4
    new-instance v0, Lcom/google/c/t;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v4, 0x0

    if-ne v1, v6, :cond_d

    .line 402
    new-instance v1, Lcom/google/c/b/a;

    invoke-direct {v1}, Lcom/google/c/b/a;-><init>()V

    move v2, v4

    :goto_2
    const/16 v5, 0x8

    if-ge v2, v7, :cond_8

    .line 406
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/c/g/c/a;

    .line 29030
    iget-object v9, v9, Lcom/google/c/g/c/a;->a:[B

    .line 408
    array-length v10, v9

    if-ge v2, v10, :cond_6

    .line 409
    aget-byte v9, v9, v2

    invoke-virtual {v1, v9, v5}, Lcom/google/c/b/a;->b(II)V

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    if-ge v4, v8, :cond_b

    .line 415
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/c/g/c/a;

    .line 29034
    iget-object v6, v6, Lcom/google/c/g/c/a;->b:[B

    .line 417
    array-length v7, v6

    if-ge v4, v7, :cond_9

    .line 418
    aget-byte v6, v6, v4

    invoke-virtual {v1, v6, v5}, Lcom/google/c/b/a;->b(II)V

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 422
    :cond_b
    invoke-virtual {v1}, Lcom/google/c/b/a;->a()I

    move-result v2

    if-ne v0, v2, :cond_c

    return-object v1

    .line 423
    :cond_c
    new-instance v2, Lcom/google/c/t;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interleaving error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/c/b/a;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_d
    new-instance v0, Lcom/google/c/t;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_e
    new-instance v0, Lcom/google/c/t;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(ILcom/google/c/g/a/f;)Lcom/google/c/g/a/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/t;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 255
    invoke-static {v0}, Lcom/google/c/g/a/j;->b(I)Lcom/google/c/g/a/j;

    move-result-object v1

    .line 23074
    iget v2, v1, Lcom/google/c/g/a/j;->c:I

    .line 259
    invoke-virtual {v1, p1}, Lcom/google/c/g/a/j;->a(Lcom/google/c/g/a/f;)Lcom/google/c/g/a/j$b;

    move-result-object v3

    .line 260
    invoke-virtual {v3}, Lcom/google/c/g/a/j$b;->b()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, p0, 0x7

    .line 263
    div-int/lit8 v3, v3, 0x8

    if-lt v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    new-instance p0, Lcom/google/c/t;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Lcom/google/c/g/a/f;Ljava/util/Map;)Lcom/google/c/g/c/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/c/g/a/f;",
            "Ljava/util/Map<",
            "Lcom/google/c/g;",
            "*>;)",
            "Lcom/google/c/g/c/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/t;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/google/c/g;->b:Lcom/google/c/g;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_0
    const-string v0, "ISO-8859-1"

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    const-string v1, "Shift_JIS"

    .line 1188
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 1190
    invoke-static {p0}, Lcom/google/c/g/c/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/c/g/a/h;->g:Lcom/google/c/g/a/h;

    goto :goto_3

    :cond_2
    sget-object v2, Lcom/google/c/g/a/h;->e:Lcom/google/c/g/a/h;

    goto :goto_3

    :cond_3
    move v2, v5

    move v7, v2

    move v8, v7

    .line 1194
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 1195
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v4, :cond_4

    const/16 v10, 0x39

    if-gt v9, v10, :cond_4

    move v8, v6

    goto :goto_2

    .line 1198
    :cond_4
    invoke-static {v9}, Lcom/google/c/g/c/c;->a(I)I

    move-result v7

    if-eq v7, v3, :cond_5

    move v7, v6

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1201
    :cond_5
    sget-object v2, Lcom/google/c/g/a/h;->e:Lcom/google/c/g/a/h;

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 1205
    sget-object v2, Lcom/google/c/g/a/h;->c:Lcom/google/c/g/a/h;

    goto :goto_3

    :cond_7
    if-eqz v8, :cond_8

    .line 1208
    sget-object v2, Lcom/google/c/g/a/h;->b:Lcom/google/c/g/a/h;

    goto :goto_3

    .line 1210
    :cond_8
    sget-object v2, Lcom/google/c/g/a/h;->e:Lcom/google/c/g/a/h;

    .line 95
    :goto_3
    new-instance v7, Lcom/google/c/b/a;

    invoke-direct {v7}, Lcom/google/c/b/a;-><init>()V

    .line 98
    sget-object v8, Lcom/google/c/g/a/h;->e:Lcom/google/c/g/a/h;

    const/16 v9, 0x8

    const/4 v10, 0x4

    if-ne v2, v8, :cond_9

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 99
    invoke-static {p2}, Lcom/google/c/b/d;->a(Ljava/lang/String;)Lcom/google/c/b/d;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1577
    sget-object v8, Lcom/google/c/g/a/h;->f:Lcom/google/c/g/a/h;

    .line 2099
    iget v8, v8, Lcom/google/c/g/a/h;->k:I

    .line 1577
    invoke-virtual {v7, v8, v10}, Lcom/google/c/b/a;->b(II)V

    .line 3093
    iget-object v0, v0, Lcom/google/c/b/d;->B:[I

    aget v0, v0, v5

    .line 1579
    invoke-virtual {v7, v0, v9}, Lcom/google/c/b/a;->b(II)V

    .line 4099
    :cond_9
    iget v0, v2, Lcom/google/c/g/a/h;->k:I

    .line 3449
    invoke-virtual {v7, v0, v10}, Lcom/google/c/b/a;->b(II)V

    .line 110
    new-instance v0, Lcom/google/c/b/a;

    invoke-direct {v0}, Lcom/google/c/b/a;-><init>()V

    .line 4471
    sget-object v8, Lcom/google/c/g/c/c$1;->a:[I

    invoke-virtual {v2}, Lcom/google/c/g/a/h;->ordinal()I

    move-result v11

    aget v8, v8, v11

    if-eq v8, v6, :cond_13

    const/4 v4, 0x2

    if-eq v8, v4, :cond_f

    const/4 v4, 0x3

    if-eq v8, v4, :cond_e

    if-ne v8, v10, :cond_d

    .line 4553
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4557
    array-length v1, p2

    :goto_4
    if-ge v5, v1, :cond_16

    .line 4559
    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v8, v5, 0x1

    .line 4560
    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v4, v9

    or-int/2addr v4, v8

    const v8, 0x8140

    if-lt v4, v8, :cond_a

    const v10, 0x9ffc

    if-gt v4, v10, :cond_a

    :goto_5
    sub-int/2addr v4, v8

    goto :goto_6

    :cond_a
    const v8, 0xe040

    if-lt v4, v8, :cond_b

    const v8, 0xebbf

    if-gt v4, v8, :cond_b

    const v8, 0xc140

    goto :goto_5

    :cond_b
    move v4, v3

    :goto_6
    if-eq v4, v3, :cond_c

    shr-int/lit8 v8, v4, 0x8

    mul-int/lit16 v8, v8, 0xc0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v8, v4

    const/16 v4, 0xd

    .line 4572
    invoke-virtual {v0, v8, v4}, Lcom/google/c/b/a;->b(II)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    .line 4569
    :cond_c
    new-instance p0, Lcom/google/c/t;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 4555
    new-instance p1, Lcom/google/c/t;

    invoke-direct {p1, p0}, Lcom/google/c/t;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 4485
    :cond_d
    new-instance p0, Lcom/google/c/t;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid mode: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4541
    :cond_e
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4545
    array-length v1, p2

    :goto_7
    if-ge v5, v1, :cond_16

    aget-byte v3, p2, v5

    .line 4546
    invoke-virtual {v0, v3, v9}, Lcom/google/c/b/a;->b(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :catch_1
    move-exception p0

    .line 4543
    new-instance p1, Lcom/google/c/t;

    invoke-direct {p1, p0}, Lcom/google/c/t;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 4514
    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :goto_8
    if-ge v5, p2, :cond_16

    .line 4517
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/c/g/c/c;->a(I)I

    move-result v1

    if-eq v1, v3, :cond_12

    add-int/lit8 v4, v5, 0x1

    if-ge v4, p2, :cond_11

    .line 4522
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/c/g/c/c;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_10

    mul-int/lit8 v1, v1, 0x2d

    add-int/2addr v1, v4

    const/16 v4, 0xb

    .line 4527
    invoke-virtual {v0, v1, v4}, Lcom/google/c/b/a;->b(II)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_8

    .line 4524
    :cond_10
    new-instance p0, Lcom/google/c/t;

    invoke-direct {p0}, Lcom/google/c/t;-><init>()V

    throw p0

    :cond_11
    const/4 v5, 0x6

    .line 4531
    invoke-virtual {v0, v1, v5}, Lcom/google/c/b/a;->b(II)V

    move v5, v4

    goto :goto_8

    .line 4519
    :cond_12
    new-instance p0, Lcom/google/c/t;

    invoke-direct {p0}, Lcom/google/c/t;-><init>()V

    throw p0

    .line 4490
    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :goto_9
    if-ge v5, p2, :cond_16

    .line 4493
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v4

    add-int/lit8 v3, v5, 0x2

    if-ge v3, p2, :cond_14

    add-int/lit8 v8, v5, 0x1

    .line 4496
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v4

    .line 4497
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v4

    mul-int/lit8 v1, v1, 0x64

    const/16 v9, 0xa

    mul-int/2addr v8, v9

    add-int/2addr v1, v8

    add-int/2addr v1, v3

    .line 4498
    invoke-virtual {v0, v1, v9}, Lcom/google/c/b/a;->b(II)V

    add-int/lit8 v5, v5, 0x3

    goto :goto_9

    :cond_14
    add-int/lit8 v5, v5, 0x1

    if-ge v5, p2, :cond_15

    .line 4502
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v4

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    const/4 v5, 0x7

    .line 4503
    invoke-virtual {v0, v1, v5}, Lcom/google/c/b/a;->b(II)V

    move v5, v3

    goto :goto_9

    .line 4507
    :cond_15
    invoke-virtual {v0, v1, v10}, Lcom/google/c/b/a;->b(II)V

    goto :goto_9

    .line 5040
    :cond_16
    iget p2, v7, Lcom/google/c/b/a;->b:I

    .line 117
    invoke-static {v6}, Lcom/google/c/g/a/j;->b(I)Lcom/google/c/g/a/j;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/c/g/a/h;->a(Lcom/google/c/g/a/j;)I

    move-result v1

    add-int/2addr p2, v1

    .line 6040
    iget v1, v0, Lcom/google/c/b/a;->b:I

    add-int/2addr p2, v1

    .line 120
    invoke-static {p2, p1}, Lcom/google/c/g/c/c;->a(ILcom/google/c/g/a/f;)Lcom/google/c/g/a/j;

    move-result-object p2

    .line 7040
    iget v1, v7, Lcom/google/c/b/a;->b:I

    .line 124
    invoke-virtual {v2, p2}, Lcom/google/c/g/a/h;->a(Lcom/google/c/g/a/j;)I

    move-result p2

    add-int/2addr v1, p2

    .line 8040
    iget p2, v0, Lcom/google/c/b/a;->b:I

    add-int/2addr v1, p2

    .line 127
    invoke-static {v1, p1}, Lcom/google/c/g/c/c;->a(ILcom/google/c/g/a/f;)Lcom/google/c/g/a/j;

    move-result-object p2

    .line 129
    new-instance v1, Lcom/google/c/b/a;

    invoke-direct {v1}, Lcom/google/c/b/a;-><init>()V

    .line 130
    invoke-virtual {v1, v7}, Lcom/google/c/b/a;->a(Lcom/google/c/b/a;)V

    .line 132
    sget-object v3, Lcom/google/c/g/a/h;->e:Lcom/google/c/g/a/h;

    if-ne v2, v3, :cond_17

    invoke-virtual {v0}, Lcom/google/c/b/a;->a()I

    move-result p0

    goto :goto_a

    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 8457
    :goto_a
    invoke-virtual {v2, p2}, Lcom/google/c/g/a/h;->a(Lcom/google/c/g/a/j;)I

    move-result v3

    shl-int v4, v6, v3

    if-ge p0, v4, :cond_18

    .line 8461
    invoke-virtual {v1, p0, v3}, Lcom/google/c/b/a;->b(II)V

    .line 135
    invoke-virtual {v1, v0}, Lcom/google/c/b/a;->a(Lcom/google/c/b/a;)V

    .line 137
    invoke-virtual {p2, p1}, Lcom/google/c/g/a/j;->a(Lcom/google/c/g/a/f;)Lcom/google/c/g/a/j$b;

    move-result-object p0

    .line 9074
    iget v0, p2, Lcom/google/c/g/a/j;->c:I

    .line 138
    invoke-virtual {p0}, Lcom/google/c/g/a/j$b;->b()I

    move-result v3

    sub-int/2addr v0, v3

    .line 141
    invoke-static {v0, v1}, Lcom/google/c/g/c/c;->a(ILcom/google/c/b/a;)V

    .line 10074
    iget v3, p2, Lcom/google/c/g/a/j;->c:I

    .line 144
    invoke-virtual {p0}, Lcom/google/c/g/a/j$b;->a()I

    move-result p0

    invoke-static {v1, v3, v0, p0}, Lcom/google/c/g/c/c;->a(Lcom/google/c/b/a;III)Lcom/google/c/b/a;

    move-result-object p0

    .line 149
    new-instance v0, Lcom/google/c/g/c/f;

    invoke-direct {v0}, Lcom/google/c/g/c/f;-><init>()V

    .line 10088
    iput-object p1, v0, Lcom/google/c/g/c/f;->b:Lcom/google/c/g/a/f;

    .line 11084
    iput-object v2, v0, Lcom/google/c/g/c/f;->a:Lcom/google/c/g/a/h;

    .line 11092
    iput-object p2, v0, Lcom/google/c/g/c/f;->c:Lcom/google/c/g/a/j;

    .line 156
    invoke-virtual {p2}, Lcom/google/c/g/a/j;->a()I

    move-result v1

    .line 157
    new-instance v2, Lcom/google/c/g/c/b;

    invoke-direct {v2, v1, v1}, Lcom/google/c/g/c/b;-><init>(II)V

    .line 158
    invoke-static {p0, p1, p2, v2}, Lcom/google/c/g/c/c;->a(Lcom/google/c/b/a;Lcom/google/c/g/a/f;Lcom/google/c/g/a/j;Lcom/google/c/g/c/b;)I

    move-result v1

    .line 11096
    iput v1, v0, Lcom/google/c/g/c/f;->d:I

    .line 162
    invoke-static {p0, p1, p2, v1, v2}, Lcom/google/c/g/c/e;->a(Lcom/google/c/b/a;Lcom/google/c/g/a/f;Lcom/google/c/g/a/j;ILcom/google/c/g/c/b;)V

    .line 11100
    iput-object v2, v0, Lcom/google/c/g/c/f;->e:Lcom/google/c/g/c/b;

    return-object v0

    .line 8459
    :cond_18
    new-instance p1, Lcom/google/c/t;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v6

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(ILcom/google/c/b/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/t;
        }
    .end annotation

    shl-int/lit8 v0, p0, 0x3

    .line 24040
    iget v1, p1, Lcom/google/c/b/a;->b:I

    if-gt v1, v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 26040
    iget v3, p1, Lcom/google/c/b/a;->b:I

    if-ge v3, v0, :cond_0

    .line 281
    invoke-virtual {p1, v1}, Lcom/google/c/b/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27040
    :cond_0
    iget v2, p1, Lcom/google/c/b/a;->b:I

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 288
    invoke-virtual {p1, v1}, Lcom/google/c/b/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/google/c/b/a;->a()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_3

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xec

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    .line 294
    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/google/c/b/a;->b(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 28040
    :cond_3
    iget p0, p1, Lcom/google/c/b/a;->b:I

    if-ne p0, v0, :cond_4

    return-void

    .line 297
    :cond_4
    new-instance p0, Lcom/google/c/t;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw p0

    .line 277
    :cond_5
    new-instance p0, Lcom/google/c/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25040
    iget p1, p1, Lcom/google/c/b/a;->b:I

    .line 277
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/c/t;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Shift_JIS"

    .line 216
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    array-length v1, p0

    .line 221
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 225
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static a([BI)[B
    .locals 5

    .line 431
    array-length v0, p0

    add-int v1, v0, p1

    .line 432
    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 434
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_0
    new-instance p0, Lcom/google/c/b/b/d;

    sget-object v3, Lcom/google/c/b/b/a;->e:Lcom/google/c/b/b/a;

    invoke-direct {p0, v3}, Lcom/google/c/b/b/d;-><init>(Lcom/google/c/b/b/a;)V

    invoke-virtual {p0, v1, p1}, Lcom/google/c/b/b/d;->a([II)V

    .line 438
    new-array p0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    .line 440
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method
