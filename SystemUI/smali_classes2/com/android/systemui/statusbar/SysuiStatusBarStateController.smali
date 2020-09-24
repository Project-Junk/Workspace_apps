.class public interface abstract Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
.super Ljava/lang/Object;
.source "SysuiStatusBarStateController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;,
        Lcom/android/systemui/statusbar/SysuiStatusBarStateController$SbStateListenerRank;
    }
.end annotation


# static fields
.field public static final RANK_SHELF:I = 0x3

.field public static final RANK_STACK_SCROLLER:I = 0x2

.field public static final RANK_STATUS_BAR:I = 0x0

.field public static final RANK_STATUS_BAR_WINDOW_CONTROLLER:I = 0x1


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract fromShadeLocked()Z
.end method

.method public abstract getInterpolatedDozeAmount()F
.end method

.method public abstract goingToFullShade()Z
.end method

.method public abstract isKeyguardRequested()Z
.end method

.method public abstract leaveOpenOnKeyguardHide()Z
.end method

.method public abstract setBouncerShowing(Z)V
.end method

.method public abstract setDozeAmount(FZ)V
.end method

.method public abstract setIsDozing(Z)Z
.end method

.method public abstract setKeyguardRequested(Z)V
.end method

.method public abstract setLeaveOpenOnKeyguardHide(Z)V
.end method

.method public abstract setQsExpandedStatus(Z)V
.end method

.method public abstract setState(I)Z
.end method