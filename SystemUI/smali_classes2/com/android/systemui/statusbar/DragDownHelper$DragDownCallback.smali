.class public interface abstract Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.super Ljava/lang/Object;
.source "DragDownHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DragDownHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragDownCallback"
.end annotation


# virtual methods
.method public hasLockShowNotification()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isFalsingCheckNeeded()Z
.end method

.method public isQsExpanded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTouchOnNotificationArea(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onCrossedThreshold(Z)V
.end method

.method public abstract onDragDownReset()V
.end method

.method public abstract onDraggedDown(Landroid/view/View;I)Z
.end method

.method public abstract onTouchSlopExceeded()V
.end method

.method public abstract setEmptyDragAmount(F)V
.end method
