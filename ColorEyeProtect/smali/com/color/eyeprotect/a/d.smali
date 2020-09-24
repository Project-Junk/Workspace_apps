.class public Lcom/color/eyeprotect/a/d;
.super Ljava/lang/Object;


# direct methods
.method private static a(F[[FLjava/util/List;)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F[[F",
            "Ljava/util/List<",
            "Lcom/color/eyeprotect/a/e;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object p1, p1, v4

    array-length v4, p1

    sub-int/2addr v4, v2

    move v2, v0

    :goto_0
    if-gt v2, v4, :cond_2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, v2, v4

    int-to-double v7, v7

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/color/eyeprotect/a/e;

    iget v6, v6, Lcom/color/eyeprotect/a/e;->a:F

    cmpg-float v7, v6, p0

    if-gez v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    cmpl-float v4, v6, p0

    if-lez v4, :cond_1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/color/eyeprotect/a/e;

    iget p0, p0, Lcom/color/eyeprotect/a/e;->b:F

    return p0

    :cond_2
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/eyeprotect/a/e;

    iget v2, v2, Lcom/color/eyeprotect/a/e;->a:F

    sub-float/2addr p0, v2

    mul-float v2, p0, p0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/color/eyeprotect/a/e;

    iget p2, p2, Lcom/color/eyeprotect/a/e;->b:F

    aget v1, v1, v0

    mul-float/2addr v1, p0

    add-float/2addr p2, v1

    aget v1, v3, v0

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    aget p1, p1, v0

    mul-float/2addr p1, p0

    mul-float/2addr p1, v2

    add-float/2addr p2, p1

    return p2
.end method

.method public static a(Ljava/util/ArrayList;IF)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;IF)",
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/color/eyeprotect/a/d;->a(Ljava/util/List;)[[F

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/eyeprotect/a/e;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    int-to-float v4, v3

    iget v5, v2, Lcom/color/eyeprotect/a/e;->a:F

    sub-float/2addr v5, p2

    mul-float/2addr v4, v5

    int-to-float v5, p1

    div-float/2addr v4, v5

    add-float/2addr v4, p2

    invoke-static {v4, v1, p0}, Lcom/color/eyeprotect/a/d;->a(F[[FLjava/util/List;)F

    move-result v5

    new-instance v6, Lcom/color/eyeprotect/a/e;

    invoke-direct {v6, v4, v5}, Lcom/color/eyeprotect/a/e;-><init>(FF)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/color/eyeprotect/a/e;

    iget p1, v2, Lcom/color/eyeprotect/a/e;->a:F

    iget p2, v2, Lcom/color/eyeprotect/a/e;->b:F

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/e;-><init>(FF)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p0, "MonotoneCubicSplineUtil"

    const-string p1, "createInterpolant error"

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/color/eyeprotect/a/e;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/eyeprotect/a/e;

    iget v6, v4, Lcom/color/eyeprotect/a/e;->a:F

    iget v7, v5, Lcom/color/eyeprotect/a/e;->a:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    iget v4, v4, Lcom/color/eyeprotect/a/e;->b:F

    iget v5, v5, Lcom/color/eyeprotect/a/e;->b:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private static a(Ljava/util/List;)[[F
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/eyeprotect/a/e;",
            ">;)[[F"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    check-cast p0, [[F

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    new-array v3, v2, [F

    new-array v4, v2, [F

    new-array v5, v2, [F

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_1

    add-int/lit8 v8, v7, 0x1

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/color/eyeprotect/a/e;

    iget v9, v9, Lcom/color/eyeprotect/a/e;->a:F

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/color/eyeprotect/a/e;

    iget v10, v10, Lcom/color/eyeprotect/a/e;->a:F

    sub-float/2addr v9, v10

    aput v9, v4, v7

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/color/eyeprotect/a/e;

    iget v9, v9, Lcom/color/eyeprotect/a/e;->b:F

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/color/eyeprotect/a/e;

    iget v10, v10, Lcom/color/eyeprotect/a/e;->b:F

    sub-float/2addr v9, v10

    aput v9, v3, v7

    aget v9, v3, v7

    aget v10, v4, v7

    div-float/2addr v9, v10

    aput v9, v5, v7

    move v7, v8

    goto :goto_0

    :cond_1
    array-length p0, v4

    new-array v3, v0, [F

    move v7, v6

    :goto_1
    if-ge v7, v0, :cond_5

    if-nez v7, :cond_2

    aget v8, v5, v6

    aput v8, v3, v6

    goto :goto_2

    :cond_2
    if-ne v7, v2, :cond_3

    array-length v8, v5

    sub-int/2addr v8, v1

    aget v8, v5, v8

    aput v8, v3, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v7, -0x1

    aget v9, v5, v8

    aget v10, v5, v7

    mul-float v11, v9, v10

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_4

    aput v12, v3, v7

    goto :goto_2

    :cond_4
    aget v8, v4, v8

    aget v11, v4, v7

    add-float v12, v8, v11

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v12

    add-float/2addr v11, v12

    div-float/2addr v11, v9

    add-float/2addr v12, v8

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    div-float/2addr v13, v11

    aput v13, v3, v7

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "MonotoneCubicSplineUtil"

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, p0, [F

    new-array p0, p0, [F

    array-length v2, v3

    sub-int/2addr v2, v1

    move v7, v6

    :goto_3
    if-ge v7, v2, :cond_6

    aget v8, v3, v7

    const/high16 v9, 0x3f800000    # 1.0f

    aget v10, v4, v7

    div-float/2addr v9, v10

    add-int/lit8 v10, v7, 0x1

    aget v11, v3, v10

    add-float/2addr v11, v8

    aget v12, v5, v7

    sub-float/2addr v11, v12

    aget v12, v5, v7

    sub-float/2addr v11, v12

    aget v12, v5, v7

    sub-float/2addr v12, v8

    sub-float/2addr v12, v11

    mul-float/2addr v12, v9

    aput v12, v0, v7

    mul-float/2addr v11, v9

    mul-float/2addr v11, v9

    aput v11, p0, v7

    const-string v8, "MonotoneCubicSplineUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "c:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v3, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v0, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p0, v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v10

    goto :goto_3

    :cond_6
    const/4 v2, 0x3

    new-array v2, v2, [[F

    aput-object v3, v2, v6

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method
