.class public interface abstract Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;
.super Ljava/lang/Object;
.source "INavigationBarController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/viewcontroller/IController;


# virtual methods
.method public abstract dispatchPanelExpandChanged(Z)V
.end method

.method public abstract dispatchRotationChanged(I)V
.end method

.method public abstract dispatchSplitScreenChanged(Z)V
.end method

.method public abstract dispatchTopWindowChanged()V
.end method

.method public abstract init(Landroid/view/View;)V
.end method

.method public abstract onBarTransition(I)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDragStateChanged(Z)V
.end method

.method public abstract setGestureSideGuideBarController(Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;)V
.end method

.method public abstract setGestureUpGuideBarController(Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;)V
.end method

.method public abstract setVirtualKeyController(Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;)V
.end method

.method public abstract startGestureUpGuideBarAnimation(II)V
.end method

.method public abstract toggleVirtualKeyImmersive()V
.end method

.method public abstract updateNavBarVisibility(I)V
.end method

.method public abstract updateNavBarVisibility(ILjava/lang/String;)V
.end method
