.class final Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;
.super Ljava/lang/Object;
.source "BackupRestoreProxyManager.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;


# instance fields
.field private final mProxies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->mProxies:Ljava/util/Set;

    .line 37
    new-instance v0, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/navbar/proxy/NavBarBackupRestoreProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->addProxy(Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V

    .line 38
    new-instance v0, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeBackupRestoreProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeBackupRestoreProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->addProxy(Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V

    .line 39
    new-instance v0, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsBackupRestoreProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/stackdivider/proxy/SplitScreenSettingsBackupRestoreProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->addProxy(Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V

    .line 40
    new-instance v0, Lcom/coloros/systemui/qs/proxy/QsBackupRestoreProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/qs/proxy/QsBackupRestoreProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->addProxy(Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V

    return-void
.end method

.method private addProxy(Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->mProxies:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getInstance()Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;
    .locals 2

    .line 44
    sget-object v0, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->sInstance:Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->sInstance:Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;

    invoke-direct {v1}, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->sInstance:Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->sInstance:Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;

    return-object v0
.end method

.method static synthetic lambda$getAllKeys$0(Landroid/util/ArraySet;Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;->loadKeys()Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic lambda$handleBackup$1(Ljava/util/HashMap;Landroid/content/Context;Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V
    .locals 0

    .line 66
    invoke-virtual {p2, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;->onBackup(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$handleRestore$3(Ljava/util/HashMap;Landroid/content/Context;Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;)V
    .locals 3

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-virtual {p2}, Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;->loadKeys()Landroid/util/ArraySet;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$5gt2zltuQhg7p4fkq9-HpzXawMA;

    invoke-direct {v2, v1, v0}, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$5gt2zltuQhg7p4fkq9-HpzXawMA;-><init>(Landroid/util/ArraySet;Ljava/util/HashMap;)V

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 80
    invoke-virtual {p2, p1, v0}, Lcom/coloros/systemui/common/backuprestore/plugin/AbsBackupRestoreProxy;->onRestore(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$null$2(Landroid/util/ArraySet;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method getAllKeys()Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 60
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->mProxies:Ljava/util/Set;

    new-instance v1, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$nYQ-9wksl5dqaAWVJStQhHShSpg;

    invoke-direct {v1, v0}, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$nYQ-9wksl5dqaAWVJStQhHShSpg;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method handleBackup(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->mProxies:Ljava/util/Set;

    new-instance v1, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$gsahCqSjZBZJG5INeZACGJu2Ufk;

    invoke-direct {v1, v0, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$gsahCqSjZBZJG5INeZACGJu2Ufk;-><init>(Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method handleRestore(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/common/backuprestore/plugin/BackupRestoreProxyManager;->mProxies:Ljava/util/Set;

    new-instance v0, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$HsnJXbMD5ZYx6fl8Ws8k5nbzyWs;

    invoke-direct {v0, p2, p1}, Lcom/coloros/systemui/common/backuprestore/plugin/-$$Lambda$BackupRestoreProxyManager$HsnJXbMD5ZYx6fl8Ws8k5nbzyWs;-><init>(Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
