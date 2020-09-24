.class public Lcom/coloros/anim/animation/keyframe/PathKeyframe;
.super Lcom/coloros/anim/value/Keyframe;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/value/Keyframe<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pointKeyFrame:Lcom/coloros/anim/value/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationComposition;Lcom/coloros/anim/value/Keyframe;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            "Lcom/coloros/anim/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v2, p2, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    iget-object v3, p2, Lcom/coloros/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    iget-object v4, p2, Lcom/coloros/anim/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iget v5, p2, Lcom/coloros/anim/value/Keyframe;->startFrame:F

    iget-object v6, p2, Lcom/coloros/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/coloros/anim/value/Keyframe;-><init>(Lcom/coloros/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 20
    iput-object p2, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/coloros/anim/value/Keyframe;

    .line 21
    invoke-virtual {p0}, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->createPath()V

    return-void
.end method


# virtual methods
.method public createPath()V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/coloros/anim/value/Keyframe;

    iget-object v2, v2, Lcom/coloros/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/coloros/anim/value/Keyframe;

    iget-object v3, v3, Lcom/coloros/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/anim/utils/Utils;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    :cond_1
    return-void
.end method

.method getPath()Landroid/graphics/Path;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/coloros/anim/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    return-object p0
.end method
