.class public Lcom/coloros/systemui/notification/base/PanelViewBase;
.super Landroid/widget/FrameLayout;
.source "PanelViewBase.java"


# instance fields
.field protected mExpandedHeightTemp:F

.field protected mNotificationBottomTouchableArea:I

.field protected mTargetHeightForAnim:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/coloros/systemui/notification/base/PanelViewBase;->mExpandedHeightTemp:F

    .line 37
    iput p1, p0, Lcom/coloros/systemui/notification/base/PanelViewBase;->mTargetHeightForAnim:F

    return-void
.end method


# virtual methods
.method protected isInPanelBottomArea(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInterceptExpend()Z
    .locals 0

    .line 69
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result p0

    if-nez p0, :cond_1

    .line 70
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isAtoVersion()Z

    move-result p0

    if-nez p0, :cond_1

    .line 71
    invoke-static {}, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->getInstance()Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->isStatusBarExpandDisableMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isQsExpanded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public resetStowedState(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 46
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isShowingStow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->setShowingStow(Z)V

    .line 48
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 49
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p1, :cond_0

    .line 50
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hideStowedNotification()V

    :cond_0
    return-void
.end method
