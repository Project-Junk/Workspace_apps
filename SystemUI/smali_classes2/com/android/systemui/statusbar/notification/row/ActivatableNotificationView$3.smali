.class Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startActivateAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 443
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    const v0, 0x7f080de8

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 445
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->updateBackground()V

    return-void
.end method
