.class public Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
.super Ljava/lang/Object;
.source "NotificationGutsManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":settings:show_fragment_args"

.field private static final TAG:Ljava/lang/String; = "NotificationGutsManager"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field protected mKeyToRemoveOnGutsClosed:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 89
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 90
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 91
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 92
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 93
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 94
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 116
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    const-string p2, "accessibility"

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p1
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 1

    .line 238
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->ensureGutsInflated()V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method

.method private initializeAppOpsInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V
    .locals 4

    .line 313
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 316
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 316
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 319
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$QUX76CVRNteGCzCinyuNeuYX3tU;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$QUX76CVRNteGCzCinyuNeuYX3tU;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 325
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {p2, v2, v3, v1, p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method

.method private initializeSnoozeView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;)V
    .locals 3

    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 294
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    .line 297
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 298
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->snoozeCriteria:Ljava/util/List;

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    .line 299
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$xtHxMW6jrIgJGugFgxSSg6aT080;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$xtHxMW6jrIgJGugFgxSSg6aT080;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;)V

    return-void
.end method

.method private startAppDetailsSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    const/4 v2, 0x0

    .line 211
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 212
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 213
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 215
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, ":settings:fragment_args_key"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 9

    .line 164
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    const-string p3, "NotificationGutsManager"

    if-eqz p1, :cond_6

    .line 165
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 169
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 170
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 172
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v3, 0x0

    const-string v4, "small_app"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 173
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, ""

    const-string v6, "small_app_package"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    iget-object v6, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "small_app_name"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "miscellaneous"

    .line 179
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 181
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, p2}, Lcom/coloros/common/util/AppInfoUtil;->getAppNameByPkgNameIncludeMutiApp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.coloros.notificationmanager.app.detail"

    .line 187
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {v6, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "pkg_name"

    if-eqz v2, :cond_2

    move-object v0, v3

    .line 189
    :cond_2
    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "app_name"

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v7

    .line 190
    :goto_0
    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "uid"

    .line 191
    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.provider.extra.CHANNEL_ID"

    .line 192
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 193
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_5

    .line 196
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_4

    const-string v0, "SystemUi--"

    const-string v1, "Notification"

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no activity exist for this intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get app info error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, v6, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void

    :cond_6
    :goto_1
    const-string p0, "startAppNotificationSettings, entry is null"

    .line 166
    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 245
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 247
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 248
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lbHSFb83h5SRmJTPUlzactX7_1Q;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lbHSFb83h5SRmJTPUlzactX7_1Q;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;)V

    .line 268
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object p2

    .line 270
    :try_start_0
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    if-eqz v0, :cond_0

    .line 271
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeSnoozeView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;)V

    goto :goto_0

    .line 272
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;

    if-eqz v0, :cond_1

    .line 273
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeAppOpsInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V

    goto :goto_0

    .line 274
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    if-eqz v0, :cond_2

    .line 275
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationGutsManager"

    const-string p2, "error binding guts"

    .line 279
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public closeAndSaveGuts(ZZZIIZ)V
    .locals 7

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 404
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 405
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(ZZIIZ)V

    :cond_1
    if-eqz p6, :cond_2

    .line 410
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->resetExposedMenuView(ZZ)V

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NotificationGutsManager state:"

    .line 574
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mKeyToRemoveOnGutsClosed: "

    .line 575
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-object p0
.end method

.method public getNotificationLongClicker()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;
    .locals 1

    .line 426
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$0lGYUT66Z7cr4TZs4rdZ8M7DQkw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$0lGYUT66Z7cr4TZs4rdZ8M7DQkw;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)V

    return-object v0
.end method

