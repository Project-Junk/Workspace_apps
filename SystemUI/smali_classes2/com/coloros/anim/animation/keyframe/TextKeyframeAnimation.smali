.class public Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;
.super Lcom/coloros/anim/animation/keyframe/KeyframeAnimation;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/anim/animation/keyframe/KeyframeAnimation<",
        "Lcom/coloros/anim/model/DocumentData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "Lcom/coloros/anim/model/DocumentData;",
            ">;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/coloros/anim/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method getValue(Lcom/coloros/anim/value/Keyframe;F)Lcom/coloros/anim/model/DocumentData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/anim/value/Keyframe<",
            "Lcom/coloros/anim/model/DocumentData;",
            ">;F)",
            "Lcom/coloros/anim/model/DocumentData;"
        }
    .end annotation

    .line 15
    iget-object p0, p1, Lcom/coloros/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p0, Lcom/coloros/anim/model/DocumentData;

    return-object p0
.end method

.method bridge synthetic getValue(Lcom/coloros/anim/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/coloros/anim/animation/keyframe/TextKeyframeAnimation;->getValue(Lcom/coloros/anim/value/Keyframe;F)Lcom/coloros/anim/model/DocumentData;

    move-result-object p0

    return-object p0
.end method
