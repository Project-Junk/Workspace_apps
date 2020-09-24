.class public Lcom/android/systemui/qs/external/TileServiceManager;
.super Ljava/lang/Object;
.source "TileServiceManager.java"


# static fields
.field public static final DEBUG:Z = true

.field private static final MIN_BIND_TIME:J = 0x1388L

.field static final PREFS_FILE:Ljava/lang/String; = "CustomTileModes"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TileServiceManager"

.field private static final UNBIND_DELAY:J = 0x7530L


# instance fields
.field private mBindAllowed:Z

.field private mBindRequested:Z

.field private mBound:Z

.field private final mHandler:Landroid/os/Handler;

.field private mJustBound:Z

.field final mJustBoundOver:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLastUpdate:J

.field private mPendingBind:Z

.field private mPriority:I

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private mShowingDialog:Z

.field private mStarted:Z

.field private final mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

.field private final mUnbind:Ljava/lang/Runnable;

.field private final mUninstallReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)V
    .locals 8

    .line 77
    new-instance v7, Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    .line 79
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    invoke-direct {v6, p3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, v7

    move-object v1, p2

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 77
    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/qs/external/TileLifecycleManager;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/qs/external/TileLifecycleManager;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    .line 247
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$1;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    .line 256
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$2;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    .line 265
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$3;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 86
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 90
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance p2, Lcom/android/systemui/qs/external/-$$Lambda$TileServiceManager$qnU6LWun43ZVYaJ1KlK1jSK4fuc;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/external/-$$Lambda$TileServiceManager$qnU6LWun43ZVYaJ1KlK1jSK4fuc;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setServiceConnectedListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileServiceConnectedListener;)V

    .line 96
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 97
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "package"

    .line 98
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    .line 101
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/external/TileServiceManager;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/external/TileServiceManager;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->unbindService()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/external/TileServiceManager;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileServices;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileLifecycleManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    return-object p0
.end method

.method private bindService()V
    .locals 5

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_0

    const-string p0, "TileServiceManager"

    const-string v0, "Service already bound"

    .line 195
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 200
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 201
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    return-void
.end method

.method private unbindService()V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez v0, :cond_0

    const-string p0, "TileServiceManager"

    const-string v0, "Service not bound"

    .line 207
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 212
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    return-void
.end method


# virtual methods
.method public calculateBindPriority(J)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->hasPendingClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7fffffff

    .line 219
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 220
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    if-eqz v0, :cond_1

    const p1, 0x7ffffffe

    .line 222
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 223
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    if-eqz v0, :cond_2

    const p1, 0x7ffffffd

    .line 226
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 227
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez v0, :cond_3

    const/high16 p1, -0x80000000

    .line 229
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 232
    :cond_3
    iget-wide v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x7ffffffc

    cmp-long v0, p1, v0

    if-lez v0, :cond_4

    const p1, 0x7ffffffc

    .line 236
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    :cond_4
    long-to-int p1, p1

    .line 238
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    :goto_0
    return-void
.end method

.method public clearPendingBind()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    return-void
.end method

.method public getBindPriority()I
    .locals 0

    .line 244
    iget p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    return p0
.end method

.method public getTileService()Landroid/service/quicksettings/IQSTileService;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    return-object p0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public handleDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDestroy()V

    return-void
.end method

.method public hasPendingBind()Z
    .locals 0

    .line 186
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    return p0
.end method

.method public isActiveTile()Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isActiveTile()Z

    move-result p0

    return p0
.end method

.method isLifecycleStarted()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    return p0
.end method

.method public synthetic lambda$new$0$TileServiceManager()V
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnServiceConnected clearPendingBind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "TileServiceManager"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->clearPendingBind()V

    return-void
.end method

.method public setBindAllowed(Z)V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 177
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    .line 178
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->unbindService()V

    goto :goto_0

    .line 180
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez p1, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBindRequested(Z)V
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 148
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    .line 149
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    .line 155
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public setLastUpdate(J)V
    .locals 0

    .line 161
    iput-wide p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    .line 162
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    return-void
.end method

.method public setShowingDialog(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    return-void
.end method

.method public setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V

    return-void
.end method

.method startLifecycleManagerAndAddTile()V
    .locals 4

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    .line 117
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 119
    invoke-static {v2, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isTileAdded(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-static {v2, v1, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    :cond_0
    return-void
.end method
