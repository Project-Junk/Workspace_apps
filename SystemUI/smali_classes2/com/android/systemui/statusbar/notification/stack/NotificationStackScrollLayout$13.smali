.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 6830
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPluginMenuItemsCountForHoldingView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)I
    .locals 1

    .line 6990
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 6995
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    .line 6990
    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 0

    .line 7012
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public canChildBeDismissedInDirection(Landroid/view/View;Z)Z
    .locals 5

    .line 7024
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7028
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "default_slide_notification"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v2

    .line 7032
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public canChildBeDragged(Landroid/view/View;)Z
    .locals 1

    .line 7003
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 7004
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2

    .line 6920
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 6921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 6920
    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    .line 6922
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 6923
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6924
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6925
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6926
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 6927
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getExposedMenuView()Landroid/view/View;

    move-result-object p0

    if-eq p0, v0, :cond_0

    .line 6928
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 6929
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClearable()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method public getConstrainSwipeStartPosition()I
    .locals 4

    .line 6971
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6975
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6976
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705f6

    .line 6977
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070612

    .line 6978
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6979
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->getPluginMenuItemsCountForHoldingView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)I

    move-result p0

    mul-int/2addr v2, p0

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    .line 6982
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuSnapTarget()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getFalsingThresholdFactor()F
    .locals 0

    .line 6966
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public handleChildViewDismissed(Landroid/view/View;)V
    .locals 6

    .line 6879
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)V

    .line 6880
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6886
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 6887
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 6889
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    .line 6890
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6891
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6892
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$1400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object v2

    .line 6893
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 6892
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addSwipedOutNotification(Ljava/lang/String;)V

    .line 6896
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performDismissWithBlockingHelper(Z)Z

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    .line 6900
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6902
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onNotificationDismissed()V

    .line 6903
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6904
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    :cond_4
    return-void
.end method

.method public isAntiFalsingNeeded()Z
    .locals 0

    .line 6915
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result p0

    return p0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2

    .line 6942
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStartDismissing()V

    .line 6943
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)V

    .line 6944
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object v0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->onBeginDrag(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 6945
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 6946
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 6947
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2

    .line 6861
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6862
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6863
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->handleChildViewDismissed(Landroid/view/View;)V

    .line 6865
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6867
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 0

    .line 6952
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 6953
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 6954
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-void
.end method

.method public onDismiss()V
    .locals 7

    .line 6833
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1

    .line 6851
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Z)V

    .line 6852
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onNotificatonStopDismissing()V

    return-void
.end method

.method public onSnooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 0

    .line 6841
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$2700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public shouldDismissQuickly()Z
    .locals 1

    .line 6846
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyAwake()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 0

    .line 6961
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$3600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method