.class public Lcom/color/eyeprotect/util/g$b;
.super Lcom/color/eyeprotect/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 9

    invoke-direct {p0}, Lcom/color/eyeprotect/util/g;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/color/eyeprotect/util/g$b;->c:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/color/eyeprotect/util/g$b;->b:[F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/color/eyeprotect/util/g$b;->c:[F

    add-int/lit8 v5, v3, 0x1

    aget v6, p2, v5

    aget v7, p2, v3

    sub-float/2addr v6, v7

    aget v7, p1, v5

    aget v8, p1, v3

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    aput v6, v4, v3

    move v3, v5

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    aget v3, p1, v2

    aput v3, v1, v2

    iget-object v1, p0, Lcom/color/eyeprotect/util/g$b;->b:[F

    aget v3, p2, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(F)F
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    array-length v0, v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$b;->b:[F

    aget p0, p0, v2

    return p0

    :cond_1
    iget-object v1, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$b;->b:[F

    aget p0, p0, v0

    return p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$b;->b:[F

    aget p0, p0, v1

    return p0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/color/eyeprotect/util/g$b;->b:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/color/eyeprotect/util/g$b;->c:[F

    aget v1, v1, v2

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    aget p0, p0, v2

    sub-float/2addr p1, p0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    array-length v1, v1

    const-string v2, "LinearSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$b;->a:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$b;->b:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$b;->c:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
