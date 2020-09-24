.class public Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;
.super Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;
.source "BRPluginProxyCompatV1.java"


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

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;-><init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V

    .line 29
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mProgressBundle:Landroid/os/Bundle;

    .line 33
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPercent:F

    .line 40
    instance-of p1, p2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    if-eqz p1, :cond_0

    .line 41
    check-cast p2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->getBackupAgent()Lcom/coloros/backup/sdk/BackupAgent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->setCompat(Lcom/coloros/backup/sdk/BackupAgent;)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "info is not BRPluginServiceInfoCompatV1"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;-><init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V

    .line 29
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mProgressBundle:Landroid/os/Bundle;

    .line 33
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPercent:F

    .line 50
    instance-of p1, p2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    if-eqz p1, :cond_0

    .line 51
    check-cast p2, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;

    invoke-virtual {p2}, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->getBackupAgent()Lcom/coloros/backup/sdk/BackupAgent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->setCompat(Lcom/coloros/backup/sdk/BackupAgent;)V

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "info is not BRPluginServiceInfoCompatV1"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Lcom/coloros/backup/sdk/BackupAgent;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Landroid/os/Bundle;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mProgressBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPercent:F

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPercent:F

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Lcom/coloros/backup/sdk/v2/host/listener/BRListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)Lcom/coloros/backup/sdk/v2/host/listener/BRListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    return-object p0
.end method

.method private doEnd()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mHasRunEnd:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 244
    iput-boolean v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mHasRunEnd:Z

    .line 245
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onEnd()Z

    .line 247
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCompat(Lcom/coloros/backup/sdk/BackupAgent;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    .line 66
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    new-instance v0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;

    invoke-direct {v0, p0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1$CompatOnProgressListener;-><init>(Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;)V

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setProgressListener(Lcom/coloros/backup/sdk/OnProgressListener;)V

    return-void
.end method


# virtual methods
.method public backup(Landroid/os/Bundle;)V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->onStart()Z

    .line 148
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginStart(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 150
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p1

    const-string v0, "BRPluginProxyCompatV1"

    if-lez p1, :cond_1

    const/4 v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 156
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v3}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    mul-int/lit8 v3, p1, 0x2

    if-gt v2, v3, :cond_0

    .line 163
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onBackupOne()I

    move-result v1

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BackupThread->backupAgent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v4

    iget v4, v4, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " onBackupOne, loopTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_0
    iput v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mCompletedCount:I

    return-void

    :cond_1
    const-string p1, "BackupThread->backupAgent, backupAgent.getMaxCount() < 0"

    .line 172
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancel(Landroid/os/Bundle;)V
    .locals 1

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCancel:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BRPluginProxyCompatV1"

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setCancel(Z)V

    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mHasRunEnd:Z

    .line 76
    iput v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mCompletedCount:I

    .line 77
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    check-cast v1, Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/compat/BREngineConfigCompatV1;->getTransport()Lcom/coloros/backup/sdk/ITransport;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->getServiceInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "params"

    .line 81
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 83
    array-length v3, v2

    if-lez v3, :cond_1

    .line 84
    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    .line 85
    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 89
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0, v1}, Lcom/coloros/backup/sdk/BackupAgent;->setParams(Ljava/util/List;)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    instance-of v1, v0, Lcom/coloros/backup/sdk/BackupGroupAgent;

    if-eqz v1, :cond_3

    .line 93
    check-cast v0, Lcom/coloros/backup/sdk/BackupGroupAgent;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-virtual {v0, v1}, Lcom/coloros/backup/sdk/BackupGroupAgent;->setTransport(Lcom/coloros/backup/sdk/ITransport;)V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v0

    if-nez v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-interface {v0, v1}, Lcom/coloros/backup/sdk/ITransport;->prepareBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z

    goto :goto_2

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-interface {v0, v1}, Lcom/coloros/backup/sdk/ITransport;->prepareRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z

    .line 101
    :goto_2
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-interface {v0, v1}, Lcom/coloros/backup/sdk/ITransport;->getTargetDirInfo(Lcom/coloros/backup/sdk/BackupAgent;)Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object v0

    .line 102
    iget-object v1, v0, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPluginPath:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setTargetDirInfo(Lcom/coloros/backup/sdk/TargetDirInfo;)V

    .line 105
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginCreate(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 107
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 108
    new-instance v0, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-direct {v0, p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    .line 109
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniqueID"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy(Landroid/os/Bundle;)V
    .locals 2

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDestroy:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BRPluginProxyCompatV1"

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 229
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v0

    .line 230
    iget v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mCompletedCount:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 232
    :cond_0
    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    .line 233
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 235
    :goto_0
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putBRResult(Landroid/os/Bundle;I)V

    .line 237
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->doEnd()V

    .line 238
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
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mPluginPath:Ljava/lang/String;

    return-object v0
.end method

.method public prepare(Landroid/os/Bundle;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->onInit()Z

    .line 135
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 138
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 141
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPrepare: Bundle: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "BRPluginProxyCompatV1"

    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {p1, p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPrepare(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method

.method public preview(Landroid/os/Bundle;)V
    .locals 3

    .line 115
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->onInit()Z

    .line 116
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 120
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 123
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    .line 124
    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/compat/DataSizeUtils;->estimateSize(II)J

    move-result-wide v1

    .line 125
    invoke-static {v0, v1, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putPreviewDataSize(Landroid/os/Bundle;J)V

    .line 127
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPreview: Bundle: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "BRPluginProxyCompatV1"

    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {p1, p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPreview(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->onStart()Z

    .line 179
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginStart(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 181
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result p1

    const-string v0, "BRPluginProxyCompatV1"

    if-lez p1, :cond_2

    const/4 v1, -0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 187
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v3}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    mul-int/lit8 v3, p1, 0x2

    if-gt v2, v3, :cond_0

    .line 194
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onRestoreOne()I

    move-result v1

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BackupThread->backupAgent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v4

    iget v4, v4, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " onRestoreOne, loopTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iput v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mCompletedCount:I

    .line 201
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->doEnd()V

    :cond_1
    return-void

    :cond_2
    const-string p1, "BackupThread->backupAgent, backupAgent.getMaxCount() < 0"

    .line 205
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginProxyCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
