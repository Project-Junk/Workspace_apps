.class public Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;
.super Ljava/lang/Object;
.source "StatusBarNotificationActivityStarter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;


# static fields
.field protected static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "NotificationClickHandler"

.field private static final USER_CLONER:I = 0x3e7


# instance fields
.field private final mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private final mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContext:Landroid/content/Context;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mIsCollapsingToShowActivityOverLockscreen:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotificationClickHandler"

    const/4 v1, 0x3

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 3

    move-object v0, p0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 141
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    move-object v1, p4

    .line 142
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object v1, p5

    .line 143
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    move-object v1, p7

    .line 144
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v1, p9

    .line 145
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    move-object v1, p10

    .line 146
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object v1, p2

    .line 147
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p12

    .line 148
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v1, p13

    .line 149
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v1, p14

    .line 150
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, p17

    .line 151
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v1, p18

    .line 152
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v1, p19

    .line 153
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object v1, p8

    .line 154
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v1, p6

    .line 155
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object v1, p11

    .line 156
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v1, p20

    .line 157
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    move-object/from16 v1, p21

    .line 158
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object v1, p3

    .line 159
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    move-object/from16 v1, p16

    .line 160
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v1, p22

    .line 161
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v1, p24

    .line 162
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBackgroundHandler:Landroid/os/Handler;

    .line 163
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    move-object/from16 v1, p15

    .line 169
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    move-object/from16 v1, p23

    .line 170
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v1, p25

    .line 171
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object/from16 v1, p26

    .line 172
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->handleFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private collapseOnMainThread()V
    .locals 2

    .line 528
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$XDmf1V0qHGBRkx-V63RRNIpOXuQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$XDmf1V0qHGBRkx-V63RRNIpOXuQ;-><init>(Lcom/android/systemui/statusbar/phone/ShadeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private expandBubbleStackOnMainThread(Ljava/lang/String;)V
    .locals 2

    .line 375
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->expandStackAndSelectBubble(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$SAG_ctHvOhll_OxtSg-OBbXZGGw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$SAG_ctHvOhll_OxtSg-OBbXZGGw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private handleFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 461
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 462
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    const-string v1, "NotificationClickHandler"

    if-eqz v0, :cond_0

    .line 463
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 464
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by DND: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_0
    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 467
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: not important enough: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_1
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$zLqLQQkSFj0iQaMqD-oKX7X1wmE;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$zLqLQQkSFj0iQaMqD-oKX7X1wmE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 490
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Notification has fullScreenIntent; sending fullScreenIntent"

    .line 491
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 502
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notifyFullScreenIntentLaunched()V

    .line 503
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "note_fullscreen"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private handleNotificationClickAfterKeyguardDismissed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZZ)Z
    .locals 13

    move-object v10, p0

    move-object v2, p1

    .line 244
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, p2

    .line 248
    invoke-static {p2, v11}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->setIsClickedHeadsUpNotification(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    move-object v3, p2

    .line 253
    :goto_0
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeNotification(Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_1
    move-object v3, p2

    goto :goto_1

    :cond_2
    move-object v3, p2

    move-object/from16 v6, p5

    :goto_1
    const/4 v0, 0x0

    .line 257
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    iget-object v1, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 259
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 260
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v9, v1

    goto :goto_2

    :cond_3
    move-object v9, v0

    .line 265
    :goto_2
    new-instance v12, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$H4WWHLQEcsZwa09U0GneoOwngZE;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$H4WWHLQEcsZwa09U0GneoOwngZE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZLandroid/service/notification/StatusBarNotification;)V

    if-eqz p8, :cond_4

    .line 270
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0, v12}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0, v11}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel(Z)V

    goto :goto_3

    .line 272
    :cond_4
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 273
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0, v12}, Lcom/android/systemui/statusbar/phone/ShadeController;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    goto :goto_3

    .line 277
    :cond_5
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 279
    :goto_3
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    xor-int/2addr v0, v11

    return v0
.end method

