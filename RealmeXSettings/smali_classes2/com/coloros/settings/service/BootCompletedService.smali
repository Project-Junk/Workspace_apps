.class public Lcom/coloros/settings/service/BootCompletedService;
.super Landroid/app/Service;
.source "BootCompletedService.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/service/BootCompletedService;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/coloros/settings/service/BootCompletedService;->d:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/service/BootCompletedService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/coloros/settings/service/BootCompletedService;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/service/BootCompletedService;)V
    .locals 5

    const-string v0, "oppo_usbtether_enabled"

    .line 1096
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1103
    :goto_0
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->x(Landroid/content/Context;)Z

    move-result v2

    .line 1104
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startUsbTetherIfNeeded usbEnabled = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ; openUsbTetheringSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootCompletedService"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const-string v0, "connectivity"

    .line 1108
    invoke-virtual {p0, v0}, Lcom/coloros/settings/service/BootCompletedService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1113
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->o(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1388

    .line 1114
    iput v1, p0, Lcom/coloros/settings/service/BootCompletedService;->d:I

    .line 1115
    iget-object v1, p0, Lcom/coloros/settings/service/BootCompletedService;->a:Landroid/os/Handler;

    new-instance v2, Lcom/coloros/settings/service/BootCompletedService$2;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/service/BootCompletedService$2;-><init>(Lcom/coloros/settings/service/BootCompletedService;Landroid/net/ConnectivityManager;)V

    iget p0, p0, Lcom/coloros/settings/service/BootCompletedService;->d:I

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1122
    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/service/BootCompletedService;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coloros/settings/service/BootCompletedService;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/service/BootCompletedService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/coloros/settings/service/BootCompletedService;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/coloros/settings/service/BootCompletedService;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coloros/settings/service/BootCompletedService;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/service/BootCompletedService;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/coloros/settings/service/BootCompletedService;->d:I

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/service/BootCompletedService;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/coloros/settings/service/BootCompletedService;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 55
    invoke-static {p2}, Lcom/coloros/settings/SettingsApplication;->a(Z)V

    .line 56
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/coloros/settings/service/BootCompletedService$1;

    invoke-direct {p3, p0, p1}, Lcom/coloros/settings/service/BootCompletedService$1;-><init>(Lcom/coloros/settings/service/BootCompletedService;Landroid/content/Intent;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method