.method initializeNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    .locals 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 339
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v2

    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    .line 341
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 345
    iget-object v1, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 346
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 345
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v1, "notification"

    .line 348
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 347
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v9

    .line 349
    new-instance v13, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$5sbilrrQIt_lf--8k9ZdwNLn-js;

    move-object/from16 v11, p1

    invoke-direct {v13, v6, v2, v10, v11}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$5sbilrrQIt_lf--8k9ZdwNLn-js;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v16

    .line 358
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 359
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_1

    .line 360
    :cond_1
    :goto_0
    new-instance v12, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v3, v10

    move-object v4, v7

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 368
    :goto_1
    iget-object v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->channel:Landroid/app/NotificationChannel;

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    move-result-object v2

    iget-object v14, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 379
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v15

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonblockable()Z

    move-result v17

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    iget v6, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v18

    move-object/from16 v3, p2

    move-object v4, v8

    move-object v5, v9

    move/from16 v19, v6

    move-object v6, v0

    move-object v8, v1

    move-object v9, v2

    move-object v11, v14

    move v14, v15

    move/from16 v15, v17

    move/from16 v17, v19

    .line 368
    invoke-virtual/range {v3 .. v18}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;ZZZIZ)V

    return-void
.end method

.method public synthetic lambda$bindGuts$0$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 2

    .line 250
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onGutsClosed()V

    .line 251
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->willBeRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 253
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 252
    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1

    .line 256
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 257
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 259
    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 261
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-eqz p0, :cond_2

    .line 263
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$initializeAppOpsInfo$2$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 1

    .line 321
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x542

    invoke-virtual {p3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 322
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 323
    invoke-virtual {p0, p4, p5, p6, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public synthetic lambda$initializeNotificationInfo$3$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V
    .locals 1

    .line 351
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xce

    invoke-virtual {p4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 352
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-interface {p0, p5, p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public synthetic lambda$initializeNotificationInfo$4$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 1

    .line 361
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xcd

    invoke-virtual {p5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 362
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 363
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;->onSettingsClick(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p3, p7, p6, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public synthetic lambda$initializeSnoozeView$1$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isShown()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method public synthetic lambda$null$5$NotificationGutsManager(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0

    .line 452
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    return-void
.end method

.method public synthetic lambda$openGuts$6$NotificationGutsManager(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 8

    .line 451
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$WRRbrDmR2X9PidE-VLpyfEtZFCU;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$WRRbrDmR2X9PidE-VLpyfEtZFCU;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 136
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setExposedGuts(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    return-void
.end method

.method public openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 9

    .line 445
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    instance-of v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 447
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 448
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    .line 451
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$ujQD4EmV_laISDNVyhlRbAQC7J4;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$ujQD4EmV_laISDNVyhlRbAQC7J4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 454
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return v2

    .line 463
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method

.method openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 473
    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v7, 0x0

    if-nez v2, :cond_0

    return v7

    .line 477
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "NotificationGutsManager"

    const-string v1, "Trying to show notification guts, but not attached to window"

    .line 478
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 482
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 483
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isDark()Z

    move-result v3

    if-eqz v3, :cond_2

    return v7

    .line 486
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 487
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    .line 488
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    return v7

    .line 494
    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->ensureGutsInflated()V

    .line 495
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v8

    .line 496
    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 497
    invoke-virtual {p0, v2, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result v0

    if-nez v0, :cond_4

    return v7

    :cond_4
    if-nez v8, :cond_5

    return v7

    :cond_5
    const/4 v0, 0x4

    .line 510
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setVisibility(I)V

    .line 512
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, v8

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    return-void
.end method

.method public setExposedGuts(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-void
.end method

.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "NotificationGutsManager"

    if-eqz p2, :cond_0

    .line 558
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 559
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 560
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Keeping notification because it\'s showing guts. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 564
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 565
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification that was kept for guts was updated. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 124
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 125
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    .line 126
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 551
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p1

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 552
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isLeavebehind()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x18

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    .line 227
    invoke-static {v0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, p3, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_1

    .line 224
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, v2, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppDetailsSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 231
    :cond_3
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 232
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, p3, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_4
    :goto_1
    return-void
.end method
