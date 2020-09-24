.class public Lcom/coloros/anim/animation/content/GradientStrokeContent;
.super Lcom/coloros/anim/animation/content/BaseStrokeContent;
.source "GradientStrokeContent.java"


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/coloros/anim/model/content/GradientColor;",
            "Lcom/coloros/anim/model/content/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private final endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final linearGradientCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final radialGradientCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/coloros/anim/model/content/GradientType;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/GradientStroke;)V
    .locals 11

    .line 39
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getCapType()Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 40
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getJoinType()Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getMiterLimit()F

    move-result v6

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getOpacity()Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    .line 41
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getWidth()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v8

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getLineDashPattern()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getDashOffset()Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 39
    invoke-direct/range {v1 .. v10}, Lcom/coloros/anim/animation/content/BaseStrokeContent;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/coloros/anim/model/animatable/AnimatableIntegerValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)V

    .line 27
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->linearGradientCache:Landroid/util/LongSparseArray;

    .line 28
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->radialGradientCache:Landroid/util/LongSparseArray;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    .line 43
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getGradientType()Lcom/coloros/anim/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->type:Lcom/coloros/anim/model/content/GradientType;

    .line 45
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->hidden:Z

    .line 46
    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getComposition()Lcom/coloros/anim/EffectiveAnimationComposition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getDuration()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->cacheSteps:I

    .line 48
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getGradientColor()Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 49
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 52
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getStartPoint()Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 53
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 54
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 56
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientStroke;->getEndPoint()Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 58
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    return-void
.end method

.method private getGradientHash()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v1

    iget v2, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v2

    iget p0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    const/16 v2, 0x20f

    mul-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, v1

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, p0

    :cond_2
    return v2
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 14

    .line 82
    invoke-direct {p0}, Lcom/coloros/anim/animation/content/GradientStrokeContent;->getGradientHash()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->linearGradientCache:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 88
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 89
    iget-object v4, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/model/content/GradientColor;

    .line 90
    invoke-virtual {v4}, Lcom/coloros/anim/model/content/GradientColor;->getColors()[I

    move-result-object v10

    .line 91
    invoke-virtual {v4}, Lcom/coloros/anim/model/content/GradientColor;->getPositions()[F

    move-result-object v11

    .line 92
    iget-object v4, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 93
    iget-object v5, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    float-to-int v0, v5

    .line 94
    iget-object v5, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 95
    iget-object v7, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v1

    float-to-int v1, v7

    .line 96
    new-instance v13, Landroid/graphics/LinearGradient;

    int-to-float v6, v4

    int-to-float v7, v0

    int-to-float v8, v5

    int-to-float v9, v1

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 97
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->linearGradientCache:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, v3, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v13
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 12

    .line 102
    invoke-direct {p0}, Lcom/coloros/anim/animation/content/GradientStrokeContent;->getGradientHash()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->radialGradientCache:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 108
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 109
    iget-object v4, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/model/content/GradientColor;

    .line 110
    invoke-virtual {v4}, Lcom/coloros/anim/model/content/GradientColor;->getColors()[I

    move-result-object v9

    .line 111
    invoke-virtual {v4}, Lcom/coloros/anim/model/content/GradientColor;->getPositions()[F

    move-result-object v10

    .line 112
    iget-object v4, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 113
    iget-object v5, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    float-to-int v0, v5

    .line 114
    iget-object v5, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 115
    iget-object v7, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v1

    float-to-int v1, v7

    sub-int/2addr v5, v4

    int-to-double v5, v5

    sub-int/2addr v1, v0

    int-to-double v7, v1

    .line 116
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v8, v5

    .line 117
    new-instance v1, Landroid/graphics/RadialGradient;

    int-to-float v6, v4

    int-to-float v7, v0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 118
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->radialGradientCache:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/coloros/anim/animation/content/GradientStrokeContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 67
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->type:Lcom/coloros/anim/model/content/GradientType;

    sget-object v1, Lcom/coloros/anim/model/content/GradientType;->LINEAR:Lcom/coloros/anim/model/content/GradientType;

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/coloros/anim/animation/content/GradientStrokeContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/coloros/anim/animation/content/GradientStrokeContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 73
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    return-object p0
.end method
