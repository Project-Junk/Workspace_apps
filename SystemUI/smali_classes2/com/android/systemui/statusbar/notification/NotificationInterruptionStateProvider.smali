.class public Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
.super Ljava/lang/Object;
.source "NotificationInterruptionStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENABLE_HEADS_UP:Z = true

.field private static final SETTING_HEADS_UP_TICKER:Ljava/lang/String; = "ticker_gets_heads_up"

.field private static final TAG:Ljava/lang/String; = "InterruptionStateProvider"


# instance fields
.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mDisableNotificationAlerts:Z

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHeadsUpSuppressor:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;

.field private final mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field protected mUseHeadsUp:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "power"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "dreams"

    .line 84
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    new-instance v2, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v2, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Landroid/service/dreams/IDreamManager;Landroid/hardware/display/AmbientDisplayConfiguration;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Landroid/service/dreams/IDreamManager;Landroid/hardware/display/AmbientDisplayConfiguration;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 63
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 64
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 97
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDisableNotificationAlerts:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method private getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    if-nez v0, :cond_0

    .line 142
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method private isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 419
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 421
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    .line 429
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public canHeadsUpCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 449
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 451
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    const/4 v2, 0x0

    const-string v3, "InterruptionStateProvider"

    const-string v4, "Notification"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressPeek()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: suppressed by DND: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 475
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 482
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: snoozed package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 487
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasJustLaunchedFullScreenIntent()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 494
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: recent fullscreen: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const-string p0, "No heads up: no huns or vr mode"

    .line 458
    invoke-static {v4, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method protected getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    return-object p0
.end method

.method public setDisableNotificationAlerts(Z)V
    .locals 0

    .line 508
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDisableNotificationAlerts:Z

    .line 509
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;)V
    .locals 1

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 106
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 107
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpSuppressor:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;

    .line 108
    new-instance p1, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;

    sget-object p2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "heads_up_notifications_enabled"

    .line 130
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p1, p2, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "ticker_gets_heads_up"

    .line 134
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 133
    invoke-virtual {p1, p2, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 154
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 155
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 170
    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canHeadsUpCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 8

    .line 193
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v1

    const-string v2, "Notification"

    const-string v3, "InterruptionStateProvider"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 204
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: device is dozing: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-static {v2, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    .line 211
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: in unlocked shade where notification is shown as a bubble: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-static {v2, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 228
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: notification shouldn\'t alert: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-static {v2, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 243
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canHeadsUpCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_4

    return v4

    .line 246
    :cond_4
    iget v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 v6, 0x4

    if-ge v1, v6, :cond_5

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: unimportant notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {v2, v3, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 262
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v7, "Failed to query dream manager."

    .line 264
    invoke-static {v3, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 266
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v1, :cond_6

    move v1, v5

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    if-nez v1, :cond_7

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: not in use: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-static {v2, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 283
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpSuppressor:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;->canHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-nez p0, :cond_8

    return v4

    .line 289
    :cond_8
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 290
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 291
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->shouldPeekByColoros(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-nez p0, :cond_9

    return v4

    .line 299
    :cond_9
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 300
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    .line 301
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->getImportanceOfSmallApp(Landroid/service/notification/StatusBarNotification;I)I

    move-result v7

    if-ge v7, v6, :cond_b

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldHeadsUp:unimportant notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",smallAppImportance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->getImportanceOfSmallApp(Landroid/service/notification/StatusBarNotification;I)I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",sbn-importance:"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",priority:"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {v2, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 316
    :cond_a
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    .line 317
    iget p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->getImportance(Landroid/service/notification/StatusBarNotification;I)I

    move-result p0

    if-ge p0, v6, :cond_b

    return v4

    :cond_b
    return v5
.end method

.method public shouldHeadsUp(Ljava/lang/String;I)Z
    .locals 4

    .line 329
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    const-string p2, "InterruptionStateProvider"

    const-string v0, "Notification"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 336
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification--No peeking:Failed to query dream manager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    .line 341
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p1, :cond_2

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Notification--No peeking: not in use: "

    .line 343
    invoke-static {v0, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v3

    :cond_3
    :goto_2
    const-string p0, "Notification--No peeking: no huns or vr mode"

    .line 330
    invoke-static {v0, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public shouldPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 359
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 375
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 382
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressAmbient()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    .line 389
    :cond_3
    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 p1, 0x3

    if-ge p0, p1, :cond_4

    return v2

    .line 396
    :cond_4
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.title"

    .line 397
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "android.text"

    .line 398
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
