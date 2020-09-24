.class public final Lcom/google/c/e/a;
.super Lcom/google/c/e/q;
.source "CodaBarReader.java"


# static fields
.field static final a:[C

.field static final b:[I

.field private static final c:[C


# instance fields
.field private final d:Ljava/lang/StringBuilder;

.field private e:[I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789-$:/.+ABCD"

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/c/e/a;->a:[C

    const/16 v0, 0x14

    .line 50
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/c/e/a;->b:[I

    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/c/e/a;->c:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/google/c/e/q;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    .line 75
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/c/e/a;->e:[I

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/google/c/e/a;->f:I

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/google/c/e/a;->e:[I

    iget v1, p0, Lcom/google/c/e/a;->f:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 255
    iput v1, p0, Lcom/google/c/e/a;->f:I

    .line 256
    iget p1, p0, Lcom/google/c/e/a;->f:I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    .line 257
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 258
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v1, p0, Lcom/google/c/e/a;->e:[I

    :cond_0
    return-void
.end method

.method static a([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 283
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private b(I)I
    .locals 10

    add-int/lit8 v0, p1, 0x7

    .line 295
    iget v1, p0, Lcom/google/c/e/a;->f:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/google/c/e/a;->e:[I

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v5, p1

    move v6, v3

    move v7, v4

    :goto_0
    if-ge v5, v0, :cond_3

    .line 304
    aget v8, v1, v5

    if-ge v8, v6, :cond_1

    move v6, v8

    :cond_1
    if-le v8, v7, :cond_2

    move v7, v8

    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    add-int/2addr v6, v7

    .line 312
    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, p1, 0x1

    move v7, v4

    :goto_1
    if-ge v5, v0, :cond_6

    .line 317
    aget v8, v1, v5

    if-ge v8, v3, :cond_4

    move v3, v8

    :cond_4
    if-le v8, v7, :cond_5

    move v7, v8

    :cond_5
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_6
    add-int/2addr v3, v7

    .line 325
    div-int/lit8 v0, v3, 0x2

    const/16 v3, 0x80

    move v5, v3

    move v3, v4

    move v7, v3

    :goto_2
    const/4 v8, 0x7

    if-ge v3, v8, :cond_9

    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_7

    move v8, v6

    goto :goto_3

    :cond_7
    move v8, v0

    :goto_3
    shr-int/lit8 v5, v5, 0x1

    add-int v9, p1, v3

    .line 332
    aget v9, v1, v9

    if-le v9, v8, :cond_8

    or-int/2addr v7, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 337
    :cond_9
    :goto_4
    sget-object p1, Lcom/google/c/e/a;->b:[I

    array-length v0, p1

    if-ge v4, v0, :cond_b

    .line 338
    aget p1, p1, v4

    if-ne p1, v7, :cond_a

    return v4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    return v2
.end method


# virtual methods
.method public final a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 82
    iget-object v3, v0, Lcom/google/c/e/a;->e:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1232
    iput v4, v0, Lcom/google/c/e/a;->f:I

    .line 1234
    invoke-virtual {v1, v4}, Lcom/google/c/b/a;->d(I)I

    move-result v3

    .line 2040
    iget v5, v1, Lcom/google/c/b/a;->b:I

    if-ge v3, v5, :cond_1b

    const/4 v6, 0x1

    move v7, v4

    move v8, v6

    :goto_0
    if-ge v3, v5, :cond_1

    .line 1242
    invoke-virtual {v1, v3}, Lcom/google/c/b/a;->a(I)Z

    move-result v9

    xor-int/2addr v9, v8

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1245
    :cond_0
    invoke-direct {v0, v7}, Lcom/google/c/e/a;->a(I)V

    xor-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1250
    :cond_1
    invoke-direct {v0, v7}, Lcom/google/c/e/a;->a(I)V

    move v1, v6

    .line 2264
    :goto_2
    iget v3, v0, Lcom/google/c/e/a;->f:I

    if-ge v1, v3, :cond_1a

    .line 2265
    invoke-direct {v0, v1}, Lcom/google/c/e/a;->b(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_19

    .line 2266
    sget-object v7, Lcom/google/c/e/a;->c:[C

    sget-object v8, Lcom/google/c/e/a;->a:[C

    aget-char v3, v8, v3

    invoke-static {v7, v3}, Lcom/google/c/e/a;->a([CC)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v1

    move v7, v4

    :goto_3
    add-int/lit8 v8, v1, 0x7

    if-ge v3, v8, :cond_2

    .line 2271
    iget-object v8, v0, Lcom/google/c/e/a;->e:[I

    aget v8, v8, v3

    add-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    if-eq v1, v6, :cond_3

    .line 2273
    iget-object v3, v0, Lcom/google/c/e/a;->e:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    div-int/lit8 v7, v7, 0x2

    if-lt v3, v7, :cond_19

    .line 87
    :cond_3
    iget-object v3, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v1

    .line 89
    :goto_4
    invoke-direct {v0, v3}, Lcom/google/c/e/a;->b(I)I

    move-result v7

    if-eq v7, v5, :cond_18

    .line 96
    iget-object v8, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    int-to-char v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x8

    .line 99
    iget-object v8, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v6, :cond_4

    sget-object v8, Lcom/google/c/e/a;->c:[C

    sget-object v9, Lcom/google/c/e/a;->a:[C

    aget-char v7, v9, v7

    invoke-static {v8, v7}, Lcom/google/c/e/a;->a([CC)Z

    move-result v7

    if-nez v7, :cond_5

    .line 103
    :cond_4
    iget v7, v0, Lcom/google/c/e/a;->f:I

    if-lt v3, v7, :cond_17

    .line 106
    :cond_5
    iget-object v7, v0, Lcom/google/c/e/a;->e:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    const/4 v9, -0x8

    move v10, v4

    :goto_5
    if-ge v9, v5, :cond_6

    .line 109
    iget-object v11, v0, Lcom/google/c/e/a;->e:[I

    add-int v12, v3, v9

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 115
    :cond_6
    iget v5, v0, Lcom/google/c/e/a;->f:I

    const/4 v9, 0x2

    if-ge v3, v5, :cond_8

    div-int/2addr v10, v9

    if-lt v7, v10, :cond_7

    goto :goto_6

    .line 116
    :cond_7
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    :cond_8
    :goto_6
    const/4 v3, 0x4

    .line 3166
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 3167
    new-array v7, v3, [I

    fill-array-data v7, :array_1

    .line 3168
    iget-object v10, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v6

    move v12, v1

    move v11, v4

    .line 3174
    :goto_7
    sget-object v13, Lcom/google/c/e/a;->b:[I

    iget-object v14, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    aget v13, v13, v14

    move v15, v13

    const/4 v13, 0x6

    :goto_8
    if-ltz v13, :cond_9

    and-int/lit8 v16, v13, 0x1

    and-int/lit8 v17, v15, 0x1

    mul-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    .line 3179
    aget v17, v5, v16

    iget-object v14, v0, Lcom/google/c/e/a;->e:[I

    add-int v18, v12, v13

    aget v14, v14, v18

    add-int v17, v17, v14

    aput v17, v5, v16

    .line 3180
    aget v14, v7, v16

    add-int/2addr v14, v6

    aput v14, v7, v16

    shr-int/2addr v15, v6

    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    :cond_9
    if-ge v11, v10, :cond_a

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 3191
    :cond_a
    new-array v11, v3, [I

    .line 3192
    new-array v3, v3, [I

    move v12, v4

    :goto_9
    if-ge v12, v9, :cond_b

    .line 3197
    aput v4, v3, v12

    add-int/lit8 v13, v12, 0x2

    .line 3198
    aget v14, v5, v12

    shl-int/lit8 v14, v14, 0x8

    aget v15, v7, v12

    div-int/2addr v14, v15

    aget v15, v5, v13

    shl-int/lit8 v15, v15, 0x8

    aget v16, v7, v13

    div-int v15, v15, v16

    add-int/2addr v14, v15

    shr-int/2addr v14, v6

    aput v14, v3, v13

    .line 3200
    aget v14, v3, v13

    aput v14, v11, v12

    .line 3201
    aget v14, v5, v13

    mul-int/lit16 v14, v14, 0x200

    add-int/lit16 v14, v14, 0x180

    aget v15, v7, v13

    div-int/2addr v14, v15

    aput v14, v11, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_b
    move v7, v1

    move v5, v4

    .line 3207
    :goto_a
    sget-object v12, Lcom/google/c/e/a;->b:[I

    iget-object v13, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    move v13, v12

    const/4 v12, 0x6

    :goto_b
    if-ltz v12, :cond_d

    and-int/lit8 v14, v12, 0x1

    and-int/lit8 v15, v13, 0x1

    mul-int/2addr v15, v9

    add-int/2addr v14, v15

    .line 3212
    iget-object v15, v0, Lcom/google/c/e/a;->e:[I

    add-int v16, v7, v12

    aget v15, v15, v16

    shl-int/lit8 v15, v15, 0x8

    .line 3213
    aget v9, v3, v14

    if-lt v15, v9, :cond_c

    aget v9, v11, v14

    if-gt v15, v9, :cond_c

    shr-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x2

    goto :goto_b

    .line 3214
    :cond_c
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    :cond_d
    if-ge v5, v10, :cond_e

    add-int/lit8 v7, v7, 0x8

    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x2

    goto :goto_a

    :cond_e
    move v3, v4

    .line 122
    :goto_c
    iget-object v5, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v3, v5, :cond_f

    .line 123
    iget-object v5, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    sget-object v7, Lcom/google/c/e/a;->a:[C

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    aget-char v7, v7, v9

    invoke-virtual {v5, v3, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 126
    :cond_f
    iget-object v3, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 127
    sget-object v5, Lcom/google/c/e/a;->c:[C

    invoke-static {v5, v3}, Lcom/google/c/e/a;->a([CC)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 130
    iget-object v3, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 131
    sget-object v5, Lcom/google/c/e/a;->c:[C

    invoke-static {v5, v3}, Lcom/google/c/e/a;->a([CC)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 136
    iget-object v3, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_14

    if-eqz v2, :cond_10

    .line 141
    sget-object v3, Lcom/google/c/e;->i:Lcom/google/c/e;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 142
    :cond_10
    iget-object v2, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_11
    move v2, v4

    move v3, v2

    :goto_d
    if-ge v2, v1, :cond_12

    .line 148
    iget-object v5, v0, Lcom/google/c/e/a;->e:[I

    aget v5, v5, v2

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_12
    int-to-float v2, v3

    :goto_e
    if-ge v1, v8, :cond_13

    .line 152
    iget-object v5, v0, Lcom/google/c/e/a;->e:[I

    aget v5, v5, v1

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_13
    int-to-float v1, v3

    .line 155
    new-instance v3, Lcom/google/c/o;

    iget-object v5, v0, Lcom/google/c/e/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/c/q;

    new-instance v9, Lcom/google/c/q;

    move/from16 v10, p1

    int-to-float v10, v10

    invoke-direct {v9, v2, v10}, Lcom/google/c/q;-><init>(FF)V

    aput-object v9, v8, v4

    new-instance v2, Lcom/google/c/q;

    invoke-direct {v2, v1, v10}, Lcom/google/c/q;-><init>(FF)V

    aput-object v2, v8, v6

    sget-object v1, Lcom/google/c/a;->b:Lcom/google/c/a;

    invoke-direct {v3, v5, v7, v8, v1}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    return-object v3

    .line 138
    :cond_14
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 132
    :cond_15
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 128
    :cond_16
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    :cond_17
    move/from16 v10, p1

    goto/16 :goto_4

    .line 91
    :cond_18
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    :cond_19
    move/from16 v10, p1

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    .line 2278
    :cond_1a
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 1237
    :cond_1b
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
