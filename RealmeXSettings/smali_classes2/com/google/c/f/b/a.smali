.class public final Lcom/google/c/f/b/a;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 41
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/c/f/b/a;->a:[I

    .line 42
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/c/f/b/a;->b:[I

    const/16 v0, 0x8

    .line 50
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/c/f/b/a;->c:[I

    const/16 v0, 0x9

    .line 52
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/c/f/b/a;->d:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private static a([I[I)I
    .locals 9

    .line 352
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 356
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 357
    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-ge v3, v4, :cond_1

    return v2

    :cond_1
    shl-int/lit8 v5, v3, 0x8

    .line 367
    div-int/2addr v5, v4

    mul-int/lit16 v4, v5, 0xcc

    shr-int/lit8 v4, v4, 0x8

    move v6, v1

    :goto_1
    if-ge v1, v0, :cond_4

    .line 372
    aget v7, p0, v1

    shl-int/lit8 v7, v7, 0x8

    .line 373
    aget v8, p1, v1

    mul-int/2addr v8, v5

    if-le v7, v8, :cond_2

    sub-int/2addr v7, v8

    goto :goto_2

    :cond_2
    sub-int v7, v8, v7

    :goto_2
    if-le v7, v4, :cond_3

    return v2

    :cond_3
    add-int/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    :cond_4
    div-int/2addr v6, v3

    return v6
.end method

.method private static a(Lcom/google/c/b/a;Lcom/google/c/b/a;)Lcom/google/c/b/a;
    .locals 3

    .line 167
    invoke-virtual {p1}, Lcom/google/c/b/a;->b()V

    .line 7040
    iget v0, p0, Lcom/google/c/b/a;->b:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 170
    invoke-virtual {p0, v1}, Lcom/google/c/b/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v1

    .line 171
    invoke-virtual {p1, v2}, Lcom/google/c/b/a;->b(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static a(Lcom/google/c/c;)Lcom/google/c/f/b/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/c;",
            ")",
            "Lcom/google/c/f/b/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/google/c/c;->a()Lcom/google/c/b/b;

    move-result-object p0

    .line 83
    invoke-static {p0}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/b;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1259
    iget v0, p0, Lcom/google/c/b/b;->a:I

    .line 1266
    iget v1, p0, Lcom/google/c/b/b;->b:I

    .line 1153
    new-instance v2, Lcom/google/c/b/a;

    invoke-direct {v2, v0}, Lcom/google/c/b/a;-><init>(I)V

    .line 1154
    new-instance v3, Lcom/google/c/b/a;

    invoke-direct {v3, v0}, Lcom/google/c/b/a;-><init>(I)V

    .line 1155
    new-instance v4, Lcom/google/c/b/a;

    invoke-direct {v4, v0}, Lcom/google/c/b/a;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v5, v1, 0x1

    shr-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_0

    .line 1157
    invoke-virtual {p0, v0, v2}, Lcom/google/c/b/b;->a(ILcom/google/c/b/a;)Lcom/google/c/b/a;

    move-result-object v2

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v0

    .line 1158
    invoke-virtual {p0, v5, v3}, Lcom/google/c/b/b;->a(ILcom/google/c/b/a;)Lcom/google/c/b/a;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/a;Lcom/google/c/b/a;)Lcom/google/c/b/a;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/google/c/b/b;->b(ILcom/google/c/b/a;)V

    .line 1159
    invoke-static {v2, v4}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/a;Lcom/google/c/b/a;)Lcom/google/c/b/a;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/c/b/b;->b(ILcom/google/c/b/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/b;)Ljava/util/List;

    move-result-object v0

    .line 88
    :cond_1
    new-instance v1, Lcom/google/c/f/b/b;

    invoke-direct {v1, p0, v0}, Lcom/google/c/f/b/b;-><init>(Lcom/google/c/b/b;Ljava/util/List;)V

    return-object v1
.end method

.method private static a(Lcom/google/c/b/b;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/b;",
            ")",
            "Ljava/util/List<",
            "[",
            "Lcom/google/c/q;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget v1, p0, Lcom/google/c/b/b;->b:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, v1, v1}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/b;II)[Lcom/google/c/q;

    move-result-object p0

    .line 106
    aget-object v1, p0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aget-object v1, p0, v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static a([Lcom/google/c/q;[Lcom/google/c/q;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 210
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 211
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/c/b/b;III[I[I)[I
    .locals 10

    .line 295
    array-length v0, p5

    const/4 v1, 0x0

    invoke-static {p5, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 296
    array-length v0, p4

    move v2, v1

    .line 302
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    add-int/lit8 p1, p1, -0x1

    move v2, v3

    goto :goto_0

    :cond_0
    move v4, p1

    move v2, v1

    move v3, v2

    :goto_1
    const/16 v5, 0x6b

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge p1, p3, :cond_4

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/b;->a(II)Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_1

    .line 310
    aget v5, p5, v2

    add-int/2addr v5, v7

    aput v5, p5, v2

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v0, -0x1

    if-ne v2, v8, :cond_3

    .line 313
    invoke-static {p5, p4}, Lcom/google/c/f/b/a;->a([I[I)I

    move-result v9

    if-ge v9, v5, :cond_2

    .line 314
    new-array p0, v6, [I

    aput v4, p0, v1

    aput p1, p0, v7

    return-object p0

    .line 316
    :cond_2
    aget v5, p5, v1

    aget v9, p5, v7

    add-int/2addr v5, v9

    add-int/2addr v4, v5

    add-int/lit8 v5, v0, -0x2

    .line 317
    invoke-static {p5, v6, p5, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    aput v1, p5, v5

    .line 319
    aput v1, p5, v8

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 324
    :goto_2
    aput v7, p5, v2

    xor-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v7

    if-ne v2, v0, :cond_5

    .line 329
    invoke-static {p5, p4}, Lcom/google/c/f/b/a;->a([I[I)I

    move-result p0

    if-ge p0, v5, :cond_5

    .line 330
    new-array p0, v6, [I

    aput v4, p0, v1

    sub-int/2addr p1, v7

    aput p1, p0, v7

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/c/b/b;II)[Lcom/google/c/q;
    .locals 9

    .line 7266
    iget v6, p0, Lcom/google/c/b/b;->b:I

    .line 8259
    iget v7, p0, Lcom/google/c/b/b;->a:I

    const/16 v0, 0x8

    .line 196
    new-array v8, v0, [Lcom/google/c/q;

    .line 197
    sget-object v5, Lcom/google/c/f/b/a;->c:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, v6

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/b;IIII[I)[Lcom/google/c/q;

    move-result-object v0

    sget-object v1, Lcom/google/c/f/b/a;->a:[I

    invoke-static {v8, v0, v1}, Lcom/google/c/f/b/a;->a([Lcom/google/c/q;[Lcom/google/c/q;[I)V

    const/4 v0, 0x4

    .line 200
    aget-object v1, v8, v0

    if-eqz v1, :cond_0

    .line 201
    aget-object p1, v8, v0

    .line 9038
    iget p1, p1, Lcom/google/c/q;->a:F

    float-to-int p2, p1

    .line 202
    aget-object p1, v8, v0

    .line 9042
    iget p1, p1, Lcom/google/c/q;->b:F

    float-to-int p1, p1

    :cond_0
    move v3, p1

    move v4, p2

    .line 204
    sget-object v5, Lcom/google/c/f/b/a;->d:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/b;IIII[I)[Lcom/google/c/q;

    move-result-object p0

    sget-object p1, Lcom/google/c/f/b/a;->b:[I

    invoke-static {v8, p0, p1}, Lcom/google/c/f/b/a;->a([Lcom/google/c/q;[Lcom/google/c/q;[I)V

    return-object v8
.end method

.method private static a(Lcom/google/c/b/b;IIII[I)[Lcom/google/c/q;
    .locals 17

    move/from16 v0, p1

    const/4 v1, 0x4

    .line 221
    new-array v2, v1, [Lcom/google/c/q;

    move-object/from16 v9, p5

    .line 223
    array-length v3, v9

    new-array v10, v3, [I

    move/from16 v11, p3

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v11, v0, :cond_3

    move-object/from16 v3, p0

    move/from16 v4, p4

    move v5, v11

    move/from16 v6, p2

    move-object/from16 v7, p5

    move-object v8, v10

    .line 225
    invoke-static/range {v3 .. v8}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/b;III[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_1
    move-object v14, v3

    if-lez v11, :cond_1

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p4

    move v5, v11

    move/from16 v6, p2

    move-object/from16 v7, p5

    move-object v8, v10

    .line 228
    invoke-static/range {v3 .. v8}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/b;III[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v11, v13

    .line 236
    :cond_1
    new-instance v3, Lcom/google/c/q;

    aget v4, v14, v12

    int-to-float v4, v4

    int-to-float v5, v11

    invoke-direct {v3, v4, v5}, Lcom/google/c/q;-><init>(FF)V

    aput-object v3, v2, v12

    .line 237
    new-instance v3, Lcom/google/c/q;

    aget v4, v14, v13

    int-to-float v4, v4

    invoke-direct {v3, v4, v5}, Lcom/google/c/q;-><init>(FF)V

    aput-object v3, v2, v13

    move v3, v13

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x5

    goto :goto_0

    :cond_3
    move v3, v12

    :goto_2
    add-int/lit8 v4, v11, 0x1

    if-eqz v3, :cond_7

    const/4 v14, 0x2

    .line 246
    new-array v3, v14, [I

    aget-object v5, v2, v12

    .line 10038
    iget v5, v5, Lcom/google/c/q;->a:F

    float-to-int v5, v5

    aput v5, v3, v12

    .line 246
    aget-object v5, v2, v13

    .line 11038
    iget v5, v5, Lcom/google/c/q;->a:F

    float-to-int v5, v5

    aput v5, v3, v13

    move-object/from16 v16, v3

    move v15, v4

    move v8, v12

    :goto_3
    if-ge v15, v0, :cond_5

    .line 248
    aget v4, v16, v12

    move-object/from16 v3, p0

    move v5, v15

    move/from16 v6, p2

    move-object/from16 v7, p5

    move v1, v8

    move-object v8, v10

    invoke-static/range {v3 .. v8}, Lcom/google/c/f/b/a;->a(Lcom/google/c/b/b;III[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_4

    .line 253
    aget v4, v16, v12

    aget v5, v3, v12

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_4

    aget v4, v16, v13

    aget v6, v3, v13

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v5, :cond_4

    move-object/from16 v16, v3

    move v8, v12

    goto :goto_4

    :cond_4
    const/16 v3, 0x19

    if-gt v1, v3, :cond_6

    add-int/lit8 v8, v1, 0x1

    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x4

    goto :goto_3

    :cond_5
    move v1, v8

    :cond_6
    add-int/lit8 v8, v1, 0x1

    sub-int v4, v15, v8

    .line 267
    new-instance v0, Lcom/google/c/q;

    aget v1, v16, v12

    int-to-float v1, v1

    int-to-float v3, v4

    invoke-direct {v0, v1, v3}, Lcom/google/c/q;-><init>(FF)V

    aput-object v0, v2, v14

    const/4 v0, 0x3

    .line 268
    new-instance v1, Lcom/google/c/q;

    aget v5, v16, v13

    int-to-float v5, v5

    invoke-direct {v1, v5, v3}, Lcom/google/c/q;-><init>(FF)V

    aput-object v1, v2, v0

    :cond_7
    sub-int/2addr v4, v11

    const/16 v0, 0xa

    if-ge v4, v0, :cond_8

    const/4 v0, 0x4

    :goto_5
    if-ge v12, v0, :cond_8

    const/4 v1, 0x0

    .line 272
    aput-object v1, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    return-object v2
.end method
