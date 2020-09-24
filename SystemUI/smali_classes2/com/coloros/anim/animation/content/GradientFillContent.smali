.class public Lcom/coloros/anim/animation/content/GradientFillContent;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Lcom/coloros/anim/animation/content/DrawingContent;
.implements Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/coloros/anim/animation/content/KeyPathElementContent;


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

.field private colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

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

.field private final layer:Lcom/coloros/anim/model/layer/BaseLayer;

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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final radialGradientCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final shaderMatrix:Landroid/graphics/Matrix;

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
.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/model/content/GradientFill;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->linearGradientCache:Landroid/util/LongSparseArray;

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->radialGradientCache:Landroid/util/LongSparseArray;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 51
    new-instance v0, Lcom/coloros/anim/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coloros/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 65
    iput-object p2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->layer:Lcom/coloros/anim/model/layer/BaseLayer;

    .line 66
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientFill;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientFill;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->hidden:Z

    .line 68
    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    .line 69
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientFill;->getGradientType()Lcom/coloros/anim/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->type:Lcom/coloros/anim/model/content/GradientType;

    .line 70
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 71
    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getComposition()Lcom/coloros/anim/EffectiveAnimationComposition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getDuration()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->cacheSteps:I

    .line 73
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientFill;->getGradientColor()Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 74
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 75
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 77
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientFill;->getOpacity()Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 81
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientFill;->getStartPoint()Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 82
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    invoke-virtual {p3}, Lcom/coloros/anim/model/content/GradientFill;->getEndPoint()Lcom/coloros/anim/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatablePointValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 86
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 87
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    return-void
.end method

.method private getGradientHash()I
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v1

    iget v2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 205
    iget-object v2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v2

    iget p0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->cacheSteps:I

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
    .locals 13

    .line 162
    invoke-direct {p0}, Lcom/coloros/anim/animation/content/GradientFillContent;->getGradientHash()I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->linearGradientCache:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 168
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 169
    iget-object v4, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/model/content/GradientColor;

    .line 170
    invoke-virtual {v4}, Lcom/coloros/anim/model/content/GradientColor;->getColors()[I

    move-result-object v10

    .line 171
    invoke-virtual {v4}, Lcom/coloros/anim/model/content/GradientColor;->getPositions()[F

    move-result-object v11

    .line 172
    new-instance v4, Landroid/graphics/LinearGradient;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 174
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->linearGradientCache:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v4
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 12

    .line 179
    invoke-direct {p0}, Lcom/coloros/anim/animation/content/GradientFillContent;->getGradientHash()I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->radialGradientCache:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->startPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 185
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->endPointAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 186
    iget-object v4, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/model/content/GradientColor;

    .line 187
    invoke-virtual {v4}, Lcom/coloros/anim/model/content/GradientColor;->getColors()[I

    move-result-object v9

    .line 188
    invoke-virtual {v4}, Lcom/coloros/anim/model/content/GradientColor;->getPositions()[F

    move-result-object v10

    .line 189
    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 190
    iget v7, v0, Landroid/graphics/PointF;->y:F

    .line 191
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 192
    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v6

    float-to-double v4, v0

    sub-float/2addr v1, v7

    float-to-double v0, v1

    .line 193
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, 0x3a83126f    # 0.001f

    :cond_1
    move v8, v0

    .line 197
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 198
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->radialGradientCache:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
    .locals 1
    .param p2    # Lcom/coloros/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 232
    :cond_0
    new-instance p1, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 234
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 235
    iget-object p1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->layer:Lcom/coloros/anim/model/layer/BaseLayer;

    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 107
    iget-boolean v0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GradientFillContent#draw"

    .line 110
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    move v2, v1

    .line 112
    :goto_0
    iget-object v3, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v4}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 119
    iget-object v2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->type:Lcom/coloros/anim/model/content/GradientType;

    sget-object v3, Lcom/coloros/anim/model/content/GradientType;->LINEAR:Lcom/coloros/anim/model/content/GradientType;

    if-ne v2, v3, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/coloros/anim/animation/content/GradientFillContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/coloros/anim/animation/content/GradientFillContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v2

    .line 124
    :goto_1
    iget-object v3, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 125
    iget-object p2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 126
    iget-object p2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 128
    iget-object p2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3
    int-to-float p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    .line 132
    iget-object v2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->opacityAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 133
    iget-object p3, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lcom/coloros/anim/utils/MiscUtils;->clamp(III)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    iget-object p2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 141
    iget-object p3, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v2}, Lcom/coloros/anim/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 148
    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public onValueChanged()V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method public resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/KeyPath;",
            ">;",
            "Lcom/coloros/anim/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 222
    invoke-static {p1, p2, p3, p4, p0}, Lcom/coloros/anim/utils/MiscUtils;->resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;Lcom/coloros/anim/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 97
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 98
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/animation/content/Content;

    .line 99
    instance-of v1, v0, Lcom/coloros/anim/animation/content/PathContent;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/coloros/anim/animation/content/GradientFillContent;->paths:Ljava/util/List;

    check-cast v0, Lcom/coloros/anim/animation/content/PathContent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
