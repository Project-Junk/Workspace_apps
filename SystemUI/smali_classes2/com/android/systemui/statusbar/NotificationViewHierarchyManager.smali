.class public Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
.super Ljava/lang/Object;
.source "NotificationViewHierarchyManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationViewHierarchyManager"


# instance fields
.field private final mAlwaysExpandNonGroupedNotification:Z

.field private final mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field protected final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsHandleDynamicPrivacyChangeScheduled:Z

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field protected final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mPerformingUpdate:Z

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;)V
    .locals 1
    .param p2    # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Lcom/android/systemui/bubbles/BubbleData;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 117
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 119
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 120
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 121
    check-cast p6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 122
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 123
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mShadeController:Ldagger/Lazy;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050008

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    .line 127
    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    .line 128
    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 129
    invoke-virtual {p10, p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    return-void
.end method

.method private addNotificationChildrenAndSort()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 306
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 308
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 313
    :cond_0
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 314
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    .line 315
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v6, v0

    :goto_1
    if-eqz v5, :cond_5

    .line 317
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 319
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    .line 320
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 321
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const-string v9, "NotificationViewHierarchyManager"

    if-eqz v8, :cond_2

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trying to add a notification child that already has a parent. class:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\n child: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 322
    invoke-static {v9, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v7, "Notification"

    const-string v8, "removeView but View.parent not set null"

    .line 331
    invoke-static {v7, v9, v8}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 335
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 336
    invoke-virtual {v3, v7, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 337
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v8, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->notifyGroupChildAdded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 342
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v3

    or-int/2addr v2, v3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_7

    .line 346
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->generateChildOrderChangedEvent()V

    :cond_7
    return-void
.end method

.method private beginUpdate()V
    .locals 3

    .line 528
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-eqz v0, :cond_0

    const-string v0, "Notification"

    const-string v1, "NotificationViewHierarchyManager"

    const-string v2, "Re-entrant code during update."

    .line 531
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    return-void
.end method

.method private endUpdate()V
    .locals 3

    .line 540
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-nez v0, :cond_0

    const-string v0, "Notification"

    const-string v1, "NotificationViewHierarchyManager"

    const-string v2, "Manager state has become desynced."

    .line 543
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    return-void
.end method

.method private hideNotificationInLockState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 555
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    if-eqz p0, :cond_0

    .line 557
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->hideNotificationInLockState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 566
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    if-eqz p0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$VZHW9NMJkqBLUXo3lkuiamxmEXo(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->onHandleDynamicPrivacyChanged()V

    return-void
.end method

.method private onHandleDynamicPrivacyChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    return-void
.end method

.method private removeNotificationChildren()V
    .locals 7

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 353
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 354
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 355
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_0

    goto :goto_3

    .line 360
    :cond_0
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 361
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    .line 362
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v3, :cond_5

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 366
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_2

    .line 368
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 369
    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->keepInParent()Z

    move-result v6

    if-nez v6, :cond_1

    .line 370
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 373
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 374
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 375
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v5

    .line 376
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    if-nez v5, :cond_4

    .line 379
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 380
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v6

    .line 379
    invoke-interface {v5, v4, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->notifyGroupChildRemoved(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private updateRowStatesInternal()V
    .locals 14

    const-string v0, "NotificationViewHierarchyManager#updateRowStates"

    .line 398
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 405
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v1, :cond_1

    .line 409
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v5, v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    .line 411
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setMaxDisplayedNotifications(I)V

    .line 412
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_3

    .line 414
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 415
    instance-of v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v7, :cond_2

    goto :goto_3

    .line 418
    :cond_2
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 420
    :goto_4
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    .line 421
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 422
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v7

    .line 423
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 424
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v8

    .line 426
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnKeyguard(Z)V

    if-nez v1, :cond_8

    .line 433
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v9

    if-eqz v9, :cond_4

    const-class v9, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 434
    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isMediaNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v3

    goto :goto_5

    :cond_4
    move v9, v2

    .line 435
    :goto_5
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    if-nez v10, :cond_7

    if-nez v0, :cond_5

    if-nez v8, :cond_5

    .line 437
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_5
    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move v9, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v9, v3

    .line 435
    :goto_7
    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 448
    :cond_8
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mShadeController:Ldagger/Lazy;

    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v10}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnAmbient(Z)V

    .line 449
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    .line 450
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 451
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v10

    if-nez v10, :cond_9

    move v10, v3

    goto :goto_8

    :cond_9
    move v10, v2

    .line 452
    :goto_8
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v11, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 455
    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v13, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 456
    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v13, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 458
    iget-object v13, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v13, v12}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v12

    if-eqz v12, :cond_a

    move v11, v3

    :cond_a
    const/16 v12, 0x8

    if-nez v10, :cond_12

    .line 463
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 464
    invoke-interface {v10, v9}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v9

    if-nez v9, :cond_12

    if-eqz v1, :cond_b

    if-eqz v11, :cond_12

    .line 468
    :cond_b
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v9

    if-eqz v9, :cond_c

    if-eqz v4, :cond_c

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->hideNotificationInLockState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 472
    :cond_c
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isClose()Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_b

    .line 476
    :cond_d
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    if-ne v9, v12, :cond_e

    move v9, v3

    goto :goto_9

    :cond_e
    move v9, v2

    :goto_9
    if-eqz v9, :cond_f

    .line 478
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setVisibility(I)V

    :cond_f
    if-nez v8, :cond_13

    .line 480
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_13

    if-eqz v9, :cond_11

    .line 483
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v9

    if-nez v11, :cond_10

    move v10, v3

    goto :goto_a

    :cond_10
    move v10, v2

    :goto_a
    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 474
    :cond_12
    :goto_b
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setVisibility(I)V

    .line 489
    :cond_13
    :goto_c
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 491
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v8

    .line 492
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    :goto_d
    if-ltz v9, :cond_14

    .line 494
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, -0x1

    goto :goto_d

    .line 498
    :cond_14
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showAppOpsIcons(Landroid/util/ArraySet;)V

    .line 499
    iget-wide v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastAudiblyAlertedMs:J

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLastAudiblyAlertedMs(J)V

    goto/16 :goto_4

    :cond_15
    const-string v0, "NotificationPresenter#onUpdateRowStates"

    .line 502
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 503
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->onUpdateRowStates()V

    .line 504
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 505
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public onDynamicPrivacyChanged()V
    .locals 2

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationViewHierarchyManager"

    const-string v1, "onDynamicPrivacyChanged made a re-entrant call"

    .line 511
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationViewHierarchyManager$VZHW9NMJkqBLUXo3lkuiamxmEXo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationViewHierarchyManager$VZHW9NMJkqBLUXo3lkuiamxmEXo;-><init>(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 135
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 138
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    const-class p2, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    const-class p2, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->setNotificationData(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V

    :cond_0
    return-void
.end method

.method public updateNotificationViews()V
    .locals 12

    .line 150
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->beginUpdate()V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_b

    .line 158
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 159
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 160
    invoke-virtual {v7, v8}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_5

    .line 166
    :cond_0
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    .line 171
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v8

    .line 172
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 173
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 174
    invoke-interface {v10, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    move v10, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v10, v5

    :goto_2
    if-eqz v10, :cond_4

    .line 175
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result v11

    if-eqz v11, :cond_4

    if-eq v7, v8, :cond_3

    const/4 v11, -0x1

    if-eq v7, v11, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 177
    invoke-interface {v11, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsSeparateWorkChallenge(I)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v10, v3

    .line 180
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v7, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-eqz v10, :cond_5

    if-eqz v7, :cond_5

    move v10, v5

    goto :goto_3

    :cond_5
    move v10, v3

    :goto_3
    if-eqz v9, :cond_6

    .line 182
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 183
    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    move v5, v3

    .line 185
    :goto_4
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v8, v10, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSensitive(ZZ)V

    .line 188
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateEncrypted()V

    .line 190
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    .line 192
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 193
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v5

    const-class v7, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {v5, v7}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 194
    invoke-virtual {v5, v6, v7}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->updateGroupSummaryPostTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 197
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 198
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    .line 199
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 200
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_8

    .line 202
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_8
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 207
    :cond_9
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 213
    :cond_b
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 214
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v2

    const-class v4, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {v2, v4}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 215
    invoke-virtual {v2, v0, v4}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->updateOlderChildrenToSummaryPostTimeAndClose(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 219
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 220
    :goto_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 221
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 222
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    instance-of v6, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_d

    .line 223
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 227
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v6

    if-nez v6, :cond_d

    .line 228
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 233
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 234
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 237
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    .line 239
    :cond_f
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 240
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeAllChildren()V

    .line 242
    :cond_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->removeContainerView(Landroid/view/View;)V

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    goto :goto_7

    .line 246
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->removeNotificationChildren()V

    move v0, v3

    .line 248
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 249
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 250
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_12

    .line 251
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 252
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->addContainerView(Landroid/view/View;)V

    goto :goto_9

    .line 253
    :cond_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->containsView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 256
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    :cond_13
    :goto_9
    add-int/2addr v0, v5

    goto :goto_8

    .line 261
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->addNotificationChildrenAndSort()V

    move v0, v3

    .line 267
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v2

    if-ge v3, v2, :cond_19

    .line 268
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 269
    instance-of v4, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v4, :cond_15

    goto :goto_c

    .line 273
    :cond_15
    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_c

    .line 278
    :cond_16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eq v2, v4, :cond_18

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 283
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    goto :goto_b

    .line 285
    :cond_17
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    :cond_18
    :goto_b
    add-int/lit8 v0, v0, 0x1

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 292
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onReorderingFinished()V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStatesInternal()V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->onNotificationViewUpdateFinished()V

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->endUpdate()V

    return-void
.end method

.method public updateRowStates()V
    .locals 0

    .line 391
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->beginUpdate()V

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStatesInternal()V

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->endUpdate()V

    return-void
.end method
