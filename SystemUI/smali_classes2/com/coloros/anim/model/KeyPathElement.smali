.class public interface abstract Lcom/coloros/anim/model/KeyPathElement;
.super Ljava/lang/Object;
.source "KeyPathElement.java"


# virtual methods
.method public abstract addValueCallback(Ljava/lang/Object;Lcom/coloros/anim/value/EffectiveValueCallback;)V
    .param p2    # Lcom/coloros/anim/value/EffectiveValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coloros/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract resolveKeyPath(Lcom/coloros/anim/model/KeyPath;ILjava/util/List;Lcom/coloros/anim/model/KeyPath;)V
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
.end method
