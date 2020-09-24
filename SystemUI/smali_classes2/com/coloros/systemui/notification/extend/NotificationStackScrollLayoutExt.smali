.class public Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayoutExt.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public disableDragOnKeyGuard(Landroid/view/View;Lcom/android/systemui/statusbar/phone/ShadeController;ZLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 2

    .line 56
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getDisablePullStatusBar()Z

    move-result v0

    if-eqz p3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0, p4}, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;->hasKeyguardNotification(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 58
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez p3, :cond_3

    .line 61
    :cond_2
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_3

    .line 62
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 p0, 0x1

    .line 63
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    :cond_3
    return-void
.end method

.method public hasKeyguardNotification(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z
    .locals 5

    .line 37
    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 38
    iget-object p1, p0, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 43
    iget-object v2, p0, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 44
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v3

    .line 45
    instance-of v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_3

    .line 46
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hidden:Z

    if-nez v2, :cond_3

    iget-boolean v2, v3, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->gone:Z

    if-nez v2, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method
