.class public Lcom/coloros/anim/animation/keyframe/PointKeyframeAnimation;
.super Lcom/coloros/anim/animation/keyframe/KeyframeAnimation;
.source "PointKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/animation/keyframe/KeyframeAnimation<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/coloros/anim/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/animation/keyframe/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coloros/anim/value/Keyframe;F)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 18
    iget-object v0, p1, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/coloros/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p1, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 23
    iget-object v1, p1, Lcom/coloros/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/graphics/PointF;

    .line 25
    iget-object v1, p0, Lcom/coloros/anim/animation/keyframe/PointKeyframeAnimation;->valueCallback:Lcom/coloros/anim/value/EffectiveValueCallback;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/coloros/anim/animation/keyframe/PointKeyframeAnimation;->valueCallback:Lcom/coloros/anim/value/EffectiveValueCallback;

    iget v2, p1, Lcom/coloros/anim/value/Keyframe;->startFrame:F

    iget-object p1, p1, Lcom/coloros/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 28
    invoke-virtual {p0}, Lcom/coloros/anim/animation/keyframe/PointKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v7

    invoke-virtual {p0}, Lcom/coloros/anim/animation/keyframe/PointKeyframeAnimation;->getProgress()F

    move-result v8

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 27
    invoke-virtual/range {v1 .. v8}, Lcom/coloros/anim/value/EffectiveValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    return-object p1

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/animation/keyframe/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v9, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    mul-float/2addr p2, v3

    add-float/2addr v2, p2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 36
    iget-object p0, p0, Lcom/coloros/anim/animation/keyframe/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    return-object p0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getValue(Lcom/coloros/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/coloros/anim/value/Keyframe;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
