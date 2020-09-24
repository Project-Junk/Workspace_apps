.class public Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;
.super Ljava/lang/Object;
.source "NotificationAlertingManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifAlertManager"


# instance fields
.field private final mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

.field private mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/AmbientPulseManager;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    .line 76
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 77
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 78
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mShadeController:Ldagger/Lazy;

    .line 79
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 80
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 82
    new-instance p2, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->updateAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->stopAlerting(Ljava/lang/String;)V

    return-void
.end method

.method public static alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasInterrupted()Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x8

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

.method private setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 209
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationListener;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotifAlertManager"

    const-string v0, "failed setNotificationsShown: "

    .line 211
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 3

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationListener;->mExtras:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->isSimpleBannerEnable(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->showBanner(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 130
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 135
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 139
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->freeContentViewWhenSafe(I)V

    :cond_3
    :goto_0
    const/16 v0, 0x8

    and-int/2addr p2, v0

    if-eqz p2, :cond_5

    .line 143
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AmbientPulseManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->freeContentViewWhenSafe(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private stopAlerting(Ljava/lang/String;)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 225
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 227
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 228
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AmbientPulseManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/AmbientPulseManager;->removeNotification(Ljava/lang/String;Z)Z

    :cond_4
    return-void
.end method

.method private updateAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 152
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mShadeController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldPulse(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    .line 162
    :goto_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    .line 166
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 169
    :cond_1
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->updateNotification(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 174
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mShadeController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 176
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v2, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationListener;->mExtras:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0, p1, v2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->isSimpleBannerEnable(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 178
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->showBanner(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_1

    .line 182
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    .line 183
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_1

    .line 188
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method
