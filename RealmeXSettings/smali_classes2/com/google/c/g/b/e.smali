.class public final Lcom/google/c/g/b/e;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/g/b/e$a;,
        Lcom/google/c/g/b/e$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/c/b/b;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/c/g/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field private final d:[I

.field private final e:Lcom/google/c/r;


# direct methods
.method public constructor <init>(Lcom/google/c/b/b;Lcom/google/c/r;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/c/g/b/e;->a:Lcom/google/c/b/b;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    const/4 p1, 0x5

    .line 65
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/c/g/b/e;->d:[I

    .line 66
    iput-object p2, p0, Lcom/google/c/g/b/e;->e:Lcom/google/c/r;

    return-void
.end method

.method private a(IIII)F
    .locals 10

    .line 243
    iget-object v0, p0, Lcom/google/c/g/b/e;->a:Lcom/google/c/b/b;

    .line 1266
    iget v1, v0, Lcom/google/c/b/b;->b:I

    .line 246
    invoke-direct {p0}, Lcom/google/c/g/b/e;->b()[I

    move-result-object v2

    move v3, p1

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    .line 250
    invoke-virtual {v0, p2, v3}, Lcom/google/c/b/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_1

    return v6

    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    .line 257
    invoke-virtual {v0, p2, v3}, Lcom/google/c/b/b;->a(II)Z

    move-result v7

    if-nez v7, :cond_2

    aget v7, v2, v5

    if-gt v7, p3, :cond_2

    .line 258
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    if-ltz v3, :cond_d

    .line 262
    aget v7, v2, v5

    if-le v7, p3, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_2
    const/4 v7, 0x0

    if-ltz v3, :cond_4

    .line 265
    invoke-virtual {v0, p2, v3}, Lcom/google/c/b/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_4

    aget v8, v2, v7

    if-gt v8, p3, :cond_4

    .line 266
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 269
    :cond_4
    aget v3, v2, v7

    if-le v3, p3, :cond_5

    return v6

    :cond_5
    add-int/2addr p1, v5

    :goto_3
    if-ge p1, v1, :cond_6

    .line 275
    invoke-virtual {v0, p2, p1}, Lcom/google/c/b/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 276
    aget v3, v2, v4

    add-int/2addr v3, v5

    aput v3, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    if-ne p1, v1, :cond_7

    return v6

    :cond_7
    :goto_4
    const/4 v3, 0x3

    if-ge p1, v1, :cond_8

    .line 282
    invoke-virtual {v0, p2, p1}, Lcom/google/c/b/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_8

    aget v8, v2, v3

    if-ge v8, p3, :cond_8

    .line 283
    aget v8, v2, v3

    add-int/2addr v8, v5

    aput v8, v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    if-eq p1, v1, :cond_d

    .line 286
    aget v8, v2, v3

    if-lt v8, p3, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v8, 0x4

    if-ge p1, v1, :cond_a

    .line 289
    invoke-virtual {v0, p2, p1}, Lcom/google/c/b/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_a

    aget v9, v2, v8

    if-ge v9, p3, :cond_a

    .line 290
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 293
    :cond_a
    aget p2, v2, v8

    if-lt p2, p3, :cond_b

    return v6

    .line 299
    :cond_b
    aget p2, v2, v7

    aget p3, v2, v5

    add-int/2addr p2, p3

    aget p3, v2, v4

    add-int/2addr p2, p3

    aget p3, v2, v3

    add-int/2addr p2, p3

    aget p3, v2, v8

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    .line 301
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    mul-int/2addr p4, v4

    if-lt p2, p4, :cond_c

    return v6

    .line 305
    :cond_c
    invoke-static {v2}, Lcom/google/c/g/b/e;->a([I)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {v2, p1}, Lcom/google/c/g/b/e;->a([II)F

    move-result p1

    return p1

    :cond_d
    :goto_6
    return v6
.end method

.method private static a([II)F
    .locals 1

    const/4 v0, 0x4

    .line 191
    aget v0, p0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x3

    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method public static a([I)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 202
    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    shl-int/lit8 v2, v2, 0x8

    .line 211
    div-int/2addr v2, v1

    .line 212
    div-int/lit8 v1, v2, 0x2

    .line 214
    aget v3, p0, v0

    shl-int/lit8 v3, v3, 0x8

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_3

    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    aget v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v1, 0x3

    if-ge v4, v5, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    shl-int/lit8 p0, p0, 0x8

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method private b(IIII)F
    .locals 10

    .line 315
    iget-object v0, p0, Lcom/google/c/g/b/e;->a:Lcom/google/c/b/b;

    .line 2259
    iget v1, v0, Lcom/google/c/b/b;->a:I

    .line 318
    invoke-direct {p0}, Lcom/google/c/g/b/e;->b()[I

    move-result-object v2

    move v3, p1

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    .line 321
    invoke-virtual {v0, v3, p2}, Lcom/google/c/b/b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_1

    return v6

    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    .line 328
    invoke-virtual {v0, v3, p2}, Lcom/google/c/b/b;->a(II)Z

    move-result v7

    if-nez v7, :cond_2

    aget v7, v2, v5

    if-gt v7, p3, :cond_2

    .line 329
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    if-ltz v3, :cond_d

    .line 332
    aget v7, v2, v5

    if-le v7, p3, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_2
    const/4 v7, 0x0

    if-ltz v3, :cond_4

    .line 335
    invoke-virtual {v0, v3, p2}, Lcom/google/c/b/b;->a(II)Z

    move-result v8

    if-eqz v8, :cond_4

    aget v8, v2, v7

    if-gt v8, p3, :cond_4

    .line 336
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 339
    :cond_4
    aget v3, v2, v7

    if-le v3, p3, :cond_5

    return v6

    :cond_5
    add-int/2addr p1, v5

    :goto_3
    if-ge p1, v1, :cond_6

    .line 344
    invoke-virtual {v0, p1, p2}, Lcom/google/c/b/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 345
    aget v3, v2, v4

    add-int/2addr v3, v5

    aput v3, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    if-ne p1, v1, :cond_7

    return v6

    :cond_7
    :goto_4
    const/4 v3, 0x3

    if-ge p1, v1, :cond_8

    .line 351
    invoke-virtual {v0, p1, p2}, Lcom/google/c/b/b;->a(II)Z

    move-result v8

    if-nez v8, :cond_8

    aget v8, v2, v3

    if-ge v8, p3, :cond_8

    .line 352
    aget v8, v2, v3

    add-int/2addr v8, v5

    aput v8, v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    if-eq p1, v1, :cond_d

    .line 355
    aget v8, v2, v3

    if-lt v8, p3, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v8, 0x4

    if-ge p1, v1, :cond_a

    .line 358
    invoke-virtual {v0, p1, p2}, Lcom/google/c/b/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_a

    aget v9, v2, v8

    if-ge v9, p3, :cond_a

    .line 359
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 362
    :cond_a
    aget p2, v2, v8

    if-lt p2, p3, :cond_b

    return v6

    .line 368
    :cond_b
    aget p2, v2, v7

    aget p3, v2, v5

    add-int/2addr p2, p3

    aget p3, v2, v4

    add-int/2addr p2, p3

    aget p3, v2, v3

    add-int/2addr p2, p3

    aget p3, v2, v8

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    .line 370
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    if-lt p2, p4, :cond_c

    return v6

    .line 374
    :cond_c
    invoke-static {v2}, Lcom/google/c/g/b/e;->a([I)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {v2, p1}, Lcom/google/c/g/b/e;->a([II)F

    move-result p1

    return p1

    :cond_d
    :goto_6
    return v6
.end method

.method private b()[I
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/google/c/g/b/e;->d:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 223
    aput v1, v0, v2

    const/4 v2, 0x2

    .line 224
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 225
    aput v1, v0, v2

    const/4 v2, 0x4

    .line 226
    aput v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 9

    .line 465
    iget-object v0, p0, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 466
    iget-object v1, p0, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/c/g/b/d;

    .line 3048
    iget v7, v6, Lcom/google/c/g/b/d;->d:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 4044
    iget v6, v6, Lcom/google/c/g/b/d;->c:F

    add-float/2addr v5, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2

    return v3

    :cond_2
    int-to-float v0, v0

    div-float v0, v5, v0

    .line 481
    iget-object v1, p0, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/c/g/b/d;

    .line 5044
    iget v4, v4, Lcom/google/c/g/b/d;->c:F

    sub-float/2addr v4, v0

    .line 482
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_1

    :cond_3
    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, v0

    cmpg-float v0, v2, v5

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v3
.end method

.method public final a([III)Z
    .locals 5

    const/4 v0, 0x0

    .line 394
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    add-int/2addr v1, v4

    .line 396
    invoke-static {p1, p3}, Lcom/google/c/g/b/e;->a([II)F

    move-result p3

    float-to-int p3, p3

    .line 397
    aget v4, p1, v3

    invoke-direct {p0, p2, p3, v4, v1}, Lcom/google/c/g/b/e;->a(IIII)F

    move-result p2

    .line 398
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3

    float-to-int v4, p2

    .line 400
    aget p1, p1, v3

    invoke-direct {p0, p3, v4, p1, v1}, Lcom/google/c/g/b/e;->b(IIII)F

    move-result p1

    .line 401
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_3

    int-to-float p3, v1

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr p3, v1

    move v1, v0

    .line 404
    :goto_0
    iget-object v3, p0, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/c/g/b/d;

    .line 407
    invoke-virtual {v3, p3, p2, p1}, Lcom/google/c/g/b/d;->a(FFF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-virtual {v3, p2, p1, p3}, Lcom/google/c/g/b/d;->b(FFF)Lcom/google/c/g/b/d;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 414
    new-instance v0, Lcom/google/c/g/b/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/c/g/b/d;-><init>(FFF)V

    .line 415
    iget-object p1, p0, Lcom/google/c/g/b/e;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return v2

    :cond_3
    return v0
.end method
