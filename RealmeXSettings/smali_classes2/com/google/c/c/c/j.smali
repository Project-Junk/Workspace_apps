.class public final Lcom/google/c/c/c/j;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method static a(Ljava/lang/CharSequence;II)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 207
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return p2

    :cond_0
    const/4 v2, 0x6

    if-nez p2, :cond_1

    .line 213
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    goto :goto_0

    .line 215
    :cond_1
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    .line 216
    aput v4, v3, p2

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :cond_2
    add-int v6, v1, v5

    .line 222
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const v8, 0x7fffffff

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ne v6, v7, :cond_8

    .line 224
    new-array v0, v2, [B

    .line 225
    new-array v1, v2, [I

    .line 226
    invoke-static {v3, v1, v8, v0}, Lcom/google/c/c/c/j;->a([F[II[B)I

    move-result v2

    .line 227
    invoke-static {v0}, Lcom/google/c/c/c/j;->a([B)I

    move-result v3

    .line 229
    aget v1, v1, v4

    if-ne v1, v2, :cond_3

    return v4

    :cond_3
    if-ne v3, v13, :cond_4

    .line 232
    aget-byte v1, v0, v9

    if-lez v1, :cond_4

    return v9

    :cond_4
    if-ne v3, v13, :cond_5

    .line 235
    aget-byte v1, v0, v11

    if-lez v1, :cond_5

    return v11

    :cond_5
    if-ne v3, v13, :cond_6

    .line 238
    aget-byte v1, v0, v10

    if-lez v1, :cond_6

    return v10

    :cond_6
    if-ne v3, v13, :cond_7

    .line 241
    aget-byte v0, v0, v12

    if-lez v0, :cond_7

    return v12

    :cond_7
    return v13

    .line 247
    :cond_8
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v5, 0x1

    .line 251
    invoke-static {v6}, Lcom/google/c/c/c/j;->a(C)Z

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v7, :cond_9

    .line 252
    aget v7, v3, v4

    float-to-double v8, v7

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v16

    double-to-float v7, v8

    aput v7, v3, v4

    goto :goto_1

    .line 253
    :cond_9
    invoke-static {v6}, Lcom/google/c/c/c/j;->b(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 254
    aget v7, v3, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-float v7, v7

    aput v7, v3, v4

    .line 255
    aget v7, v3, v4

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v7, v8

    aput v7, v3, v4

    goto :goto_1

    .line 257
    :cond_a
    aget v7, v3, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-float v7, v7

    aput v7, v3, v4

    .line 258
    aget v7, v3, v4

    add-float/2addr v7, v14

    aput v7, v3, v4

    :goto_1
    const/16 v7, 0x39

    const/16 v8, 0x30

    const/16 v9, 0x20

    if-eq v6, v9, :cond_d

    if-lt v6, v8, :cond_b

    if-le v6, v7, :cond_d

    :cond_b
    const/16 v15, 0x41

    if-lt v6, v15, :cond_c

    const/16 v15, 0x5a

    if-gt v6, v15, :cond_c

    goto :goto_2

    :cond_c
    move v15, v4

    goto :goto_3

    :cond_d
    :goto_2
    move v15, v13

    :goto_3
    const v17, 0x402aaaab

    const v18, 0x3faaaaab

    const v19, 0x3f2aaaab

    if-eqz v15, :cond_e

    .line 263
    aget v15, v3, v13

    add-float v15, v15, v19

    aput v15, v3, v13

    goto :goto_4

    .line 264
    :cond_e
    invoke-static {v6}, Lcom/google/c/c/c/j;->b(C)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 265
    aget v15, v3, v13

    add-float v15, v15, v17

    aput v15, v3, v13

    goto :goto_4

    .line 267
    :cond_f
    aget v15, v3, v13

    add-float v15, v15, v18

    aput v15, v3, v13

    :goto_4
    if-eq v6, v9, :cond_12

    if-lt v6, v8, :cond_10

    if-le v6, v7, :cond_12

    :cond_10
    const/16 v7, 0x61

    if-lt v6, v7, :cond_11

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_11

    goto :goto_5

    :cond_11
    move v7, v4

    goto :goto_6

    :cond_12
    :goto_5
    move v7, v13

    :goto_6
    if-eqz v7, :cond_13

    .line 272
    aget v7, v3, v10

    add-float v7, v7, v19

    aput v7, v3, v10

    goto :goto_7

    .line 273
    :cond_13
    invoke-static {v6}, Lcom/google/c/c/c/j;->b(C)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 274
    aget v7, v3, v10

    add-float v7, v7, v17

    aput v7, v3, v10

    goto :goto_7

    .line 276
    :cond_14
    aget v7, v3, v10

    add-float v7, v7, v18

    aput v7, v3, v10

    .line 280
    :goto_7
    invoke-static {v6}, Lcom/google/c/c/c/j;->d(C)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 281
    aget v7, v3, v12

    add-float v7, v7, v19

    aput v7, v3, v12

    goto :goto_8

    .line 282
    :cond_15
    invoke-static {v6}, Lcom/google/c/c/c/j;->b(C)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 283
    aget v7, v3, v12

    const v8, 0x408aaaab

    add-float/2addr v7, v8

    aput v7, v3, v12

    goto :goto_8

    .line 285
    :cond_16
    aget v7, v3, v12

    const v8, 0x40555555

    add-float/2addr v7, v8

    aput v7, v3, v12

    :goto_8
    if-lt v6, v9, :cond_17

    const/16 v7, 0x5e

    if-gt v6, v7, :cond_17

    move v7, v13

    goto :goto_9

    :cond_17
    move v7, v4

    :goto_9
    if-eqz v7, :cond_18

    .line 290
    aget v6, v3, v11

    const/high16 v7, 0x3f400000    # 0.75f

    add-float/2addr v6, v7

    aput v6, v3, v11

    :goto_a
    const/4 v6, 0x5

    goto :goto_b

    .line 291
    :cond_18
    invoke-static {v6}, Lcom/google/c/c/c/j;->b(C)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 292
    aget v6, v3, v11

    const/high16 v7, 0x40880000    # 4.25f

    add-float/2addr v6, v7

    aput v6, v3, v11

    goto :goto_a

    .line 294
    :cond_19
    aget v6, v3, v11

    const/high16 v7, 0x40500000    # 3.25f

    add-float/2addr v6, v7

    aput v6, v3, v11

    goto :goto_a

    .line 301
    :goto_b
    aget v7, v3, v6

    add-float/2addr v7, v14

    aput v7, v3, v6

    if-lt v5, v11, :cond_2

    .line 306
    new-array v7, v2, [I

    .line 307
    new-array v8, v2, [B

    const v9, 0x7fffffff

    .line 308
    invoke-static {v3, v7, v9, v8}, Lcom/google/c/c/c/j;->a([F[II[B)I

    .line 309
    invoke-static {v8}, Lcom/google/c/c/c/j;->a([B)I

    move-result v9

    .line 311
    aget v14, v7, v4

    aget v15, v7, v6

    move v6, v15

    if-ge v14, v6, :cond_1a

    aget v6, v7, v4

    aget v14, v7, v13

    if-ge v6, v14, :cond_1a

    aget v6, v7, v4

    aget v14, v7, v10

    if-ge v6, v14, :cond_1a

    aget v6, v7, v4

    aget v14, v7, v12

    if-ge v6, v14, :cond_1a

    aget v6, v7, v4

    aget v14, v7, v11

    if-ge v6, v14, :cond_1a

    return v4

    :cond_1a
    const/4 v6, 0x5

    .line 318
    aget v14, v7, v6

    aget v6, v7, v4

    if-lt v14, v6, :cond_22

    aget-byte v6, v8, v13

    aget-byte v14, v8, v10

    add-int/2addr v6, v14

    aget-byte v14, v8, v12

    add-int/2addr v6, v14

    aget-byte v14, v8, v11

    add-int/2addr v6, v14

    if-nez v6, :cond_1b

    goto :goto_d

    :cond_1b
    if-ne v9, v13, :cond_1c

    .line 322
    aget-byte v6, v8, v11

    if-lez v6, :cond_1c

    return v11

    :cond_1c
    if-ne v9, v13, :cond_1d

    .line 325
    aget-byte v6, v8, v10

    if-lez v6, :cond_1d

    return v10

    :cond_1d
    if-ne v9, v13, :cond_1e

    .line 328
    aget-byte v6, v8, v12

    if-lez v6, :cond_1e

    return v12

    .line 331
    :cond_1e
    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v4

    if-ge v6, v8, :cond_2

    aget v6, v7, v13

    add-int/2addr v6, v13

    const/4 v8, 0x5

    aget v8, v7, v8

    if-ge v6, v8, :cond_2

    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v11

    if-ge v6, v8, :cond_2

    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v10

    if-ge v6, v8, :cond_2

    .line 335
    aget v6, v7, v13

    aget v8, v7, v12

    if-ge v6, v8, :cond_1f

    return v13

    .line 338
    :cond_1f
    aget v6, v7, v13

    aget v7, v7, v12

    if-ne v6, v7, :cond_2

    add-int/2addr v1, v5

    add-int/2addr v1, v13

    .line 340
    :goto_c
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 341
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 342
    invoke-static {v2}, Lcom/google/c/c/c/j;->e(C)Z

    move-result v3

    if-eqz v3, :cond_20

    return v12

    .line 345
    :cond_20
    invoke-static {v2}, Lcom/google/c/c/c/j;->d(C)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_21
    return v13

    :cond_22
    :goto_d
    const/4 v0, 0x5

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static a([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 377
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static a([F[II[B)I
    .locals 4

    const/4 v0, 0x0

    .line 358
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, p2

    move p2, v0

    :goto_0
    const/4 v2, 0x6

    if-ge p2, v2, :cond_2

    .line 360
    aget v2, p0, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, p2

    .line 361
    aget v2, p1, p2

    if-le v1, v2, :cond_0

    .line 364
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, v2

    :cond_0
    if-ne v1, v2, :cond_1

    .line 367
    aget-byte v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static a(Ljava/lang/String;Lcom/google/c/c/c/l;Lcom/google/c/f;Lcom/google/c/f;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x6

    .line 159
    new-array v0, v0, [Lcom/google/c/c/c/g;

    new-instance v1, Lcom/google/c/c/c/a;

    invoke-direct {v1}, Lcom/google/c/c/c/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/c/c/c/c;

    invoke-direct {v1}, Lcom/google/c/c/c/c;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/c/c/c/m;

    invoke-direct {v1}, Lcom/google/c/c/c/m;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/c/c/c/n;

    invoke-direct {v1}, Lcom/google/c/c/c/n;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/c/c/c/f;

    invoke-direct {v1}, Lcom/google/c/c/c/f;-><init>()V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/c/c/c/b;

    invoke-direct {v1}, Lcom/google/c/c/c/b;-><init>()V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 164
    new-instance v1, Lcom/google/c/c/c/h;

    invoke-direct {v1, p0}, Lcom/google/c/c/c/h;-><init>(Ljava/lang/String;)V

    .line 1053
    iput-object p1, v1, Lcom/google/c/c/c/h;->b:Lcom/google/c/c/c/l;

    .line 1057
    iput-object p2, v1, Lcom/google/c/c/c/h;->c:Lcom/google/c/f;

    .line 1058
    iput-object p3, v1, Lcom/google/c/c/c/h;->d:Lcom/google/c/f;

    const-string p1, "[)>\u001e05\u001d"

    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u001e\u0004"

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p0, 0xec

    .line 169
    invoke-virtual {v1, p0}, Lcom/google/c/c/c/h;->a(C)V

    .line 1066
    iput v4, v1, Lcom/google/c/c/c/h;->i:I

    .line 171
    iget p0, v1, Lcom/google/c/c/c/h;->f:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lcom/google/c/c/c/h;->f:I

    goto :goto_0

    :cond_0
    const-string p1, "[)>\u001e06\u001d"

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xed

    .line 173
    invoke-virtual {v1, p0}, Lcom/google/c/c/c/h;->a(C)V

    .line 2066
    iput v4, v1, Lcom/google/c/c/c/h;->i:I

    .line 175
    iget p0, v1, Lcom/google/c/c/c/h;->f:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lcom/google/c/c/c/h;->f:I

    .line 179
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/c/c/c/h;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 180
    aget-object p0, v0, v2

    invoke-interface {p0, v1}, Lcom/google/c/c/c/g;->a(Lcom/google/c/c/c/h;)V

    .line 2094
    iget p0, v1, Lcom/google/c/c/c/h;->g:I

    if-ltz p0, :cond_1

    .line 3094
    iget v2, v1, Lcom/google/c/c/c/h;->g:I

    const/4 p0, -0x1

    .line 3102
    iput p0, v1, Lcom/google/c/c/c/h;->g:I

    goto :goto_0

    .line 4090
    :cond_2
    iget-object p0, v1, Lcom/google/c/c/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .line 187
    invoke-virtual {v1}, Lcom/google/c/c/c/h;->d()V

    .line 4118
    iget-object p1, v1, Lcom/google/c/c/c/h;->h:Lcom/google/c/c/c/k;

    .line 4214
    iget p1, p1, Lcom/google/c/c/c/k;->b:I

    const/16 p2, 0xfe

    if-ge p0, p1, :cond_3

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_3

    .line 191
    invoke-virtual {v1, p2}, Lcom/google/c/c/c/h;->a(C)V

    .line 5078
    :cond_3
    iget-object p0, v1, Lcom/google/c/c/c/h;->e:Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/16 v0, 0x81

    if-ge p3, p1, :cond_4

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-ge p3, p1, :cond_6

    .line 200
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/2addr p3, v3

    mul-int/lit16 p3, p3, 0x95

    .line 5127
    rem-int/lit16 p3, p3, 0xfd

    add-int/2addr p3, v3

    add-int/2addr p3, v0

    if-gt p3, p2, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit16 p3, p3, -0xfe

    :goto_2
    int-to-char p3, p3

    .line 200
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6078
    :cond_6
    iget-object p0, v1, Lcom/google/c/c/c/h;->e:Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(C)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static c(C)V
    .locals 5

    .line 441
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static d(C)Z
    .locals 1

    .line 399
    invoke-static {p0}, Lcom/google/c/c/c/j;->e(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static e(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
