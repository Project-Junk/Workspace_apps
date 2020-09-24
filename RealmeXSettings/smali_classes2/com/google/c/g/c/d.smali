.class final Lcom/google/c/g/c/d;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# direct methods
.method static a(Lcom/google/c/g/c/b;Z)I
    .locals 10

    if-eqz p1, :cond_0

    .line 1038
    iget v0, p0, Lcom/google/c/g/c/b;->c:I

    goto :goto_0

    .line 1042
    :cond_0
    iget v0, p0, Lcom/google/c/g/c/b;->b:I

    :goto_0
    if-eqz p1, :cond_1

    .line 2042
    iget v1, p0, Lcom/google/c/g/c/b;->b:I

    goto :goto_1

    .line 3038
    :cond_1
    iget v1, p0, Lcom/google/c/g/c/b;->c:I

    .line 3053
    :goto_1
    iget-object p0, p0, Lcom/google/c/g/c/b;->a:[[B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_2
    if-ge v3, v0, :cond_7

    const/4 v5, -0x1

    move v6, v4

    move v7, v5

    move v4, v2

    move v5, v4

    :goto_3
    const/4 v8, 0x5

    if-ge v4, v1, :cond_5

    if-eqz p1, :cond_2

    .line 200
    aget-object v9, p0, v3

    aget-byte v9, v9, v4

    goto :goto_4

    :cond_2
    aget-object v9, p0, v4

    aget-byte v9, v9, v3

    :goto_4
    if-ne v9, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    if-lt v5, v8, :cond_4

    add-int/lit8 v5, v5, -0x5

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v6, v5

    :cond_4
    const/4 v5, 0x1

    move v7, v9

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    if-lt v5, v8, :cond_6

    add-int/lit8 v5, v5, -0x5

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v6, v5

    :cond_6
    move v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v4
.end method
