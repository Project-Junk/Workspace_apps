.class public Lcom/coloros/anim/model/layer/ImageLayer;
.super Lcom/coloros/anim/model/layer/BaseLayer;
.source "ImageLayer.java"


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

.field private final dst:Landroid/graphics/Rect;

.field private final paint:Landroid/graphics/Paint;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    .line 25
    new-instance p1, Lcom/coloros/anim/animation/LPaint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/coloros/anim/animation/LPaint;-><init>(I)V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 27
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/coloros/anim/model/layer/ImageLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object p0, p0, Lcom/coloros/anim/model/layer/ImageLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
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

    .line 75
    invoke-super {p0, p1, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V

    .line 76
    sget-object v0, Lcom/coloros/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/coloros/anim/model/layer/ImageLayer;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p1, p2}, Lcom/coloros/anim/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/coloros/anim/value/EffectiveValueCallback;)V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/ImageLayer;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    :cond_1
    :goto_0
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Lcom/coloros/anim/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v1

    const-string v2, "ImageLayer#draw"

    .line 42
    invoke-static {v2}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/coloros/anim/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    iget-object p3, p0, Lcom/coloros/anim/model/layer/ImageLayer;->colorFilterAnimation:Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p3, :cond_1

    .line 45
    iget-object v3, p0, Lcom/coloros/anim/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 49
    iget-object p2, p0, Lcom/coloros/anim/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4, p3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    iget-object p2, p0, Lcom/coloros/anim/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p2, v4, v4, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    iget-object p2, p0, Lcom/coloros/anim/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/coloros/anim/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 53
    invoke-static {v2}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    :cond_2
    :goto_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 59
    invoke-direct {p0}, Lcom/coloros/anim/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v0

    mul-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lcom/coloros/anim/utils/Utils;->dpScale()F

    move-result v0

    mul-float/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    iget-object p0, p0, Lcom/coloros/anim/model/layer/ImageLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method
