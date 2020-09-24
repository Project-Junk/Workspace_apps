.class public Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;
.super Ljava/lang/Object;
.source "AutoOpenNotificationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoOpenNotificationHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mNeedScreenOnAction:Z

.field private mNeedUnLockAction:Z

.field private mPendingEnvelope:Landroid/app/Notification;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedScreenOnAction:Z

    .line 35
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedUnLockAction:Z

    .line 37
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mRegistered:Z

    .line 97
    new-instance v0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;-><init>(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->registerAutoOpenNotificationReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedScreenOnAction:Z

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)Landroid/app/Notification;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mPendingEnvelope:Landroid/app/Notification;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->unLockScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedUnLockAction:Z

    return p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->openNotification()V

    return-void
.end method

.method private openNotification()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mPendingEnvelope:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedScreenOnAction:Z

    .line 92
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedUnLockAction:Z

    .line 93
    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mPendingEnvelope:Landroid/app/Notification;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v2, "Notification"

    const-string v3, "AutoOpenNotificationHandler"

    const-string v4, "Envelope--Can\'t open notification"

    .line 89
    invoke-static {v2, v3, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 91
    :goto_2
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedScreenOnAction:Z

    .line 92
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedUnLockAction:Z

    .line 93
    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mPendingEnvelope:Landroid/app/Notification;

    .line 94
    throw v2
.end method

.method private unLockScreen()V
    .locals 2

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedScreenOnAction:Z

    .line 74
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 75
    new-instance v0, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct {v0}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    .line 76
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "unlockOrShowSecurity"

    .line 78
    invoke-virtual {v0, p0}, Landroid/view/IOppoWindowManagerImpl;->requestKeyguard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Notification"

    const-string v0, "AutoOpenNotificationHandler"

    const-string v1, "Envelop--RequestKeyguard failed"

    .line 80
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private wakeUpScreen()V
    .locals 2

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedUnLockAction:Z

    .line 62
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 63
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3000000a

    const-string v1, "AutoOpenNotificationHandler : wakeUpScreen"

    .line 64
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 68
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onKeyguardStatus(Landroid/app/Notification;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mPendingEnvelope:Landroid/app/Notification;

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedUnLockAction:Z

    .line 56
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->unLockScreen()V

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onScreenOff(Landroid/app/Notification;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mPendingEnvelope:Landroid/app/Notification;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mNeedScreenOnAction:Z

    .line 48
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->wakeUpScreen()V

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerAutoOpenNotificationReceiver()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mRegistered:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mRegistered:Z

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unRegisterAutoOpenNotificationReceiver()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 124
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mRegistered:Z

    .line 125
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
