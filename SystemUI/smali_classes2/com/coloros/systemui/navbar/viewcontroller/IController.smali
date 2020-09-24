.class public interface abstract Lcom/coloros/systemui/navbar/viewcontroller/IController;
.super Ljava/lang/Object;
.source "IController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;
.end method

.method public abstract getView()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onNavStateChanged()V
.end method

.method public abstract onPanelExpandChanged(Z)V
.end method

.method public abstract onRotationChanged(I)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract setVisible(Z)V
.end method
