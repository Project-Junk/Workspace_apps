.class public Lcom/coloros/systemui/notification/helper/SmallAppHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "SmallAppHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmallAppHelper"


# instance fields
.field private isRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->isRegister:Z

    return-void
.end method

.method public static getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "small_app_package"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static isSmallApp(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "small_app"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public initHelper(Landroid/os/Handler;)V
    .locals 3

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.nearme.instant.setting/notification"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coloros/systemui/notification/helper/SmallAppHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/coloros/systemui/notification/helper/SmallAppHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/SmallAppHelper;Landroid/os/Handler;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->isRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification--listenNotificationCenterChange--smallApp--e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmallAppHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isRegister()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->isRegister:Z

    return p0
.end method
