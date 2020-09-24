.class public Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "NotificationCenterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppSetter;,
        Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppSetter;,
        Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;,
        Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;,
        Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$ManagerConnection;
    }
.end annotation


# static fields
.field private static final CONNECT_DELAY_TIME:I = 0x1f4

.field private static final NAME_CLASS:Ljava/lang/String; = "com.coloros.notification.NotificationCenterService"

.field private static final NAME_PACKAGE:Ljava/lang/String; = "com.coloros.notificationmanager"

.field private static final TAG:Ljava/lang/String; = "NotificationCenterHelper"

.field private static sINotificationCenter:Lcom/coloros/notification/INotificationCenter;

.field private static sNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;


# instance fields
.field private binderRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mManagerConnection:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$ManagerConnection;

.field private mShowingStow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    .line 52
    new-instance p2, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$ManagerConnection;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$ManagerConnection;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mManagerConnection:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$ManagerConnection;

    .line 85
    new-instance p2, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->binderRunnable:Ljava/lang/Runnable;

    .line 56
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->bind()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->bind()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->setFoldNorm(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/coloros/notification/INotificationCenter;)Lcom/coloros/notification/INotificationCenter;
    .locals 0

    .line 43
    sput-object p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->sINotificationCenter:Lcom/coloros/notification/INotificationCenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->bindInHandler()V

    return-void
.end method

