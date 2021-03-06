.class public Lcom/coloros/anim/animation/keyframe/GradientColorKeyframeAnimation;
.super Lcom/coloros/anim/animation/keyframe/KeyframeAnimation;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/animation/keyframe/KeyframeAnimation<",
        "Lcom/coloros/anim/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/coloros/anim/model/content/GradientColor;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "Lcom/coloros/anim/model/content/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/coloros/anim/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/anim/value/Keyframe;

    iget-object p1, p1, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/anim/model/content/GradientColor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/anim/model/content/GradientColor;->getSize()I

    move-result v0

    .line 15
    :goto_0
    new-instance p1, Lcom/coloros/anim/model/content/GradientColor;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lcom/coloros/anim/model/content/GradientColor;-><init>([F[I)V

    iput-object p1, p0, Lcom/coloros/anim/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/coloros/anim/model/content/GradientColor;

    return-void
.end method


# virtual methods
.method getValue(Lcom/coloros/anim/value/Keyframe;F)Lcom/coloros/anim/model/content/GradientColor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/Keyframe<",
            "Lcom/coloros/anim/model/content/GradientColor;",
            ">;F)",
            "Lcom/coloros/anim/model/content/GradientColor;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/coloros/anim/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/coloros/anim/model/content/GradientColor;

    iget-object v1, p1, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/coloros/anim/model/content/GradientColor;

    iget-object p1, p1, Lcom/coloros/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/anim/model/content/GradientColor;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/anim/model/content/GradientColor;->lerp(Lcom/coloros/anim/model/content/GradientColor;Lcom/coloros/anim/model/content/GradientColor;F)V

    .line 21
    iget-object p0, p0, Lcom/coloros/anim/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/coloros/anim/model/content/GradientColor;

    return-object p0
.end method

.method bridge synthetic getValue(Lcom/coloros/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/animation/keyframe/GradientColorKeyframeAnimation;->getValue(Lcom/coloros/anim/value/Keyframe;F)Lcom/coloros/anim/model/content/GradientColor;

    move-result-object p0

    return-object p0
.end method
