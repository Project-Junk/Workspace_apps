.class public final Lcom/coloros/anim/f/g;
.super Ljava/lang/Object;


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

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/coloros/anim/f/g;->d:[F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/coloros/anim/f/g;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/coloros/anim/f/g;->f:F

    return-void
.end method

.method public static a()F
    .locals 2

    sget v0, Lcom/coloros/anim/f/g;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/coloros/anim/f/g;->f:F

    :cond_0
    sget v0, Lcom/coloros/anim/f/g;->f:F

    return v0
.end method

.method public static a(Landroid/graphics/Matrix;)F
    .locals 6

    sget-object v0, Lcom/coloros/anim/f/g;->d:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v0, Lcom/coloros/anim/f/g;->d:[F

    const/4 v3, 0x1

    aput v1, v0, v3

    sget-object v0, Lcom/coloros/anim/f/g;->d:[F

    sget v1, Lcom/coloros/anim/f/g;->e:F

    const/4 v4, 0x2

    aput v1, v0, v4

    sget-object v0, Lcom/coloros/anim/f/g;->d:[F

    sget v1, Lcom/coloros/anim/f/g;->e:F

    const/4 v5, 0x3

    aput v1, v0, v5

    sget-object v0, Lcom/coloros/anim/f/g;->d:[F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object p0, Lcom/coloros/anim/f/g;->d:[F

    aget p0, p0, v4

    sget-object v0, Lcom/coloros/anim/f/g;->d:[F

    aget v0, v0, v2

    sub-float/2addr p0, v0

    sget-object v0, Lcom/coloros/anim/f/g;->d:[F

    aget v0, v0, v5

    sget-object v1, Lcom/coloros/anim/f/g;->d:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    float-to-double v1, p0

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

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

    const/16 v1, 0x20f

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int p0, v1

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

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

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

    :cond_1
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v7
.end method

.method public static a(Landroid/graphics/Path;FFF)V
    .locals 6

    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    sget-object v0, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    cmpl-float v2, p2, v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const-string p0, "applyTrimPathIfNeeded"

    invoke-static {p0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    return-void

    :cond_1
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_0

    sub-float v2, p2, p1

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v4

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr p3, v0

    add-float/2addr v1, p3

    add-float/2addr p1, p3

    cmpl-float p2, v1, v0

    if-ltz p2, :cond_3

    cmpl-float p2, p1, v0

    if-ltz p2, :cond_3

    invoke-static {v1, v0}, Lcom/coloros/anim/f/f;->a(FF)I

    move-result p2

    int-to-float v1, p2

    invoke-static {p1, v0}, Lcom/coloros/anim/f/f;->a(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_3
    cmpg-float p2, v1, v3

    if-gez p2, :cond_4

    invoke-static {v1, v0}, Lcom/coloros/anim/f/f;->a(FF)I

    move-result p2

    int-to-float v1, p2

    :cond_4
    cmpg-float p2, p1, v3

    if-gez p2, :cond_5

    invoke-static {p1, v0}, Lcom/coloros/anim/f/f;->a(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_5
    cmpl-float p2, v1, p1

    if-nez p2, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    goto :goto_0

    :cond_6
    if-ltz p2, :cond_7

    sub-float/2addr v1, v0

    :cond_7
    sget-object p2, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    sget-object p2, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    sget-object p3, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, p1, p3, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float p2, p1, v0

    if-lez p2, :cond_8

    sget-object p2, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    sget-object p2, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    rem-float/2addr p1, v0

    sget-object p3, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p2, v3, p1, p3, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_1
    sget-object p1, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    sget-object p2, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_2

    :cond_8
    cmpg-float p1, v1, v3

    if-gez p1, :cond_9

    sget-object p1, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    sget-object p1, Lcom/coloros/anim/f/g;->a:Landroid/graphics/PathMeasure;

    add-float/2addr v1, v0

    sget-object p2, Lcom/coloros/anim/f/g;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_1

    :cond_9
    :goto_2
    sget-object p1, Lcom/coloros/anim/f/g;->b:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/graphics/Path;Lcom/coloros/anim/a/a/s;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/anim/a/a/s;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/anim/a/a/s;->d()Lcom/coloros/anim/a/b/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/a/b/c;

    invoke-virtual {v0}, Lcom/coloros/anim/a/b/c;->i()F

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/anim/a/a/s;->e()Lcom/coloros/anim/a/b/a;

    move-result-object v1

    check-cast v1, Lcom/coloros/anim/a/b/c;

    invoke-virtual {v1}, Lcom/coloros/anim/a/b/c;->i()F

    move-result v1

    invoke-virtual {p1}, Lcom/coloros/anim/a/a/s;->f()Lcom/coloros/anim/a/b/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/a/b/c;

    invoke-virtual {p1}, Lcom/coloros/anim/a/b/c;->i()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Lcom/coloros/anim/f/g;->a(Landroid/graphics/Path;FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static a(IIIIII)Z
    .locals 2

    const/4 v0, 0x0

    if-ge p0, p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p0, p3, :cond_1

    return v1

    :cond_1
    if-ge p1, p4, :cond_2

    return v0

    :cond_2
    if-le p1, p4, :cond_3

    return v1

    :cond_3
    if-lt p2, p5, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method