.method private bind()V
    .locals 4

    .line 61
    sget-object v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->sINotificationCenter:Lcom/coloros/notification/INotificationCenter;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.notificationmanager"

    const-string v3, "com.coloros.notification.NotificationCenterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mManagerConnection:Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$ManagerConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Notification"

    const-string v0, "NotificationCenterHelper"

    const-string v1, "unable to start service"

    .line 68
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "bind failed--invalid context:null"

    .line 71
    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "bind do not need"

    .line 74
    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private bindInHandler()V
    .locals 3

    .line 79
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/common/thread/ThreadManager;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->binderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/coloros/common/thread/ThreadManager;->getInstance()Lcom/coloros/common/thread/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/common/thread/ThreadManager;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->binderRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private canShowBannerNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    .line 210
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    const-string p3, "canShowBanner"

    invoke-static {p2, p3, p0, p1, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->reflectCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private canShowIconNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    .line 230
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    const-string p3, "canShowIcon"

    invoke-static {p2, p3, p0, p1, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->reflectCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private get(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter<",
            "TT;>;",
            "Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 281
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p2

    .line 283
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->getSmallApp(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 285
    invoke-interface {p3, p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;->get(Lcom/coloros/systemui/notification/smallApp/SmallApp;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 290
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getChannel(Landroid/service/notification/StatusBarNotification;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, p2

    move-object v1, p1

    .line 293
    invoke-interface/range {v0 .. v5}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;->get(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Notification--get: error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p4
.end method

.method private getChannel(Landroid/service/notification/StatusBarNotification;)Landroid/app/NotificationChannel;
    .locals 0

    .line 190
    sget-object p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->sNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChannelNameNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 202
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLockscreenVisibilityNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 218
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p0

    return p0
.end method

.method private isChangeableFoldNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    .line 238
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    const-string p3, "isChangeableFold"

    invoke-static {p2, p3, p0, p1, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->reflectCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isFoldNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    .line 186
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    const-string p3, "isFold"

    invoke-static {p2, p3, p0, p1, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->reflectCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$8AcAQqnQjPDs9EgOUJojKE4h9Jo(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getLockscreenVisibilityNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$DuRSiycaZLuLMtFHib6smbr_J4s(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isChangeableFoldNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$I1HBSb7anfXhOZwXjzm7vcNJvQE(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->canShowBannerNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$bIRi4WY4Lwy3Fs2XPOxQNXdk7Ho(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->canShowIconNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ei3oCYrpAoM97bTPUc5aH0P3Lo8(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getChannelNameNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$sBvJDk0LFW4QxgTHuEi377xj22o(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isFoldNorm(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Notification"

    const-string v1, "NotificationCenterHelper"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "Notification--"

    const-string v1, "NotificationCenterHelper"

    const-string v2, "Notification"

    if-eqz p1, :cond_0

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 333
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static reflectCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TR;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 340
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "this method returned NULL"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 345
    invoke-static/range {v1 .. v6}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->reflectException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reflect error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->log(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->reflectException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)V

    :goto_0
    return-object p2
.end method

.method private static reflectException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TR;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reflectCallException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-->object="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",method="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",forNullOrExceptionReturn="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",clazz="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",args="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 355
    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private set(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppSetter;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppSetter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppSetter<",
            "TT;>;",
            "Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppSetter;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 306
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p2

    .line 308
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->getSmallApp(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 310
    invoke-interface {p3, p2, p4}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppSetter;->set(Lcom/coloros/systemui/notification/smallApp/SmallApp;Ljava/lang/Object;)V

    .line 311
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->updateSmallApp(Landroid/content/Context;Lcom/coloros/systemui/notification/smallApp/SmallApp;)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p3

    .line 316
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-interface {p2, p0, p3, v0, p4}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppSetter;->set(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "set: error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setFoldNorm(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .line 169
    sget-object v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->sINotificationCenter:Lcom/coloros/notification/INotificationCenter;

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/coloros/notification/INotificationCenter;->setFold(Ljava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFold: service is not available--"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "setFold: service is not available--binding service"

    .line 176
    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->log(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->bindInHandler()V

    :goto_0
    return-void
.end method

.method public static setNotificationData(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V
    .locals 0

    .line 234
    sput-object p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->sNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    return-void
.end method

.method private shouldStowedBySmartSort(Landroid/app/Notification;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "key_option_stow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public canShowBanner(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 206
    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$I1HBSb7anfXhOZwXjzm7vcNJvQE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$I1HBSb7anfXhOZwXjzm7vcNJvQE;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    sget-object v1, Lcom/coloros/systemui/notification/helper/-$$Lambda$9BAJURez2AiJbWKkIX-WlkVU8rU;->INSTANCE:Lcom/coloros/systemui/notification/helper/-$$Lambda$9BAJURez2AiJbWKkIX-WlkVU8rU;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->get(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public canShowIcon(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 226
    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$bIRi4WY4Lwy3Fs2XPOxQNXdk7Ho;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$bIRi4WY4Lwy3Fs2XPOxQNXdk7Ho;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    sget-object v1, Lcom/coloros/systemui/notification/helper/-$$Lambda$keqGaqzo_pJZTvfeZBuK7JVX4sI;->INSTANCE:Lcom/coloros/systemui/notification/helper/-$$Lambda$keqGaqzo_pJZTvfeZBuK7JVX4sI;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->get(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getChannelName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 3

    .line 198
    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$ei3oCYrpAoM97bTPUc5aH0P3Lo8;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$ei3oCYrpAoM97bTPUc5aH0P3Lo8;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    sget-object v1, Lcom/coloros/systemui/notification/helper/-$$Lambda$BWn9B3SlEyp1KRLL911uRvaEBHc;->INSTANCE:Lcom/coloros/systemui/notification/helper/-$$Lambda$BWn9B3SlEyp1KRLL911uRvaEBHc;

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->get(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLockscreenVisibility(Landroid/service/notification/StatusBarNotification;)I
    .locals 3

    .line 214
    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$8AcAQqnQjPDs9EgOUJojKE4h9Jo;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$8AcAQqnQjPDs9EgOUJojKE4h9Jo;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    sget-object v1, Lcom/coloros/systemui/notification/helper/-$$Lambda$D08Mh2twG1y69kiBCS1Hc6wA8B4;->INSTANCE:Lcom/coloros/systemui/notification/helper/-$$Lambda$D08Mh2twG1y69kiBCS1Hc6wA8B4;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->get(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    const-string p0, ""

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "small_app_package"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getStowOption(Landroid/service/notification/StatusBarNotification;)I
    .locals 2

    .line 129
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->getSmallApp(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->getStowOption()I

    move-result v1

    goto :goto_0

    .line 136
    :cond_0
    sget-object v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->sINotificationCenter:Lcom/coloros/notification/INotificationCenter;

    if-eqz v0, :cond_1

    .line 138
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/coloros/notification/INotificationCenter;->getStowOption(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->bindInHandler()V

    :cond_2
    :goto_0
    return v1
.end method

.method public isChangeableFold(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 222
    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$DuRSiycaZLuLMtFHib6smbr_J4s;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$DuRSiycaZLuLMtFHib6smbr_J4s;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    sget-object v1, Lcom/coloros/systemui/notification/helper/-$$Lambda$DaVyNxPKALkuLgf1r0mGyaZhhsU;->INSTANCE:Lcom/coloros/systemui/notification/helper/-$$Lambda$DaVyNxPKALkuLgf1r0mGyaZhhsU;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->get(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFold(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 182
    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$sBvJDk0LFW4QxgTHuEi377xj22o;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationCenterHelper$sBvJDk0LFW4QxgTHuEi377xj22o;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    sget-object v1, Lcom/coloros/systemui/notification/helper/-$$Lambda$fjUQ0MlYvEYNY4URFyljeoNyBxQ;->INSTANCE:Lcom/coloros/systemui/notification/helper/-$$Lambda$fjUQ0MlYvEYNY4URFyljeoNyBxQ;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->get(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppGetter;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isShowingStow()Z
    .locals 0

    .line 258
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mShowingStow:Z

    return p0
.end method

.method public isSmallApp(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "small_app"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :cond_0
    return p0
.end method

.method public setFold(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 2

    .line 93
    new-instance v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$2;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    new-instance v1, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$3;-><init>(Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;)V

    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 93
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->set(Landroid/service/notification/StatusBarNotification;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$NormAppSetter;Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppSetter;Ljava/lang/Object;)V

    return-void
.end method

.method public setNotificationStowOption(Landroid/app/Notification;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 155
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "key_option_stow"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setShowingStow(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mShowingStow:Z

    return-void
.end method

.method public setStowOption(Landroid/service/notification/StatusBarNotification;I)V
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->getSmallApp(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 111
    invoke-virtual {p1, p2}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->setStowOption(I)V

    .line 112
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->updateSmallApp(Landroid/content/Context;Lcom/coloros/systemui/notification/smallApp/SmallApp;)V

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->sINotificationCenter:Lcom/coloros/notification/INotificationCenter;

    if-eqz v0, :cond_1

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-interface {v0, p0, p1, p2}, Lcom/coloros/notification/INotificationCenter;->setStowOption(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->bindInHandler()V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldShowingStowIcon(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->isShowingStow()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 270
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public shouldStowed(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 150
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowedBySmartSort(Landroid/app/Notification;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/coloros/systemui/notification/util/MCSUtil;->isLowPriority(Landroid/service/notification/StatusBarNotification;)Z

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
