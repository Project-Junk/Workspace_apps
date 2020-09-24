.class public Lcom/color/eyeprotect/util/g$a;
.super Lcom/color/eyeprotect/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:[F

.field private b:[F

.field private c:[F

.field private d:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 8

    invoke-direct {p0}, Lcom/color/eyeprotect/util/g;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    add-int/lit8 v5, v3, 0x1

    aget v6, p1, v5

    aget v7, p1, v3

    sub-float/2addr v6, v7

    aput v6, v4, v3

    iget-object v4, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v3, v4, v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The control points must all have strictly increasing X values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    aget v3, p1, v2

    aput v3, v1, v2

    iget-object v1, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget v3, p2, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/color/eyeprotect/util/g$a;->a()[F

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/util/g$a;->d:[F

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(I[F[F[F[F)[F
    .locals 9

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    array-length p0, p0

    new-array v0, p0, [F

    add-int/lit8 v1, p0, -0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aget v3, p4, v2

    aget v4, p3, v2

    div-float/2addr v3, v4

    aput v3, p4, v2

    aget v3, p5, v2

    aget v4, p3, v2

    div-float/2addr v3, v4

    aput v3, p5, v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_0

    aget v5, p3, v4

    aget v6, p2, v4

    add-int/lit8 v7, v4, -0x1

    aget v8, p4, v7

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    aget v6, p4, v4

    div-float/2addr v6, v5

    aput v6, p4, v4

    aget v6, p5, v4

    aget v8, p2, v4

    aget v7, p5, v7

    mul-float/2addr v8, v7

    sub-float/2addr v6, v8

    div-float/2addr v6, v5

    aput v6, p5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p1, -0x1

    aget p3, p5, p2

    aput p3, v1, p2

    add-int/lit8 p1, p1, -0x2

    :goto_1
    if-ltz p1, :cond_1

    aget p2, p5, p1

    aget p3, p4, p1

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    mul-float/2addr p3, v4

    sub-float/2addr p2, p3

    aput p2, v1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    aput p1, v0, v2

    sub-int/2addr p0, v3

    aput p1, v0, p0

    :goto_2
    if-ge v3, p0, :cond_2

    add-int/lit8 p1, v3, -0x1

    aget p1, v1, p1

    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(F)F
    .locals 11

    iget-object v0, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    array-length v0, v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget p0, p0, v2

    return p0

    :cond_1
    iget-object v1, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget p0, p0, v0

    return p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget p0, p0, v1

    return p0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget v0, v0, v2

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget v4, v4, v2

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v4, v4, v2

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v4, v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    iget-object v6, p0, Lcom/color/eyeprotect/util/g$a;->d:[F

    aget v6, v6, v2

    mul-float/2addr v4, v6

    iget-object v6, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v6, v6, v2

    iget-object v7, p0, Lcom/color/eyeprotect/util/g$a;->d:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/color/eyeprotect/util/g$a;->d:[F

    aget v4, v4, v2

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/color/eyeprotect/util/g$a;->d:[F

    aget v1, v5, v1

    iget-object v5, p0, Lcom/color/eyeprotect/util/g$a;->d:[F

    aget v5, v5, v2

    sub-float/2addr v1, v5

    iget-object v5, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v5, v5, v2

    mul-float/2addr v5, v6

    div-float/2addr v1, v5

    iget-object v5, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    aget v5, v5, v2

    sub-float v5, p1, v5

    mul-float/2addr v3, v5

    add-float/2addr v0, v3

    float-to-double v5, v0

    float-to-double v3, v4

    iget-object v0, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    aget v0, v0, v2

    sub-float v0, p1, v0

    float-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v3, v7

    add-double/2addr v5, v3

    float-to-double v0, v1

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    aget p0, p0, v2

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v0, p0

    add-double/2addr v5, v0

    double-to-float p0, v5

    return p0
.end method

.method public a()[F
    .locals 11

    iget-object v0, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    array-length v0, v0

    add-int/lit8 v1, v0, -0x2

    new-array v4, v1, [F

    new-array v5, v1, [F

    new-array v6, v1, [F

    new-array v7, v1, [F

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x3

    if-ge v1, v3, :cond_0

    iget-object v2, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v2, v2, v1

    aput v2, v4, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v3, v3, v1

    iget-object v8, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    add-float/2addr v3, v8

    mul-float/2addr v3, v2

    aput v3, v5, v1

    iget-object v2, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v2, v2, v9

    aput v2, v6, v1

    const/high16 v2, 0x40c00000    # 6.0f

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    add-int/lit8 v8, v1, 0x2

    aget v3, v3, v8

    iget-object v8, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget v8, v8, v9

    sub-float/2addr v3, v8

    iget-object v8, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v8, v8, v9

    div-float/2addr v3, v8

    iget-object v8, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget v8, v8, v9

    iget-object v10, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget v10, v10, v1

    sub-float/2addr v8, v10

    iget-object v10, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    aget v10, v10, v1

    div-float/2addr v8, v10

    sub-float/2addr v3, v8

    mul-float/2addr v3, v2

    aput v3, v7, v1

    move v1, v9

    goto :goto_0

    :cond_0
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/color/eyeprotect/util/g$a;->a(I[F[F[F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    array-length v1, v1

    const-string v2, "CubicSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$a;->a:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$a;->b:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$a;->d:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "   mH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$a;->c:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
