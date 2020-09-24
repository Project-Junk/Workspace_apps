.class public Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;
.super Ljava/lang/Object;
.source "LauncherMessenger.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final LAUNCHER_CLASS_FOR_KEYGUARD_BIND:Ljava/lang/String; = "com.oppo.keyguardservice.KeyGuardDismissedService"

.field private static final LAUNCHER_PKG:Ljava/lang/String; = "com.oppo.launcher"

.field public static final MSG_HIDE_LAUNCHER_CONTENT:I = 0x1

.field public static final MSG_SHOW_LAUNCHER_CONTENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LauncherMessenger"

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;


# instance fields
.field private final mBindLauncherServiceRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLauncherHasHide:Z

.field private mLauncherPageHided:Z

.field private mMessage:Landroid/os/Message;

.field private mMessenger:Landroid/os/Messenger;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mLauncherPageHided:Z

    .line 42
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mLauncherHasHide:Z

    .line 47
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;-><init>(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 133
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$2;-><init>(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mBindLauncherServiceRunnable:Ljava/lang/Runnable;

    .line 82
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mContext:Landroid/content/Context;

    .line 83
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/os/Messenger;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/os/Message;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->setLauncherPageHided(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/content/ServiceConnection;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private bindLauncherService()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mBindLauncherServiceRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->hasSameTaskInWorkLooper(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mBindLauncherServiceRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;
    .locals 2

    .line 71
    sget-object v0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->sInstance:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->sInstance:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->sInstance:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 78
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->sInstance:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    return-object p0
.end method

.method private sendMessageToLauncher(I)V
    .locals 3

    .line 150
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    const-string v1, "LauncherMessenger"

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageToLauncher what = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMessenger = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 153
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mMessage:Landroid/os/Message;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 155
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mMessage:Landroid/os/Message;

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 156
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mMessenger:Landroid/os/Messenger;

    if-nez v2, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->bindLauncherService()V

    goto :goto_1

    .line 160
    :cond_2
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 161
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->setLauncherPageHided(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessageToLauncher RemoteException = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setLauncherPageHided(Z)V
    .locals 2

    .line 169
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLauncherPageHided before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mLauncherPageHided:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " after = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherMessenger"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mLauncherPageHided:Z

    return-void
.end method

.method private unBindLauncherService()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "LauncherMessenger"

    const-string p1, "Unhandled message"

    .line 121
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mLauncherPageHided:Z

    if-eqz v0, :cond_2

    .line 117
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->sendMessageToLauncher(I)V

    goto :goto_0

    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mLauncherPageHided:Z

    if-nez v0, :cond_2

    .line 112
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->sendMessageToLauncher(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public sendMessage(IZ)V
    .locals 2

    .line 87
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  force = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherMessenger"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p1, v1, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 91
    :goto_0
    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->setLauncherPageHided(Z)V

    .line 94
    :cond_2
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 95
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    .line 98
    iget-boolean p2, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mLauncherHasHide:Z

    if-nez p2, :cond_4

    return-void

    .line 101
    :cond_4
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mLauncherHasHide:Z

    goto :goto_1

    .line 103
    :cond_5
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mLauncherHasHide:Z

    .line 105
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