.method private handleNotificationClickAfterPanelCollapsed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZLandroid/service/notification/StatusBarNotification;)V
    .locals 11

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p8

    .line 296
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p6, :cond_0

    .line 303
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 304
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 305
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 309
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 308
    invoke-virtual {v1, v0, v2, v7}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->collapseOnMainThread()V

    return-void

    .line 318
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v9

    .line 321
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 322
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 324
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    move-object v3, p3

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 326
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.remoteInputDraft"

    .line 325
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v2, v0

    :cond_2
    if-eqz v9, :cond_3

    .line 329
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->expandBubbleStackOnMainThread(Ljava/lang/String;)V

    move-object v10, p1

    goto :goto_2

    .line 334
    :cond_3
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    move-object v10, p1

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->handleAppForNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1

    :cond_4
    move-object v10, p1

    :goto_1
    move-object v0, p0

    move-object v1, p4

    move-object v3, p2

    move/from16 v4, p7

    move/from16 v5, p6

    .line 338
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->startNotificationIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZ)V

    :goto_2
    if-nez p6, :cond_5

    if-eqz v9, :cond_6

    .line 341
    :cond_5
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 343
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldCollapse()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->collapseOnMainThread()V

    .line 347
    :cond_7
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 348
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 349
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v1

    .line 350
    iget-object v2, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 352
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    .line 351
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v2

    const/4 v3, 0x1

    .line 353
    invoke-static {v7, v1, v0, v3, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    .line 356
    :try_start_1
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, v7, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez v9, :cond_a

    if-eqz v8, :cond_8

    .line 362
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 364
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 365
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 368
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeNotification(Landroid/service/notification/StatusBarNotification;)V

    :cond_a
    const/4 v0, 0x0

    .line 371
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    return-void
.end method

.method private removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$NB5bC9BNG5fFnXESajqFQuzYCY4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$NB5bC9BNG5fFnXESajqFQuzYCY4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 517
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, p0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private shouldCollapse()Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->isAnimationPending()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 545
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressFullScreenIntent()Z

    move-result p0

    return p0
.end method

.method private startNotificationIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZ)V
    .locals 8

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {v0, p3, p4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 389
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p4

    .line 391
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-interface {p4, v0, p3}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 394
    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    .line 393
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 395
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {p0, p1, p5}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sending contentIntent failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationClickHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public isCollapsingToShowActivityOverLockscreen()Z
    .locals 0

    .line 513
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    return p0
.end method

.method public synthetic lambda$expandBubbleStackOnMainThread$2$StatusBarNotificationActivityStarter(Ljava/lang/String;)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->expandStackAndSelectBubble(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$handleFullScreenIntent$7$StatusBarNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 479
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isAwakenNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 485
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$handleNotificationClickAfterKeyguardDismissed$1$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZLandroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 265
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->handleNotificationClickAfterPanelCollapsed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZLandroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public synthetic lambda$null$3$StatusBarNotificationActivityStarter()V
    .locals 2

    .line 439
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    return-void
.end method

.method public synthetic lambda$null$4$StatusBarNotificationActivityStarter()V
    .locals 2

    .line 450
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    return-void
.end method

.method public synthetic lambda$null$5$StatusBarNotificationActivityStarter(ILandroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    .line 423
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 426
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    const/16 v0, 0x3e7

    if-ne p3, v0, :cond_0

    .line 427
    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 430
    :goto_0
    :try_start_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p3

    .line 431
    invoke-virtual {p3, p2}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p2

    const/4 p3, 0x0

    .line 432
    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/16 p2, -0x5c

    .line 435
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to start detail activity:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "NotificationClickHandler"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p2

    .line 438
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(IZ)V

    .line 439
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$e3ryWscPM4YLLJw9xySX9PlCCyU;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$e3ryWscPM4YLLJw9xySX9PlCCyU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 443
    invoke-virtual {v0, p2}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 445
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v2

    .line 444
    invoke-virtual {v0, p3, v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->getLaunchAnimation(Landroid/view/View;Z)Landroid/view/RemoteAnimationAdapter;

    move-result-object p3

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions(Landroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object p3

    new-instance v0, Landroid/os/UserHandle;

    .line 446
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 444
    invoke-virtual {p2, p3, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)I

    move-result p1

    .line 447
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityLaunchAnimator:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(IZ)V

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldCollapse()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 450
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$TSAETmly9Tu-2kqQhaHObxqWOeo;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$TSAETmly9Tu-2kqQhaHObxqWOeo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_2
    return-void
.end method

.method public synthetic lambda$null$8$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 552
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    return-void
.end method

.method public synthetic lambda$onNotificationClicked$0$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZZ)Z
    .locals 0

    .line 222
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->handleNotificationClickAfterKeyguardDismissed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZZ)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$removeNotification$9$StatusBarNotificationActivityStarter(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 551
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$yv9o0BiL8Fjz0nhGdCK0d4Cczxk;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$yv9o0BiL8Fjz0nhGdCK0d4Cczxk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;)V

    .line 553
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isCollapsing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 556
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 558
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$startNotificationGutsIntent$6$StatusBarNotificationActivityStarter(ILandroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 1

    .line 408
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$d-qAb22PqFuKcQx5m-fGxNy181E;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$d-qAb22PqFuKcQx5m-fGxNy181E;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;ILandroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 15

    move-object v10, p0

    .line 185
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->collapseOnMainThread()V

    .line 189
    :cond_0
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v4

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getActiveRemoteInputText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    return-void

    .line 197
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 198
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_0
    move-object v5, v0

    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v0

    if-nez v5, :cond_3

    if-nez v0, :cond_3

    const-string v0, "NotificationClickHandler"

    const-string v1, "onNotificationClicked called for non-clickable notification!"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz v5, :cond_4

    .line 213
    invoke-virtual {v5}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    move v7, v11

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    if-eqz v7, :cond_5

    .line 214
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 215
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 216
    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    .line 215
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v12, v11

    goto :goto_2

    :cond_5
    move v12, v1

    .line 217
    :goto_2
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isOccluded()Z

    move-result v8

    .line 218
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v5, :cond_6

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 219
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 220
    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    .line 219
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/ActivityIntentHelper;->wouldShowOverLockscreen(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v13, v11

    goto :goto_3

    :cond_6
    move v13, v1

    .line 221
    :goto_3
    new-instance v14, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$yPRbQ0J1oyZW5IHADurUixbhRxg;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v9, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$yPRbQ0J1oyZW5IHADurUixbhRxg;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/app/PendingIntent;Ljava/lang/String;ZZZ)V

    if-eqz v13, :cond_7

    .line 226
    iput-boolean v11, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    .line 227
    invoke-interface {v14}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    goto :goto_4

    .line 229
    :cond_7
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {v0, v14, v1, v12}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :goto_4
    return-void
.end method

.method public startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarNotificationActivityStarter$BHXXQuNeMgt9h5jtot_NHlUnaKo;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;ILandroid/content/Intent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method
