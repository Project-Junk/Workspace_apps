.class public final Lcom/google/c/g/b/c;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field public final a:Lcom/google/c/b/b;

.field public b:Lcom/google/c/r;


# direct methods
.method public constructor <init>(Lcom/google/c/b/b;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    return-void
.end method

.method private a(IIII)F
    .locals 5

    .line 262
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/g/b/c;->b(IIII)F

    move-result v0

    sub-int/2addr p3, p1

    sub-int p3, p1, p3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez p3, :cond_0

    int-to-float v3, p1

    sub-int p3, p1, p3

    int-to-float p3, p3

    div-float p3, v3, p3

    move v3, v1

    goto :goto_0

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    .line 29259
    iget v3, v3, Lcom/google/c/b/b;->a:I

    if-lt p3, v3, :cond_1

    .line 271
    iget-object v3, p0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    .line 30259
    iget v3, v3, Lcom/google/c/b/b;->a:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float p3, v3, p3

    .line 272
    iget-object v3, p0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    .line 31259
    iget v3, v3, Lcom/google/c/b/b;->a:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    move v3, p3

    move p3, v2

    :goto_0
    int-to-float v4, p2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float/2addr p4, p3

    sub-float p3, v4, p4

    float-to-int p3, p3

    if-gez p3, :cond_2

    sub-int p3, p2, p3

    int-to-float p3, p3

    div-float p3, v4, p3

    goto :goto_1

    .line 280
    :cond_2
    iget-object p4, p0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    .line 31266
    iget p4, p4, Lcom/google/c/b/b;->b:I

    if-lt p3, p4, :cond_3

    .line 281
    iget-object p4, p0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    .line 32266
    iget p4, p4, Lcom/google/c/b/b;->b:I

    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p2

    int-to-float p4, p4

    sub-int/2addr p3, p2

    int-to-float p3, p3

    div-float p3, p4, p3

    .line 282
    iget-object p4, p0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    .line 33266
    iget p4, p4, Lcom/google/c/b/b;->b:I

    add-int/lit8 v1, p4, -0x1

    goto :goto_1

    :cond_3
    move v1, p3

    move p3, v2

    :goto_1
    int-to-float p4, p1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr p4, v3

    float-to-int p3, p4

    .line 286
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/c/g/b/c;->b(IIII)F

    move-result p1

    add-float/2addr v0, p1

    sub-float/2addr v0, v2

    return v0
.end method

.method private a(Lcom/google/c/q;Lcom/google/c/q;)F
    .locals 4

    .line 26038
    iget v0, p1, Lcom/google/c/q;->a:F

    float-to-int v0, v0

    .line 26042
    iget v1, p1, Lcom/google/c/q;->b:F

    float-to-int v1, v1

    .line 27038
    iget v2, p2, Lcom/google/c/q;->a:F

    float-to-int v2, v2

    .line 27042
    iget v3, p2, Lcom/google/c/q;->b:F

    float-to-int v3, v3

    .line 236
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/c/g/b/c;->a(IIII)F

    move-result v0

    .line 28038
    iget v1, p2, Lcom/google/c/q;->a:F

    float-to-int v1, v1

    .line 28042
    iget p2, p2, Lcom/google/c/q;->b:F

    float-to-int p2, p2

    .line 29038
    iget v2, p1, Lcom/google/c/q;->a:F

    float-to-int v2, v2

    .line 29042
    iget p1, p1, Lcom/google/c/q;->b:F

    float-to-int p1, p1

    .line 240
    invoke-direct {p0, v1, p2, v2, p1}, Lcom/google/c/g/b/c;->a(IIII)F

    move-result p1

    .line 244
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    const/high16 v1, 0x40e00000    # 7.0f

    if-eqz p2, :cond_0

    div-float/2addr p1, v1

    return p1

    .line 247
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    div-float/2addr v0, v1

    return v0

    :cond_1
    add-float/2addr v0, p1

    const/high16 p1, 0x41600000    # 14.0f

    div-float/2addr v0, p1

    return v0
.end method

.method private b(IIII)F
    .locals 17

    sub-int v0, p4, p2

    .line 303
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move/from16 v6, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v1, p4

    goto :goto_1

    :cond_1
    move/from16 v4, p1

    move/from16 v6, p2

    move/from16 v1, p3

    move/from16 v5, p4

    :goto_1
    sub-int v7, v1, v4

    .line 313
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v5, v6

    .line 314
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    neg-int v9, v7

    shr-int/2addr v9, v3

    const/4 v10, -0x1

    if-ge v4, v1, :cond_2

    move v11, v3

    goto :goto_2

    :cond_2
    move v11, v10

    :goto_2
    if-ge v6, v5, :cond_3

    move v10, v3

    :cond_3
    add-int/2addr v1, v11

    move v12, v6

    move v14, v9

    const/4 v13, 0x0

    move v9, v4

    :goto_3
    if-eq v9, v1, :cond_a

    if-eqz v0, :cond_4

    move v2, v12

    goto :goto_4

    :cond_4
    move v2, v9

    :goto_4
    if-eqz v0, :cond_5

    move v15, v9

    goto :goto_5

    :cond_5
    move v15, v12

    :goto_5
    if-ne v13, v3, :cond_6

    move/from16 v16, v0

    move/from16 p2, v1

    move v0, v3

    move-object/from16 v3, p0

    goto :goto_6

    :cond_6
    move-object/from16 v3, p0

    move/from16 v16, v0

    move/from16 p2, v1

    const/4 v0, 0x0

    .line 330
    :goto_6
    iget-object v1, v3, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    invoke-virtual {v1, v2, v15}, Lcom/google/c/b/b;->a(II)Z

    move-result v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    if-ne v13, v0, :cond_7

    .line 332
    invoke-static {v9, v12, v4, v6}, Lcom/google/c/b/a/a;->a(IIII)F

    move-result v0

    return v0

    :cond_7
    add-int/lit8 v13, v13, 0x1

    :cond_8
    add-int/2addr v14, v8

    if-lez v14, :cond_9

    if-eq v12, v5, :cond_b

    add-int/2addr v12, v10

    sub-int/2addr v14, v7

    :cond_9
    add-int/2addr v9, v11

    move/from16 v1, p2

    move/from16 v0, v16

    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v3, p0

    move/from16 p2, v1

    :cond_b
    const/4 v0, 0x2

    if-ne v13, v0, :cond_c

    move/from16 v1, p2

    .line 350
    invoke-static {v1, v5, v4, v6}, Lcom/google/c/b/a/a;->a(IIII)F

    move-result v0

    return v0

    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/c/g/b/f;)Lcom/google/c/b/g;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/h;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1042
    iget-object v2, v1, Lcom/google/c/g/b/f;->b:Lcom/google/c/g/b/d;

    .line 1046
    iget-object v3, v1, Lcom/google/c/g/b/f;->c:Lcom/google/c/g/b/d;

    .line 2038
    iget-object v1, v1, Lcom/google/c/g/b/f;->a:Lcom/google/c/g/b/d;

    .line 2226
    invoke-direct {v0, v2, v3}, Lcom/google/c/g/b/c;->a(Lcom/google/c/q;Lcom/google/c/q;)F

    move-result v4

    invoke-direct {v0, v2, v1}, Lcom/google/c/g/b/c;->a(Lcom/google/c/q;Lcom/google/c/q;)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-ltz v6, :cond_13

    .line 3201
    invoke-static {v2, v3}, Lcom/google/c/q;->a(Lcom/google/c/q;Lcom/google/c/q;)F

    move-result v6

    div-float/2addr v6, v4

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 3202
    invoke-static {v2, v1}, Lcom/google/c/q;->a(Lcom/google/c/q;Lcom/google/c/q;)F

    move-result v8

    div-float/2addr v8, v4

    add-float/2addr v8, v7

    float-to-int v7, v8

    add-int/2addr v6, v7

    const/4 v14, 0x1

    shr-int/2addr v6, v14

    add-int/lit8 v6, v6, 0x7

    and-int/lit8 v7, v6, 0x3

    const/4 v15, 0x3

    const/4 v13, 0x2

    if-eqz v7, :cond_2

    if-eq v7, v13, :cond_1

    if-eq v7, v15, :cond_0

    :goto_0
    move v12, v6

    goto :goto_1

    .line 3213
    :cond_0
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 97
    :goto_1
    invoke-static {v12}, Lcom/google/c/g/a/j;->a(I)Lcom/google/c/g/a/j;

    move-result-object v6

    .line 98
    invoke-virtual {v6}, Lcom/google/c/g/a/j;->a()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    const/16 v16, 0x0

    .line 5070
    iget-object v6, v6, Lcom/google/c/g/a/j;->b:[I

    .line 102
    array-length v6, v6

    const/high16 v17, 0x40400000    # 3.0f

    const/4 v10, 0x0

    if-lez v6, :cond_10

    .line 6038
    iget v6, v3, Lcom/google/c/q;->a:F

    .line 7038
    iget v8, v2, Lcom/google/c/q;->a:F

    sub-float/2addr v6, v8

    .line 8038
    iget v8, v1, Lcom/google/c/q;->a:F

    add-float/2addr v6, v8

    .line 8042
    iget v8, v3, Lcom/google/c/q;->b:F

    .line 9042
    iget v9, v2, Lcom/google/c/q;->b:F

    sub-float/2addr v8, v9

    .line 10042
    iget v9, v1, Lcom/google/c/q;->b:F

    add-float/2addr v8, v9

    int-to-float v7, v7

    div-float v7, v17, v7

    sub-float/2addr v5, v7

    .line 11038
    iget v7, v2, Lcom/google/c/q;->a:F

    .line 12038
    iget v9, v2, Lcom/google/c/q;->a:F

    sub-float/2addr v6, v9

    mul-float/2addr v6, v5

    add-float/2addr v7, v6

    float-to-int v9, v7

    .line 12042
    iget v6, v2, Lcom/google/c/q;->b:F

    .line 13042
    iget v7, v2, Lcom/google/c/q;->b:F

    sub-float/2addr v8, v7

    mul-float/2addr v5, v8

    add-float/2addr v6, v5

    float-to-int v5, v6

    const/4 v8, 0x4

    :goto_2
    const/16 v6, 0x10

    if-gt v8, v6, :cond_10

    int-to-float v6, v8

    mul-float/2addr v6, v4

    float-to-int v6, v6

    sub-int v7, v9, v6

    .line 13375
    :try_start_0
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 13376
    iget-object v7, v0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    .line 14259
    iget v7, v7, Lcom/google/c/b/b;->a:I

    sub-int/2addr v7, v14

    add-int v11, v9, v6

    .line 13376
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v11, v7, v18

    int-to-float v7, v11

    mul-float v19, v4, v17

    cmpg-float v7, v7, v19

    if-ltz v7, :cond_f

    sub-int v7, v5, v6

    .line 13381
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 13382
    iget-object v7, v0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    .line 14266
    iget v7, v7, Lcom/google/c/b/b;->b:I

    sub-int/2addr v7, v14

    add-int/2addr v6, v5

    .line 13382
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v7, v6, v20

    int-to-float v6, v7

    cmpg-float v6, v6, v19

    if-ltz v6, :cond_e

    .line 13387
    new-instance v6, Lcom/google/c/g/b/b;

    iget-object v10, v0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    iget-object v13, v0, Lcom/google/c/g/b/c;->b:Lcom/google/c/r;
    :try_end_0
    .catch Lcom/google/c/l; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v22, v6

    move-object/from16 v6, v22

    move/from16 v23, v7

    move-object v7, v10

    move/from16 v24, v8

    move/from16 v8, v18

    move/from16 v18, v9

    move/from16 v9, v20

    move v10, v11

    move/from16 v11, v23

    move/from16 v25, v12

    move v12, v4

    :try_start_1
    invoke-direct/range {v6 .. v13}, Lcom/google/c/g/b/b;-><init>(Lcom/google/c/b/b;IIIIFLcom/google/c/r;)V

    .line 15088
    iget v7, v6, Lcom/google/c/g/b/b;->c:I

    .line 15089
    iget v8, v6, Lcom/google/c/g/b/b;->f:I

    .line 15090
    iget v9, v6, Lcom/google/c/g/b/b;->e:I

    add-int/2addr v9, v7

    .line 15091
    iget v10, v6, Lcom/google/c/g/b/b;->d:I

    shr-int/lit8 v11, v8, 0x1

    add-int/2addr v10, v11

    .line 15094
    new-array v11, v15, [I

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v8, :cond_c

    and-int/lit8 v13, v12, 0x1

    if-nez v13, :cond_3

    add-int/lit8 v13, v12, 0x1

    shr-int/2addr v13, v14

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v12, 0x1

    shr-int/2addr v13, v14

    neg-int v13, v13

    :goto_4
    add-int/2addr v13, v10

    const/4 v15, 0x0

    aput v15, v11, v15

    aput v15, v11, v14

    const/4 v14, 0x2

    aput v15, v11, v14

    move v15, v7

    :goto_5
    if-ge v15, v9, :cond_4

    .line 15105
    iget-object v14, v6, Lcom/google/c/g/b/b;->a:Lcom/google/c/b/b;

    invoke-virtual {v14, v15, v13}, Lcom/google/c/b/b;->a(II)Z

    move-result v14
    :try_end_1
    .catch Lcom/google/c/l; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v14, :cond_4

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x2

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    :goto_6
    if-ge v15, v9, :cond_a

    move/from16 v20, v4

    .line 15110
    :try_start_2
    iget-object v4, v6, Lcom/google/c/g/b/b;->a:Lcom/google/c/b/b;

    invoke-virtual {v4, v15, v13}, Lcom/google/c/b/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    if-eq v14, v4, :cond_7

    const/4 v4, 0x2

    if-ne v14, v4, :cond_6

    .line 15116
    invoke-virtual {v6, v11}, Lcom/google/c/g/b/b;->a([I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 15117
    invoke-virtual {v6, v11, v13, v15}, Lcom/google/c/g/b/b;->a([III)Lcom/google/c/g/b/a;

    move-result-object v14

    if-eqz v14, :cond_5

    move-object/from16 v16, v14

    goto/16 :goto_b

    .line 15122
    :cond_5
    aget v14, v11, v4

    const/16 v21, 0x0

    aput v14, v11, v21

    const/4 v14, 0x1

    aput v14, v11, v14

    aput v21, v11, v4

    move/from16 v21, v5

    const/4 v14, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 15127
    aget v4, v11, v14
    :try_end_2
    .catch Lcom/google/c/l; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v21, v5

    const/4 v5, 0x1

    add-int/2addr v4, v5

    :try_start_3
    aput v4, v11, v14

    goto :goto_8

    :cond_7
    move/from16 v21, v5

    move v5, v4

    goto :goto_7

    :cond_8
    move/from16 v21, v5

    const/4 v5, 0x1

    if-ne v14, v5, :cond_9

    add-int/lit8 v14, v14, 0x1

    .line 15134
    :cond_9
    :goto_7
    aget v4, v11, v14

    add-int/2addr v4, v5

    aput v4, v11, v14

    :goto_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v20

    move/from16 v5, v21

    goto :goto_6

    :cond_a
    move/from16 v20, v4

    move/from16 v21, v5

    .line 15138
    invoke-virtual {v6, v11}, Lcom/google/c/g/b/b;->a([I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 15139
    invoke-virtual {v6, v11, v13, v9}, Lcom/google/c/g/b/b;->a([III)Lcom/google/c/g/b/a;

    move-result-object v4

    if-eqz v4, :cond_b

    goto :goto_9

    :cond_b
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v20

    move/from16 v5, v21

    const/4 v14, 0x1

    const/4 v15, 0x3

    goto/16 :goto_3

    :cond_c
    move/from16 v20, v4

    move/from16 v21, v5

    .line 15149
    iget-object v4, v6, Lcom/google/c/g/b/b;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 15150
    iget-object v4, v6, Lcom/google/c/g/b/b;->b:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/g/b/a;

    :goto_9
    move-object/from16 v16, v4

    goto :goto_b

    .line 15153
    :cond_d
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v4

    throw v4

    :catch_0
    move/from16 v20, v4

    :catch_1
    move/from16 v21, v5

    goto :goto_a

    :cond_e
    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v24, v8

    move/from16 v18, v9

    move/from16 v25, v12

    .line 13384
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v4

    throw v4

    :cond_f
    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v24, v8

    move/from16 v18, v9

    move/from16 v25, v12

    .line 13378
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v4

    throw v4
    :try_end_3
    .catch Lcom/google/c/l; {:try_start_3 .. :try_end_3} :catch_3

    :catch_2
    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v24, v8

    move/from16 v18, v9

    move/from16 v25, v12

    :catch_3
    :goto_a
    shl-int/lit8 v8, v24, 0x1

    move/from16 v9, v18

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v12, v25

    const/4 v10, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_10
    move/from16 v25, v12

    :goto_b
    move-object/from16 v4, v16

    move/from16 v6, v25

    int-to-float v5, v6

    const/high16 v7, 0x40600000    # 3.5f

    sub-float v33, v5, v7

    if-eqz v4, :cond_11

    .line 17038
    iget v5, v4, Lcom/google/c/q;->a:F

    .line 17042
    iget v7, v4, Lcom/google/c/q;->b:F

    sub-float v8, v33, v17

    move/from16 v38, v5

    move/from16 v39, v7

    move/from16 v31, v8

    goto :goto_c

    .line 18038
    :cond_11
    iget v5, v3, Lcom/google/c/q;->a:F

    .line 19038
    iget v7, v2, Lcom/google/c/q;->a:F

    sub-float/2addr v5, v7

    .line 20038
    iget v7, v1, Lcom/google/c/q;->a:F

    add-float/2addr v5, v7

    .line 20042
    iget v7, v3, Lcom/google/c/q;->b:F

    .line 21042
    iget v8, v2, Lcom/google/c/q;->b:F

    sub-float/2addr v7, v8

    .line 22042
    iget v8, v1, Lcom/google/c/q;->b:F

    add-float/2addr v7, v8

    move/from16 v38, v5

    move/from16 v39, v7

    move/from16 v31, v33

    :goto_c
    const/high16 v26, 0x40600000    # 3.5f

    const/high16 v27, 0x40600000    # 3.5f

    const/high16 v29, 0x40600000    # 3.5f

    const/high16 v32, 0x40600000    # 3.5f

    .line 23038
    iget v5, v2, Lcom/google/c/q;->a:F

    .line 23042
    iget v7, v2, Lcom/google/c/q;->b:F

    .line 24038
    iget v8, v3, Lcom/google/c/q;->a:F

    .line 24042
    iget v9, v3, Lcom/google/c/q;->b:F

    .line 25038
    iget v10, v1, Lcom/google/c/q;->a:F

    .line 25042
    iget v11, v1, Lcom/google/c/q;->b:F

    move/from16 v28, v33

    move/from16 v30, v31

    move/from16 v34, v5

    move/from16 v35, v7

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v40, v10

    move/from16 v41, v11

    .line 16166
    invoke-static/range {v26 .. v41}, Lcom/google/c/b/k;->a(FFFFFFFFFFFFFFFF)Lcom/google/c/b/k;

    move-result-object v5

    .line 132
    iget-object v7, v0, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    .line 25189
    invoke-static {}, Lcom/google/c/b/i;->a()Lcom/google/c/b/i;

    move-result-object v8

    .line 25190
    invoke-virtual {v8, v7, v6, v6, v5}, Lcom/google/c/b/i;->a(Lcom/google/c/b/b;IILcom/google/c/b/k;)Lcom/google/c/b/b;

    move-result-object v5

    if-nez v4, :cond_12

    const/4 v6, 0x3

    .line 136
    new-array v4, v6, [Lcom/google/c/q;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    const/4 v8, 0x1

    aput-object v2, v4, v8

    const/4 v9, 0x2

    aput-object v3, v4, v9

    goto :goto_d

    :cond_12
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x4

    .line 138
    new-array v10, v10, [Lcom/google/c/q;

    aput-object v1, v10, v7

    aput-object v2, v10, v8

    aput-object v3, v10, v9

    aput-object v4, v10, v6

    move-object v4, v10

    .line 140
    :goto_d
    new-instance v1, Lcom/google/c/b/g;

    invoke-direct {v1, v5, v4}, Lcom/google/c/b/g;-><init>(Lcom/google/c/b/b;[Lcom/google/c/q;)V

    return-object v1

    .line 94
    :cond_13
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1
.end method
