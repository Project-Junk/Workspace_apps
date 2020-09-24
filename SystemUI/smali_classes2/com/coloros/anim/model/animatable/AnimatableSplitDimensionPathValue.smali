.class public Lcom/coloros/anim/model/animatable/AnimatableSplitDimensionPathValue;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

# interfaces
.implements Lcom/coloros/anim/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/anim/model/animatable/AnimatableValue<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final animatableXDimension:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

.field private final animatableYDimension:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/coloros/anim/model/animatable/AnimatableFloatValue;Lcom/coloros/anim/model/animatable/AnimatableFloatValue;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/coloros/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 20
    iput-object p2, p0, Lcom/coloros/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 35
    sget-boolean v0, Lcom/coloros/anim/utils/ColorLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_0

    const-string v0, "AnimatableSplitDimensionPathValue create SplitDimensionPathKeyframeAnimation."

    .line 36
    invoke-static {v0}, Lcom/coloros/anim/utils/ColorLog;->i(Ljava/lang/String;)V

    .line 38
    :cond_0
    new-instance v0, Lcom/coloros/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    iget-object v1, p0, Lcom/coloros/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    .line 39
    invoke-virtual {v1}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/coloros/anim/animation/keyframe/SplitDimensionPathKeyframeAnimation;-><init>(Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 25
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStatic()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/coloros/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/anim/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/coloros/anim/model/animatable/AnimatableFloatValue;

    invoke-virtual {p0}, Lcom/coloros/anim/model/animatable/AnimatableFloatValue;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
