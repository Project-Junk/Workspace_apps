.class public final Lcom/google/c/a/b/a;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/a/b/a$a;
    }
.end annotation


# static fields
.field private static final g:[I


# instance fields
.field private final a:Lcom/google/c/b/b;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 148
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/c/a/b/a;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/c/b/b;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    return-void
.end method

.method private static a(Lcom/google/c/q;Lcom/google/c/q;)F
    .locals 2

    .line 50057
    iget v0, p0, Lcom/google/c/q;->a:F

    .line 50058
    iget p0, p0, Lcom/google/c/q;->b:F

    .line 50059
    iget v1, p1, Lcom/google/c/q;->a:F

    .line 50060
    iget p1, p1, Lcom/google/c/q;->b:F

    .line 560
    invoke-static {v0, p0, v1, p1}, Lcom/google/c/b/a/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private static a(JZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    move v1, v0

    :goto_0
    sub-int v2, p2, v1

    .line 206
    new-array v3, p2, [I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    .line 208
    aput v4, v3, p2

    shr-long/2addr p0, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 212
    :cond_1
    :try_start_0
    new-instance p0, Lcom/google/c/b/b/c;

    sget-object p1, Lcom/google/c/b/b/a;->d:Lcom/google/c/b/b/a;

    invoke-direct {p0, p1}, Lcom/google/c/b/b/c;-><init>(Lcom/google/c/b/b/a;)V

    .line 213
    invoke-virtual {p0, v3, v2}, Lcom/google/c/b/b/c;->a([II)V
    :try_end_0
    .catch Lcom/google/c/b/b/e; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    move p1, p0

    :goto_2
    if-ge p0, v1, :cond_2

    shl-int/lit8 p1, p1, 0x4

    .line 220
    aget p2, v3, p0

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    return p1

    .line 215
    :catch_0
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p0

    throw p0
.end method

.method private a(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)I
    .locals 10

    .line 462
    invoke-static {p1, p2}, Lcom/google/c/a/b/a;->b(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)F

    move-result v0

    .line 35587
    iget v1, p2, Lcom/google/c/a/b/a$a;->a:I

    .line 36587
    iget v2, p1, Lcom/google/c/a/b/a$a;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 36591
    iget p2, p2, Lcom/google/c/a/b/a$a;->b:I

    .line 37591
    iget v2, p1, Lcom/google/c/a/b/a$a;->b:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 38587
    iget v2, p1, Lcom/google/c/a/b/a$a;->a:I

    int-to-float v2, v2

    .line 38591
    iget v3, p1, Lcom/google/c/a/b/a$a;->b:I

    int-to-float v3, v3

    .line 470
    iget-object v4, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    .line 39587
    iget v5, p1, Lcom/google/c/a/b/a$a;->a:I

    .line 39591
    iget p1, p1, Lcom/google/c/a/b/a$a;->b:I

    .line 470
    invoke-virtual {v4, v5, p1}, Lcom/google/c/b/b;->a(II)Z

    move-result p1

    const/4 v4, 0x0

    move v5, v2

    move v6, v3

    move v2, v4

    move v3, v2

    :goto_0
    int-to-float v7, v2

    cmpg-float v7, v7, v0

    if-gez v7, :cond_1

    add-float/2addr v5, v1

    add-float/2addr v6, p2

    .line 475
    iget-object v7, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    const/high16 v8, 0x3f000000    # 0.5f

    add-float v9, v5, v8

    float-to-int v9, v9

    add-float/2addr v8, v6

    float-to-int v8, v8

    invoke-virtual {v7, v9, v8}, Lcom/google/c/b/b;->a(II)Z

    move-result v7

    if-eq v7, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float p2, v3

    div-float/2addr p2, v0

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    return v4

    :cond_2
    cmpg-float p2, p2, v0

    const/4 v0, 0x1

    if-gtz p2, :cond_3

    move v4, v0

    :cond_3
    if-ne v4, p1, :cond_4

    return v0

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method private a(Lcom/google/c/q;Lcom/google/c/q;I)I
    .locals 8

    .line 402
    invoke-static {p1, p2}, Lcom/google/c/a/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;)F

    move-result v0

    int-to-float v1, p3

    div-float v1, v0, v1

    .line 26038
    iget v2, p1, Lcom/google/c/q;->a:F

    .line 26042
    iget v3, p1, Lcom/google/c/q;->b:F

    .line 27038
    iget v4, p2, Lcom/google/c/q;->a:F

    .line 28038
    iget v5, p1, Lcom/google/c/q;->a:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    div-float/2addr v4, v0

    .line 28042
    iget p2, p2, Lcom/google/c/q;->b:F

    .line 29042
    iget p1, p1, Lcom/google/c/q;->b:F

    sub-float/2addr p2, p1

    mul-float/2addr v1, p2

    div-float/2addr v1, v0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p1, p3, :cond_1

    .line 409
    iget-object v0, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    int-to-float v5, p1

    mul-float v6, v5, v4

    add-float/2addr v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    add-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v0, v6, v5}, Lcom/google/c/b/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int v0, p3, p1

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    shl-int v0, v5, v0

    or-int/2addr p2, v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static a([II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    .line 166
    aget v4, p0, v1

    add-int/lit8 v3, p1, -0x2

    shr-int v3, v4, v3

    shl-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p0, v2, 0x1

    shl-int/lit8 p0, p0, 0xb

    shr-int/lit8 p1, v2, 0x1

    add-int/2addr p0, p1

    :goto_1
    if-ge v0, v4, :cond_2

    .line 179
    sget-object p1, Lcom/google/c/a/b/a;->g:[I

    aget p1, p1, v0

    xor-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    if-gt p1, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_2
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p0

    throw p0
.end method

.method private a()Lcom/google/c/a/b/a$a;
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 303
    :try_start_0
    new-instance v5, Lcom/google/c/b/a/b;

    iget-object v6, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    invoke-direct {v5, v6}, Lcom/google/c/b/a/b;-><init>(Lcom/google/c/b/b;)V

    invoke-virtual {v5}, Lcom/google/c/b/a/b;->a()[Lcom/google/c/q;

    move-result-object v5

    .line 304
    aget-object v6, v5, v4

    .line 305
    aget-object v7, v5, v3

    .line 306
    aget-object v8, v5, v1

    .line 307
    aget-object v5, v5, v0
    :try_end_0
    .catch Lcom/google/c/l; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    iget-object v5, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    .line 5259
    iget v5, v5, Lcom/google/c/b/b;->a:I

    .line 313
    div-int/2addr v5, v1

    .line 314
    iget-object v6, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    .line 5266
    iget v6, v6, Lcom/google/c/b/b;->b:I

    .line 314
    div-int/2addr v6, v1

    .line 315
    new-instance v7, Lcom/google/c/a/b/a$a;

    add-int/lit8 v8, v5, 0x7

    add-int/lit8 v9, v6, -0x7

    invoke-direct {v7, v8, v9}, Lcom/google/c/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v7, v4, v3, v2}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/c/a/b/a$a;->a()Lcom/google/c/q;

    move-result-object v7

    .line 316
    new-instance v10, Lcom/google/c/a/b/a$a;

    add-int/lit8 v6, v6, 0x7

    invoke-direct {v10, v8, v6}, Lcom/google/c/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v10, v4, v3, v3}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/c/a/b/a$a;->a()Lcom/google/c/q;

    move-result-object v8

    .line 317
    new-instance v10, Lcom/google/c/a/b/a$a;

    add-int/lit8 v5, v5, -0x7

    invoke-direct {v10, v5, v6}, Lcom/google/c/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v10, v4, v2, v3}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/c/a/b/a$a;->a()Lcom/google/c/q;

    move-result-object v6

    .line 318
    new-instance v10, Lcom/google/c/a/b/a$a;

    invoke-direct {v10, v5, v9}, Lcom/google/c/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v10, v4, v2, v2}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/c/a/b/a$a;->a()Lcom/google/c/q;

    move-result-object v5

    move-object v12, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v12

    .line 6038
    :goto_0
    iget v9, v6, Lcom/google/c/q;->a:F

    .line 7038
    iget v10, v5, Lcom/google/c/q;->a:F

    add-float/2addr v9, v10

    .line 8038
    iget v10, v7, Lcom/google/c/q;->a:F

    add-float/2addr v9, v10

    .line 9038
    iget v10, v8, Lcom/google/c/q;->a:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 10042
    iget v6, v6, Lcom/google/c/q;->b:F

    .line 11042
    iget v5, v5, Lcom/google/c/q;->b:F

    add-float/2addr v6, v5

    .line 12042
    iget v5, v7, Lcom/google/c/q;->b:F

    add-float/2addr v6, v5

    .line 13042
    iget v5, v8, Lcom/google/c/q;->b:F

    add-float/2addr v6, v5

    div-float/2addr v6, v10

    add-float/2addr v6, v11

    float-to-int v5, v6

    .line 330
    :try_start_1
    new-instance v6, Lcom/google/c/b/a/b;

    iget-object v7, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    invoke-direct {v6, v7, v9, v5}, Lcom/google/c/b/a/b;-><init>(Lcom/google/c/b/b;II)V

    invoke-virtual {v6}, Lcom/google/c/b/a/b;->a()[Lcom/google/c/q;

    move-result-object v6

    .line 331
    aget-object v7, v6, v4

    .line 332
    aget-object v8, v6, v3

    .line 333
    aget-object v1, v6, v1

    .line 334
    aget-object v0, v6, v0
    :try_end_1
    .catch Lcom/google/c/l; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 338
    :catch_1
    new-instance v0, Lcom/google/c/a/b/a$a;

    add-int/lit8 v1, v9, 0x7

    add-int/lit8 v6, v5, -0x7

    invoke-direct {v0, v1, v6}, Lcom/google/c/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v3, v2}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/b/a$a;->a()Lcom/google/c/q;

    move-result-object v7

    .line 339
    new-instance v0, Lcom/google/c/a/b/a$a;

    add-int/lit8 v5, v5, 0x7

    invoke-direct {v0, v1, v5}, Lcom/google/c/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v3, v3}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/b/a$a;->a()Lcom/google/c/q;

    move-result-object v8

    .line 340
    new-instance v0, Lcom/google/c/a/b/a$a;

    add-int/lit8 v9, v9, -0x7

    invoke-direct {v0, v9, v5}, Lcom/google/c/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v2, v3}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/b/a$a;->a()Lcom/google/c/q;

    move-result-object v1

    .line 341
    new-instance v0, Lcom/google/c/a/b/a$a;

    invoke-direct {v0, v9, v6}, Lcom/google/c/a/b/a$a;-><init>(II)V

    invoke-direct {p0, v0, v4, v2, v2}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/b/a$a;->a()Lcom/google/c/q;

    move-result-object v0

    .line 14038
    :goto_1
    iget v2, v7, Lcom/google/c/q;->a:F

    .line 15038
    iget v3, v0, Lcom/google/c/q;->a:F

    add-float/2addr v2, v3

    .line 16038
    iget v3, v8, Lcom/google/c/q;->a:F

    add-float/2addr v2, v3

    .line 17038
    iget v3, v1, Lcom/google/c/q;->a:F

    add-float/2addr v2, v3

    div-float/2addr v2, v10

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 18042
    iget v3, v7, Lcom/google/c/q;->b:F

    .line 19042
    iget v0, v0, Lcom/google/c/q;->b:F

    add-float/2addr v3, v0

    .line 20042
    iget v0, v8, Lcom/google/c/q;->b:F

    add-float/2addr v3, v0

    .line 21042
    iget v0, v1, Lcom/google/c/q;->b:F

    add-float/2addr v3, v0

    div-float/2addr v3, v10

    add-float/2addr v3, v11

    float-to-int v0, v3

    .line 348
    new-instance v1, Lcom/google/c/a/b/a$a;

    invoke-direct {v1, v2, v0}, Lcom/google/c/a/b/a$a;-><init>(II)V

    return-object v1
