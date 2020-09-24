.class public abstract Lcom/google/c/e/q;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/c/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I[II)I
    .locals 8

    .line 259
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 263
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 264
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

    .line 274
    div-int/2addr v5, v4

    mul-int/2addr p2, v5

    shr-int/lit8 p2, p2, 0x8

    move v4, v1

    :goto_1
    if-ge v1, v0, :cond_4

    .line 279
    aget v6, p0, v1

    shl-int/lit8 v6, v6, 0x8

    .line 280
    aget v7, p1, v1

    mul-int/2addr v7, v5

    if-le v6, v7, :cond_2

    sub-int/2addr v6, v7

    goto :goto_2

    :cond_2
    sub-int v6, v7, v6

    :goto_2
    if-le v6, p2, :cond_3

    return v2

    :cond_3
    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 287
    :cond_4
    div-int/2addr v4, v3

    return v4
.end method

.method protected static a(Lcom/google/c/b/a;I[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 196
    array-length v0, p2

    const/4 v1, 0x0

    .line 197
    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 13040
    iget v2, p0, Lcom/google/c/b/a;->b:I

    if-ge p1, v2, :cond_5

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/c/b/a;->a(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move v5, v1

    :goto_0
    if-ge p1, v2, :cond_2

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/c/b/a;->a(I)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_0

    .line 207
    aget v6, p2, v5

    add-int/2addr v6, v4

    aput v6, p2, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    if-eq v5, v0, :cond_2

    .line 213
    aput v4, p2, v5

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-eq v5, v0, :cond_4

    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_3

    if-ne p1, v2, :cond_3

    goto :goto_2

    .line 222
    :cond_3
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p0

    throw p0

    :cond_4
    :goto_2
    return-void

    .line 200
    :cond_5
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p0

    throw p0
.end method

.method private b(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;
    .locals 18
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
            Lcom/google/c/l;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 6044
    iget-object v2, v0, Lcom/google/c/c;->a:Lcom/google/c/b;

    .line 6078
    iget-object v2, v2, Lcom/google/c/b;->a:Lcom/google/c/i;

    .line 7066
    iget v2, v2, Lcom/google/c/i;->d:I

    .line 8051
    iget-object v3, v0, Lcom/google/c/c;->a:Lcom/google/c/b;

    .line 8082
    iget-object v3, v3, Lcom/google/c/b;->a:Lcom/google/c/i;

    .line 9073
    iget v3, v3, Lcom/google/c/i;->e:I

    .line 110
    new-instance v4, Lcom/google/c/b/a;

    invoke-direct {v4, v2}, Lcom/google/c/b/a;-><init>(I)V

    shr-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 113
    sget-object v8, Lcom/google/c/e;->d:Lcom/google/c/e;

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    if-eqz v8, :cond_1

    const/16 v9, 0x8

    goto :goto_1

    :cond_1
    const/4 v9, 0x5

    :goto_1
    shr-int v9, v3, v9

    .line 114
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-eqz v8, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    const/16 v8, 0xf

    :goto_2
    move-object v10, v1

    move v1, v6

    :goto_3
    if-ge v1, v8, :cond_8

    add-int/lit8 v11, v1, 0x1

    shr-int/lit8 v12, v11, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    move v1, v7

    goto :goto_4

    :cond_3
    move v1, v6

    :goto_4
    if-eqz v1, :cond_4

    goto :goto_5

    :cond_4
    neg-int v12, v12

    :goto_5
    mul-int/2addr v12, v9

    add-int/2addr v12, v5

    if-ltz v12, :cond_8

    if-ge v12, v3, :cond_8

    .line 10065
    :try_start_0
    iget-object v1, v0, Lcom/google/c/c;->a:Lcom/google/c/b;

    invoke-virtual {v1, v12, v4}, Lcom/google/c/b;->a(ILcom/google/c/b/a;)Lcom/google/c/b/a;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/c/l; {:try_start_0 .. :try_end_0} :catch_5

    move v4, v6

    :goto_6
    const/4 v13, 0x2

    if-ge v4, v13, :cond_7

    if-ne v4, v7, :cond_5

    .line 144
    invoke-virtual {v1}, Lcom/google/c/b/a;->c()V

    if-eqz v10, :cond_5

    .line 149
    sget-object v13, Lcom/google/c/e;->j:Lcom/google/c/e;

    invoke-interface {v10, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 150
    new-instance v13, Ljava/util/EnumMap;

    const-class v14, Lcom/google/c/e;

    invoke-direct {v13, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 151
    invoke-interface {v13, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 152
    sget-object v10, Lcom/google/c/e;->j:Lcom/google/c/e;

    invoke-interface {v13, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v13

    :cond_5
    move-object/from16 v13, p0

    .line 158
    :try_start_1
    invoke-virtual {v13, v12, v1, v10}, Lcom/google/c/e/q;->a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;

    move-result-object v14

    if-ne v4, v7, :cond_6

    .line 162
    sget-object v15, Lcom/google/c/p;->b:Lcom/google/c/p;
    :try_end_1
    .catch Lcom/google/c/n; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v16, 0xb4

    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v15, v7}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    .line 10076
    iget-object v7, v14, Lcom/google/c/o;->c:[Lcom/google/c/q;

    if-eqz v7, :cond_6

    .line 166
    new-instance v15, Lcom/google/c/q;
    :try_end_2
    .catch Lcom/google/c/n; {:try_start_2 .. :try_end_2} :catch_0

    int-to-float v0, v2

    move-object/from16 p2, v1

    :try_start_3
    aget-object v1, v7, v6

    .line 11038
    iget v1, v1, Lcom/google/c/q;->a:F
    :try_end_3
    .catch Lcom/google/c/n; {:try_start_3 .. :try_end_3} :catch_1

    sub-float v1, v0, v1

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v1, v1, v16

    move/from16 v17, v2

    .line 166
    :try_start_4
    aget-object v2, v7, v6

    .line 11042
    iget v2, v2, Lcom/google/c/q;->b:F

    .line 166
    invoke-direct {v15, v1, v2}, Lcom/google/c/q;-><init>(FF)V

    aput-object v15, v7, v6

    .line 167
    new-instance v1, Lcom/google/c/q;
    :try_end_4
    .catch Lcom/google/c/n; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v2, 0x1

    :try_start_5
    aget-object v15, v7, v2

    .line 12038
    iget v15, v15, Lcom/google/c/q;->a:F

    sub-float/2addr v0, v15

    sub-float v0, v0, v16

    .line 167
    aget-object v15, v7, v2

    .line 12042
    iget v15, v15, Lcom/google/c/q;->b:F

    .line 167
    invoke-direct {v1, v0, v15}, Lcom/google/c/q;-><init>(FF)V

    aput-object v1, v7, v2
    :try_end_5
    .catch Lcom/google/c/n; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_0
    move-object/from16 p2, v1

    :catch_1
    move/from16 v17, v2

    :catch_2
    const/4 v2, 0x1

    goto :goto_8

    :cond_6
    :goto_7
    return-object v14

    :catch_3
    move-object/from16 p2, v1

    move/from16 v17, v2

    move v2, v7

    :catch_4
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v7, v2

    move/from16 v2, v17

    goto :goto_6

    :cond_7
    move-object/from16 v13, p0

    move-object/from16 p2, v1

    move/from16 v17, v2

    move v2, v7

    move-object/from16 v4, p2

    goto :goto_9

    :catch_5
    move-object/from16 v13, p0

    move/from16 v17, v2

    move v2, v7

    :goto_9
    move-object/from16 v0, p1

    move v7, v2

    move v1, v11

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_8
    move-object/from16 v13, p0

    .line 177
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0
.end method

.method protected static b(Lcom/google/c/b/a;I[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 229
    array-length v0, p2

    .line 230
    invoke-virtual {p0, p1}, Lcom/google/c/b/a;->a(I)Z

    move-result v1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-lez p1, :cond_2

    if-ltz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/c/b/a;->a(I)Z

    move-result v3

    if-eq v3, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    add-int/2addr p1, v2

    .line 240
    invoke-static {p0, p1, p2}, Lcom/google/c/e/q;->a(Lcom/google/c/b/a;I[I)V

    return-void

    .line 238
    :cond_3
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abstract a(ILcom/google/c/b/a;Ljava/util/Map;)Lcom/google/c/o;
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
            Lcom/google/c/l;,
            Lcom/google/c/d;,
            Lcom/google/c/h;
        }
    .end annotation
.end method

.method public a(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;
    .locals 1
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
            Lcom/google/c/h;
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/c/e/q;->b(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/c/l; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    .line 59
    sget-object v0, Lcom/google/c/e;->d:Lcom/google/c/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    throw p1
.end method

.method public a()V
    .locals 0

    return-void
.end method
