.class public Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;
.super Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;
.source "ColorNotificationSwipeHelper.java"


# static fields
.field public static final SLIDE_DELETE_NOTIFICATION_SWITCH_STATE:Ljava/lang/String; = "default_slide_notification"

.field private static final SWIPE_MENU_TIMING:J = 0xc8L


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;-><init>(ILcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)V

    .line 35
    iput-object p3, p0, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleSwipeFromClosedState(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 9

    .line 76
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 77
    invoke-interface {p4, p3}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isTowardsMenu(F)Z

    move-result v1

    .line 78
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->getEscapeVelocity()F

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 80
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    .line 81
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->canBeDismissed()Z

    move-result v7

    if-nez v7, :cond_1

    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v5, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v5, v3

    .line 86
    :goto_4
    invoke-virtual {p0, p4}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->swipedEnoughToShowMenu(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_5

    :cond_5
    move v5, v4

    :goto_5
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_6

    :cond_6
    move v0, v4

    .line 89
    :goto_6
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldShowGutsOnSnapOpen()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->mIsExpanded:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->mPulsing:Z

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    move v2, v4

    goto :goto_8

    :cond_8
    :goto_7
    move v2, v3

    :goto_8
    if-nez v5, :cond_a

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    move v0, v4

    goto :goto_a

    :cond_a
    :goto_9
    move v0, v3

    .line 93
    :goto_a
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    move-result v2

    .line 95
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move v3, v4

    :goto_b
    if-nez v6, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    if-eqz v2, :cond_d

    .line 96
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->mIsQsExpanded:Z

    if-nez v0, :cond_d

    .line 99
    invoke-virtual {p0, p2, v2, p3}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->snapOpen(Landroid/view/View;IF)V

    .line 100
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapOpen()V

    goto :goto_c

    .line 103
    :cond_d
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-nez v0, :cond_e

    .line 104
    invoke-virtual {p0, p2, p3}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 105
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    goto :goto_c

    .line 107
    :cond_e
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    if-nez v1, :cond_f

    .line 108
    invoke-virtual {p0, p2, p3}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    .line 109
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onDismiss()V

    goto :goto_c

    .line 111
    :cond_f
    invoke-virtual {p0, p2, p3}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 112
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    :goto_c
    return-void
.end method

.method public handleSwipeFromOpenState(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 1

    .line 119
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 122
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isWithinSnapMenuThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 126
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapOpen()V

    .line 127
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    move-result p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->snapOpen(Landroid/view/View;IF)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0, p2, p3}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 132
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 134
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->shouldSnapBack()Z

    move-result p1

    if-nez p1, :cond_2

    .line 136
    invoke-virtual {p0, p2, p3}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->dismiss(Landroid/view/View;F)V

    .line 137
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onDismiss()V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->snapClosed(Landroid/view/View;F)V

    .line 140
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onSnapClosed()V

    :goto_0
    return-void
.end method

.method public handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 6

    .line 43
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-nez v0, :cond_5

    .line 47
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const-string v5, "default_slide_notification"

    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    cmpg-float v4, p4, v3

    if-ltz v4, :cond_1

    :cond_0
    if-ne v0, v2, :cond_5

    cmpg-float v0, p4, v3

    if-gez v0, :cond_5

    :cond_1
    return v1

    .line 56
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_3

    cmpl-float v4, p4, v3

    if-gtz v4, :cond_4

    :cond_3
    if-ne v0, v2, :cond_5

    cmpl-float v0, p4, v3

    if-lez v0, :cond_5

    :cond_4
    return v1

    .line 64
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_6

    cmpl-float p4, p4, v3

    if-eqz p4, :cond_6

    .line 66
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTouchEnd()V

    .line 67
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coloros/systemui/notification/helper/ColorNotificationSwipeHelper;->handleMenuRowSwipe(Landroid/view/MotionEvent;Landroid/view/View;FLcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    return v2

    :cond_6
    return v1
.end method