.end method

.method private a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;
    .locals 2

    .line 41587
    iget v0, p1, Lcom/google/c/a/b/a$a;->a:I

    add-int/2addr v0, p3

    .line 41591
    iget p1, p1, Lcom/google/c/a/b/a$a;->b:I

    :goto_0
    add-int/2addr p1, p4

    .line 496
    invoke-direct {p0, v0, p1}, Lcom/google/c/a/b/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    invoke-virtual {v1, v0, p1}, Lcom/google/c/b/b;->a(II)Z

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    sub-int/2addr p1, p4

    .line 504
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/google/c/a/b/a;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    invoke-virtual {v1, v0, p1}, Lcom/google/c/b/b;->a(II)Z

    move-result v1

    if-ne v1, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p3

    .line 509
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/google/c/a/b/a;->a(II)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    invoke-virtual {p3, v0, p1}, Lcom/google/c/b/b;->a(II)Z

    move-result p3

    if-ne p3, p2, :cond_2

    add-int/2addr p1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr p1, p4

    .line 514
    new-instance p2, Lcom/google/c/a/b/a$a;

    invoke-direct {p2, v0, p1}, Lcom/google/c/a/b/a$a;-><init>(II)V

    return-object p2
.end method

.method private a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/b/b;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p1

    .line 372
    invoke-static {}, Lcom/google/c/b/i;->a()Lcom/google/c/b/i;

    move-result-object v4

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/google/c/a/b/a;->b()I

    move-result v8

    move v7, v8

    move v6, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v8, v9

    move-object/from16 v15, p0

    .line 375
    iget v12, v15, Lcom/google/c/a/b/a;->e:I

    int-to-float v8, v12

    sub-float v9, v10, v8

    move v11, v9

    move v8, v9

    move v14, v9

    int-to-float v12, v12

    add-float/2addr v10, v12

    move v12, v10

    move v13, v10

    move v15, v10

    move-object/from16 p1, v4

    .line 22038
    iget v4, v0, Lcom/google/c/q;->a:F

    move/from16 v16, v4

    .line 22042
    iget v0, v0, Lcom/google/c/q;->b:F

    move/from16 v17, v0

    .line 23038
    iget v0, v1, Lcom/google/c/q;->a:F

    move/from16 v18, v0

    .line 23042
    iget v0, v1, Lcom/google/c/q;->b:F

    move/from16 v19, v0

    .line 24038
    iget v0, v2, Lcom/google/c/q;->a:F

    move/from16 v20, v0

    .line 24042
    iget v0, v2, Lcom/google/c/q;->b:F

    move/from16 v21, v0

    .line 25038
    iget v0, v3, Lcom/google/c/q;->a:F

    move/from16 v22, v0

    .line 25042
    iget v0, v3, Lcom/google/c/q;->b:F

    move/from16 v23, v0

    move-object/from16 v4, p1

    .line 378
    invoke-virtual/range {v4 .. v23}, Lcom/google/c/b/i;->a(Lcom/google/c/b/b;IIFFFFFFFFFFFFFFFF)Lcom/google/c/b/b;

    move-result-object v0

    return-object v0
