.class public Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;
.super Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BRPluginProxyCompatV1"


# instance fields
.field private mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

.field private volatile mCompletedCount:I

.field private mHasRunEnd:Z

.field private mITransport:Lcom/coloros/backup/sdk/ITransport;

.field private final mLock:Ljava/lang/Object;

.field private mPercent:F

.field private mPluginPath:Ljava/lang/String;

.field private mProgressBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;-><init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mProgressBundle:Landroid/os/Bundle;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPercent:F

    instance-of p1, p2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->getBackupAgent()Lcom/coloros/backup/sdk/BackupAgent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->setCompat(Lcom/coloros/backup/sdk/BackupAgent;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "info is not BRPluginServiceInfoCompatV1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;-><init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mProgressBundle:Landroid/os/Bundle;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPercent:F

    instance-of p1, p2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->getBackupAgent()Lcom/coloros/backup/sdk/BackupAgent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->setCompat(Lcom/coloros/backup/sdk/BackupAgent;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "info is not BRPluginServiceInfoCompatV1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Lcom/coloros/backup/sdk/BackupAgent;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mProgressBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)F
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPercent:F

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;F)F
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPercent:F

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Lcom/coloros/backup/sdk/v2/host/listener/BRListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Lcom/coloros/backup/sdk/v2/host/listener/BRListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    return-object p0
.end method

.method private doEnd()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mHasRunEnd:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mHasRunEnd:Z

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->onEnd()Z

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

.method private setCompat(Lcom/coloros/backup/sdk/BackupAgent;)V
    .locals 1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    new-instance v0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;

    invoke-direct {v0, p0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;-><init>(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)V

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setProgressListener(Lcom/coloros/backup/sdk/OnProgressListener;)V

    return-void
.end method


# virtual methods
.method public backup(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->onStart()Z

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginStart(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    mul-int/lit8 v2, p1, 0x2

    if-gt v1, v2, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->onBackupOne()I

    move-result v0

    const-string v2, "BRPluginProxyCompatV1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackupThread->backupAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v4

    iget v4, v4, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " onBackupOne, loopTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mCompletedCount:I

    goto :goto_1

    :cond_1
    const-string p0, "BRPluginProxyCompatV1"

    const-string p1, "BackupThread->backupAgent, backupAgent.getMaxCount() < 0"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public cancel(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "BRPluginProxyCompatV1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/BackupAgent;->setCancel(Z)V

    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mHasRunEnd:Z

    iput v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mCompletedCount:I

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    check-cast v1, Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;->getTransport()Lcom/coloros/backup/sdk/ITransport;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->getServiceInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "params"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0, v1}, Lcom/coloros/backup/sdk/BackupAgent;->setParams(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    instance-of v0, v0, Lcom/coloros/backup/sdk/BackupGroupAgent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    check-cast v0, Lcom/coloros/backup/sdk/BackupGroupAgent;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-virtual {v0, v1}, Lcom/coloros/backup/sdk/BackupGroupAgent;->setTransport(Lcom/coloros/backup/sdk/ITransport;)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-interface {v0, v1}, Lcom/coloros/backup/sdk/ITransport;->prepareBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-interface {v0, v1}, Lcom/coloros/backup/sdk/ITransport;->prepareRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z

    :goto_2
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-interface {v0, v1}, Lcom/coloros/backup/sdk/ITransport;->getTargetDirInfo(Lcom/coloros/backup/sdk/BackupAgent;)Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPluginPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setTargetDirInfo(Lcom/coloros/backup/sdk/TargetDirInfo;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginCreate(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-direct {v0, p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    const-string v0, "uniqueID"

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    iget p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "BRPluginProxyCompatV1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v0

    iget v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mCompletedCount:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putBRResult(Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->doEnd()V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginEnd(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method

.method public doContinue(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public doPause(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getPluginBackupPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPluginPath:Ljava/lang/String;

    return-object p0
.end method

.method public prepare(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->onInit()Z

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    const-string p1, "BRPluginProxyCompatV1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepare: Bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {p1, p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPrepare(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method

.method public preview(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->onInit()Z

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/compat/DataSizeUtils;->estimateSize(II)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putPreviewDataSize(Landroid/os/Bundle;J)V

    const-string p1, "BRPluginProxyCompatV1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreview: Bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {p1, p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPreview(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->onStart()Z

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginStart(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    mul-int/lit8 v2, p1, 0x2

    if-gt v1, v2, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->onRestoreOne()I

    move-result v0

    const-string v2, "BRPluginProxyCompatV1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackupThread->backupAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v4

    iget v4, v4, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " onRestoreOne, loopTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mCompletedCount:I

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->doEnd()V

    goto :goto_1

    :cond_1
    const-string p0, "BRPluginProxyCompatV1"

    const-string p1, "BackupThread->backupAgent, backupAgent.getMaxCount() < 0"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
