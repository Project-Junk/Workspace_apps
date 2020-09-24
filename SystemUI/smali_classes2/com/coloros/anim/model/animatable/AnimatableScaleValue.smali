.class public Lcom/coloros/anim/model/animatable/AnimatableScaleValue;
.super Lcom/coloros/anim/model/animatable/BaseAnimatableValue;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/model/animatable/BaseAnimatableValue<",
        "Lcom/coloros/anim/value/ScaleXY;",
        "Lcom/coloros/anim/value/ScaleXY;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/coloros/anim/value/ScaleXY;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/coloros/anim/value/ScaleXY;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/coloros/anim/model/animatable/AnimatableScaleValue;-><init>(Lcom/coloros/anim/value/ScaleXY;)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/anim/value/ScaleXY;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/coloros/anim/model/animatable/BaseAnimatableValue;-><init>(Ljava/lang/Object;)V

    return-void
.end method

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

    .line 22
    invoke-direct {p0, p1}, Lcom/coloros/anim/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/coloros/anim/value/ScaleXY;",
            "Lcom/coloros/anim/value/ScaleXY;",
            ">;"
        }
    .end annotation

    .line 27
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableScaleValue create ScaleKeyframeAnimation, keyframes is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableScaleValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 30
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;

    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableScaleValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/coloros/anim/animation/keyframe/ScaleKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/coloros/anim/model/animatable/BaseAnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isStatic()Z
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/coloros/anim/model/animatable/BaseAnimatableValue;->isStatic()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/coloros/anim/model/animatable/BaseAnimatableValue;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
