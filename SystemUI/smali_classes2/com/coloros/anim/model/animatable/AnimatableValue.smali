.class public interface abstract Lcom/coloros/anim/model/animatable/AnimatableValue;
.super Ljava/lang/Object;
.source "AnimatableValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createAnimation()Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/anim/animation/keyframe/BaseKeyframeAnimation<",
            "TK;TA;>;"
        }
    .end annotation
.end method

.method public abstract getKeyframes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/anim/value/Keyframe<",
            "TK;>;>;"
        }
    .end annotation
.end method

.method public abstract isStatic()Z
.end method
