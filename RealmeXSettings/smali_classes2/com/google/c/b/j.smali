.class public final Lcom/google/c/b/j;
.super Lcom/google/c/b/h;
.source "HybridBinarizer.java"


# instance fields
.field private b:Lcom/google/c/b/b;


# direct methods
.method public constructor <init>(Lcom/google/c/i;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/c/b/h;-><init>(Lcom/google/c/i;)V

    return-void
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    if-le p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public final a()Lcom/google/c/b/b;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 63
    iget-object v1, v0, Lcom/google/c/b/j;->b:Lcom/google/c/b/b;

    if-eqz v1, :cond_0

    return-object v1

    .line 1039
    :cond_0
    iget-object v1, v0, Lcom/google/c/b;->a:Lcom/google/c/i;

    .line 1066
    iget v2, v1, Lcom/google/c/i;->d:I

    .line 1073
    iget v3, v1, Lcom/google/c/i;->e:I

    const/16 v4, 0x28

    if-lt v2, v4, :cond_16

    if-lt v3, v4, :cond_16

    .line 70
    invoke-virtual {v1}, Lcom/google/c/i;->a()[B

    move-result-object v1

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v5, v2, 0x7

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    shr-int/lit8 v5, v3, 0x3

    and-int/lit8 v6, v3, 0x7

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 1166
    :cond_2
    filled-new-array {v5, v4}, [I

    move-result-object v6

    const-class v7, I

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0xff

    const/16 v11, 0x8

    if-ge v8, v5, :cond_d

    shl-int/lit8 v12, v8, 0x3

    add-int/lit8 v13, v3, -0x8

    if-le v12, v13, :cond_3

    move v12, v13

    :cond_3
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v4, :cond_c

    shl-int/lit8 v14, v13, 0x3

    add-int/lit8 v15, v2, -0x8

    if-le v14, v15, :cond_4

    goto :goto_2

    :cond_4
    move v15, v14

    :goto_2
    mul-int v14, v12, v2

    add-int/2addr v14, v15

    move v7, v9

    move/from16 v17, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v14, v11, :cond_a

    move v10, v7

    const/4 v7, 0x0

    move/from16 v21, v16

    move/from16 v16, v15

    move/from16 v15, v21

    :goto_4
    if-ge v7, v11, :cond_7

    add-int v20, v17, v7

    .line 1184
    aget-byte v11, v1, v20

    and-int/2addr v11, v9

    add-int v16, v16, v11

    if-ge v11, v10, :cond_5

    move v10, v11

    :cond_5
    if-le v11, v15, :cond_6

    move v15, v11

    :cond_6
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0x8

    goto :goto_4

    :cond_7
    sub-int v7, v15, v10

    const/16 v11, 0x18

    if-le v7, v11, :cond_9

    :cond_8
    add-int/lit8 v14, v14, 0x1

    add-int v17, v17, v2

    const/16 v7, 0x8

    if-ge v14, v7, :cond_9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v7, :cond_8

    add-int v7, v17, v11

    .line 1199
    aget-byte v7, v1, v7

    and-int/2addr v7, v9

    add-int v16, v16, v7

    add-int/lit8 v11, v11, 0x1

    const/16 v7, 0x8

    goto :goto_5

    :cond_9
    add-int/lit8 v14, v14, 0x1

    add-int v17, v17, v2

    move v7, v10

    const/16 v11, 0x8

    move/from16 v21, v16

    move/from16 v16, v15

    move/from16 v15, v21

    goto :goto_3

    :cond_a
    shr-int/lit8 v10, v15, 0x6

    sub-int v11, v16, v7

    const/16 v14, 0x18

    if-gt v11, v14, :cond_b

    shr-int/lit8 v10, v7, 0x1

    if-lez v8, :cond_b

    if-lez v13, :cond_b

    add-int/lit8 v11, v8, -0x1

    .line 1224
    aget-object v14, v6, v11

    aget v14, v14, v13

    aget-object v15, v6, v8

    add-int/lit8 v16, v13, -0x1

    aget v15, v15, v16

    const/16 v17, 0x2

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    aget-object v11, v6, v11

    aget v11, v11, v16

    add-int/2addr v14, v11

    shr-int/lit8 v11, v14, 0x2

    if-ge v7, v11, :cond_b

    move v10, v11

    .line 1231
    :cond_b
    aget-object v7, v6, v8

    aput v10, v7, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v11, 0x8

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 81
    :cond_d
    new-instance v7, Lcom/google/c/b/b;

    invoke-direct {v7, v2, v3}, Lcom/google/c/b/b;-><init>(II)V

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v5, :cond_15

    shl-int/lit8 v10, v8, 0x3

    const/16 v11, 0x8

    add-int/lit8 v12, v3, -0x8

    if-le v10, v12, :cond_e

    move v10, v12

    :cond_e
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v4, :cond_14

    shl-int/lit8 v12, v11, 0x3

    add-int/lit8 v13, v2, -0x8

    if-le v12, v13, :cond_f

    move v12, v13

    :cond_f
    add-int/lit8 v13, v4, -0x3

    .line 2120
    invoke-static {v11, v13}, Lcom/google/c/b/j;->a(II)I

    move-result v13

    add-int/lit8 v14, v5, -0x3

    .line 2121
    invoke-static {v8, v14}, Lcom/google/c/b/j;->a(II)I

    move-result v14

    const/4 v15, -0x2

    const/4 v9, 0x2

    const/16 v16, 0x0

    :goto_8
    if-gt v15, v9, :cond_10

    add-int v9, v14, v15

    .line 2124
    aget-object v9, v6, v9

    add-int/lit8 v19, v13, -0x2

    .line 2125
    aget v19, v9, v19

    add-int/lit8 v20, v13, -0x1

    aget v20, v9, v20

    add-int v19, v19, v20

    aget v20, v9, v13

    add-int v19, v19, v20

    add-int/lit8 v20, v13, 0x1

    aget v20, v9, v20

    add-int v19, v19, v20

    const/16 v18, 0x2

    add-int/lit8 v20, v13, 0x2

    aget v9, v9, v20

    add-int v19, v19, v9

    add-int v16, v16, v19

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v18

    goto :goto_8

    :cond_10
    move/from16 v18, v9

    .line 2127
    div-int/lit8 v9, v16, 0x19

    mul-int v13, v10, v2

    add-int/2addr v13, v12

    move v14, v13

    const/4 v13, 0x0

    :goto_9
    const/16 v15, 0x8

    if-ge v13, v15, :cond_13

    move/from16 v16, v3

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v15, :cond_12

    add-int v19, v14, v3

    .line 2149
    aget-byte v15, v1, v19

    move-object/from16 v19, v1

    const/16 v1, 0xff

    and-int/2addr v15, v1

    if-gt v15, v9, :cond_11

    add-int v15, v12, v3

    add-int v1, v10, v13

    .line 2150
    invoke-virtual {v7, v15, v1}, Lcom/google/c/b/b;->b(II)V

    :cond_11
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v19

    const/16 v15, 0x8

    goto :goto_a

    :cond_12
    move-object/from16 v19, v1

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v2

    move/from16 v3, v16

    goto :goto_9

    :cond_13
    move-object/from16 v19, v1

    move/from16 v16, v3

    add-int/lit8 v11, v11, 0x1

    const/16 v9, 0xff

    goto :goto_7

    :cond_14
    move-object/from16 v19, v1

    move/from16 v16, v3

    const/16 v18, 0x2

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0xff

    goto/16 :goto_6

    .line 83
    :cond_15
    iput-object v7, v0, Lcom/google/c/b/j;->b:Lcom/google/c/b/b;

    goto :goto_b

    .line 86
    :cond_16
    invoke-super/range {p0 .. p0}, Lcom/google/c/b/h;->a()Lcom/google/c/b/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/b/j;->b:Lcom/google/c/b/b;

    .line 88
    :goto_b
    iget-object v1, v0, Lcom/google/c/b/j;->b:Lcom/google/c/b/b;

    return-object v1
.end method
