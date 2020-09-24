.class public Lcom/coloros/backup/sdk/backup/BackupAgentIPCServiceProxy;
.super Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupAgentIPCServiceProxy"


# instance fields
.field private mBackupAgentInfo:Lcom/coloros/backup/sdk/BackupAgentInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/backup/sdk/backup/BackupAgentIPCService;-><init>()V

    new-instance v0, Lcom/coloros/backup/sdk/BackupAgentInfo;

    invoke-direct {v0}, Lcom/coloros/backup/sdk/BackupAgentInfo;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCServiceProxy;->mBackupAgentInfo:Lcom/coloros/backup/sdk/BackupAgentInfo;

    return-void
.end method


# virtual methods
.method public getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupAgentIPCServiceProxy;->mBackupAgentInfo:Lcom/coloros/backup/sdk/BackupAgentInfo;

    return-object p0
.end method

.method public getMaxCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackupAndIncProgress()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onEnd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStart()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
