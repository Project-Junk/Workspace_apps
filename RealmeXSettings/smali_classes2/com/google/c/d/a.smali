.class public final Lcom/google/c/d/a;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"

# interfaces
.implements Lcom/google/c/m;


# static fields
.field private static final a:[Lcom/google/c/q;


# instance fields
.field private final b:Lcom/google/c/d/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [Lcom/google/c/q;

    sput-object v0, Lcom/google/c/d/a;->a:[Lcom/google/c/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/c/d/a/c;

    invoke-direct {v0}, Lcom/google/c/d/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/c/d/a;->b:Lcom/google/c/d/a/c;

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

    move-object/from16 v0, p2

    if-eqz v0, :cond_14

    .line 67
    sget-object v1, Lcom/google/c/e;->b:Lcom/google/c/e;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/google/c/c;->a()Lcom/google/c/b/b;

    move-result-object v0

    .line 1161
    iget v1, v0, Lcom/google/c/b/b;->a:I

    .line 1162
    iget v2, v0, Lcom/google/c/b/b;->b:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, v2

    move v5, v3

    move v2, v1

    move v1, v4

    .line 1166
    :goto_0
    iget v7, v0, Lcom/google/c/b/b;->b:I

    if-ge v1, v7, :cond_7

    move v7, v6

    move v6, v2

    move v2, v4

    .line 1167
    :goto_1
    iget v8, v0, Lcom/google/c/b/b;->c:I

    if-ge v2, v8, :cond_6

    .line 1168
    iget-object v8, v0, Lcom/google/c/b/b;->d:[I

    iget v9, v0, Lcom/google/c/b/b;->c:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v2

    aget v8, v8, v9

    if-eqz v8, :cond_5

    if-ge v1, v7, :cond_0

    move v7, v1

    :cond_0
    if-le v1, v5, :cond_1

    move v5, v1

    :cond_1
    mul-int/lit8 v9, v2, 0x20

    const/16 v10, 0x1f

    if-ge v9, v6, :cond_3

    move v11, v4

    :goto_2
    rsub-int/lit8 v12, v11, 0x1f

    shl-int v12, v8, v12

    if-nez v12, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v11, v9

    if-ge v11, v6, :cond_3

    move v6, v11

    :cond_3
    add-int/lit8 v11, v9, 0x1f

    if-le v11, v3, :cond_5

    :goto_3
    ushr-int v11, v8, v10

    if-nez v11, :cond_4

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_4
    add-int v8, v9, v10

    if-le v8, v3, :cond_5

    move v3, v8

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v2, v6

    move v6, v7

    goto :goto_0

    :cond_7
    sub-int/2addr v3, v2

    sub-int/2addr v5, v6

    const/4 v1, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ltz v3, :cond_9

    if-gez v5, :cond_8

    goto :goto_4

    .line 1205
    :cond_8
    new-array v10, v1, [I

    aput v2, v10, v4

    aput v6, v10, v9

    aput v3, v10, v8

    aput v5, v10, v7

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_13

    .line 1105
    aget v2, v10, v4

    .line 1106
    aget v3, v10, v9

    .line 1107
    aget v5, v10, v8

    .line 1108
    aget v6, v10, v7

    .line 1111
    new-instance v10, Lcom/google/c/b/b;

    const/16 v11, 0x21

    const/16 v12, 0x1e

    invoke-direct {v10, v12, v11}, Lcom/google/c/b/b;-><init>(II)V

    move v13, v4

    :goto_6
    if-ge v13, v11, :cond_c

    mul-int v14, v13, v6

    .line 1113
    div-int/lit8 v15, v6, 0x2

    add-int/2addr v14, v15

    div-int/2addr v14, v11

    add-int/2addr v14, v3

    move v15, v4

    :goto_7
    if-ge v15, v12, :cond_b

    mul-int v16, v15, v5

    .line 1115
    div-int/lit8 v17, v5, 0x2

    add-int v16, v16, v17

    and-int/lit8 v17, v13, 0x1

    mul-int v17, v17, v5

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    div-int/lit8 v16, v16, 0x1e

    add-int v11, v2, v16

    .line 1116
    invoke-virtual {v0, v11, v14}, Lcom/google/c/b/b;->a(II)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1117
    invoke-virtual {v10, v15, v13}, Lcom/google/c/b/b;->b(II)V

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x21

    goto :goto_7

    :cond_b
    add-int/lit8 v13, v13, 0x1

    const/16 v11, 0x21

    goto :goto_6

    :cond_c
    move-object/from16 v11, p0

    .line 69
    iget-object v0, v11, Lcom/google/c/d/a;->b:Lcom/google/c/d/a/c;

    .line 2054
    new-instance v2, Lcom/google/c/d/a/a;

    invoke-direct {v2, v10}, Lcom/google/c/d/a/a;-><init>(Lcom/google/c/b/b;)V

    const/16 v3, 0x90

    .line 3073
    new-array v3, v3, [B

    .line 3074
    iget-object v5, v2, Lcom/google/c/d/a/a;->b:Lcom/google/c/b/b;

    .line 3266
    iget v5, v5, Lcom/google/c/b/b;->b:I

    .line 3075
    iget-object v6, v2, Lcom/google/c/d/a/a;->b:Lcom/google/c/b/b;

    .line 4259
    iget v6, v6, Lcom/google/c/b/b;->a:I

    move v10, v4

    :goto_8
    const/4 v12, 0x5

    if-ge v10, v5, :cond_f

    .line 3077
    sget-object v13, Lcom/google/c/d/a/a;->a:[[I

    aget-object v13, v13, v10

    move v14, v4

    :goto_9
    if-ge v14, v6, :cond_e

    .line 3079
    aget v15, v13, v14

    if-ltz v15, :cond_d

    .line 3080
    iget-object v1, v2, Lcom/google/c/d/a/a;->b:Lcom/google/c/b/b;

    invoke-virtual {v1, v14, v10}, Lcom/google/c/b/b;->a(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3081
    div-int/lit8 v1, v15, 0x6

    aget-byte v16, v3, v1

    rem-int/lit8 v15, v15, 0x6

    rsub-int/lit8 v15, v15, 0x5

    shl-int v15, v9, v15

    int-to-byte v15, v15

    or-int v15, v16, v15

    int-to-byte v15, v15

    aput-byte v15, v3, v1

    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x4

    goto :goto_9

    :cond_e
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x4

    goto :goto_8

    :cond_f
    const/4 v15, 0x0

    const/16 v16, 0xa

    const/16 v17, 0xa

    const/16 v18, 0x0

    move-object v13, v0

    move-object v14, v3

    .line 2057
    invoke-virtual/range {v13 .. v18}, Lcom/google/c/d/a/c;->a([BIIII)V

    .line 2058
    aget-byte v1, v3, v4

    and-int/lit8 v1, v1, 0xf

    if-eq v1, v8, :cond_11

    if-eq v1, v7, :cond_11

    const/4 v2, 0x4

    if-eq v1, v2, :cond_11

    if-ne v1, v12, :cond_10

    const/16 v15, 0x14

    const/16 v16, 0x44

    const/16 v17, 0x38

    const/16 v18, 0x1

    move-object v13, v0

    move-object v14, v3

    .line 2069
    invoke-virtual/range {v13 .. v18}, Lcom/google/c/d/a/c;->a([BIIII)V

    const/16 v18, 0x2

    .line 2070
    invoke-virtual/range {v13 .. v18}, Lcom/google/c/d/a/c;->a([BIIII)V

    const/16 v0, 0x4e

    .line 2071
    new-array v0, v0, [B

    goto :goto_a

    .line 2074
    :cond_10
    invoke-static {}, Lcom/google/c/h;->a()Lcom/google/c/h;

    move-result-object v0

    throw v0

    :cond_11
    const/16 v15, 0x14

    const/16 v16, 0x54

    const/16 v17, 0x28

    const/16 v18, 0x1

    move-object v13, v0

    move-object v14, v3

    .line 2064
    invoke-virtual/range {v13 .. v18}, Lcom/google/c/d/a/c;->a([BIIII)V

    const/16 v18, 0x2

    .line 2065
    invoke-virtual/range {v13 .. v18}, Lcom/google/c/d/a/c;->a([BIIII)V

    const/16 v0, 0x5e

    .line 2066
    new-array v0, v0, [B

    :goto_a
    const/16 v2, 0xa

    .line 2077
    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x14

    .line 2078
    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2080
    invoke-static {v0, v1}, Lcom/google/c/d/a/b;->a([BI)Lcom/google/c/b/e;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/google/c/d/a;->a:[Lcom/google/c/q;

    .line 75
    new-instance v2, Lcom/google/c/o;

    .line 5053
    iget-object v3, v0, Lcom/google/c/b/e;->b:Ljava/lang/String;

    .line 6049
    iget-object v4, v0, Lcom/google/c/b/e;->a:[B

    .line 75
    sget-object v5, Lcom/google/c/a;->j:Lcom/google/c/a;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    .line 6061
    iget-object v0, v0, Lcom/google/c/b/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 79
    sget-object v1, Lcom/google/c/p;->d:Lcom/google/c/p;

    invoke-virtual {v2, v1, v0}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    :cond_12
    return-object v2

    :cond_13
    move-object/from16 v11, p0

    .line 1102
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    :cond_14
    move-object/from16 v11, p0

    .line 71
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method
