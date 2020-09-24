.class public Lcom/coloros/notification/NotificationInfoService;
.super Landroid/app/Service;
.source "NotificationInfoService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationInfoService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/coloros/notification/NotificationInfoService$1;

    invoke-direct {v0, p0}, Lcom/coloros/notification/NotificationInfoService$1;-><init>(Lcom/coloros/notification/NotificationInfoService;)V

    iput-object v0, p0, Lcom/coloros/notification/NotificationInfoService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string p1, "Notification"

    const-string v0, "NotificationInfoService"

    const-string v1, "onBind"

    .line 45
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/coloros/notification/NotificationInfoService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "Notification"

    const-string v1, "NotificationInfoService"

    const-string v2, "onUnbind"

    .line 51
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
