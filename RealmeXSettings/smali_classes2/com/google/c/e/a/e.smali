.class public final Lcom/google/c/e/a/e;
.super Lcom/google/c/e/a/a;
.source "RSS14Reader.java"


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[[I


# instance fields
.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/c/e/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/c/e/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    .line 37
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/c/e/a/e;->g:[I

    const/4 v1, 0x4

    .line 38
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/c/e/a/e;->h:[I

    .line 39
    new-array v2, v0, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/google/c/e/a/e;->i:[I

    .line 40
    new-array v2, v1, [I

    fill-array-data v2, :array_3

    sput-object v2, Lcom/google/c/e/a/e;->j:[I

    .line 41
    new-array v2, v0, [I

    fill-array-data v2, :array_4

    sput-object v2, Lcom/google/c/e/a/e;->k:[I

    .line 42
    new-array v2, v1, [I

    fill-array-data v2, :array_5

    sput-object v2, Lcom/google/c/e/a/e;->l:[I

    const/16 v2, 0x9

    .line 44
    new-array v2, v2, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_8

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_9

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/c/e/a/e;->m:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/google/c/e/a/a;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/c/e/a/e;->n:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/c/e/a/e;->o:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/c/b/a;Lcom/google/c/e/a/c;Z)Lcom/google/c/e/a/b;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 21051
    iget-object v4, v0, Lcom/google/c/e/a/a;->b:[I

    const/4 v5, 0x0

    .line 194
    aput v5, v4, v5

    const/4 v6, 0x1

    .line 195
    aput v5, v4, v6

    const/4 v7, 0x2

    .line 196
    aput v5, v4, v7

    const/4 v8, 0x3

    .line 197
    aput v5, v4, v8

    const/4 v9, 0x4

    .line 198
    aput v5, v4, v9

    const/4 v10, 0x5

    .line 199
    aput v5, v4, v10

    const/4 v10, 0x6

    .line 200
    aput v5, v4, v10

    const/4 v10, 0x7

    .line 201
    aput v5, v4, v10

    if-eqz v3, :cond_0

    .line 22041
    iget-object v2, v2, Lcom/google/c/e/a/c;->b:[I

    .line 204
    aget v2, v2, v5

    invoke-static {v1, v2, v4}, Lcom/google/c/e/a/e;->b(Lcom/google/c/b/a;I[I)V

    goto :goto_1

    .line 23041
    :cond_0
    iget-object v2, v2, Lcom/google/c/e/a/c;->b:[I

    .line 206
    aget v2, v2, v6

    add-int/2addr v2, v6

    invoke-static {v1, v2, v4}, Lcom/google/c/e/a/e;->a(Lcom/google/c/b/a;I[I)V

    .line 208
    array-length v1, v4

    sub-int/2addr v1, v6

    move v2, v1

    move v1, v5

    :goto_0
    if-ge v1, v2, :cond_1

    .line 209
    aget v10, v4, v1

    .line 210
    aget v11, v4, v2

    aput v11, v4, v1

    .line 211
    aput v10, v4, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    const/16 v1, 0x10

    goto :goto_2

    :cond_2
    const/16 v1, 0xf

    .line 216
    :goto_2
    invoke-static {v4}, Lcom/google/c/e/a/e;->a([I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v10, v1

    div-float/2addr v2, v10

    .line 23063
    iget-object v10, v0, Lcom/google/c/e/a/a;->e:[I

    .line 23067
    iget-object v11, v0, Lcom/google/c/e/a/a;->f:[I

    .line 24055
    iget-object v12, v0, Lcom/google/c/e/a/a;->c:[F

    .line 24059
    iget-object v13, v0, Lcom/google/c/e/a/a;->d:[F

    move v14, v5

    .line 223
    :goto_3
    array-length v15, v4

    if-ge v14, v15, :cond_6

    .line 224
    aget v15, v4, v14

    int-to-float v15, v15

    div-float/2addr v15, v2

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v5, v15, v16

    float-to-int v5, v5

    const/16 v7, 0x8

    if-gtz v5, :cond_3

    move v5, v6

    goto :goto_4

    :cond_3
    if-le v5, v7, :cond_4

    move v5, v7

    :cond_4
    :goto_4
    shr-int/lit8 v7, v14, 0x1

    and-int/lit8 v17, v14, 0x1

    if-nez v17, :cond_5

    .line 233
    aput v5, v10, v7

    int-to-float v5, v5

    sub-float/2addr v15, v5

    .line 234
    aput v15, v12, v7

    goto :goto_5

    .line 236
    :cond_5
    aput v5, v11, v7

    int-to-float v5, v5

    sub-float/2addr v15, v5

    .line 237
    aput v15, v13, v7

    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    goto :goto_3

    .line 241
    :cond_6
    invoke-direct {v0, v3, v1}, Lcom/google/c/e/a/e;->a(ZI)V

    .line 245
    array-length v1, v10

    sub-int/2addr v1, v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ltz v1, :cond_7

    mul-int/lit8 v2, v2, 0x9

    .line 247
    aget v5, v10, v1

    add-int/2addr v2, v5

    .line 248
    aget v5, v10, v1

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 252
    :cond_7
    array-length v1, v11

    sub-int/2addr v1, v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_7
    if-ltz v1, :cond_8

    mul-int/lit8 v5, v5, 0x9

    .line 254
    aget v12, v11, v1

    add-int/2addr v5, v12

    .line 255
    aget v12, v11, v1

    add-int/2addr v7, v12

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_8
    mul-int/2addr v5, v8

    add-int/2addr v2, v5

    if-eqz v3, :cond_a

    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_9

    const/16 v1, 0xc

    if-gt v4, v1, :cond_9

    if-lt v4, v9, :cond_9

    sub-int/2addr v1, v4

    const/4 v3, 0x2

    .line 263
    div-int/2addr v1, v3

    .line 264
    sget-object v3, Lcom/google/c/e/a/e;->k:[I

    aget v3, v3, v1

    rsub-int/lit8 v4, v3, 0x9

    const/4 v5, 0x0

    .line 266
    invoke-static {v10, v3, v5}, Lcom/google/c/e/a/f;->a([IIZ)I

    move-result v3

    .line 267
    invoke-static {v11, v4, v6}, Lcom/google/c/e/a/f;->a([IIZ)I

    move-result v4

    .line 268
    sget-object v5, Lcom/google/c/e/a/e;->g:[I

    aget v5, v5, v1

    .line 269
    sget-object v6, Lcom/google/c/e/a/e;->i:[I

    aget v1, v6, v1

    .line 270
    new-instance v6, Lcom/google/c/e/a/b;

    mul-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-direct {v6, v3, v2}, Lcom/google/c/e/a/b;-><init>(II)V

    return-object v6

    .line 261
    :cond_9
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    :cond_a
    and-int/lit8 v1, v7, 0x1

    if-nez v1, :cond_b

    const/16 v1, 0xa

    if-gt v7, v1, :cond_b

    if-lt v7, v9, :cond_b

    sub-int/2addr v1, v7

    const/4 v3, 0x2

    .line 275
    div-int/2addr v1, v3

    .line 276
    sget-object v3, Lcom/google/c/e/a/e;->l:[I

    aget v3, v3, v1

    rsub-int/lit8 v4, v3, 0x9

    .line 278
    invoke-static {v10, v3, v6}, Lcom/google/c/e/a/f;->a([IIZ)I

    move-result v3

    const/4 v5, 0x0

    .line 279
    invoke-static {v11, v4, v5}, Lcom/google/c/e/a/f;->a([IIZ)I

    move-result v4

    .line 280
    sget-object v5, Lcom/google/c/e/a/e;->h:[I

    aget v5, v5, v1

    .line 281
    sget-object v6, Lcom/google/c/e/a/e;->j:[I

    aget v1, v6, v1

    .line 282
    new-instance v6, Lcom/google/c/e/a/b;

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    invoke-direct {v6, v4, v2}, Lcom/google/c/e/a/b;-><init>(II)V

    return-object v6

    .line 273
    :cond_b
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1
.end method

.method private a(Lcom/google/c/b/a;ZILjava/util/Map;)Lcom/google/c/e/a/d;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/a;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/e/a/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 13047
    :try_start_0
    iget-object v5, v0, Lcom/google/c/e/a/a;->a:[I

    const/4 v6, 0x0

    .line 12291
    aput v6, v5, v6

    const/4 v7, 0x1

    .line 12292
    aput v6, v5, v7

    const/4 v8, 0x2

    .line 12293
    aput v6, v5, v8

    const/4 v9, 0x3

    .line 12294
    aput v6, v5, v9

    .line 14040
    iget v10, v1, Lcom/google/c/b/a;->b:I

    move v11, v6

    move v12, v11

    :goto_0
    if-ge v11, v10, :cond_0

    .line 12299
    invoke-virtual {v1, v11}, Lcom/google/c/b/a;->a(I)Z

    move-result v12

    xor-int/2addr v12, v7

    if-eq v2, v12, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move v13, v6

    move v14, v11

    :goto_1
    if-ge v11, v10, :cond_a

    .line 12310
    invoke-virtual {v1, v11}, Lcom/google/c/b/a;->a(I)Z

    move-result v15

    xor-int/2addr v15, v12

    if-eqz v15, :cond_1

    .line 12311
    aget v15, v5, v13

    add-int/2addr v15, v7

    aput v15, v5, v13

    move/from16 v15, p3

    goto/16 :goto_6

    :cond_1
    if-ne v13, v9, :cond_8

    .line 12314
    invoke-static {v5}, Lcom/google/c/e/a/e;->b([I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 12315
    new-array v5, v8, [I

    aput v14, v5, v6

    aput v11, v5, v7

    .line 14337
    aget v9, v5, v6

    invoke-virtual {v1, v9}, Lcom/google/c/b/a;->a(I)Z

    move-result v9

    .line 14338
    aget v10, v5, v6

    sub-int/2addr v10, v7

    :goto_2
    if-ltz v10, :cond_2

    .line 14340
    invoke-virtual {v1, v10}, Lcom/google/c/b/a;->a(I)Z

    move-result v11

    xor-int/2addr v11, v9

    if-eqz v11, :cond_2

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_2
    add-int/2addr v10, v7

    .line 14344
    aget v9, v5, v6

    sub-int/2addr v9, v10

    .line 15047
    iget-object v11, v0, Lcom/google/c/e/a/a;->a:[I

    .line 14347
    array-length v12, v11

    sub-int/2addr v12, v7

    invoke-static {v11, v6, v11, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14348
    aput v9, v11, v6

    .line 14349
    sget-object v9, Lcom/google/c/e/a/e;->m:[[I

    invoke-static {v11, v9}, Lcom/google/c/e/a/e;->a([I[[I)I

    move-result v13

    .line 14351
    aget v9, v5, v7

    if-eqz v2, :cond_3

    .line 16040
    iget v11, v1, Lcom/google/c/b/a;->b:I

    sub-int/2addr v11, v7

    sub-int/2addr v11, v10

    .line 17040
    iget v12, v1, Lcom/google/c/b/a;->b:I

    sub-int/2addr v12, v7

    sub-int/2addr v12, v9

    move v15, v11

    move/from16 v16, v12

    goto :goto_3

    :cond_3
    move/from16 v16, v9

    move v15, v10

    .line 14357
    :goto_3
    new-instance v9, Lcom/google/c/e/a/c;

    new-array v14, v8, [I

    aput v10, v14, v6

    aget v8, v5, v7

    aput v8, v14, v7

    move-object v12, v9

    move/from16 v17, p3

    invoke-direct/range {v12 .. v17}, Lcom/google/c/e/a/c;-><init>(I[IIII)V

    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_4

    .line 168
    :cond_4
    sget-object v8, Lcom/google/c/e;->j:Lcom/google/c/e;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/c/r;

    :goto_4
    if-eqz v3, :cond_6

    .line 172
    aget v3, v5, v6

    aget v5, v5, v7

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    if-eqz v2, :cond_5

    .line 18040
    iget v2, v1, Lcom/google/c/b/a;->b:I

    sub-int/2addr v2, v7

    int-to-float v2, v2

    sub-float v3, v2, v3

    .line 177
    :cond_5
    new-instance v2, Lcom/google/c/q;

    move/from16 v15, p3

    int-to-float v5, v15

    invoke-direct {v2, v3, v5}, Lcom/google/c/q;-><init>(FF)V

    .line 180
    :cond_6
    invoke-direct {v0, v1, v9, v7}, Lcom/google/c/e/a/e;->a(Lcom/google/c/b/a;Lcom/google/c/e/a/c;Z)Lcom/google/c/e/a/b;

    move-result-object v2

    .line 181
    invoke-direct {v0, v1, v9, v6}, Lcom/google/c/e/a/e;->a(Lcom/google/c/b/a;Lcom/google/c/e/a/c;Z)Lcom/google/c/e/a/b;

    move-result-object v1

    .line 182
    new-instance v3, Lcom/google/c/e/a/d;

    .line 19030
    iget v5, v2, Lcom/google/c/e/a/b;->a:I

    mul-int/lit16 v5, v5, 0x63d

    .line 20030
    iget v6, v1, Lcom/google/c/e/a/b;->a:I

    add-int/2addr v5, v6

    .line 20034
    iget v2, v2, Lcom/google/c/e/a/b;->b:I

    .line 21034
    iget v1, v1, Lcom/google/c/e/a/b;->b:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v2, v1

    .line 182
    invoke-direct {v3, v5, v2, v9}, Lcom/google/c/e/a/d;-><init>(IILcom/google/c/e/a/c;)V

    return-object v3

    :cond_7
    move/from16 v15, p3

    .line 12317
    aget v16, v5, v6

    aget v17, v5, v7

    add-int v16, v16, v17

    add-int v14, v14, v16

    .line 12318
    aget v16, v5, v8

    aput v16, v5, v6

    .line 12319
    aget v16, v5, v9

    aput v16, v5, v7

    .line 12320
    aput v6, v5, v8

    .line 12321
    aput v6, v5, v9

    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    :cond_8
    move/from16 v15, p3

    add-int/lit8 v13, v13, 0x1

    .line 12326
    :goto_5
    aput v7, v5, v13

    if-nez v12, :cond_9

    move v12, v7

    goto :goto_6

    :cond_9
    move v12, v6

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 12330
    :cond_a
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Lcom/google/c/l; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v4
.end method

.method private static a(Ljava/util/Collection;Lcom/google/c/e/a/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/c/e/a/d;",
            ">;",
            "Lcom/google/c/e/a/d;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 97
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/c/e/a/d;

    .line 11030
    iget v3, v2, Lcom/google/c/e/a/b;->a:I

    .line 12030
    iget v4, p1, Lcom/google/c/e/a/b;->a:I

    if-ne v3, v4, :cond_1

    .line 99
    invoke-virtual {v2}, Lcom/google/c/e/a/d;->a()V

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 105
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private a(ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 24063
    iget-object v0, p0, Lcom/google/c/e/a/a;->e:[I

    .line 362
    invoke-static {v0}, Lcom/google/c/e/a/e;->a([I)I

    move-result v0

    .line 24067
    iget-object v1, p0, Lcom/google/c/e/a/a;->f:[I

    .line 363
    invoke-static {v1}, Lcom/google/c/e/a/e;->a([I)I

    move-result v1

    add-int v2, v0, v1

    sub-int/2addr v2, p2

    and-int/lit8 p2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, p1, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const/4 v6, 0x4

    if-eqz p1, :cond_6

    const/16 p1, 0xc

    if-le v0, p1, :cond_2

    move v7, v3

    move v8, v4

    goto :goto_2

    :cond_2
    if-ge v0, v6, :cond_3

    move v8, v3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v3

    move v8, v7

    :goto_2
    if-le v1, p1, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    if-ge v1, v6, :cond_5

    move v6, v3

    move v3, v4

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    move p1, v7

    move v7, v8

    goto :goto_5

    :cond_6
    const/16 p1, 0xb

    if-le v0, p1, :cond_7

    move p1, v3

    move v7, v4

    goto :goto_4

    :cond_7
    const/4 p1, 0x5

    if-ge v0, p1, :cond_8

    move v7, v3

    move p1, v4

    goto :goto_4

    :cond_8
    move p1, v3

    move v7, p1

    :goto_4
    const/16 v8, 0xa

    if-le v1, v8, :cond_9

    move v6, v4

    goto :goto_5

    :cond_9
    if-ge v1, v6, :cond_a

    move v6, v3

    move v3, v4

    goto :goto_5

    :cond_a
    move v6, v3

    :goto_5
    if-ne v2, v4, :cond_e

    if-eqz p2, :cond_c

    if-nez v5, :cond_b

    move v7, v4

    goto :goto_6

    .line 412
    :cond_b
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    :cond_c
    if-eqz v5, :cond_d

    move v6, v4

    goto :goto_6

    .line 417
    :cond_d
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    :cond_e
    const/4 v8, -0x1

    if-ne v2, v8, :cond_12

    if-eqz p2, :cond_10

    if-nez v5, :cond_f

    move p1, v4

    goto :goto_6

    .line 424
    :cond_f
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    :cond_10
    if-eqz v5, :cond_11

    move v3, v4

    goto :goto_6

    .line 429
    :cond_11
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    :cond_12
    if-nez v2, :cond_1d

    if-eqz p2, :cond_15

    if-eqz v5, :cond_14

    if-ge v0, v1, :cond_13

    move p1, v4

    move v6, p1

    goto :goto_6

    :cond_13
    move v3, v4

    move v7, v3

    goto :goto_6

    .line 436
    :cond_14
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    :cond_15
    if-nez v5, :cond_1c

    :goto_6
    if-eqz p1, :cond_17

    if-nez v7, :cond_16

    .line 25063
    iget-object p1, p0, Lcom/google/c/e/a/a;->e:[I

    .line 26055
    iget-object p2, p0, Lcom/google/c/e/a/a;->c:[F

    .line 460
    invoke-static {p1, p2}, Lcom/google/c/e/a/e;->a([I[F)V

    goto :goto_7

    .line 458
    :cond_16
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    :cond_17
    :goto_7
    if-eqz v7, :cond_18

    .line 26063
    iget-object p1, p0, Lcom/google/c/e/a/a;->e:[I

    .line 27055
    iget-object p2, p0, Lcom/google/c/e/a/a;->c:[F

    .line 463
    invoke-static {p1, p2}, Lcom/google/c/e/a/e;->b([I[F)V

    :cond_18
    if-eqz v3, :cond_1a

    if-nez v6, :cond_19

    .line 27067
    iget-object p1, p0, Lcom/google/c/e/a/a;->f:[I

    .line 28055
    iget-object p2, p0, Lcom/google/c/e/a/a;->c:[F

    .line 469
    invoke-static {p1, p2}, Lcom/google/c/e/a/e;->a([I[F)V

    goto :goto_8

    .line 467
    :cond_19
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    :cond_1a
    :goto_8
    if-eqz v6, :cond_1b

    .line 28067
    iget-object p1, p0, Lcom/google/c/e/a/a;->f:[I

    .line 29059
    iget-object p2, p0, Lcom/google/c/e/a/a;->d:[F

    .line 472
    invoke-static {p1, p2}, Lcom/google/c/e/a/e;->b([I[F)V

    :cond_1b
    return-void

    .line 448
    :cond_1c
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    .line 453
    :cond_1d
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/c/b/a;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/c/e/a/e;->a(Lcom/google/c/b/a;ZILjava/util/Map;)Lcom/google/c/e/a/d;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/google/c/e/a/e;->n:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/c/e/a/e;->a(Ljava/util/Collection;Lcom/google/c/e/a/d;)V

    .line 70
    invoke-virtual {p2}, Lcom/google/c/b/a;->c()V

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0, p2, v1, p1, p3}, Lcom/google/c/e/a/e;->a(Lcom/google/c/b/a;ZILjava/util/Map;)Lcom/google/c/e/a/d;

    move-result-object p1

    .line 72
    iget-object p3, p0, Lcom/google/c/e/a/e;->o:Ljava/util/List;

    invoke-static {p3, p1}, Lcom/google/c/e/a/e;->a(Ljava/util/Collection;Lcom/google/c/e/a/d;)V

    .line 73
    invoke-virtual {p2}, Lcom/google/c/b/a;->c()V

    .line 74
    iget-object p1, p0, Lcom/google/c/e/a/e;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_9

    .line 76
    iget-object p3, p0, Lcom/google/c/e/a/e;->n:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/c/e/a/d;

    .line 1034
    iget v2, p3, Lcom/google/c/e/a/d;->d:I

    if-le v2, v1, :cond_8

    .line 78
    iget-object v2, p0, Lcom/google/c/e/a/e;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_8

    .line 80
    iget-object v4, p0, Lcom/google/c/e/a/e;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/e/a/d;

    .line 2034
    iget v5, v4, Lcom/google/c/e/a/d;->d:I

    if-le v5, v1, :cond_7

    .line 3034
    iget v5, p3, Lcom/google/c/e/a/b;->b:I

    .line 4034
    iget v6, v4, Lcom/google/c/e/a/b;->b:I

    mul-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    .line 2151
    rem-int/lit8 v5, v5, 0x4f

    .line 5030
    iget-object v6, p3, Lcom/google/c/e/a/d;->c:Lcom/google/c/e/a/c;

    .line 5037
    iget v6, v6, Lcom/google/c/e/a/c;->a:I

    mul-int/lit8 v6, v6, 0x9

    .line 6030
    iget-object v7, v4, Lcom/google/c/e/a/d;->c:Lcom/google/c/e/a/c;

    .line 6037
    iget v7, v7, Lcom/google/c/e/a/c;->a:I

    add-int/2addr v6, v7

    const/16 v7, 0x48

    if-le v6, v7, :cond_0

    add-int/lit8 v6, v6, -0x1

    :cond_0
    const/16 v7, 0x8

    if-le v6, v7, :cond_1

    add-int/lit8 v6, v6, -0x1

    :cond_1
    if-ne v5, v6, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-eqz v5, :cond_7

    const-wide/32 p1, 0x453af5

    .line 7030
    iget v2, p3, Lcom/google/c/e/a/b;->a:I

    int-to-long v2, v2

    mul-long/2addr v2, p1

    .line 8030
    iget p1, v4, Lcom/google/c/e/a/b;->a:I

    int-to-long p1, p1

    add-long/2addr v2, p1

    .line 6117
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 6119
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    rsub-int/lit8 v2, v2, 0xd

    :goto_3
    const/16 v5, 0x30

    if-lez v2, :cond_3

    .line 6121
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 6123
    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v0

    move v2, p1

    :goto_4
    if-ge p1, v3, :cond_5

    .line 6127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v5

    and-int/lit8 v7, p1, 0x1

    if-nez v7, :cond_4

    mul-int/lit8 v6, v6, 0x3

    :cond_4
    add-int/2addr v2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    const/16 p1, 0xa

    .line 6130
    rem-int/2addr v2, p1

    rsub-int/lit8 v2, v2, 0xa

    if-ne v2, p1, :cond_6

    move v2, v0

    .line 6134
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9030
    iget-object p1, p3, Lcom/google/c/e/a/d;->c:Lcom/google/c/e/a/c;

    .line 9045
    iget-object p1, p1, Lcom/google/c/e/a/c;->c:[Lcom/google/c/q;

    .line 10030
    iget-object p3, v4, Lcom/google/c/e/a/d;->c:Lcom/google/c/e/a/c;

    .line 10045
    iget-object p3, p3, Lcom/google/c/e/a/c;->c:[Lcom/google/c/q;

    .line 6138
    new-instance v2, Lcom/google/c/o;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/c/q;

    aget-object v5, p1, v0

    aput-object v5, v4, v0

    aget-object p1, p1, v1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aget-object v0, p3, v0

    aput-object v0, v4, p1

    aget-object p1, p3, v1

    const/4 p3, 0x3

    aput-object p1, v4, p3

    sget-object p1, Lcom/google/c/a;->m:Lcom/google/c/a;

    invoke-direct {v2, p2, v3, v4, p1}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    return-object v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 89
    :cond_9
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/c/e/a/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lcom/google/c/e/a/e;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
