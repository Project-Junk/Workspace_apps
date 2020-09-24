.class public final Lcom/google/c/b/a/b;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# instance fields
.field private final a:Lcom/google/c/b/b;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/c/b/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/c/b/a/b;->a:Lcom/google/c/b/b;

    .line 1266
    iget v0, p1, Lcom/google/c/b/b;->b:I

    .line 51
    iput v0, p0, Lcom/google/c/b/a/b;->b:I

    .line 2259
    iget p1, p1, Lcom/google/c/b/b;->a:I

    .line 52
    iput p1, p0, Lcom/google/c/b/a/b;->c:I

    .line 53
    iget p1, p0, Lcom/google/c/b/a/b;->c:I

    add-int/lit8 v0, p1, -0x1e

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/b/a/b;->d:I

    add-int/lit8 v0, p1, 0x1e

    shr-int/lit8 v0, v0, 0x1

    .line 54
    iput v0, p0, Lcom/google/c/b/a/b;->e:I

    .line 55
    iget v0, p0, Lcom/google/c/b/a/b;->b:I

    add-int/lit8 v1, v0, -0x1e

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/c/b/a/b;->g:I

    add-int/lit8 v1, v0, 0x1e

    shr-int/lit8 v1, v1, 0x1

    .line 56
    iput v1, p0, Lcom/google/c/b/a/b;->f:I

    .line 57
    iget v1, p0, Lcom/google/c/b/a/b;->g:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/c/b/a/b;->d:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/c/b/a/b;->f:I

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/google/c/b/a/b;->e:I

    if-ge v0, p1, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lcom/google/c/b/b;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/c/b/a/b;->a:Lcom/google/c/b/b;

    .line 2266
    iget v0, p1, Lcom/google/c/b/b;->b:I

    .line 67
    iput v0, p0, Lcom/google/c/b/a/b;->b:I

    .line 3259
    iget p1, p1, Lcom/google/c/b/b;->a:I

    .line 68
    iput p1, p0, Lcom/google/c/b/a/b;->c:I

    add-int/lit8 p1, p2, -0x7

    .line 70
    iput p1, p0, Lcom/google/c/b/a/b;->d:I

    add-int/lit8 p2, p2, 0x7

    .line 71
    iput p2, p0, Lcom/google/c/b/a/b;->e:I

    add-int/lit8 p1, p3, -0x7

    .line 72
    iput p1, p0, Lcom/google/c/b/a/b;->g:I

    add-int/lit8 p3, p3, 0x7

    .line 73
    iput p3, p0, Lcom/google/c/b/a/b;->f:I

    .line 74
    iget p1, p0, Lcom/google/c/b/a/b;->g:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/google/c/b/a/b;->d:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/google/c/b/a/b;->f:I

    iget p2, p0, Lcom/google/c/b/a/b;->b:I

    if-ge p1, p2, :cond_0

    iget p1, p0, Lcom/google/c/b/a/b;->e:I

    iget p2, p0, Lcom/google/c/b/a/b;->c:I

    if-ge p1, p2, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1
.end method

