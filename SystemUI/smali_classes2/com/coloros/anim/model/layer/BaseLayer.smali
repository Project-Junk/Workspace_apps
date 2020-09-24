.class public abstract Lcom/coloros/anim/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/coloros/anim/animation/content/DrawingContent;
.implements Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/coloros/anim/model/KeyPathElement;


# static fields
.field private static final CLIP_SAVE_FLAG:I = 0x2

.field private static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field private static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;>;"
        }
    .end annotation
.end field

.field final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field private final dstInPaint:Landroid/graphics/Paint;

.field private final dstOutPaint:Landroid/graphics/Paint;

.field final effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

.field final layerModel:Lcom/coloros/anim/model/layer/Layer;

.field private mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/coloros/anim/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lcom/coloros/anim/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/anim/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field final transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Lcom/coloros/anim/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coloros/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lcom/coloros/anim/animation/LPaint;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/coloros/anim/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Lcom/coloros/anim/animation/LPaint;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lcom/coloros/anim/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Lcom/coloros/anim/animation/LPaint;

    invoke-direct {v0, v1}, Lcom/coloros/anim/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Lcom/coloros/anim/animation/LPaint;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Lcom/coloros/anim/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 77
    iput-boolean v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->visible:Z

    .line 79
    iput-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    .line 80
    iput-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#draw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 82
    sget-boolean p1, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz p1, :cond_0

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseLayer::name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";layerModel.getMatteType() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getMatteType()Lcom/coloros/anim/model/layer/Layer$MatteType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getMatteType()Lcom/coloros/anim/model/layer/Layer$MatteType;

    move-result-object p1

    sget-object v0, Lcom/coloros/anim/model/layer/Layer$MatteType;->INVERT:Lcom/coloros/anim/model/layer/Layer$MatteType;

    if-ne p1, v0, :cond_1

    .line 87
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 92
    :goto_0
    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getTransform()Lcom/coloros/anim/model/animatable/AnimatableTransform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/anim/model/animatable/AnimatableTransform;->createAnimation()Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    .line 93
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 94
    sget-boolean p1, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz p1, :cond_3

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseLayer::layerModel.getMasks() ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 97
    :cond_3
    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 98
    new-instance p1, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {p2}, Lcom/coloros/anim/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    .line 99
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {p1}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 102
    invoke-virtual {p2, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_2

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {p1}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 105
    invoke-virtual {p0, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    .line 106
    invoke-virtual {p2, p0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_3

    .line 109
    :cond_5
    invoke-direct {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->setupInOutAnimations()V

    return-void
.end method

.method private applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/model/content/Mask;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/coloros/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-virtual {p4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 438
    iget-object p4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 439
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 440
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 441
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/model/content/Mask;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/coloros/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 478
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/coloros/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 479
    invoke-virtual {p4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 480
    iget-object p4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 481
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 482
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 483
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/model/content/Mask;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/coloros/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 446
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/coloros/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 447
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 448
    invoke-virtual {p4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 449
    iget-object p4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 450
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 451
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 452
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 453
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/model/content/Mask;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/coloros/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 489
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/coloros/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 490
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 491
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 492
    invoke-virtual {p4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 493
    iget-object p4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 494
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 495
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 496
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/model/content/Mask;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/coloros/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 466
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/coloros/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 467
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 468
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 469
    invoke-virtual {p4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 470
    iget-object p4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 471
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 472
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 10

    const-string v0, "Layer#saveLayer"

    .line 393
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/coloros/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 395
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 397
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/coloros/anim/model/content/Mask;

    .line 398
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 399
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 400
    sget-object v0, Lcom/coloros/anim/model/layer/BaseLayer$2;->$SwitchMap$com$coloros$anim$model$content$Mask$MaskMode:[I

    invoke-virtual {v7}, Lcom/coloros/anim/model/content/Mask;->getMaskMode()Lcom/coloros/anim/model/content/Mask$MaskMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/model/content/Mask$MaskMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 402
    :cond_0
    invoke-virtual {v7}, Lcom/coloros/anim/model/content/Mask;->isInverted()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 403
    invoke-direct/range {v4 .. v9}, Lcom/coloros/anim/model/layer/BaseLayer;->applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    :cond_1
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 405
    invoke-direct/range {v4 .. v9}, Lcom/coloros/anim/model/layer/BaseLayer;->applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    .line 422
    :cond_2
    invoke-virtual {v7}, Lcom/coloros/anim/model/content/Mask;->isInverted()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 423
    invoke-direct/range {v4 .. v9}, Lcom/coloros/anim/model/layer/BaseLayer;->applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    :cond_3
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 425
    invoke-direct/range {v4 .. v9}, Lcom/coloros/anim/model/layer/BaseLayer;->applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    .line 411
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x1000000

    .line 412
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 415
    :cond_5
    invoke-virtual {v7}, Lcom/coloros/anim/model/content/Mask;->isInverted()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 416
    invoke-direct/range {v4 .. v9}, Lcom/coloros/anim/model/layer/BaseLayer;->applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    :cond_6
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 418
    invoke-direct/range {v4 .. v9}, Lcom/coloros/anim/model/layer/BaseLayer;->applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    const-string p0, "Layer#restoreLayer"

    .line 430
    invoke-static {p0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 432
    invoke-static {p0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method private applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/coloros/anim/model/content/Mask;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/coloros/anim/model/content/Mask;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/coloros/anim/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 458
    invoke-virtual {p4}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 459
    iget-object p4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 460
    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 461
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private buildParentLayerListIfNeeded()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    if-nez v0, :cond_1

    .line 536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    return-void

    .line 540
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 541
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    :goto_0
    if-eqz v0, :cond_2

    .line 543
    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v0, v0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "Layer#clearLayer"

    .line 317
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    iget-object v8, p0, Lcom/coloros/anim/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 320
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method static forModel(Lcom/coloros/anim/model/layer/Layer;Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/EffectiveAnimationComposition;)Lcom/coloros/anim/model/layer/BaseLayer;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 115
    sget-object v0, Lcom/coloros/anim/model/layer/BaseLayer$2;->$SwitchMap$com$coloros$anim$model$layer$Layer$LayerType:[I

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getLayerType()Lcom/coloros/anim/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/anim/model/layer/Layer$LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layer type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getLayerType()Lcom/coloros/anim/model/layer/Layer$LayerType;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/anim/L;->warn(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 128
    :pswitch_0
    new-instance p2, Lcom/coloros/anim/model/layer/TextLayer;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/model/layer/TextLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    return-object p2

    .line 126
    :pswitch_1
    new-instance p2, Lcom/coloros/anim/model/layer/NullLayer;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/model/layer/NullLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    return-object p2

    .line 124
    :pswitch_2
    new-instance p2, Lcom/coloros/anim/model/layer/ImageLayer;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/model/layer/ImageLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    return-object p2

    .line 122
    :pswitch_3
    new-instance p2, Lcom/coloros/anim/model/layer/SolidLayer;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/model/layer/SolidLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    return-object p2

    .line 119
    :pswitch_4
    new-instance v0, Lcom/coloros/anim/model/layer/CompositionLayer;

    .line 120
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/coloros/anim/EffectiveAnimationComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/coloros/anim/model/layer/CompositionLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;Ljava/util/List;Lcom/coloros/anim/EffectiveAnimationComposition;)V

    return-object v0

    .line 117
    :pswitch_5
    new-instance p2, Lcom/coloros/anim/model/layer/ShapeLayer;

    invoke-direct {p2, p1, p0}, Lcom/coloros/anim/model/layer/ShapeLayer;-><init>(Lcom/coloros/anim/EffectiveAnimationDrawable;Lcom/coloros/anim/model/layer/Layer;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    .line 324
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 331
    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/model/content/Mask;

    .line 332
    iget-object v5, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v5}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    .line 333
    invoke-virtual {v5}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    .line 334
    iget-object v6, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 335
    iget-object v5, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 337
    sget-object v5, Lcom/coloros/anim/model/layer/BaseLayer$2;->$SwitchMap$com$coloros$anim$model$content$Mask$MaskMode:[I

    invoke-virtual {v4}, Lcom/coloros/anim/model/content/Mask;->getMaskMode()Lcom/coloros/anim/model/content/Mask$MaskMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/anim/model/content/Mask$MaskMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 344
    :cond_1
    invoke-virtual {v4}, Lcom/coloros/anim/model/content/Mask;->isInverted()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 348
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/coloros/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_3

    .line 353
    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/coloros/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 355
    :cond_3
    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/coloros/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 356
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/coloros/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/coloros/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 357
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/coloros/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/coloros/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 358
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lcom/coloros/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/coloros/anim/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 359
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 355
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    .line 365
    :cond_5
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 367
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    return-void
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 372
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getMatteType()Lcom/coloros/anim/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/coloros/anim/model/layer/Layer$MatteType;->INVERT:Lcom/coloros/anim/model/layer/Layer$MatteType;

    if-ne v0, v1, :cond_1

    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 383
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    iget-object v2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lcom/coloros/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 384
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 386
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private invalidateSelf()V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method private recordRenderTime(F)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->effectiveAnimationDrawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->getComposition()Lcom/coloros/anim/EffectiveAnimationComposition;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationComposition;->getPerformanceTracker()Lcom/coloros/anim/PerformanceTracker;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/anim/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    return-void
.end method

.method private saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 187
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p0, 0x1f

    goto :goto_0

    :cond_0
    const/16 p0, 0x13

    .line 190
    :goto_0
    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    :goto_1
    return-void
.end method

.method private setupInOutAnimations()V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;

    iget-object v2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    .line 161
    invoke-virtual {v2}, Lcom/coloros/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 162
    sget-boolean v2, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    .line 163
    :goto_0
    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v4}, Lcom/coloros/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseLayer::create InOutAnimations, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v5}, Lcom/coloros/anim/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/anim/value/Keyframe;

    invoke-virtual {v5}, Lcom/coloros/anim/value/Keyframe;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;->setIsDiscrete()V

    .line 168
    new-instance v2, Lcom/coloros/anim/model/layer/BaseLayer$1;

    invoke-direct {v2, p0, v0}, Lcom/coloros/anim/model/layer/BaseLayer$1;-><init>(Lcom/coloros/anim/model/layer/BaseLayer;Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;)V

    invoke-virtual {v0, v2}, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;->addUpdateListener(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 174
    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/FloatKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/coloros/anim/model/layer/BaseLayer;->setVisible(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/coloros/anim/model/layer/BaseLayer;->addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_2

    .line 177
    :cond_2
    invoke-virtual {p0, v1}, Lcom/coloros/anim/model/layer/BaseLayer;->setVisible(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0
    .param p1    # Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
    .locals 0
    .param p2    # Lcom/coloros/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 595
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 226
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 227
    iget-boolean v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->visible:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    const-string v0, "Layer#parentMatrix"

    .line 232
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 234
    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 235
    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 236
    iget-object v3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/anim/model/layer/BaseLayer;

    iget-object v4, v4, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 239
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 242
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 244
    invoke-static {v1}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 246
    invoke-static {v1}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 248
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    move-result p1

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " draw end time = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/L;->debug(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->recordRenderTime(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    .line 254
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/coloros/anim/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 264
    iget-object v3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, v3, p2}, Lcom/coloros/anim/model/layer/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 266
    iget-object v3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 267
    iget-object v3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v3, v4}, Lcom/coloros/anim/model/layer/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 269
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 271
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Layer#saveLayer"

    .line 272
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/coloros/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 274
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 277
    invoke-direct {p0, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 278
    invoke-static {v1}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 280
    invoke-static {v1}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 282
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    iget-object v1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/coloros/anim/model/layer/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 286
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_5

    const-string v1, "Layer#drawMatte"

    .line 287
    invoke-static {v1}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 288
    invoke-static {v0}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/coloros/anim/model/layer/BaseLayer;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 290
    invoke-static {v0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 291
    invoke-direct {p0, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/anim/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 294
    invoke-static {v2}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 296
    invoke-static {v2}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 297
    invoke-static {v1}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 300
    :cond_5
    invoke-static {v2}, Lcom/coloros/anim/L;->beginSection(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 302
    invoke-static {v2}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    .line 304
    :cond_6
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    move-result p1

    .line 305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " draw end,time = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/anim/L;->debug(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, p1}, Lcom/coloros/anim/model/layer/BaseLayer;->recordRenderTime(F)V

    return-void

    .line 228
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/anim/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    invoke-direct {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 209
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 212
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 214
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/anim/model/layer/BaseLayer;

    iget-object p3, p3, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p3}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    if-eqz p1, :cond_1

    .line 217
    iget-object p2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p0}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method getLayerModel()Lcom/coloros/anim/model/layer/Layer;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method hasMasksOnThisLayer()Z
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasMatteOnThisLayer()Z
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onValueChanged()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->invalidateSelf()V

    return-void
.end method

.method resolveChildKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V
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

    return-void
.end method

.method public resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V
    .locals 2
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

    .line 561
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_KEYPATH:Z

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLayer::resolveKeyPath()::this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; keyPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/anim/model/KeyPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/model/KeyPath;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 569
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/coloros/anim/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/coloros/anim/model/KeyPath;

    move-result-object p4

    .line 571
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_KEYPATH:Z

    if-eqz v0, :cond_2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLayer::resolveKeyPath()::name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 575
    :cond_2
    invoke-virtual {p4, p0}, Lcom/coloros/anim/model/KeyPath;->resolve(Lcom/coloros/anim/model/KeyPathElement;)Lcom/coloros/anim/model/KeyPath;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 580
    invoke-virtual {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/coloros/anim/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 581
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_KEYPATH:Z

    if-eqz v0, :cond_4

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseLayer::resolveKeyPath()::newDepth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 584
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/anim/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V

    :cond_5
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method setMatteLayer(Lcom/coloros/anim/model/layer/BaseLayer;)V
    .locals 0
    .param p1    # Lcom/coloros/anim/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    iput-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    return-void
.end method

.method setParentLayer(Lcom/coloros/anim/model/layer/BaseLayer;)V
    .locals 0
    .param p1    # Lcom/coloros/anim/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    iput-object p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->parentLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    return-void
.end method

.method setProgress(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 512
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->transform:Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/animation/keyframe/TransformKeyframeAnimation;->setProgress(F)V

    .line 513
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 514
    :goto_0
    iget-object v2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->mask:Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;

    invoke-virtual {v2}, Lcom/coloros/anim/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2, p1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    div-float/2addr p1, v0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, v0, Lcom/coloros/anim/model/layer/BaseLayer;->layerModel:Lcom/coloros/anim/model/layer/Layer;

    invoke-virtual {v0}, Lcom/coloros/anim/model/layer/Layer;->getTimeStretch()F

    move-result v0

    .line 524
    iget-object v2, p0, Lcom/coloros/anim/model/layer/BaseLayer;->matteLayer:Lcom/coloros/anim/model/layer/BaseLayer;

    mul-float/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/coloros/anim/model/layer/BaseLayer;->setProgress(F)V

    .line 526
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/coloros/anim/model/layer/BaseLayer;->visible:Z

    if-eq p1, v0, :cond_0

    .line 505
    iput-boolean p1, p0, Lcom/coloros/anim/model/layer/BaseLayer;->visible:Z

    .line 506
    invoke-direct {p0}, Lcom/coloros/anim/model/layer/BaseLayer;->invalidateSelf()V

    :cond_0
    return-void
.end method