.end method

.method private a([Lcom/google/c/q;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/google/c/a/b/a;->a(Lcom/google/c/q;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/google/c/a/b/a;->a(Lcom/google/c/q;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/google/c/a/b/a;->a(Lcom/google/c/q;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/google/c/a/b/a;->a(Lcom/google/c/q;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    iget v4, p0, Lcom/google/c/a/b/a;->e:I

    mul-int/2addr v4, v2

    const/4 v5, 0x4

    .line 105
    new-array v6, v5, [I

    aget-object v7, p1, v0

    aget-object v8, p1, v1

    invoke-direct {p0, v7, v8, v4}, Lcom/google/c/a/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;I)I

    move-result v7

    aput v7, v6, v0

    aget-object v7, p1, v1

    aget-object v8, p1, v2

    invoke-direct {p0, v7, v8, v4}, Lcom/google/c/a/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;I)I

    move-result v7

    aput v7, v6, v1

    aget-object v7, p1, v2

    aget-object v8, p1, v3

    invoke-direct {p0, v7, v8, v4}, Lcom/google/c/a/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;I)I

    move-result v7

    aput v7, v6, v2

    aget-object v2, p1, v3

    aget-object p1, p1, v0

    invoke-direct {p0, v2, p1, v4}, Lcom/google/c/a/b/a;->a(Lcom/google/c/q;Lcom/google/c/q;I)I

    move-result p1

    aput p1, v6, v3

    .line 116
    invoke-static {v6, v4}, Lcom/google/c/a/b/a;->a([II)I

    move-result p1

    iput p1, p0, Lcom/google/c/a/b/a;->f:I

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    .line 121
    iget p1, p0, Lcom/google/c/a/b/a;->f:I

    add-int/2addr p1, v0

    rem-int/2addr p1, v5

    aget p1, v6, p1

    .line 122
    iget-boolean v4, p0, Lcom/google/c/a/b/a;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    shl-long/2addr v2, v4

    shr-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x7f

    int-to-long v7, p1

    goto :goto_1

    :cond_0
    const/16 v4, 0xa

    shl-long/2addr v2, v4

    shr-int/lit8 v4, p1, 0x2

    and-int/lit16 v4, v4, 0x3e0

    shr-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v4, p1

    int-to-long v7, v4

    :goto_1
    add-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget-boolean p1, p0, Lcom/google/c/a/b/a;->b:Z

    invoke-static {v2, v3, p1}, Lcom/google/c/a/b/a;->a(JZ)I

    move-result p1

    .line 137
    iget-boolean v0, p0, Lcom/google/c/a/b/a;->b:Z

    if-eqz v0, :cond_2

    shr-int/lit8 v0, p1, 0x6

    add-int/2addr v0, v1

    .line 139
    iput v0, p0, Lcom/google/c/a/b/a;->c:I

    and-int/lit8 p1, p1, 0x3f

    add-int/2addr p1, v1

    .line 140
    iput p1, p0, Lcom/google/c/a/b/a;->d:I

    return-void

    :cond_2
    shr-int/lit8 v0, p1, 0xb

    add-int/2addr v0, v1

    .line 143
    iput v0, p0, Lcom/google/c/a/b/a;->c:I

    and-int/lit16 p1, p1, 0x7ff

    add-int/2addr p1, v1

    .line 144
    iput p1, p0, Lcom/google/c/a/b/a;->d:I

    return-void

    .line 101
    :cond_3
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1
.end method

.method private a(II)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    .line 50047
    iget v0, v0, Lcom/google/c/b/b;->a:I

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 546
    iget-object p1, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    .line 50048
    iget p1, p1, Lcom/google/c/b/b;->b:I

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)Z
    .locals 2

    .line 427
    new-instance v0, Lcom/google/c/a/b/a$a;

    .line 31587
    iget v1, p1, Lcom/google/c/a/b/a$a;->a:I

    add-int/lit8 v1, v1, -0x3

    .line 31591
    iget p1, p1, Lcom/google/c/a/b/a$a;->b:I

    add-int/lit8 p1, p1, 0x3

    .line 427
    invoke-direct {v0, v1, p1}, Lcom/google/c/a/b/a$a;-><init>(II)V

    .line 428
    new-instance p1, Lcom/google/c/a/b/a$a;

    .line 32587
    iget v1, p2, Lcom/google/c/a/b/a$a;->a:I

    add-int/lit8 v1, v1, -0x3

    .line 32591
    iget p2, p2, Lcom/google/c/a/b/a$a;->b:I

    add-int/lit8 p2, p2, -0x3

    .line 428
    invoke-direct {p1, v1, p2}, Lcom/google/c/a/b/a$a;-><init>(II)V

    .line 429
    new-instance p2, Lcom/google/c/a/b/a$a;

    .line 33587
    iget v1, p3, Lcom/google/c/a/b/a$a;->a:I

    add-int/lit8 v1, v1, 0x3

    .line 33591
    iget p3, p3, Lcom/google/c/a/b/a$a;->b:I

    add-int/lit8 p3, p3, -0x3

    .line 429
    invoke-direct {p2, v1, p3}, Lcom/google/c/a/b/a$a;-><init>(II)V

    .line 430
    new-instance p3, Lcom/google/c/a/b/a$a;

    .line 34587
    iget v1, p4, Lcom/google/c/a/b/a$a;->a:I

    add-int/lit8 v1, v1, 0x3

    .line 34591
    iget p4, p4, Lcom/google/c/a/b/a$a;->b:I

    add-int/lit8 p4, p4, 0x3

    .line 430
    invoke-direct {p3, v1, p4}, Lcom/google/c/a/b/a$a;-><init>(II)V

    .line 432
    invoke-direct {p0, p3, v0}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)I

    move-result p4

    const/4 v1, 0x0

    if-nez p4, :cond_0

    return v1

    .line 438
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)I

    move-result v0

    if-eq v0, p4, :cond_1

    return v1

    .line 444
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)I

    move-result p1

    if-eq p1, p4, :cond_2

    return v1

    .line 450
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)I

    move-result p1

    if-ne p1, p4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private a(Lcom/google/c/q;)Z
    .locals 2

    .line 50049
    iget v0, p1, Lcom/google/c/q;->a:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 50051
    iget p1, p1, Lcom/google/c/q;->b:F

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 552
    invoke-direct {p0, v0, p1}, Lcom/google/c/a/b/a;->a(II)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/google/c/a/b/a$a;)[Lcom/google/c/q;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    const/4 v0, 0x1

    .line 243
    iput v0, p0, Lcom/google/c/a/b/a;->e:I

    move-object v2, p1

    move-object v3, v2

    move-object v4, v3

    move v1, v0

    :goto_0
    iget v5, p0, Lcom/google/c/a/b/a;->e:I

    const/16 v6, 0x9

    const/4 v7, 0x2

    if-ge v5, v6, :cond_1

    const/4 v5, -0x1

    .line 244
    invoke-direct {p0, p1, v1, v0, v5}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v6

    .line 245
    invoke-direct {p0, v2, v1, v0, v0}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v8

    .line 246
    invoke-direct {p0, v3, v1, v5, v0}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v9

    .line 247
    invoke-direct {p0, v4, v1, v5, v5}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;ZII)Lcom/google/c/a/b/a$a;

    move-result-object v5

    .line 253
    iget v10, p0, Lcom/google/c/a/b/a;->e:I

    if-le v10, v7, :cond_0

    .line 254
    invoke-static {v5, v6}, Lcom/google/c/a/b/a;->b(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)F

    move-result v10

    iget v11, p0, Lcom/google/c/a/b/a;->e:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v4, p1}, Lcom/google/c/a/b/a;->b(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)F

    move-result v11

    iget v12, p0, Lcom/google/c/a/b/a;->e:I

    add-int/2addr v12, v7

    int-to-float v12, v12

    mul-float/2addr v11, v12

    div-float/2addr v10, v11

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    cmpg-double v12, v10, v12

    if-ltz v12, :cond_1

    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_1

    .line 255
    invoke-direct {p0, v6, v8, v9, v5}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    xor-int/lit8 v1, v1, 0x1

    .line 243
    iget p1, p0, Lcom/google/c/a/b/a;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/c/a/b/a;->e:I

    move-object v4, v5

    move-object p1, v6

    move-object v2, v8

    move-object v3, v9

    goto :goto_0

    .line 268
    :cond_1
    iget v1, p0, Lcom/google/c/a/b/a;->e:I

    const/4 v5, 0x5

    if-eq v1, v5, :cond_3

    const/4 v6, 0x7

    if-ne v1, v6, :cond_2

    goto :goto_1

    .line 269
    :cond_2
    invoke-static {}, Lcom/google/c/l;->a()Lcom/google/c/l;

    move-result-object p1

    throw p1

    .line 272
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/c/a/b/a;->e:I

    const/4 v6, 0x0

    if-ne v1, v5, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v6

    :goto_2
    iput-boolean v1, p0, Lcom/google/c/a/b/a;->b:Z

    .line 276
    new-instance v1, Lcom/google/c/q;

    .line 1587
    iget v5, p1, Lcom/google/c/a/b/a$a;->a:I

    int-to-float v5, v5

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v5, v8

    .line 1591
    iget p1, p1, Lcom/google/c/a/b/a$a;->b:I

    int-to-float p1, p1

    sub-float/2addr p1, v8

    .line 276
    invoke-direct {v1, v5, p1}, Lcom/google/c/q;-><init>(FF)V

    .line 277
    new-instance p1, Lcom/google/c/q;

    .line 2587
    iget v5, v2, Lcom/google/c/a/b/a$a;->a:I

    int-to-float v5, v5

    add-float/2addr v5, v8

    .line 2591
    iget v2, v2, Lcom/google/c/a/b/a$a;->b:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    .line 277
    invoke-direct {p1, v5, v2}, Lcom/google/c/q;-><init>(FF)V

    .line 278
    new-instance v2, Lcom/google/c/q;

    .line 3587
    iget v5, v3, Lcom/google/c/a/b/a$a;->a:I

    int-to-float v5, v5

    sub-float/2addr v5, v8

    .line 3591
    iget v3, v3, Lcom/google/c/a/b/a$a;->b:I

    int-to-float v3, v3

    add-float/2addr v3, v8

    .line 278
    invoke-direct {v2, v5, v3}, Lcom/google/c/q;-><init>(FF)V

    .line 279
    new-instance v3, Lcom/google/c/q;

    .line 4587
    iget v5, v4, Lcom/google/c/a/b/a$a;->a:I

    int-to-float v5, v5

    sub-float/2addr v5, v8

    .line 4591
    iget v4, v4, Lcom/google/c/a/b/a$a;->b:I

    int-to-float v4, v4

    sub-float/2addr v4, v8

    .line 279
    invoke-direct {v3, v5, v4}, Lcom/google/c/q;-><init>(FF)V

    const/4 v4, 0x4

    .line 283
    new-array v4, v4, [Lcom/google/c/q;

    aput-object v1, v4, v6

    aput-object p1, v4, v0

    aput-object v2, v4, v7

    const/4 p1, 0x3

    aput-object v3, v4, p1

    iget v0, p0, Lcom/google/c/a/b/a;->e:I

    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-int/2addr v0, v7

    int-to-float v0, v0

    invoke-static {v4, p1, v0}, Lcom/google/c/a/b/a;->a([Lcom/google/c/q;FF)[Lcom/google/c/q;

    move-result-object p1

    return-object p1
.end method

.method private static a([Lcom/google/c/q;FF)[Lcom/google/c/q;
    .locals 10

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    div-float/2addr p2, p1

    const/4 p1, 0x0

    .line 527
    aget-object v1, p0, p1

    .line 42038
    iget v1, v1, Lcom/google/c/q;->a:F

    const/4 v2, 0x2

    .line 527
    aget-object v3, p0, v2

    .line 43038
    iget v3, v3, Lcom/google/c/q;->a:F

    sub-float/2addr v1, v3

    .line 528
    aget-object v3, p0, p1

    .line 43042
    iget v3, v3, Lcom/google/c/q;->b:F

    .line 528
    aget-object v4, p0, v2

    .line 44042
    iget v4, v4, Lcom/google/c/q;->b:F

    sub-float/2addr v3, v4

    .line 529
    aget-object v4, p0, p1

    .line 45038
    iget v4, v4, Lcom/google/c/q;->a:F

    .line 529
    aget-object v5, p0, v2

    .line 46038
    iget v5, v5, Lcom/google/c/q;->a:F

    add-float/2addr v4, v5

    div-float/2addr v4, v0

    .line 530
    aget-object v5, p0, p1

    .line 46042
    iget v5, v5, Lcom/google/c/q;->b:F

    .line 530
    aget-object v6, p0, v2

    .line 47042
    iget v6, v6, Lcom/google/c/q;->b:F

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    .line 532
    new-instance v6, Lcom/google/c/q;

    mul-float/2addr v1, p2

    add-float v7, v4, v1

    mul-float/2addr v3, p2

    add-float v8, v5, v3

    invoke-direct {v6, v7, v8}, Lcom/google/c/q;-><init>(FF)V

    .line 533
    new-instance v7, Lcom/google/c/q;

    sub-float/2addr v4, v1

    sub-float/2addr v5, v3

    invoke-direct {v7, v4, v5}, Lcom/google/c/q;-><init>(FF)V

    const/4 v1, 0x1

    .line 535
    aget-object v3, p0, v1

    .line 48038
    iget v3, v3, Lcom/google/c/q;->a:F

    const/4 v4, 0x3

    .line 535
    aget-object v5, p0, v4

    .line 49038
    iget v5, v5, Lcom/google/c/q;->a:F

    sub-float/2addr v3, v5

    .line 536
    aget-object v5, p0, v1

    .line 49042
    iget v5, v5, Lcom/google/c/q;->b:F

    .line 536
    aget-object v8, p0, v4

    .line 50042
    iget v8, v8, Lcom/google/c/q;->b:F

    sub-float/2addr v5, v8

    .line 537
    aget-object v8, p0, v1

    .line 50043
    iget v8, v8, Lcom/google/c/q;->a:F

    .line 537
    aget-object v9, p0, v4

    .line 50044
    iget v9, v9, Lcom/google/c/q;->a:F

    add-float/2addr v8, v9

    div-float/2addr v8, v0

    .line 538
    aget-object v9, p0, v1

    .line 50045
    iget v9, v9, Lcom/google/c/q;->b:F

    .line 538
    aget-object p0, p0, v4

    .line 50046
    iget p0, p0, Lcom/google/c/q;->b:F

    add-float/2addr v9, p0

    div-float/2addr v9, v0

    .line 539
    new-instance p0, Lcom/google/c/q;

    mul-float/2addr v3, p2

    add-float v0, v8, v3

    mul-float/2addr p2, v5

    add-float v5, v9, p2

    invoke-direct {p0, v0, v5}, Lcom/google/c/q;-><init>(FF)V

    .line 540
    new-instance v0, Lcom/google/c/q;

    sub-float/2addr v8, v3

    sub-float/2addr v9, p2

    invoke-direct {v0, v8, v9}, Lcom/google/c/q;-><init>(FF)V

    const/4 p2, 0x4

    .line 542
    new-array p2, p2, [Lcom/google/c/q;

    aput-object v6, p2, p1

    aput-object p0, p2, v1

    aput-object v7, p2, v2

    aput-object v0, p2, v4

    return-object p2
.end method

.method private static b(Lcom/google/c/a/b/a$a;Lcom/google/c/a/b/a$a;)F
    .locals 2

    .line 50053
    iget v0, p0, Lcom/google/c/a/b/a$a;->a:I

    .line 50054
    iget p0, p0, Lcom/google/c/a/b/a$a;->b:I

    .line 50055
    iget v1, p1, Lcom/google/c/a/b/a$a;->a:I

    .line 50056
    iget p1, p1, Lcom/google/c/a/b/a$a;->b:I

    .line 556
    invoke-static {v0, p0, v1, p1}, Lcom/google/c/b/a/a;->a(IIII)F

    move-result p0

    return p0
.end method

.method private b()I
    .locals 3

    .line 564
    iget-boolean v0, p0, Lcom/google/c/a/b/a;->b:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 565
    iget v0, p0, Lcom/google/c/a/b/a;->c:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xb

    return v0

    .line 567
    :cond_0
    iget v0, p0, Lcom/google/c/a/b/a;->c:I

    if-gt v0, v1, :cond_1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    return v0

    :cond_1
    mul-int/lit8 v2, v0, 0x4

    sub-int/2addr v0, v1

    .line 570
    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0xf

    return v2
.end method

.method private b([Lcom/google/c/q;)[Lcom/google/c/q;
    .locals 2

    .line 358
    iget v0, p0, Lcom/google/c/a/b/a;->e:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/c/a/b/a;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/google/c/a/b/a;->a([Lcom/google/c/q;FF)[Lcom/google/c/q;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Z)Lcom/google/c/a/a;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/c/a/b/a;->a()Lcom/google/c/a/b/a$a;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/google/c/a/b/a;->a(Lcom/google/c/a/b/a$a;)[Lcom/google/c/q;

    move-result-object v6

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 71
    aget-object v1, v6, v0

    const/4 v2, 0x2

    .line 72
    aget-object v3, v6, v2

    aput-object v3, v6, v0

    .line 73
    aput-object v1, v6, v2

    .line 77
    :cond_0
    invoke-direct {p0, v6}, Lcom/google/c/a/b/a;->a([Lcom/google/c/q;)V

    .line 80
    iget-object v1, p0, Lcom/google/c/a/b/a;->a:Lcom/google/c/b/b;

    iget v0, p0, Lcom/google/c/a/b/a;->f:I

    rem-int/lit8 v2, v0, 0x4

    aget-object v2, v6, v2

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    aget-object v3, v6, v3

    add-int/lit8 v4, v0, 0x2

    rem-int/lit8 v4, v4, 0x4

    aget-object v4, v6, v4

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/c/a/b/a;->a(Lcom/google/c/b/b;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;Lcom/google/c/q;)Lcom/google/c/b/b;

    move-result-object v8

    .line 87
    invoke-direct {p0, v6}, Lcom/google/c/a/b/a;->b([Lcom/google/c/q;)[Lcom/google/c/q;

    move-result-object v9

    .line 89
    new-instance v0, Lcom/google/c/a/a;

    iget-boolean v10, p0, Lcom/google/c/a/b/a;->b:Z

    iget v11, p0, Lcom/google/c/a/b/a;->d:I

    iget v12, p0, Lcom/google/c/a/b/a;->c:I

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/c/a/a;-><init>(Lcom/google/c/b/b;[Lcom/google/c/q;ZII)V

    return-object v0
.end method
