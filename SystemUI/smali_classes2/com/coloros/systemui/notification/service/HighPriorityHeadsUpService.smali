.class public Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;
.super Landroid/app/Service;
.source "HighPriorityHeadsUpService.java"


# static fields
.field private static final MSG_DISMISS:I = 0x1

.field private static final MSG_SEND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HighPriorityHeadsUpService"


# instance fields
.field private final mBinder:Lcom/coloros/notification/IHighPriorityHeadsUpService$Stub;

.field private mHandler:Landroid/os/Handler;

.field private mSender:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$1;-><init>(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->mBinder:Lcom/coloros/notification/IHighPriorityHeadsUpService$Stub;

    .line 61
    new-instance v0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$2;-><init>(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;Landroid/os/Message;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->handleSend(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->handleDismiss()V

    return-void
.end method

.method private handleDismiss()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->mSender:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->mSender:Landroid/os/IBinder;

    .line 78
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->onHighPriorityHeadsUpStateChange(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "HighPriorityHeadsUpService"

    const-string v0, "mSender is already null"

    .line 80
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleSend(Landroid/os/Message;)V
    .locals 1

    .line 85
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->mSender:Landroid/os/IBinder;

    .line 87
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->mSender:Landroid/os/IBinder;

    new-instance v0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$3;-><init>(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "HighPriorityHeadsUpService"

    const-string v0, "requestHeadsUp,linkToDeath error: "

    .line 95
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class p1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->onHighPriorityHeadsUpStateChange(Z)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->mBinder:Lcom/coloros/notification/IHighPriorityHeadsUpService$Stub;

    return-object p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "Notification"

    const-string v1, "HighPriorityHeadsUpService"

    const-string v2, "onUnbind"

    .line 44
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
