.class public abstract Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/coloros/backup/sdk/IBackupAgent;
.implements Lcom/coloros/backup/sdk/IBackupAgentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$MyBinder;
    }
.end annotation


# static fields
.field private static final RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RestoreAgentIPCService"


# instance fields
.field private mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

.field private mBinder:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$MyBinder;

.field private mConn:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field private volatile mIsAidlServiceConnected:Z

.field private mLock:Ljava/lang/Object;

.field private mService:Lcom/coloros/backup/sdk/IBackupAgentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$2;

    invoke-direct {v0, p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$2;-><init>(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Lcom/coloros/backup/sdk/BackupAgent;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->bindService()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Lcom/coloros/backup/sdk/IBackupAgentService;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mService:Lcom/coloros/backup/sdk/IBackupAgentService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;Lcom/coloros/backup/sdk/IBackupAgentService;)Lcom/coloros/backup/sdk/IBackupAgentService;
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mService:Lcom/coloros/backup/sdk/IBackupAgentService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mIsAidlServiceConnected:Z

    return p1
.end method

.method private bindService()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/coloros/backup/sdk/BackupAgentInfo;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mIsAidlServiceConnected:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "RestoreAgentIPCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private checkService()V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mIsAidlServiceConnected:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->bindService()Z

    :cond_0
    return-void
.end method

.method private unbindService()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RestoreAgentIPCService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;
    .locals 1

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$1;-><init>(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    return-object p0
.end method

.method public abstract getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;
.end method

.method public abstract getMaxCount()I
.end method

.method protected getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreAgentIPCService"

    const-string v0, "getParams, mBackupAgent == null"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getParams()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getTargetDirInfo()Lcom/coloros/backup/sdk/TargetDirInfo;
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    if-nez v0, :cond_0

    const-string p0, "RestoreAgentIPCService"

    const-string v0, "getTargetDirInfo, mBackupAgent == null"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getTargetDirInfo()Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object p0

    return-object p0
.end method

.method protected isCancel()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->isCancel()Z

    move-result p0

    return p0
.end method

.method public onBackupAndIncProgress()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBinder:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$MyBinder;

    if-nez p1, :cond_0

    new-instance p1, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$MyBinder;

    invoke-direct {p1, p0, p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$MyBinder;-><init>(Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;Lcom/coloros/backup/sdk/IBackupAgent;)V

    iput-object p1, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBinder:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$MyBinder;

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->mBinder:Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService$MyBinder;

    return-object p0
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0, p0}, Lcom/coloros/backup/sdk/restore/RestoreAgentIPCService;->createBackupAgent(Landroid/content/Context;)Lcom/coloros/backup/sdk/BackupAgent;

    return-void
.end method

.method public abstract onInit()Z
.end method

.method public abstract onRestoreAndIncProgress()I
.end method

.method protected setCancel(Z)V
    .locals 0

    return-void
.end method
