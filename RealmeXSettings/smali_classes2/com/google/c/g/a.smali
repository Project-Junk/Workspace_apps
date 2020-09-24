.class public final Lcom/google/c/g/a;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/c/m;


# static fields
.field private static final a:[Lcom/google/c/q;


# instance fields
.field private final b:Lcom/google/c/g/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Lcom/google/c/q;

    sput-object v0, Lcom/google/c/g/a;->a:[Lcom/google/c/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/c/g/a/e;

    invoke-direct {v0}, Lcom/google/c/g/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/c/g/a;->b:Lcom/google/c/g/a/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/c;",
            "Ljava/util/Map<",
            "Lcom/google/c/e;",
            "*>;)",
            "Lcom/google/c/o;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;,
            Lcom/google/c/d;,
            Lcom/google/c/h;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_f

    .line 72
    sget-object v7, Lcom/google/c/e;->b:Lcom/google/c/e;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/google/c/c;->a()Lcom/google/c/b/b;

    move-result-object v7

    .line 1114
    invoke-virtual {v7}, Lcom/google/c/b/b;->b()[I

    move-result-object v8

    .line 1115
    invoke-virtual {v7}, Lcom/google/c/b/b;->c()[I

    move-result-object v9

    if-eqz v8, :cond_e

    if-eqz v9, :cond_e

    .line 1266
    iget v10, v7, Lcom/google/c/b/b;->b:I

    .line 2259
    iget v11, v7, Lcom/google/c/b/b;->a:I

    .line 1189
    aget v12, v8, v5

    .line 1190
    aget v13, v8, v6

    move v15, v5

    move v14, v6

    :goto_0
    if-ge v12, v11, :cond_1

    if-ge v13, v10, :cond_1

    .line 1194
    invoke-virtual {v7, v12, v13}, Lcom/google/c/b/b;->a(II)Z

    move-result v3

    if-eq v14, v3, :cond_0

    add-int/lit8 v15, v15, 0x1

    if-eq v15, v2, :cond_1

    xor-int/lit8 v3, v14, 0x1

    move v14, v3

    :cond_0
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    if-eq v12, v11, :cond_d

    if-eq v13, v10, :cond_d

    .line 1206
    aget v2, v8, v5

    sub-int/2addr v12, v2

    int-to-float v2, v12

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v2, v3

    .line 1122
    aget v3, v8, v6

    .line 1123
    aget v10, v9, v6

    .line 1124
    aget v8, v8, v5

    .line 1125
    aget v9, v9, v5

    if-ge v8, v9, :cond_c

    if-ge v3, v10, :cond_c

    sub-int v11, v10, v3

    sub-int v12, v9, v8

    if-eq v11, v12, :cond_2

    add-int v9, v8, v11

    :cond_2
    sub-int v12, v9, v8

    add-int/2addr v12, v6

    int-to-float v12, v12

    div-float/2addr v12, v2

    .line 1138
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v11, v6

    int-to-float v11, v11

    div-float/2addr v11, v2

    .line 1139
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    if-lez v12, :cond_b

    if-lez v11, :cond_b

    if-ne v11, v12, :cond_a

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v2, v13

    float-to-int v13, v13

    add-int/2addr v3, v13

    add-int/2addr v8, v13

    add-int/lit8 v14, v12, -0x1

    int-to-float v14, v14

    mul-float/2addr v14, v2

    float-to-int v14, v14

    add-int/2addr v14, v8

    sub-int/2addr v9, v6

    sub-int/2addr v14, v9

    if-lez v14, :cond_4

    if-gt v14, v13, :cond_3

    sub-int/2addr v8, v14

    goto :goto_1

    .line 1160
    :cond_3
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    :cond_4
    :goto_1
    add-int/lit8 v9, v11, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v3

    sub-int/2addr v10, v6

    sub-int/2addr v9, v10

    if-lez v9, :cond_6

    if-gt v9, v13, :cond_5

    sub-int/2addr v3, v9

    goto :goto_2

    .line 1168
    :cond_5
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 1174
    :cond_6
    :goto_2
    new-instance v6, Lcom/google/c/b/b;

    invoke-direct {v6, v12, v11}, Lcom/google/c/b/b;-><init>(II)V

    move v9, v5

    :goto_3
    if-ge v9, v11, :cond_9

    int-to-float v10, v9

    mul-float/2addr v10, v2

    float-to-int v10, v10

    add-int/2addr v10, v3

    move v13, v5

    :goto_4
    if-ge v13, v12, :cond_8

    int-to-float v14, v13

    mul-float/2addr v14, v2

    float-to-int v14, v14

    add-int/2addr v14, v8

    .line 1178
    invoke-virtual {v7, v14, v10}, Lcom/google/c/b/b;->a(II)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1179
    invoke-virtual {v6, v13, v9}, Lcom/google/c/b/b;->b(II)V

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 74
    :cond_9
    iget-object v2, v0, Lcom/google/c/g/a;->b:Lcom/google/c/g/a/e;

    invoke-virtual {v2, v6, v1}, Lcom/google/c/g/a/e;->a(Lcom/google/c/b/b;Ljava/util/Map;)Lcom/google/c/b/e;

    move-result-object v1

    .line 75
    sget-object v2, Lcom/google/c/g/a;->a:[Lcom/google/c/q;

    goto/16 :goto_13

    .line 1145
    :cond_a
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 1141
    :cond_b
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 1129
    :cond_c
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 1204
    :cond_d
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 1117
    :cond_e
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1

    .line 77
    :cond_f
    new-instance v3, Lcom/google/c/g/b/c;

    invoke-virtual/range {p1 .. p1}, Lcom/google/c/c;->a()Lcom/google/c/b/b;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/c/g/b/c;-><init>(Lcom/google/c/b/b;)V

    if-nez v1, :cond_10

    const/4 v8, 0x0

    goto :goto_5

    .line 3076
    :cond_10
    sget-object v8, Lcom/google/c/e;->j:Lcom/google/c/e;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/c/r;

    :goto_5
    iput-object v8, v3, Lcom/google/c/g/b/c;->b:Lcom/google/c/r;

    .line 3079
    new-instance v8, Lcom/google/c/g/b/e;

    iget-object v9, v3, Lcom/google/c/g/b/c;->a:Lcom/google/c/b/b;

    iget-object v10, v3, Lcom/google/c/g/b/c;->b:Lcom/google/c/r;

    invoke-direct {v8, v9, v10}, Lcom/google/c/g/b/e;-><init>(Lcom/google/c/b/b;Lcom/google/c/r;)V

    if-eqz v1, :cond_11

    .line 4078
    sget-object v9, Lcom/google/c/e;->d:Lcom/google/c/e;

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    move v9, v6

    goto :goto_6

    :cond_11
    move v9, v5

    .line 4079
    :goto_6
    iget-object v10, v8, Lcom/google/c/g/b/e;->a:Lcom/google/c/b/b;

    .line 4266
    iget v10, v10, Lcom/google/c/b/b;->b:I

    .line 4080
    iget-object v11, v8, Lcom/google/c/g/b/e;->a:Lcom/google/c/b/b;

    .line 5259
    iget v11, v11, Lcom/google/c/b/b;->a:I

    mul-int/lit8 v12, v10, 0x3

    .line 4088
    div-int/lit16 v12, v12, 0xe4

    if-lt v12, v4, :cond_12

    if-eqz v9, :cond_13

    :cond_12
    move v12, v4

    .line 4094
    :cond_13
    new-array v2, v2, [I

    add-int/lit8 v9, v12, -0x1

    move v13, v12

    move v12, v5

    :goto_7
    if-ge v9, v10, :cond_22

    if-nez v12, :cond_22

    aput v5, v2, v5

    aput v5, v2, v6

    const/4 v14, 0x2

    aput v5, v2, v14

    aput v5, v2, v4

    const/4 v14, 0x4

    aput v5, v2, v14

    move v15, v12

    move/from16 v17, v13

    move v13, v5

    move v12, v9

    move v9, v13

    :goto_8
    if-ge v9, v11, :cond_1f

    .line 4104
    iget-object v7, v8, Lcom/google/c/g/b/e;->a:Lcom/google/c/b/b;

    invoke-virtual {v7, v9, v12}, Lcom/google/c/b/b;->a(II)Z

    move-result v7

    if-eqz v7, :cond_15

    and-int/lit8 v7, v13, 0x1

    if-ne v7, v6, :cond_14

    add-int/lit8 v13, v13, 0x1

    .line 4109
    :cond_14
    aget v7, v2, v13

    add-int/2addr v7, v6

    aput v7, v2, v13

    move v7, v14

    goto/16 :goto_d

    :cond_15
    and-int/lit8 v7, v13, 0x1

    if-nez v7, :cond_1e

    if-ne v13, v14, :cond_1d

    .line 4113
    invoke-static {v2}, Lcom/google/c/g/b/e;->a([I)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 4114
    invoke-virtual {v8, v2, v12, v9}, Lcom/google/c/g/b/e;->a([III)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 4119
    iget-boolean v7, v8, Lcom/google/c/g/b/e;->c:Z

    if-eqz v7, :cond_16

    .line 4120
    invoke-virtual {v8}, Lcom/google/c/g/b/e;->a()Z

    move-result v15

    move v4, v5

    const/16 v16, 0x2

    goto :goto_c

    .line 5433
    :cond_16
    iget-object v7, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_19

    .line 5438
    iget-object v7, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v13, 0x0

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/google/c/g/b/d;

    .line 6048
    iget v4, v14, Lcom/google/c/g/b/d;->d:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_18

    if-nez v13, :cond_17

    move-object v13, v14

    goto :goto_a

    .line 5448
    :cond_17
    iput-boolean v6, v8, Lcom/google/c/g/b/e;->c:Z

    .line 7038
    iget v4, v13, Lcom/google/c/q;->a:F

    .line 8038
    iget v5, v14, Lcom/google/c/q;->a:F

    sub-float/2addr v4, v5

    .line 5449
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 8042
    iget v5, v13, Lcom/google/c/q;->b:F

    .line 9042
    iget v7, v14, Lcom/google/c/q;->b:F

    sub-float/2addr v5, v7

    .line 5449
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v16, 0x2

    div-int/lit8 v5, v4, 0x2

    goto :goto_b

    :cond_18
    :goto_a
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v14, 0x4

    goto :goto_9

    :cond_19
    const/16 v16, 0x2

    const/4 v5, 0x0

    .line 4123
    :goto_b
    aget v4, v2, v16

    if-le v5, v4, :cond_1a

    .line 4132
    aget v4, v2, v16

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x2

    add-int/2addr v12, v5

    add-int/lit8 v9, v11, -0x1

    :cond_1a
    const/4 v4, 0x0

    :goto_c
    aput v4, v2, v4

    aput v4, v2, v6

    aput v4, v2, v16

    const/4 v5, 0x3

    aput v4, v2, v5

    const/4 v7, 0x4

    aput v4, v2, v7

    move v13, v4

    move/from16 v17, v16

    goto :goto_d

    :cond_1b
    move v7, v14

    const/16 v16, 0x2

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    .line 4137
    aget v13, v2, v16

    aput v13, v2, v4

    .line 4138
    aget v13, v2, v5

    aput v13, v2, v6

    .line 4139
    aget v13, v2, v7

    aput v13, v2, v16

    aput v6, v2, v5

    aput v4, v2, v7

    move v13, v5

    goto :goto_d

    :cond_1c
    move v7, v14

    const/16 v16, 0x2

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    .line 4153
    aget v13, v2, v16

    aput v13, v2, v4

    .line 4154
    aget v13, v2, v5

    aput v13, v2, v6

    .line 4155
    aget v13, v2, v7

    aput v13, v2, v16

    aput v6, v2, v5

    aput v4, v2, v7

    const/4 v13, 0x3

    goto :goto_d

    :cond_1d
    move v7, v14

    add-int/lit8 v4, v13, 0x1

    .line 4161
    aget v5, v2, v4

    add-int/2addr v5, v6

    aput v5, v2, v4

    move v13, v4

    goto :goto_d

    :cond_1e
    move v7, v14

    .line 4164
    aget v4, v2, v13

    add-int/2addr v4, v6

    aput v4, v2, v13

    :goto_d
    add-int/2addr v9, v6

    move v14, v7

    const/4 v4, 0x3

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 4168
    :cond_1f
    invoke-static {v2}, Lcom/google/c/g/b/e;->a([I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4169
    invoke-virtual {v8, v2, v12, v11}, Lcom/google/c/g/b/e;->a([III)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x0

    .line 4171
    aget v5, v2, v4

    .line 4172
    iget-boolean v4, v8, Lcom/google/c/g/b/e;->c:Z

    if-eqz v4, :cond_20

    .line 4174
    invoke-virtual {v8}, Lcom/google/c/g/b/e;->a()Z

    move-result v4

    move v15, v4

    :cond_20
    move v13, v5

    goto :goto_e

    :cond_21
    move/from16 v13, v17

    :goto_e
    add-int v9, v12, v13

    move v12, v15

    const/4 v4, 0x3

    const/4 v5, 0x0

    goto/16 :goto_7

    .line 9495
    :cond_22
    iget-object v2, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_2c

    const/4 v5, 0x0

    if-le v2, v4, :cond_25

    .line 9506
    iget-object v4, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v5

    move v9, v7

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/c/g/b/d;

    .line 10044
    iget v10, v10, Lcom/google/c/g/b/d;->c:F

    add-float/2addr v7, v10

    mul-float/2addr v10, v10

    add-float/2addr v9, v10

    goto :goto_f

    :cond_23
    int-to-float v2, v2

    div-float/2addr v7, v2

    div-float/2addr v9, v2

    mul-float v2, v7, v7

    sub-float/2addr v9, v2

    float-to-double v9, v9

    .line 9512
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v2, v9

    .line 9514
    iget-object v4, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    new-instance v9, Lcom/google/c/g/b/e$b;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lcom/google/c/g/b/e$b;-><init>(FB)V

    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v7

    .line 9516
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v4, 0x0

    .line 9518
    :goto_10
    iget-object v9, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_25

    iget-object v9, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_25

    .line 9519
    iget-object v9, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/c/g/b/d;

    .line 11044
    iget v9, v9, Lcom/google/c/g/b/d;->c:F

    sub-float/2addr v9, v7

    .line 9520
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_24

    .line 9521
    iget-object v9, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_24
    add-int/2addr v4, v6

    goto :goto_10

    .line 9527
    :cond_25
    iget-object v2, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_27

    .line 9531
    iget-object v2, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/g/b/d;

    .line 12044
    iget v4, v4, Lcom/google/c/g/b/d;->c:F

    add-float/2addr v5, v4

    goto :goto_11

    .line 9535
    :cond_26
    iget-object v2, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 9537
    iget-object v2, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    new-instance v4, Lcom/google/c/g/b/e$a;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/google/c/g/b/e$a;-><init>(FB)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9539
    iget-object v2, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    iget-object v4, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v2, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_12

    :cond_27
    move v5, v4

    const/4 v7, 0x0

    .line 9542
    :goto_12
    new-array v2, v5, [Lcom/google/c/g/b/d;

    iget-object v4, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/g/b/d;

    aput-object v4, v2, v7

    iget-object v4, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/g/b/d;

    aput-object v4, v2, v6

    iget-object v4, v8, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/g/b/d;

    aput-object v4, v2, v5

    .line 4181
    invoke-static {v2}, Lcom/google/c/q;->a([Lcom/google/c/q;)V

    .line 4183
    new-instance v4, Lcom/google/c/g/b/f;

    invoke-direct {v4, v2}, Lcom/google/c/g/b/f;-><init>([Lcom/google/c/g/b/d;)V

    .line 3082
    invoke-virtual {v3, v4}, Lcom/google/c/g/b/c;->a(Lcom/google/c/g/b/f;)Lcom/google/c/b/g;

    move-result-object v2

    .line 78
    iget-object v3, v0, Lcom/google/c/g/a;->b:Lcom/google/c/g/a/e;

    .line 13039
    iget-object v4, v2, Lcom/google/c/b/g;->d:Lcom/google/c/b/b;

    .line 78
    invoke-virtual {v3, v4, v1}, Lcom/google/c/g/a/e;->a(Lcom/google/c/b/b;Ljava/util/Map;)Lcom/google/c/b/e;

    move-result-object v1

    .line 13043
    iget-object v2, v2, Lcom/google/c/b/g;->e:[Lcom/google/c/q;

    .line 13081
    :goto_13
    iget-object v3, v1, Lcom/google/c/b/e;->g:Ljava/lang/Object;

    .line 83
    instance-of v3, v3, Lcom/google/c/g/a/i;

    if-eqz v3, :cond_29

    .line 14081
    iget-object v3, v1, Lcom/google/c/b/e;->g:Ljava/lang/Object;

    .line 84
    check-cast v3, Lcom/google/c/g/a/i;

    .line 15048
    iget-boolean v3, v3, Lcom/google/c/g/a/i;->a:Z

    if-eqz v3, :cond_29

    if-eqz v2, :cond_29

    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_28

    goto :goto_14

    :cond_28
    const/4 v3, 0x0

    .line 15051
    aget-object v4, v2, v3

    const/4 v5, 0x2

    .line 15052
    aget-object v6, v2, v5

    aput-object v6, v2, v3

    .line 15053
    aput-object v4, v2, v5

    .line 87
    :cond_29
    :goto_14
    new-instance v3, Lcom/google/c/o;

    .line 16053
    iget-object v4, v1, Lcom/google/c/b/e;->b:Ljava/lang/String;

    .line 17049
    iget-object v5, v1, Lcom/google/c/b/e;->a:[B

    .line 87
    sget-object v6, Lcom/google/c/a;->l:Lcom/google/c/a;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    .line 17057
    iget-object v2, v1, Lcom/google/c/b/e;->c:Ljava/util/List;

    if-eqz v2, :cond_2a

    .line 90
    sget-object v4, Lcom/google/c/p;->c:Lcom/google/c/p;

    invoke-virtual {v3, v4, v2}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    .line 17061
    :cond_2a
    iget-object v1, v1, Lcom/google/c/b/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 94
    sget-object v2, Lcom/google/c/p;->d:Lcom/google/c/p;

    invoke-virtual {v3, v2, v1}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    :cond_2b
    return-object v3

    .line 9498
    :cond_2c
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v1

    throw v1
.end method

.method public final a()V
    .locals 0

    return-void
.end method
