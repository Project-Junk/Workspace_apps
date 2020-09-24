.class public Lcom/coloros/systemui/common/observer/LockTaskModeObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "LockTaskModeObserver.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/common/observer/LockTaskModeObserver;


# instance fields
.field private mIsLockTaskMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/observer/LockTaskModeObserver;
    .locals 2

    .line 37
    sget-object v0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->sInstance:Lcom/coloros/systemui/common/observer/LockTaskModeObserver;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->sInstance:Lcom/coloros/systemui/common/observer/LockTaskModeObserver;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->sInstance:Lcom/coloros/systemui/common/observer/LockTaskModeObserver;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->sInstance:Lcom/coloros/systemui/common/observer/LockTaskModeObserver;

    return-object v0
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "lock_to_app_enabled"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isLockTaskMode()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->mIsLockTaskMode:Z

    return p0
.end method

.method protected onChange(Z)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 61
    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getLockTaskModeState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->mIsLockTaskMode:Z

    .line 62
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public stopLockTaskMode()V
    .locals 3

    .line 71
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/LockTaskModeObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopLockTaskMode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
