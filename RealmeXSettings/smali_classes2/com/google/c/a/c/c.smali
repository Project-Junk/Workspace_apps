.class public final Lcom/google/c/a/c/c;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    .line 36
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/c/a/c/c;->a:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private static a(IZ)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    goto :goto_0

    :cond_0
    const/16 p1, 0x70

    :goto_0
    mul-int/lit8 v0, p0, 0x10

    add-int/2addr p1, v0

    mul-int/2addr p1, p0

    return p1
.end method

.method public static a([BII)Lcom/google/c/a/c/a;
    .locals 18

    .line 65
    new-instance v0, Lcom/google/c/a/c/d;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/c/a/c/d;-><init>([B)V

    .line 1161
    sget-object v1, Lcom/google/c/a/c/f;->a:Lcom/google/c/a/c/f;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .line 1162
    :goto_0
    iget-object v4, v0, Lcom/google/c/a/c/d;->d:[B

    array-length v4, v4

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/16 v7, 0x20

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v1, v4, :cond_b

    add-int/lit8 v4, v1, 0x1

    .line 1164
    iget-object v11, v0, Lcom/google/c/a/c/d;->d:[B

    array-length v11, v11

    if-ge v4, v11, :cond_0

    iget-object v11, v0, Lcom/google/c/a/c/d;->d:[B

    aget-byte v11, v11, v4

    goto :goto_1

    :cond_0
    move v11, v2

    .line 1165
    :goto_1
    iget-object v12, v0, Lcom/google/c/a/c/d;->d:[B

    aget-byte v12, v12, v1

    const/16 v13, 0xd

    if-eq v12, v13, :cond_7

    const/16 v9, 0x2c

    if-eq v12, v9, :cond_5

    const/16 v8, 0x2e

    if-eq v12, v8, :cond_4

    const/16 v5, 0x3a

    if-eq v12, v5, :cond_2

    :cond_1
    move v5, v2

    goto :goto_5

    :cond_2
    if-ne v11, v7, :cond_3

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    move v5, v6

    goto :goto_5

    :cond_4
    if-ne v11, v7, :cond_1

    goto :goto_5

    :cond_5
    if-ne v11, v7, :cond_6

    goto :goto_3

    :cond_6
    move v8, v2

    :goto_3
    move v5, v8

    goto :goto_5

    :cond_7
    const/16 v5, 0xa

    if-ne v11, v5, :cond_8

    goto :goto_4

    :cond_8
    move v9, v2

    :goto_4
    move v5, v9

    :goto_5
    if-lez v5, :cond_9

    .line 1184
    invoke-static {v3, v1, v5}, Lcom/google/c/a/c/d;->a(Ljava/lang/Iterable;II)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    move v1, v4

    goto :goto_7

    .line 1206
    :cond_9
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1207
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/c/a/c/f;

    .line 1208
    invoke-virtual {v0, v5, v1, v4}, Lcom/google/c/a/c/d;->a(Lcom/google/c/a/c/f;ILjava/util/Collection;)V

    goto :goto_6

    .line 1210
    :cond_a
    invoke-static {v4}, Lcom/google/c/a/c/d;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    :goto_7
    add-int/2addr v1, v10

    goto :goto_0

    .line 1192
    :cond_b
    new-instance v1, Lcom/google/c/a/c/d$1;

    invoke-direct {v1, v0}, Lcom/google/c/a/c/d$1;-><init>(Lcom/google/c/a/c/d;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/c/a/c/f;

    .line 1199
    iget-object v0, v0, Lcom/google/c/a/c/d;->d:[B

    invoke-virtual {v1, v0}, Lcom/google/c/a/c/f;->a([B)Lcom/google/c/b/a;

    move-result-object v0

    .line 2040
    iget v1, v0, Lcom/google/c/b/a;->b:I

    mul-int v1, v1, p1

    .line 68
    div-int/lit8 v1, v1, 0x64

    const/16 v3, 0xb

    add-int/2addr v1, v3

    .line 3040
    iget v4, v0, Lcom/google/c/b/a;->b:I

    add-int/2addr v4, v1

    if-eqz p2, :cond_12

    if-gez p2, :cond_c

    move v4, v10

    goto :goto_8

    :cond_c
    move v4, v2

    .line 77
    :goto_8
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eqz v4, :cond_d

    move v7, v8

    :cond_d
    if-gt v5, v7, :cond_11

    .line 82
    invoke-static {v5, v4}, Lcom/google/c/a/c/c;->a(IZ)I

    move-result v7

    .line 83
    sget-object v11, Lcom/google/c/a/c/c;->a:[I

    aget v11, v11, v5

    .line 84
    rem-int v12, v7, v11

    sub-int v12, v7, v12

    .line 85
    invoke-static {v0, v11}, Lcom/google/c/a/c/c;->a(Lcom/google/c/b/a;I)Lcom/google/c/b/a;

    move-result-object v0

    .line 4040
    iget v13, v0, Lcom/google/c/b/a;->b:I

    add-int/2addr v13, v1

    const-string v1, "Data to large for user specified layer"

    if-gt v13, v12, :cond_10

    if-eqz v4, :cond_f

    .line 5040
    iget v12, v0, Lcom/google/c/b/a;->b:I

    mul-int/lit8 v13, v11, 0x40

    if-gt v12, v13, :cond_e

    goto :goto_9

    .line 91
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_9
    move-object v13, v0

    move v14, v4

    move v15, v5

    move v2, v7

    move v5, v11

    goto :goto_e

    .line 87
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Illegal value %s for layers"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v11, 0x0

    move v12, v2

    move-object v13, v11

    move v11, v12

    :goto_a
    if-gt v11, v7, :cond_2a

    if-gt v11, v5, :cond_13

    move v14, v10

    goto :goto_b

    :cond_13
    move v14, v2

    :goto_b
    if-eqz v14, :cond_14

    add-int/lit8 v15, v11, 0x1

    goto :goto_c

    :cond_14
    move v15, v11

    .line 105
    :goto_c
    invoke-static {v15, v14}, Lcom/google/c/a/c/c;->a(IZ)I

    move-result v2

    if-gt v4, v2, :cond_29

    .line 111
    sget-object v16, Lcom/google/c/a/c/c;->a:[I

    aget v5, v16, v15

    if-eq v12, v5, :cond_15

    .line 112
    aget v5, v16, v15

    .line 113
    invoke-static {v0, v5}, Lcom/google/c/a/c/c;->a(Lcom/google/c/b/a;I)Lcom/google/c/b/a;

    move-result-object v12

    move-object v13, v12

    goto :goto_d

    :cond_15
    move v5, v12

    .line 115
    :goto_d
    rem-int v12, v2, v5

    sub-int v12, v2, v12

    if-eqz v14, :cond_16

    .line 6040
    iget v7, v13, Lcom/google/c/b/a;->b:I

    mul-int/lit8 v10, v5, 0x40

    if-gt v7, v10, :cond_17

    .line 7040
    :cond_16
    iget v7, v13, Lcom/google/c/b/a;->b:I

    add-int/2addr v7, v1

    if-le v7, v12, :cond_18

    :cond_17
    move v12, v5

    move v2, v6

    move v6, v9

    const/4 v9, 0x1

    goto/16 :goto_1b

    .line 125
    :cond_18
    :goto_e
    invoke-static {v13, v2, v5}, Lcom/google/c/a/c/c;->a(Lcom/google/c/b/a;II)Lcom/google/c/b/a;

    move-result-object v0

    .line 8040
    iget v1, v13, Lcom/google/c/b/a;->b:I

    .line 128
    div-int/2addr v1, v5

    .line 8221
    new-instance v2, Lcom/google/c/b/a;

    invoke-direct {v2}, Lcom/google/c/b/a;-><init>()V

    if-eqz v14, :cond_19

    add-int/lit8 v4, v15, -0x1

    .line 8223
    invoke-virtual {v2, v4, v9}, Lcom/google/c/b/a;->b(II)V

    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x6

    .line 8224
    invoke-virtual {v2, v4, v5}, Lcom/google/c/b/a;->b(II)V

    const/16 v4, 0x1c

    .line 8225
    invoke-static {v2, v4, v8}, Lcom/google/c/a/c/c;->a(Lcom/google/c/b/a;II)Lcom/google/c/b/a;

    move-result-object v2

    goto :goto_f

    :cond_19
    add-int/lit8 v4, v15, -0x1

    .line 8227
    invoke-virtual {v2, v4, v6}, Lcom/google/c/b/a;->b(II)V

    add-int/lit8 v4, v1, -0x1

    .line 8228
    invoke-virtual {v2, v4, v3}, Lcom/google/c/b/a;->b(II)V

    const/16 v4, 0x28

    .line 8229
    invoke-static {v2, v4, v8}, Lcom/google/c/a/c/c;->a(Lcom/google/c/b/a;II)Lcom/google/c/b/a;

    move-result-object v2

    :goto_f
    if-eqz v14, :cond_1a

    mul-int/lit8 v4, v15, 0x4

    add-int/2addr v4, v3

    goto :goto_10

    :cond_1a
    mul-int/lit8 v3, v15, 0x4

    add-int/lit8 v4, v3, 0xe

    .line 133
    :goto_10
    new-array v3, v4, [I

    if-eqz v14, :cond_1c

    const/4 v5, 0x0

    .line 138
    :goto_11
    array-length v7, v3

    if-ge v5, v7, :cond_1b

    .line 139
    aput v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1b
    move v5, v4

    goto :goto_13

    :cond_1c
    add-int/lit8 v5, v4, 0x1

    .line 142
    div-int/lit8 v7, v4, 0x2

    add-int/lit8 v10, v7, -0x1

    div-int/lit8 v10, v10, 0xf

    mul-int/2addr v10, v9

    add-int/2addr v5, v10

    .line 144
    div-int/lit8 v10, v5, 0x2

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v7, :cond_1d

    .line 146
    div-int/lit8 v12, v11, 0xf

    add-int/2addr v12, v11

    sub-int v13, v7, v11

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    sub-int v17, v10, v12

    add-int/lit8 v17, v17, -0x1

    .line 147
    aput v17, v3, v13

    add-int v13, v7, v11

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x1

    .line 148
    aput v12, v3, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 151
    :cond_1d
    :goto_13
    new-instance v7, Lcom/google/c/b/b;

    invoke-direct {v7, v5}, Lcom/google/c/b/b;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_14
    if-ge v10, v15, :cond_25

    if-eqz v14, :cond_1e

    sub-int v12, v15, v10

    mul-int/2addr v12, v8

    add-int/lit8 v12, v12, 0x9

    goto :goto_15

    :cond_1e
    sub-int v12, v15, v10

    mul-int/2addr v12, v8

    add-int/lit8 v12, v12, 0xc

    :goto_15
    const/4 v13, 0x0

    :goto_16
    if-ge v13, v12, :cond_24

    mul-int/lit8 v16, v13, 0x2

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v9, :cond_23

    add-int v17, v11, v16

    add-int v9, v17, v8

    .line 159
    invoke-virtual {v0, v9}, Lcom/google/c/b/a;->a(I)Z

    move-result v9

    if-eqz v9, :cond_1f

    mul-int/lit8 v9, v10, 0x2

    add-int v17, v9, v8

    .line 160
    aget v6, v3, v17

    add-int/2addr v9, v13

    aget v9, v3, v9

    invoke-virtual {v7, v6, v9}, Lcom/google/c/b/b;->b(II)V

    :cond_1f
    mul-int/lit8 v6, v12, 0x2

    add-int/2addr v6, v11

    add-int v6, v6, v16

    add-int/2addr v6, v8

    .line 162
    invoke-virtual {v0, v6}, Lcom/google/c/b/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_20

    mul-int/lit8 v6, v10, 0x2

    add-int v9, v6, v13

    .line 163
    aget v9, v3, v9

    add-int/lit8 v17, v4, -0x1

    sub-int v17, v17, v6

    sub-int v17, v17, v8

    aget v6, v3, v17

    invoke-virtual {v7, v9, v6}, Lcom/google/c/b/b;->b(II)V

    :cond_20
    mul-int/lit8 v6, v12, 0x4

    add-int/2addr v6, v11

    add-int v6, v6, v16

    add-int/2addr v6, v8

    .line 165
    invoke-virtual {v0, v6}, Lcom/google/c/b/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_21

    add-int/lit8 v6, v4, -0x1

    mul-int/lit8 v9, v10, 0x2

    sub-int/2addr v6, v9

    sub-int v9, v6, v8

    .line 166
    aget v9, v3, v9

    sub-int/2addr v6, v13

    aget v6, v3, v6

    invoke-virtual {v7, v9, v6}, Lcom/google/c/b/b;->b(II)V

    :cond_21
    mul-int/lit8 v6, v12, 0x6

    add-int/2addr v6, v11

    add-int v6, v6, v16

    add-int/2addr v6, v8

    .line 168
    invoke-virtual {v0, v6}, Lcom/google/c/b/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_22

    add-int/lit8 v6, v4, -0x1

    mul-int/lit8 v9, v10, 0x2

    sub-int/2addr v6, v9

    sub-int/2addr v6, v13

    .line 169
    aget v6, v3, v6

    add-int/2addr v9, v8

    aget v9, v3, v9

    invoke-virtual {v7, v6, v9}, Lcom/google/c/b/b;->b(II)V

    :cond_22
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x5

    const/4 v9, 0x2

    goto :goto_17

    :cond_23
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    goto :goto_16

    :cond_24
    mul-int/lit8 v12, v12, 0x8

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    goto/16 :goto_14

    .line 177
    :cond_25
    invoke-static {v7, v14, v5, v2}, Lcom/google/c/a/c/c;->a(Lcom/google/c/b/b;ZILcom/google/c/b/a;)V

    if-eqz v14, :cond_26

    .line 181
    div-int/lit8 v0, v5, 0x2

    const/4 v2, 0x5

    invoke-static {v7, v0, v2}, Lcom/google/c/a/c/c;->a(Lcom/google/c/b/b;II)V

    goto :goto_1a

    .line 183
    :cond_26
    div-int/lit8 v0, v5, 0x2

    const/4 v2, 0x7

    invoke-static {v7, v0, v2}, Lcom/google/c/a/c/c;->a(Lcom/google/c/b/b;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    .line 184
    :goto_18
    div-int/lit8 v8, v4, 0x2

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v2, v8, :cond_28

    and-int/lit8 v8, v0, 0x1

    :goto_19
    if-ge v8, v5, :cond_27

    sub-int v10, v0, v3

    .line 186
    invoke-virtual {v7, v10, v8}, Lcom/google/c/b/b;->b(II)V

    add-int v11, v0, v3

    .line 187
    invoke-virtual {v7, v11, v8}, Lcom/google/c/b/b;->b(II)V

    .line 188
    invoke-virtual {v7, v8, v10}, Lcom/google/c/b/b;->b(II)V

    .line 189
    invoke-virtual {v7, v8, v11}, Lcom/google/c/b/b;->b(II)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_19

    :cond_27
    add-int/lit8 v2, v2, 0xf

    add-int/lit8 v3, v3, 0x10

    goto :goto_18

    .line 194
    :cond_28
    :goto_1a
    new-instance v0, Lcom/google/c/a/c/a;

    invoke-direct {v0}, Lcom/google/c/a/c/a;-><init>()V

    .line 9042
    iput-boolean v14, v0, Lcom/google/c/a/c/a;->a:Z

    .line 9053
    iput v5, v0, Lcom/google/c/a/c/a;->b:I

    .line 9064
    iput v15, v0, Lcom/google/c/a/c/a;->c:I

    .line 9075
    iput v1, v0, Lcom/google/c/a/c/a;->d:I

    .line 9086
    iput-object v7, v0, Lcom/google/c/a/c/a;->e:Lcom/google/c/b/b;

    return-object v0

    :cond_29
    move v2, v6

    move v6, v9

    move v9, v10

    :goto_1b
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    const/4 v5, 0x3

    const/16 v7, 0x20

    const/4 v8, 0x4

    move v9, v6

    move v6, v2

    const/4 v2, 0x0

    goto/16 :goto_a

    .line 101
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/google/c/b/a;I)Lcom/google/c/b/a;
    .locals 9

    .line 319
    new-instance v0, Lcom/google/c/b/a;

    invoke-direct {v0}, Lcom/google/c/b/a;-><init>()V

    .line 13040
    iget v1, p0, Lcom/google/c/b/a;->b:I

    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_5

    move v6, v4

    move v7, v6

    :goto_1
    if-ge v6, p1, :cond_2

    add-int v8, v5, v6

    if-ge v8, v1, :cond_0

    .line 326
    invoke-virtual {p0, v8}, Lcom/google/c/b/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    and-int v6, v7, v3

    if-ne v6, v3, :cond_3

    .line 331
    invoke-virtual {v0, v6, p1}, Lcom/google/c/b/a;->b(II)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    or-int/lit8 v6, v7, 0x1

    .line 334
    invoke-virtual {v0, v6, p1}, Lcom/google/c/b/a;->b(II)V

    goto :goto_2

    .line 337
    :cond_4
    invoke-virtual {v0, v7, p1}, Lcom/google/c/b/a;->b(II)V

    :goto_3
    add-int/2addr v5, p1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static a(Lcom/google/c/b/a;II)Lcom/google/c/b/a;
    .locals 11

    .line 10040
    iget v0, p0, Lcom/google/c/b/a;->b:I

    .line 273
    div-int/2addr v0, p2

    .line 274
    new-instance v1, Lcom/google/c/b/b/d;

    const/4 v2, 0x4

    if-eq p2, v2, :cond_4

    const/4 v2, 0x6

    if-eq p2, v2, :cond_3

    const/16 v2, 0x8

    if-eq p2, v2, :cond_2

    const/16 v2, 0xa

    if-eq p2, v2, :cond_1

    const/16 v2, 0xc

    if-eq p2, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 10312
    :cond_0
    sget-object v2, Lcom/google/c/b/b/a;->a:Lcom/google/c/b/b/a;

    goto :goto_0

    .line 10310
    :cond_1
    sget-object v2, Lcom/google/c/b/b/a;->b:Lcom/google/c/b/b/a;

    goto :goto_0

    .line 10308
    :cond_2
    sget-object v2, Lcom/google/c/b/b/a;->g:Lcom/google/c/b/b/a;

    goto :goto_0

    .line 10306
    :cond_3
    sget-object v2, Lcom/google/c/b/b/a;->c:Lcom/google/c/b/b/a;

    goto :goto_0

    .line 10304
    :cond_4
    sget-object v2, Lcom/google/c/b/b/a;->d:Lcom/google/c/b/b/a;

    .line 274
    :goto_0
    invoke-direct {v1, v2}, Lcom/google/c/b/b/d;-><init>(Lcom/google/c/b/b/a;)V

    .line 275
    div-int v2, p1, p2

    .line 11288
    new-array v3, v2, [I

    .line 12040
    iget v4, p0, Lcom/google/c/b/a;->b:I

    .line 11291
    div-int/2addr v4, p2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_7

    move v7, v5

    move v8, v7

    :goto_2
    if-ge v7, p2, :cond_6

    mul-int v9, v6, p2

    add-int/2addr v9, v7

    .line 11294
    invoke-virtual {p0, v9}, Lcom/google/c/b/a;->a(I)Z

    move-result v9

    if-eqz v9, :cond_5

    sub-int v9, p2, v7

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    shl-int v9, v10, v9

    goto :goto_3

    :cond_5
    move v9, v5

    :goto_3
    or-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 11296
    :cond_6
    aput v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    sub-int/2addr v2, v0

    .line 277
    invoke-virtual {v1, v3, v2}, Lcom/google/c/b/b/d;->a([II)V

    .line 278
    rem-int/2addr p1, p2

    .line 279
    new-instance p0, Lcom/google/c/b/a;

    invoke-direct {p0}, Lcom/google/c/b/a;-><init>()V

    .line 280
    invoke-virtual {p0, v5, p1}, Lcom/google/c/b/a;->b(II)V

    .line 281
    array-length p1, v3

    :goto_4
    if-ge v5, p1, :cond_8

    aget v0, v3, v5

    .line 282
    invoke-virtual {p0, v0, p2}, Lcom/google/c/b/a;->b(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    return-object p0
.end method

.method private static a(Lcom/google/c/b/b;II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p1, v0

    move v2, v1

    :goto_1
    add-int v3, p1, v0

    if-gt v2, v3, :cond_0

    .line 206
    invoke-virtual {p0, v2, v1}, Lcom/google/c/b/b;->b(II)V

    .line 207
    invoke-virtual {p0, v2, v3}, Lcom/google/c/b/b;->b(II)V

    .line 208
    invoke-virtual {p0, v1, v2}, Lcom/google/c/b/b;->b(II)V

    .line 209
    invoke-virtual {p0, v3, v2}, Lcom/google/c/b/b;->b(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sub-int v0, p1, p2

    .line 212
    invoke-virtual {p0, v0, v0}, Lcom/google/c/b/b;->b(II)V

    add-int/lit8 v1, v0, 0x1

    .line 213
    invoke-virtual {p0, v1, v0}, Lcom/google/c/b/b;->b(II)V

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/google/c/b/b;->b(II)V

    add-int/2addr p1, p2

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/google/c/b/b;->b(II)V

    .line 216
    invoke-virtual {p0, p1, v1}, Lcom/google/c/b/b;->b(II)V

    add-int/lit8 p2, p1, -0x1

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/b;->b(II)V

    return-void
.end method

.method private static a(Lcom/google/c/b/b;ZILcom/google/c/b/a;)V
    .locals 2

    .line 235
    div-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :goto_0
    const/4 p1, 0x7

    if-ge v0, p1, :cond_4

    add-int/lit8 p1, p2, -0x3

    add-int/2addr p1, v0

    .line 239
    invoke-virtual {p3, v0}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p2, -0x5

    .line 240
    invoke-virtual {p0, p1, v1}, Lcom/google/c/b/b;->b(II)V

    :cond_0
    add-int/lit8 v1, v0, 0x7

    .line 242
    invoke-virtual {p3, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, p2, 0x5

    .line 243
    invoke-virtual {p0, v1, p1}, Lcom/google/c/b/b;->b(II)V

    :cond_1
    rsub-int/lit8 v1, v0, 0x14

    .line 245
    invoke-virtual {p3, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x5

    .line 246
    invoke-virtual {p0, p1, v1}, Lcom/google/c/b/b;->b(II)V

    :cond_2
    rsub-int/lit8 v1, v0, 0x1b

    .line 248
    invoke-virtual {p3, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, p2, -0x5

    .line 249
    invoke-virtual {p0, v1, p1}, Lcom/google/c/b/b;->b(II)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    const/16 p1, 0xa

    if-ge v0, p1, :cond_a

    add-int/lit8 p1, p2, -0x5

    add-int/2addr p1, v0

    .line 254
    div-int/lit8 v1, v0, 0x5

    add-int/2addr p1, v1

    .line 255
    invoke-virtual {p3, v0}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, p2, -0x7

    .line 256
    invoke-virtual {p0, p1, v1}, Lcom/google/c/b/b;->b(II)V

    :cond_6
    add-int/lit8 v1, v0, 0xa

    .line 258
    invoke-virtual {p3, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, p2, 0x7

    .line 259
    invoke-virtual {p0, v1, p1}, Lcom/google/c/b/b;->b(II)V

    :cond_7
    rsub-int/lit8 v1, v0, 0x1d

    .line 261
    invoke-virtual {p3, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, p2, 0x7

    .line 262
    invoke-virtual {p0, p1, v1}, Lcom/google/c/b/b;->b(II)V

    :cond_8
    rsub-int/lit8 v1, v0, 0x27

    .line 264
    invoke-virtual {p3, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v1, p2, -0x7

    .line 265
    invoke-virtual {p0, v1, p1}, Lcom/google/c/b/b;->b(II)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method
