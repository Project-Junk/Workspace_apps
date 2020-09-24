.class public final Lcom/google/c/b/f;
.super Lcom/google/c/b/i;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/c/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/c/b/b;IIFFFFFFFFFFFFFFFF)Lcom/google/c/b/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 39
    invoke-static/range {p4 .. p19}, Lcom/google/c/b/k;->a(FFFFFFFFFFFFFFFF)Lcom/google/c/b/k;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 43
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/c/b/f;->a(Lcom/google/c/b/b;IILcom/google/c/b/k;)Lcom/google/c/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/c/b/b;IILcom/google/c/b/k;)Lcom/google/c/b/b;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    if-lez v1, :cond_11

    if-lez v2, :cond_11

    .line 54
    new-instance v4, Lcom/google/c/b/b;

    invoke-direct {v4, v1, v2}, Lcom/google/c/b/b;-><init>(II)V

    const/4 v5, 0x1

    shl-int/2addr v1, v5

    .line 55
    new-array v1, v1, [F

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_10

    .line 57
    array-length v8, v1

    int-to-float v9, v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_0

    shr-int/lit8 v12, v11, 0x1

    int-to-float v12, v12

    add-float/2addr v12, v10

    .line 60
    aput v12, v1, v11

    add-int/lit8 v12, v11, 0x1

    .line 61
    aput v9, v1, v12

    add-int/lit8 v11, v11, 0x2

    goto :goto_1

    .line 1067
    :cond_0
    array-length v9, v1

    .line 1068
    iget v10, v3, Lcom/google/c/b/k;->a:F

    .line 1069
    iget v11, v3, Lcom/google/c/b/k;->b:F

    .line 1070
    iget v12, v3, Lcom/google/c/b/k;->c:F

    .line 1071
    iget v13, v3, Lcom/google/c/b/k;->d:F

    .line 1072
    iget v14, v3, Lcom/google/c/b/k;->e:F

    .line 1073
    iget v15, v3, Lcom/google/c/b/k;->f:F

    .line 1074
    iget v5, v3, Lcom/google/c/b/k;->g:F

    .line 1075
    iget v6, v3, Lcom/google/c/b/k;->h:F

    .line 1076
    iget v2, v3, Lcom/google/c/b/k;->i:F

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v9, :cond_1

    .line 1078
    aget v16, v1, v3

    add-int/lit8 v17, v3, 0x1

    .line 1079
    aget v18, v1, v17

    mul-float v19, v12, v16

    mul-float v20, v15, v18

    add-float v19, v19, v20

    add-float v19, v19, v2

    mul-float v20, v10, v16

    mul-float v21, v13, v18

    add-float v20, v20, v21

    add-float v20, v20, v5

    div-float v20, v20, v19

    .line 1081
    aput v20, v1, v3

    mul-float v16, v16, v11

    mul-float v18, v18, v14

    add-float v16, v16, v18

    add-float v16, v16, v6

    div-float v16, v16, v19

    .line 1082
    aput v16, v1, v17

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 1259
    :cond_1
    iget v2, v0, Lcom/google/c/b/b;->a:I

    .line 1266
    iget v3, v0, Lcom/google/c/b/b;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1106
    :goto_3
    array-length v9, v1

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-ge v5, v9, :cond_7

    if-eqz v6, :cond_7

    .line 1107
    aget v6, v1, v5

    float-to-int v6, v6

    add-int/lit8 v9, v5, 0x1

    .line 1108
    aget v12, v1, v9

    float-to-int v12, v12

    if-lt v6, v11, :cond_6

    if-gt v6, v2, :cond_6

    if-lt v12, v11, :cond_6

    if-gt v12, v3, :cond_6

    if-ne v6, v11, :cond_2

    .line 1114
    aput v10, v1, v5

    :goto_4
    const/4 v6, 0x1

    goto :goto_5

    :cond_2
    if-ne v6, v2, :cond_3

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    .line 1117
    aput v6, v1, v5

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_5
    if-ne v12, v11, :cond_4

    .line 1121
    aput v10, v1, v9

    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_4
    if-ne v12, v3, :cond_5

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    .line 1124
    aput v6, v1, v9

    goto :goto_6

    :cond_5
    :goto_7
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 1110
    :cond_6
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    .line 1130
    :cond_7
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x1

    :goto_8
    if-ltz v5, :cond_d

    if-eqz v6, :cond_d

    .line 1131
    aget v6, v1, v5

    float-to-int v6, v6

    add-int/lit8 v9, v5, 0x1

    .line 1132
    aget v12, v1, v9

    float-to-int v12, v12

    if-lt v6, v11, :cond_c

    if-gt v6, v2, :cond_c

    if-lt v12, v11, :cond_c

    if-gt v12, v3, :cond_c

    if-ne v6, v11, :cond_8

    .line 1138
    aput v10, v1, v5

    :goto_9
    const/4 v6, 0x1

    goto :goto_a

    :cond_8
    if-ne v6, v2, :cond_9

    add-int/lit8 v6, v2, -0x1

    int-to-float v6, v6

    .line 1141
    aput v6, v1, v5

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    :goto_a
    if-ne v12, v11, :cond_a

    .line 1145
    aput v10, v1, v9

    :goto_b
    const/4 v6, 0x1

    goto :goto_c

    :cond_a
    if-ne v12, v3, :cond_b

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    .line 1148
    aput v6, v1, v9

    goto :goto_b

    :cond_b
    :goto_c
    add-int/lit8 v5, v5, -0x2

    goto :goto_8

    .line 1134
    :cond_c
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    :cond_d
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v8, :cond_f

    .line 69
    :try_start_0
    aget v3, v1, v2

    float-to-int v3, v3

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    float-to-int v5, v5

    invoke-virtual {v0, v3, v5}, Lcom/google/c/b/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_e

    shr-int/lit8 v3, v2, 0x1

    .line 71
    invoke-virtual {v4, v3, v7}, Lcom/google/c/b/b;->b(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    add-int/lit8 v2, v2, 0x2

    goto :goto_d

    .line 82
    :catch_0
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    :cond_f
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    return-object v4

    .line 52
    :cond_11
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0
.end method
