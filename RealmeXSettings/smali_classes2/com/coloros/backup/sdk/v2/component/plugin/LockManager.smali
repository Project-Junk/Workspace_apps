.class public Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;
.super Ljava/lang/Object;
.source "LockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockManager"

.field private static sInstance:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;


# instance fields
.field private volatile mLockMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;
    .locals 2

    const-class v0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->sInstance:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    invoke-direct {v1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;-><init>()V

    sput-object v1, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->sInstance:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;

    .line 28
    :cond_0
    sget-object v1, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->sInstance:Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public varargs applyLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 67
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    :goto_1
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LockManager"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyLock the same lock is used, waitting for release. Lock: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 79
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 82
    :cond_1
    new-instance v1, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    invoke-direct {v1, p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public varargs getLock([Ljava/lang/String;)Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 90
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 92
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyLock(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    monitor-enter p1

    const/4 v0, 0x1

    .line 121
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->setOK(Z)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public waitResult(Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;)Ljava/lang/Object;
    .locals 4

    .line 100
    :goto_0
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    monitor-enter p1

    const-wide/16 v0, 0x64

    .line 103
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 105
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 107
    :goto_1
    monitor-exit p1

    goto :goto_0

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 111
    :try_start_2
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager$BooleanLock;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/component/plugin/LockManager;->mLockMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    const-string v2, "LockManager"

    const-string v3, "waitResult over, release lock: "

    .line 113
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
