.class public Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;
.super Lcom/coloros/anim/animation/keyframe/KeyframeAnimation;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/animation/keyframe/KeyframeAnimation<",
        "Lcom/coloros/anim/value/ScaleXY;",
        ">;"
    }
.end annotation


# instance fields
.field private final scaleXY:Lcom/coloros/anim/value/ScaleXY;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "Lcom/coloros/anim/value/ScaleXY;",
            ">;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/coloros/anim/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 11
    new-instance p1, Lcom/coloros/anim/value/ScaleXY;

    invoke-direct {p1}, Lcom/coloros/anim/value/ScaleXY;-><init>()V

    iput-object p1, p0, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/coloros/anim/value/ScaleXY;

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coloros/anim/value/Keyframe;F)Lcom/coloros/anim/value/ScaleXY;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/Keyframe<",
            "Lcom/coloros/anim/value/ScaleXY;",
            ">;F)",
            "Lcom/coloros/anim/value/ScaleXY;"
        }
    .end annotation

    .line 19
    iget-object v0, p1, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/coloros/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p1, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/coloros/anim/value/ScaleXY;

    .line 23
    iget-object v1, p1, Lcom/coloros/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/coloros/anim/value/ScaleXY;

    .line 25
    iget-object v1, p0, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;->valueCallback:Lcom/coloros/anim/value/EffectiveValueCallback;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;->valueCallback:Lcom/coloros/anim/value/EffectiveValueCallback;

    iget v2, p1, Lcom/coloros/anim/value/Keyframe;->startFrame:F

    iget-object p1, p1, Lcom/coloros/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 29
    invoke-virtual {p0}, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v7

    invoke-virtual {p0}, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;->getProgress()F

    move-result v8

    move-object v4, v0

    move-object v5, v9

    move v6, p2

    .line 27
    invoke-virtual/range {v1 .. v8}, Lcom/coloros/anim/value/EffectiveValueCallback;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/value/ScaleXY;

    if-eqz p1, :cond_0

    return-object p1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/coloros/anim/value/ScaleXY;

    .line 36
    invoke-virtual {v0}, Lcom/coloros/anim/value/ScaleXY;->getScaleX()F

    move-result v1

    invoke-virtual {v9}, Lcom/coloros/anim/value/ScaleXY;->getScaleX()F

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v1

    .line 37
    invoke-virtual {v0}, Lcom/coloros/anim/value/ScaleXY;->getScaleY()F

    move-result v0

    invoke-virtual {v9}, Lcom/coloros/anim/value/ScaleXY;->getScaleY()F

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/coloros/anim/utils/MiscUtils;->lerp(FFF)F

    move-result p2

    .line 35
    invoke-virtual {p1, v1, p2}, Lcom/coloros/anim/value/ScaleXY;->set(FF)V

    .line 39
    iget-object p0, p0, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;->scaleXY:Lcom/coloros/anim/value/ScaleXY;

    return-object p0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic getValue(Lcom/coloros/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;->getValue(Lcom/coloros/anim/value/Keyframe;F)Lcom/coloros/anim/value/ScaleXY;

    move-result-object p0

    return-object p0
.end method
