.class public final Lcom/coloros/anim/f/g;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final a:Landroid/graphics/PathMeasure;

.field private static final b:Landroid/graphics/Path;

.field private static final c:Landroid/graphics/Path;

.field private static final d:[F

.field private static final e:F

.field private static f:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [F

    sput-object v0, Lcom/coloros/anim/f/g;->d:[F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/coloros/anim/f/g;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 31
    sput v0, Lcom/coloros/anim/f/g;->f:F

    return-void
.end method

.method public static a()F
    .locals 2

    .line 197
    sget v0, Lcom/coloros/anim/f/g;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/coloros/anim/f/g;->f:F

    .line 200
    :cond_0
    sget v0, Lcom/coloros/anim/f/g;->f:F

    return v0
.end method

.method public static a(Landroid/graphics/Matrix;)F
    .locals 6

    .line 63
    sget-object v0, Lcom/coloros/anim/f/g;->d:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v3, 0x1

    .line 64
    aput v1, v0, v3

    .line 66
    sget v1, Lcom/coloros/anim/f/g;->e:F

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v5, 0x3

    .line 67
    aput v1, v0, v5

    .line 68
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 69
    sget-object p0, Lcom/coloros/anim/f/g;->d:[F

    aget v0, p0, v4

    aget v1, p0, v2

    sub-float/2addr v0, v1

    .line 70
    aget v1, p0, v5

    aget p0, p0, v3

    sub-float/2addr v1, p0

    float-to-double v2, v0

    float-to-double v0, v1

    .line 73
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static a(FFFF)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-eqz v1, :cond_0

    const v1, 0x4403c000    # 527.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    :goto_0
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :cond_1
    cmpl-float p1, p2, v0

    if-eqz p1, :cond_2

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    :cond_2
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_3

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float/2addr p0, p3

    float-to-int p0, p0

    :cond_3
    return p0
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8

    .line 37
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 38
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 40
    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float v2, p0, p2

    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p2, p3, Landroid/graphics/PointF;->x:F

    add-float v3, p0, p2

    iget p0, p1, Landroid/graphics/PointF;->y:F

    iget p2, p3, Landroid/graphics/PointF;->y:F

    add-float v4, p0, p2

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 46
    :cond_1
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v7
.end method

.method public static a(Landroid/graphics/Path;FFF)V
    .locals 7

    const-string v0, "applyTrimPathIfNeeded"

    .line 88
    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 91
    sget-object v1, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    cmpl-float v3, p2, v4

    if-nez v3, :cond_0

    .line 93
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void

    :cond_0
    cmpg-float v3, v1, v2

    if-ltz v3, :cond_9

    sub-float v3, p2, p1

    sub-float/2addr v3, v2

    .line 96
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v2, v5

    if-gez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    mul-float/2addr p1, v1

    mul-float/2addr p2, v1

    .line 102
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p3, v1

    add-float/2addr v2, p3

    add-float/2addr p1, p3

    cmpl-float p2, v2, v1

    if-ltz p2, :cond_2

    cmpl-float p2, p1, v1

    if-ltz p2, :cond_2

    .line 111
    invoke-static {v2, v1}, Lcom/coloros/anim/f/f;->a(FF)I

    move-result p2

    int-to-float v2, p2

    .line 112
    invoke-static {p1, v1}, Lcom/coloros/anim/f/f;->a(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_2
    cmpg-float p2, v2, v4

    if-gez p2, :cond_3

    .line 116
    invoke-static {v2, v1}, Lcom/coloros/anim/f/f;->a(FF)I

    move-result p2

    int-to-float v2, p2

    :cond_3
    cmpg-float p2, p1, v4

    if-gez p2, :cond_4

    .line 119
    invoke-static {p1, v1}, Lcom/coloros/anim/f/f;->a(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_4
    cmpl-float p2, v2, p1

    if-nez p2, :cond_5

    .line 124
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 125
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void

    :cond_5
    if-ltz p2, :cond_6

    sub-float/2addr v2, v1

    .line 133
    :cond_6
    sget-object p2, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 134
    sget-object p2, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    sget-object p3, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {p2, v2, p1, p3, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float p2, p1, v1

    if-lez p2, :cond_7

    .line 141
    sget-object p2, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 142
    sget-object p2, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    rem-float/2addr p1, v1

    sget-object p3, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p2, v4, p1, p3, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 147
    sget-object p1, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    sget-object p2, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_7
    cmpg-float p1, v2, v4

    if-gez p1, :cond_8

    .line 149
    sget-object p1, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 150
    sget-object p1, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    add-float/2addr v2, v1

    sget-object p2, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v1, p2, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 155
    sget-object p1, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    sget-object p2, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 157
    :cond_8
    :goto_0
    sget-object p1, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 158
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void

    .line 97
    :cond_9
    :goto_1
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void
.end method

.method public static a(Landroid/graphics/Path;Lcom/coloros/anim/a/a/s;)V
    .locals 3
    .param p1    # Lcom/coloros/anim/a/a/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1075
    iget-boolean v0, p1, Lcom/coloros/anim/a/a/s;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2063
    :cond_0
    iget-object v0, p1, Lcom/coloros/anim/a/a/s;->c:Lcom/coloros/anim/a/b/a;

    .line 80
    check-cast v0, Lcom/coloros/anim/a/b/c;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->g()F

    move-result v0

    .line 2067
    iget-object v1, p1, Lcom/coloros/anim/a/a/s;->d:Lcom/coloros/anim/a/b/a;

    .line 81
    check-cast v1, Lcom/coloros/anim/a/b/c;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/c;->g()F

    move-result v1

    .line 2071
    iget-object p1, p1, Lcom/coloros/anim/a/a/s;->e:Lcom/coloros/anim/a/b/a;

    .line 82
    check-cast p1, Lcom/coloros/anim/a/b/c;

    invoke-virtual {p1}, Lcom/coloros/anim/a/b/c;->g()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr p1, v2

    .line 83
    invoke-static {p0, v0, v1, p1}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Path;FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 54
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p0

    .line 56
    throw p0

    :catch_1
    :cond_0
    return-void
.end method

.method public static a(III)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x1

    if-le p0, v1, :cond_1

    return v2

    :cond_1
    if-ge p1, v1, :cond_2

    return v0

    :cond_2
    if-le p1, v1, :cond_3

    return v2

    :cond_3
    if-ltz p2, :cond_4

    return v2

    :cond_4
    return v0
.end method
