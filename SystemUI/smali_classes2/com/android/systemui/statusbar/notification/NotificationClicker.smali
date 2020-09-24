.class public final Lcom/android/systemui/statusbar/notification/NotificationClicker;
.super Ljava/lang/Object;
.source "NotificationClicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationClicker"


# instance fields
.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 53
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-void
.end method

.method private isMenuVisible(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 122
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onClick$0(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setJustClicked(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 58
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const-string v1, "NotificationClicker"

    if-nez v0, :cond_0

    const-string p0, "NotificationClicker called on a view that is not a notification row."

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "NOTIFICATION_CLICK"

    invoke-interface {v0, v2, v3, p1, v4}, Lcom/android/systemui/statusbar/phone/ShadeController;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    .line 65
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "NotificationClicker called on an unclickable notification,"

    .line 68
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationClicker;->isMenuVisible(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->animateTranslateNotification(F)V

    return-void

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/NotificationClicker;->isMenuVisible(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->animateTranslateNotification(F)V

    return-void

    .line 79
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x1

    .line 86
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setJustClicked(Z)V

    .line 87
    new-instance v2, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationClicker$nu7GkRUU5fnNpaTPmGoBAs8FJoU;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationClicker$nu7GkRUU5fnNpaTPmGoBAs8FJoU;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-static {v2}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v2

    if-nez v2, :cond_5

    .line 90
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {v2}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    .line 95
    :cond_5
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v3

    const-class v4, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->needEncrypted(Ljava/lang/String;I)Z

    move-result v2

    .line 99
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 100
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v3

    const-class v4, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v3}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getDisablePullStatusBar()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    const/high16 p0, 0x40000

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    const-string p0, "Notification"

    const-string p1, "Notification--NotificationClicker performExpandClick"

    .line 103
    invoke-static {p0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_6
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 110
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v3

    const-string v4, "click"

    .line 109
    invoke-static {v1, v2, v4, v3}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->collectHandleNotificationEvent(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 117
    invoke-static {}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->getInstance()Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->dispatchOnClick(Z)V

    return-void
.end method

.method public register(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 129
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    .line 130
    iget-object v0, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    iget-object p2, p2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez p2, :cond_1

    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 134
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 132
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method
