.class public Lcom/color/eyeprotect/util/g$c;
.super Lcom/color/eyeprotect/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:[F

.field private b:[F

.field private c:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/color/eyeprotect/util/g;-><init>()V

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_8

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8

    array-length v3, v1

    add-int/lit8 v4, v3, -0x1

    new-array v5, v4, [F

    new-array v6, v3, [F

    new-array v7, v3, [F

    iput-object v7, v0, Lcom/color/eyeprotect/util/g$c;->a:[F

    new-array v7, v3, [F

    iput-object v7, v0, Lcom/color/eyeprotect/util/g$c;->b:[F

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x0

    if-ge v8, v4, :cond_1

    add-int/lit8 v10, v8, 0x1

    aget v11, v1, v10

    aget v12, v1, v8

    sub-float/2addr v11, v12

    cmpg-float v9, v11, v9

    if-lez v9, :cond_0

    aget v9, v2, v10

    aget v12, v2, v8

    sub-float/2addr v9, v12

    div-float/2addr v9, v11

    aput v9, v5, v8

    move v8, v10

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The control points must all have strictly increasing X values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget v8, v5, v7

    aput v8, v6, v7

    const/4 v8, 0x1

    :goto_1
    if-ge v8, v4, :cond_2

    add-int/lit8 v10, v8, -0x1

    aget v10, v5, v10

    aget v11, v5, v8

    add-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    aput v10, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v3, -0x2

    aget v8, v5, v8

    aput v8, v6, v4

    move v8, v7

    :goto_2
    if-ge v8, v4, :cond_6

    aget v10, v5, v8

    cmpl-float v10, v10, v9

    if-nez v10, :cond_3

    aput v9, v6, v8

    add-int/lit8 v10, v8, 0x1

    aput v9, v6, v10

    move/from16 v16, v8

    goto :goto_3

    :cond_3
    aget v10, v6, v8

    aget v11, v5, v8

    div-float/2addr v10, v11

    add-int/lit8 v11, v8, 0x1

    aget v12, v6, v11

    aget v13, v5, v8

    div-float/2addr v12, v13

    cmpg-float v13, v10, v9

    if-ltz v13, :cond_5

    cmpg-float v13, v12, v9

    if-ltz v13, :cond_5

    float-to-double v13, v10

    move/from16 v16, v8

    float-to-double v7, v12

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x41100000    # 9.0f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v8, v7

    mul-float/2addr v10, v8

    aget v7, v5, v16

    mul-float/2addr v10, v7

    aput v10, v6, v16

    mul-float/2addr v8, v12

    aget v7, v5, v16

    mul-float/2addr v8, v7

    aput v8, v6, v11

    :cond_4
    :goto_3
    add-int/lit8 v8, v16, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The control points must have monotonic Y values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v3, :cond_7

    iget-object v4, v0, Lcom/color/eyeprotect/util/g$c;->a:[F

    aget v5, v1, v15

    aput v5, v4, v15

    iget-object v4, v0, Lcom/color/eyeprotect/util/g$c;->b:[F

    aget v5, v2, v15

    aput v5, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    iput-object v6, v0, Lcom/color/eyeprotect/util/g$c;->c:[F

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(F)F
    .locals 7

    iget-object v0, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    array-length v0, v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$c;->b:[F

    aget p0, p0, v2

    return p0

    :cond_1
    iget-object v1, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$c;->b:[F

    aget p0, p0, v0

    return p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$c;->b:[F

    aget p0, p0, v1

    return p0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    aget v0, v0, v1

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    aget v3, v3, v2

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    aget v3, v3, v2

    sub-float/2addr p1, v3

    div-float/2addr p1, v0

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$c;->b:[F

    aget v3, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v6, v4, v5

    mul-float/2addr v3, v6

    iget-object v6, p0, Lcom/color/eyeprotect/util/g$c;->c:[F

    aget v2, v6, v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    sub-float v2, v5, p1

    mul-float/2addr v3, v2

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/color/eyeprotect/util/g$c;->b:[F

    aget v2, v2, v1

    const/high16 v6, 0x40400000    # 3.0f

    sub-float/2addr v6, v4

    mul-float/2addr v2, v6

    iget-object p0, p0, Lcom/color/eyeprotect/util/g$c;->c:[F

    aget p0, p0, v1

    mul-float/2addr v0, p0

    sub-float p0, p1, v5

    mul-float/2addr v0, p0

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    array-length v1, v1

    const-string v2, "MonotoneCubicSpline{["

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

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$c;->a:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$c;->b:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/util/g$c;->c:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