.method private a(FFFF)Lcom/google/c/q;
    .locals 6

    .line 244
    invoke-static {p1, p2, p3, p4}, Lcom/google/c/b/a/a;->a(FFFF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    sub-float/2addr p3, p1

    int-to-float v2, v0

    div-float/2addr p3, v2

    sub-float/2addr p4, p2

    div-float/2addr p4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    mul-float v4, v3, p3

    add-float/2addr v4, p1

    add-float/2addr v4, v1

    float-to-int v4, v4

    mul-float/2addr v3, p4

    add-float/2addr v3, p2

    add-float/2addr v3, v1

    float-to-int v3, v3

    .line 251
    iget-object v5, p0, Lcom/google/c/b/a/b;->a:Lcom/google/c/b/b;

    invoke-virtual {v5, v4, v3}, Lcom/google/c/b/b;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    new-instance p1, Lcom/google/c/q;

    int-to-float p2, v4

    int-to-float p3, v3

    invoke-direct {p1, p2, p3}, Lcom/google/c/q;-><init>(FF)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(IIIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    :goto_0
    if-gt p1, p2, :cond_3

    .line 318
    iget-object p4, p0, Lcom/google/c/b/a/b;->a:Lcom/google/c/b/b;

    invoke-virtual {p4, p1, p3}, Lcom/google/c/b/b;->a(II)Z

    move-result p4

    if-eqz p4, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_3

    .line 324
    iget-object p4, p0, Lcom/google/c/b/a/b;->a:Lcom/google/c/b/b;

    invoke-virtual {p4, p3, p1}, Lcom/google/c/b/b;->a(II)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)[Lcom/google/c/q;
    .locals 11

    .line 6038
    iget v0, p1, Lcom/google/c/q;->a:F

    .line 6042
    iget p1, p1, Lcom/google/c/q;->b:F

    .line 7038
    iget v1, p2, Lcom/google/c/q;->a:F

    .line 7042
    iget p2, p2, Lcom/google/c/q;->b:F

    .line 8038
    iget v2, p3, Lcom/google/c/q;->a:F

    .line 8042
    iget p3, p3, Lcom/google/c/q;->b:F

    .line 9038
    iget v3, p4, Lcom/google/c/q;->a:F

    .line 9042
    iget p4, p4, Lcom/google/c/q;->b:F

    .line 290
    iget v4, p0, Lcom/google/c/b/a/b;->c:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpg-float v4, v0, v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    if-gez v4, :cond_0

    .line 291
    new-array v4, v9, [Lcom/google/c/q;

    new-instance v9, Lcom/google/c/q;

    sub-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/c/q;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/google/c/q;

    add-float/2addr v1, v10

    add-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/c/q;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/google/c/q;

    sub-float/2addr v2, v10

    sub-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/c/q;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/google/c/q;

    add-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/c/q;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4

    .line 297
    :cond_0
    new-array v4, v9, [Lcom/google/c/q;

    new-instance v9, Lcom/google/c/q;

    add-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/c/q;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/google/c/q;

    add-float/2addr v1, v10

    sub-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/c/q;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/google/c/q;

    sub-float/2addr v2, v10

    add-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/c/q;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/google/c/q;

    sub-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/c/q;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4
.end method


# virtual methods
.method public final a()[Lcom/google/c/q;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 95
    iget v0, p0, Lcom/google/c/b/a/b;->d:I

    .line 96
    iget v1, p0, Lcom/google/c/b/a/b;->e:I

    .line 97
    iget v2, p0, Lcom/google/c/b/a/b;->g:I

    .line 98
    iget v3, p0, Lcom/google/c/b/a/b;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v0

    move v7, v4

    move v0, v5

    :goto_0
    if-eqz v0, :cond_d

    move v8, v4

    move v0, v5

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 111
    iget v0, p0, Lcom/google/c/b/a/b;->c:I

    if-ge v1, v0, :cond_1

    .line 112
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/c/b/a/b;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v8, v5

    goto :goto_1

    .line 119
    :cond_1
    iget v0, p0, Lcom/google/c/b/a/b;->c:I

    if-lt v1, v0, :cond_2

    :goto_2
    move v4, v5

    goto :goto_6

    :cond_2
    move v0, v5

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 128
    iget v0, p0, Lcom/google/c/b/a/b;->b:I

    if-ge v3, v0, :cond_4

    .line 129
    invoke-direct {p0, v6, v1, v3, v5}, Lcom/google/c/b/a/b;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    move v8, v5

    goto :goto_3

    .line 136
    :cond_4
    iget v0, p0, Lcom/google/c/b/a/b;->b:I

    if-lt v3, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v5

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    if-ltz v6, :cond_7

    .line 146
    invoke-direct {p0, v2, v3, v6, v4}, Lcom/google/c/b/a/b;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v6, v6, -0x1

    move v8, v5

    goto :goto_4

    :cond_7
    if-gez v6, :cond_8

    goto :goto_2

    :cond_8
    move v0, v5

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    if-ltz v2, :cond_a

    .line 163
    invoke-direct {p0, v6, v1, v2, v5}, Lcom/google/c/b/a/b;->a(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v2, v2, -0x1

    move v8, v5

    goto :goto_5

    :cond_a
    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    if-eqz v8, :cond_c

    move v7, v5

    :cond_c
    move v0, v8

    goto :goto_0

    :cond_d
    :goto_6
    if-nez v4, :cond_16

    if-eqz v7, :cond_16

    sub-int v0, v1, v6

    const/4 v4, 0x0

    move-object v8, v4

    move v7, v5

    :goto_7
    if-ge v7, v0, :cond_e

    int-to-float v8, v6

    sub-int v9, v3, v7

    int-to-float v9, v9

    add-int v10, v6, v7

    int-to-float v10, v10

    int-to-float v11, v3

    .line 187
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/c/b/a/b;->a(FFFF)Lcom/google/c/q;

    move-result-object v8

    if-nez v8, :cond_e

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    if-eqz v8, :cond_15

    move-object v9, v4

    move v7, v5

    :goto_8
    if-ge v7, v0, :cond_f

    int-to-float v9, v6

    add-int v10, v2, v7

    int-to-float v10, v10

    add-int v11, v6, v7

    int-to-float v11, v11

    int-to-float v12, v2

    .line 200
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/c/b/a/b;->a(FFFF)Lcom/google/c/q;

    move-result-object v9

    if-nez v9, :cond_f

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_f
    if-eqz v9, :cond_14

    move-object v7, v4

    move v6, v5

    :goto_9
    if-ge v6, v0, :cond_10

    int-to-float v7, v1

    add-int v10, v2, v6

    int-to-float v10, v10

    sub-int v11, v1, v6

    int-to-float v11, v11

    int-to-float v12, v2

    .line 213
    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/c/b/a/b;->a(FFFF)Lcom/google/c/q;

    move-result-object v7

    if-nez v7, :cond_10

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_10
    if-eqz v7, :cond_13

    :goto_a
    if-ge v5, v0, :cond_11

    int-to-float v2, v1

    sub-int v4, v3, v5

    int-to-float v4, v4

    sub-int v6, v1, v5

    int-to-float v6, v6

    int-to-float v10, v3

    .line 226
    invoke-direct {p0, v2, v4, v6, v10}, Lcom/google/c/b/a/b;->a(FFFF)Lcom/google/c/q;

    move-result-object v4

    if-nez v4, :cond_11

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_11
    if-eqz v4, :cond_12

    .line 236
    invoke-direct {p0, v4, v8, v7, v9}, Lcom/google/c/b/a/b;->a(Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)[Lcom/google/c/q;

    move-result-object v0

    return-object v0

    .line 233
    :cond_12
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    .line 220
    :cond_13
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    .line 207
    :cond_14
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    .line 194
    :cond_15
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0

    .line 239
    :cond_16
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object v0

    throw v0
.end method
