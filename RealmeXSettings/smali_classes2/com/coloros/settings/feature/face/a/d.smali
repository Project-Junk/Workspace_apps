.class public final Lcom/coloros/settings/feature/face/a/d;
.super Ljava/lang/Object;
.source "IcosahedronSphereAider.java"


# instance fields
.field public a:F

.field public b:I

.field public c:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x40833333    # 4.1f

    .line 43
    iput v0, p0, Lcom/coloros/settings/feature/face/a/d;->a:F

    const/16 v0, 0x8

    .line 44
    iput v0, p0, Lcom/coloros/settings/feature/face/a/d;->b:I

    return-void
.end method

.method public static a(FLcom/coloros/settings/feature/face/a/j;Lcom/coloros/settings/feature/face/a/j;II)Lcom/coloros/settings/feature/face/a/j;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const-string v4, "IcosahedronSphereAider"

    if-eqz v0, :cond_18

    if-nez v1, :cond_0

    goto/16 :goto_14

    .line 173
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/coloros/settings/feature/face/a/j;->a()Lcom/coloros/settings/feature/face/a/j;

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/coloros/settings/feature/face/a/j;->a()Lcom/coloros/settings/feature/face/a/j;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gtz v2, :cond_1

    .line 176
    new-instance v1, Lcom/coloros/settings/feature/face/a/j;

    .line 1059
    iget-object v2, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v2, v2, v6

    mul-float v2, v2, p0

    .line 1067
    iget-object v3, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v3, v3, v7

    mul-float v3, v3, p0

    .line 1075
    iget-object v0, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v0, v0, v5

    mul-float v0, v0, p0

    .line 176
    invoke-direct {v1, v2, v3, v0}, Lcom/coloros/settings/feature/face/a/j;-><init>(FFF)V

    return-object v1

    :cond_1
    const-string v8, "Vector3f"

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 2059
    :cond_2
    iget-object v9, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v9, v9, v6

    .line 3059
    iget-object v10, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v10, v10, v6

    mul-float/2addr v9, v10

    .line 3067
    iget-object v10, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v10, v10, v7

    .line 4067
    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v11, v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 4075
    iget-object v10, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v10, v10, v5

    .line 5075
    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v11, v11, v5

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    goto :goto_1

    :cond_3
    :goto_0
    const-string v9, "dot, Provided vector is null, 0 returned."

    .line 1084
    invoke-static {v8, v9}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1
    float-to-double v9, v9

    .line 179
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    double-to-float v9, v9

    move/from16 v10, p4

    int-to-float v10, v10

    mul-float/2addr v10, v9

    int-to-float v2, v2

    div-float/2addr v10, v2

    sub-float/2addr v9, v10

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    .line 5095
    :cond_4
    iget-object v2, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v2, v2, v7

    iget-object v3, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v3, v3, v5

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v3, v3, v5

    iget-object v8, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v8, v8, v7

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    .line 5096
    iget-object v3, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v3, v3, v5

    iget-object v8, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v8, v8, v6

    mul-float/2addr v3, v8

    iget-object v8, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v8, v8, v6

    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v11, v11, v5

    mul-float/2addr v8, v11

    sub-float/2addr v3, v8

    .line 5097
    iget-object v8, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v8, v8, v6

    iget-object v11, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v11, v11, v7

    mul-float/2addr v8, v11

    iget-object v11, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v11, v11, v7

    iget-object v12, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v12, v12, v6

    mul-float/2addr v11, v12

    sub-float/2addr v8, v11

    .line 5098
    new-instance v11, Lcom/coloros/settings/feature/face/a/j;

    invoke-direct {v11, v2, v3, v8}, Lcom/coloros/settings/feature/face/a/j;-><init>(FFF)V

    goto :goto_3

    :cond_5
    :goto_2
    const-string v2, "cross, Provided vector is null, null returned."

    .line 5092
    invoke-static {v8, v2}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v3

    :goto_3
    const/4 v2, 0x3

    .line 187
    new-array v3, v2, [[D

    const/4 v8, 0x4

    new-array v12, v8, [D

    .line 6059
    iget-object v13, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v13, v13, v6

    float-to-double v13, v13

    aput-wide v13, v12, v6

    .line 6067
    iget-object v13, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v13, v13, v7

    float-to-double v13, v13

    aput-wide v13, v12, v7

    .line 6075
    iget-object v0, v0, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v0, v0, v5

    float-to-double v13, v0

    aput-wide v13, v12, v5

    float-to-double v13, v10

    .line 188
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    aput-wide v13, v12, v2

    aput-object v12, v3, v6

    new-array v0, v8, [D

    .line 7059
    iget-object v10, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v10, v10, v6

    float-to-double v12, v10

    aput-wide v12, v0, v6

    .line 7067
    iget-object v10, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v10, v10, v7

    float-to-double v12, v10

    aput-wide v12, v0, v7

    .line 7075
    iget-object v1, v1, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v1, v1, v5

    float-to-double v12, v1

    aput-wide v12, v0, v5

    float-to-double v9, v9

    .line 189
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    aput-wide v9, v0, v2

    aput-object v0, v3, v7

    new-array v0, v8, [D

    .line 8059
    iget-object v1, v11, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v1, v1, v6

    float-to-double v9, v1

    aput-wide v9, v0, v6

    .line 8067
    iget-object v1, v11, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v1, v1, v7

    float-to-double v9, v1

    aput-wide v9, v0, v7

    .line 8075
    iget-object v1, v11, Lcom/coloros/settings/feature/face/a/j;->a:[F

    aget v1, v1, v5

    float-to-double v9, v1

    aput-wide v9, v0, v5

    const-wide/16 v9, 0x0

    aput-wide v9, v0, v2

    aput-object v0, v3, v5

    .line 193
    aget-object v0, v3, v6

    array-length v0, v0

    add-int/lit8 v1, v0, -0x3

    add-int/lit8 v11, v0, 0x1

    .line 196
    filled-new-array {v8, v11}, [I

    move-result-object v11

    const-class v12, D

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    move v12, v6

    :goto_4
    if-gt v12, v2, :cond_6

    .line 198
    aget-object v13, v11, v12

    aput-wide v9, v13, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    move v12, v6

    :goto_5
    if-gt v12, v0, :cond_7

    .line 201
    aget-object v13, v11, v6

    aput-wide v9, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    move v12, v7

    :goto_6
    if-gt v12, v2, :cond_9

    move v13, v7

    :goto_7
    if-gt v13, v0, :cond_8

    .line 205
    aget-object v14, v11, v12

    add-int/lit8 v15, v12, -0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v13, -0x1

    aget-wide v16, v15, v16

    aput-wide v16, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_9
    move v3, v7

    :goto_8
    if-gt v3, v2, :cond_13

    move v12, v3

    :goto_9
    if-gt v12, v2, :cond_b

    add-int/lit8 v13, v3, -0x1

    :goto_a
    if-lez v13, :cond_a

    .line 213
    aget-object v14, v11, v12

    aget-object v15, v11, v12

    aget-wide v16, v15, v3

    aget-object v15, v11, v12

    aget-wide v18, v15, v13

    aget-object v15, v11, v13

    aget-wide v20, v15, v3

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    aput-wide v16, v14, v3

    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v12, v3, 0x1

    move v14, v3

    move v13, v12

    :goto_b
    if-gt v13, v2, :cond_d

    .line 220
    aget-object v15, v11, v13

    aget-wide v16, v15, v3

    aget-object v15, v11, v13

    aget-wide v18, v15, v3

    mul-double v16, v16, v18

    aget-object v15, v11, v14

    aget-wide v18, v15, v3

    aget-object v15, v11, v14

    aget-wide v20, v15, v3

    mul-double v18, v18, v20

    cmpl-double v15, v16, v18

    if-lez v15, :cond_c

    move v14, v13

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 224
    :cond_d
    aget-object v13, v11, v14

    aget-wide v15, v13, v3

    cmpl-double v13, v9, v15

    if-nez v13, :cond_e

    const-string v13, "doolittle failed!"

    .line 225
    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eq v14, v3, :cond_f

    move v13, v7

    :goto_c
    if-gt v13, v0, :cond_f

    .line 230
    aget-object v15, v11, v3

    aget-wide v16, v15, v13

    .line 231
    aget-object v15, v11, v3

    aget-object v18, v11, v14

    aget-wide v19, v18, v13

    aput-wide v19, v15, v13

    .line 232
    aget-object v15, v11, v14

    aput-wide v16, v15, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_f
    move v13, v12

    :goto_d
    if-gt v13, v2, :cond_10

    .line 238
    aget-object v14, v11, v13

    aget-object v15, v11, v13

    aget-wide v16, v15, v3

    aget-object v15, v11, v3

    aget-wide v18, v15, v3

    div-double v16, v16, v18

    aput-wide v16, v14, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_10
    move v13, v12

    :goto_e
    if-gt v13, v0, :cond_12

    add-int/lit8 v14, v3, -0x1

    :goto_f
    if-lez v14, :cond_11

    .line 242
    aget-object v15, v11, v3

    aget-object v16, v11, v3

    aget-wide v17, v16, v13

    aget-object v16, v11, v3

    aget-wide v19, v16, v14

    aget-object v16, v11, v14

    aget-wide v21, v16, v13

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    aput-wide v17, v15, v13

    add-int/lit8 v14, v14, -0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_12
    move v3, v12

    goto/16 :goto_8

    :cond_13
    move v0, v7

    :goto_10
    if-gt v0, v1, :cond_16

    .line 249
    aget-object v3, v11, v2

    add-int/lit8 v4, v0, 0x3

    aget-object v9, v11, v2

    aget-wide v12, v9, v4

    aget-object v9, v11, v2

    aget-wide v14, v9, v2

    div-double/2addr v12, v14

    aput-wide v12, v3, v4

    move v3, v5

    :goto_11
    if-lez v3, :cond_15

    move v9, v2

    :goto_12
    if-le v9, v3, :cond_14

    .line 252
    aget-object v10, v11, v3

    aget-object v12, v11, v3

    aget-wide v13, v12, v4

    aget-object v12, v11, v3

    aget-wide v15, v12, v9

    aget-object v12, v11, v9

    aget-wide v17, v12, v4

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    aput-wide v13, v10, v4

    add-int/lit8 v9, v9, -0x1

    goto :goto_12

    .line 254
    :cond_14
    aget-object v9, v11, v3

    aget-object v10, v11, v3

    aget-wide v12, v10, v4

    aget-object v10, v11, v3

    aget-wide v14, v10, v3

    div-double/2addr v12, v14

    aput-wide v12, v9, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 258
    :cond_16
    new-array v0, v2, [D

    move v1, v6

    :goto_13
    if-ge v1, v2, :cond_17

    add-int/lit8 v3, v1, 0x1

    .line 260
    aget-object v4, v11, v3

    aget-wide v9, v4, v8

    aput-wide v9, v0, v1

    move v1, v3

    goto :goto_13

    .line 263
    :cond_17
    new-instance v1, Lcom/coloros/settings/feature/face/a/j;

    aget-wide v2, v0, v6

    double-to-float v2, v2

    mul-float v2, v2, p0

    aget-wide v3, v0, v7

    double-to-float v3, v3

    mul-float v3, v3, p0

    aget-wide v4, v0, v5

    double-to-float v0, v4

    mul-float v0, v0, p0

    invoke-direct {v1, v2, v3, v0}, Lcom/coloros/settings/feature/face/a/j;-><init>(FFF)V

    return-object v1

    :cond_18
    :goto_14
    const-string v0, "divideSphere err, not a valid vector"

    .line 170
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method
