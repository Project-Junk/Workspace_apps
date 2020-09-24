.class public Lcom/coloros/anim/model/layer/SolidLayer;
.super Lcom/coloros/anim/model/layer/BaseLayer;
.source "SolidLayer.java"


# instance fields
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

.field private final layerModel:Lcom/coloros/anim/model/layer/Layer;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final points:[F

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    .line 22
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 23
    new-instance p1, Lcom/coloros/anim/animation/LPaint;

    invoke-direct {p1}, Lcom/coloros/anim/animation/LPaint;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x8

    .line 24
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    .line 25
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 32
    iput-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    .line 34
    iget-object p1, p0, Lcom/coloros/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    iget-object p1, p0, Lcom/coloros/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object p0, p0, Lcom/coloros/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getSolidColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
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

    .line 89
    invoke-super {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    .line 90
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/coloros/anim/model/layer/SolidLayer;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/SolidLayer;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    :cond_1
    :goto_0
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 10

    .line 41
    iget-object v0, p0, Lcom/coloros/anim/model/layer/SolidLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getSolidColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "SolidLayer#draw"

    .line 45
    invoke-static {v1}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0x64

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    int-to-float p3, p3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr p3, v3

    int-to-float v0, v0

    div-float/2addr v0, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    mul-float/2addr p3, v0

    mul-float/2addr p3, v3

    float-to-int p3, p3

    .line 49
    iget-object v0, p0, Lcom/coloros/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    iget-object v0, p0, Lcom/coloros/anim/model/layer/SolidLayer;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2

    .line 51
    iget-object v2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    if-lez p3, :cond_3

    .line 54
    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput v2, p3, v0

    const/4 v3, 0x1

    .line 55
    aput v2, p3, v3

    .line 56
    iget-object v4, p0, Lcom/coloros/anim/model/layer/SolidLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v4}, Lcom/coloros/anim/model/layer/Layer;->getSolidWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    aput v4, p3, v5

    .line 57
    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    const/4 v4, 0x3

    aput v2, p3, v4

    .line 58
    iget-object v6, p0, Lcom/coloros/anim/model/layer/SolidLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v6}, Lcom/coloros/anim/model/layer/Layer;->getSolidWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x4

    aput v6, p3, v7

    .line 59
    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    iget-object v6, p0, Lcom/coloros/anim/model/layer/SolidLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v6}, Lcom/coloros/anim/model/layer/Layer;->getSolidHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x5

    aput v6, p3, v8

    .line 60
    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    const/4 v6, 0x6

    aput v2, p3, v6

    .line 61
    iget-object v2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/Layer;->getSolidHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v9, 0x7

    aput v2, p3, v9

    .line 65
    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 66
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 67
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    aget v2, p3, v0

    aget p3, p3, v3

    invoke-virtual {p2, v2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    aget v2, p3, v5

    aget p3, p3, v4

    invoke-virtual {p2, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    aget v2, p3, v7

    aget p3, p3, v8

    invoke-virtual {p2, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    aget v2, p3, v6

    aget p3, p3, v9

    invoke-virtual {p2, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->points:[F

    aget v0, p3, v0

    aget p3, p3, v3

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 73
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    :cond_3
    invoke-static {v1}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 81
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {p3}, Lcom/coloros/anim/model/layer/Layer;->getSolidWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/coloros/anim/model/layer/SolidLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getSolidHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    iget-object p2, p0, Lcom/coloros/anim/model/layer/SolidLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/coloros/anim/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 83
    iget-object p0, p0, Lcom/coloros/anim/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
