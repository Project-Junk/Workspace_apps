.class abstract Lcom/coloros/anim/animation/keyframe/KeyframeAnimation;
.super Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
.source "KeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/coloros/anim/value/Keyframe<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-void
.end method
