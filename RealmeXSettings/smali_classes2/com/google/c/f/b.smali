.class public final Lcom/google/c/f/b;
.super Ljava/lang/Object;
.source "PDF417Reader.java"

# interfaces
.implements Lcom/google/c/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/c/q;Lcom/google/c/q;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7038
    :cond_0
    iget p0, p0, Lcom/google/c/q;->a:F

    .line 8038
    iget p1, p1, Lcom/google/c/q;->a:F

    sub-float/2addr p0, p1

    .line 109
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lcom/google/c/q;Lcom/google/c/q;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 9038
    :cond_0
    iget p0, p0, Lcom/google/c/q;->a:F

    .line 10038
    iget p1, p1, Lcom/google/c/q;->a:F

    sub-float/2addr p0, p1

    .line 116
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    :goto_0
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/c/c;Ljava/util/Map;)Lcom/google/c/o;
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
            Lcom/google/c/l;,
            Lcom/google/c/h;,
            Lcom/google/c/d;
        }
    .end annotation

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    invoke-static/range {p1 .. p1}, Lcom/google/c/f/b/a;->a(Lcom/google/c/c;)Lcom/google/c/f/b/b;

    move-result-object v1

    .line 2042
    iget-object v2, v1, Lcom/google/c/f/b/b;->b:Ljava/util/List;

    .line 1088
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/c/q;

    .line 3038
    iget-object v5, v1, Lcom/google/c/f/b/b;->a:Lcom/google/c/b/b;

    const/4 v6, 0x4

    .line 1089
    aget-object v7, v3, v6

    const/4 v8, 0x5

    aget-object v9, v3, v8

    const/4 v10, 0x6

    aget-object v11, v3, v10

    const/4 v12, 0x7

    aget-object v13, v3, v12

    .line 3128
    aget-object v14, v3, v4

    aget-object v15, v3, v6

    invoke-static {v14, v15}, Lcom/google/c/f/b;->b(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v14

    aget-object v15, v3, v10

    const/16 v16, 0x2

    aget-object v10, v3, v16

    invoke-static {v15, v10}, Lcom/google/c/f/b;->b(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x11

    div-int/lit8 v10, v10, 0x12

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v14, 0x1

    aget-object v15, v3, v14

    aget-object v14, v3, v8

    invoke-static {v15, v14}, Lcom/google/c/f/b;->b(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v14

    aget-object v15, v3, v12

    const/16 v17, 0x3

    aget-object v12, v3, v17

    invoke-static {v15, v12}, Lcom/google/c/f/b;->b(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x11

    div-int/lit8 v12, v12, 0x12

    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 4120
    aget-object v4, v3, v4

    aget-object v6, v3, v6

    invoke-static {v4, v6}, Lcom/google/c/f/b;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v4

    const/4 v6, 0x6

    aget-object v6, v3, v6

    aget-object v12, v3, v16

    invoke-static {v6, v12}, Lcom/google/c/f/b;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x11

    div-int/lit8 v6, v6, 0x12

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v6, 0x1

    aget-object v6, v3, v6

    aget-object v8, v3, v8

    invoke-static {v6, v8}, Lcom/google/c/f/b;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v6

    const/4 v8, 0x7

    aget-object v8, v3, v8

    aget-object v12, v3, v17

    invoke-static {v8, v12}, Lcom/google/c/f/b;->a(Lcom/google/c/q;Lcom/google/c/q;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x11

    div-int/lit8 v8, v8, 0x12

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object v6, v7

    move-object v7, v9

    move-object v8, v11

    move-object v9, v13

    move v11, v4

    .line 1089
    invoke-static/range {v5 .. v11}, Lcom/google/c/f/a/j;->a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;II)Lcom/google/c/b/e;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1094
    new-instance v5, Lcom/google/c/o;

    .line 5053
    iget-object v6, v4, Lcom/google/c/b/e;->b:Ljava/lang/String;

    .line 6049
    iget-object v7, v4, Lcom/google/c/b/e;->a:[B

    .line 1094
    sget-object v8, Lcom/google/c/a;->k:Lcom/google/c/a;

    invoke-direct {v5, v6, v7, v3, v8}, Lcom/google/c/o;-><init>(Ljava/lang/String;[B[Lcom/google/c/q;Lcom/google/c/a;)V

    .line 1095
    sget-object v3, Lcom/google/c/p;->d:Lcom/google/c/p;

    .line 6061
    iget-object v6, v4, Lcom/google/c/b/e;->d:Ljava/lang/String;

    .line 1095
    invoke-virtual {v5, v3, v6}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    .line 6081
    iget-object v3, v4, Lcom/google/c/b/e;->g:Ljava/lang/Object;

    .line 1096
    check-cast v3, Lcom/google/c/f/c;

    if-eqz v3, :cond_0

    .line 1098
    sget-object v4, Lcom/google/c/p;->i:Lcom/google/c/p;

    invoke-virtual {v5, v4, v3}, Lcom/google/c/o;->a(Lcom/google/c/p;Ljava/lang/Object;)V

    .line 1100
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1092
    :cond_1
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    .line 1102
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/c/o;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/o;

    if-eqz v0, :cond_3

    .line 62
    array-length v1, v0

    if-eqz v1, :cond_3

    aget-object v1, v0, v4

    if-eqz v1, :cond_3

    .line 65
    aget-object v0, v0, v4

    return-object v0

    .line 63
    :cond_3
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method
