.class public Lcom/android/systemui/statusbar/notification/NotificationFilter;
.super Ljava/lang/Object;
.source "NotificationFilter.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

.field private mFsc:Lcom/android/systemui/ForegroundServiceController;

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method private static checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I
    .locals 0

    .line 210
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    if-nez v0, :cond_0

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    return-object p0
.end method

.method private getFsc()Lcom/android/systemui/ForegroundServiceController;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    if-nez v0, :cond_0

    .line 77
    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    return-object p0
.end method

.method private getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    if-nez v0, :cond_0

    .line 70
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method private getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    if-nez v0, :cond_0

    .line 84
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 203
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    const-string v1, "android.permission.NOTIFICATION_DURING_SETUP"

    .line 202
    invoke-static {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.allowDuringSetup"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 196
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public notificationSendByMultiApp(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    const/4 p0, 0x0

    .line 220
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    const-string p1, "SystemUi--"

    const-string v0, "Notification"

    const-string v1, "notificationSendByMultiApp failed"

    .line 222
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 6

    .line 94
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isDeviceProvisioned()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 96
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 108
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->notificationSendByMultiApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    xor-int/2addr v4, v2

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v1, :cond_4

    if-nez v4, :cond_2

    if-eqz v5, :cond_4

    :cond_2
    return v2

    .line 117
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 134
    :cond_4
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_6

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 136
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMediaNotification()Z

    move-result v1

    if-nez v1, :cond_8

    .line 137
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    if-eq v1, v4, :cond_5

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    return v2

    .line 143
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 144
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    if-eq v1, v4, :cond_7

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    return v2

    .line 152
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressAmbient()Z

    move-result v1

    if-eqz v1, :cond_9

    return v2

    .line 156
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result v1

    if-eqz v1, :cond_a

    return v2

    .line 160
    :cond_a
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->suspended:Z

    if-eqz v1, :cond_b

    return v2

    .line 164
    :cond_b
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 165
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_c

    return v2

    .line 169
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNeededForUser(I)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 174
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 175
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.foregroundApps"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 177
    array-length v4, v1

    if-lt v4, v2, :cond_e

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object p0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    aget-object v1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertWarningNeeded(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    .line 184
    :cond_e
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v3
.end method
