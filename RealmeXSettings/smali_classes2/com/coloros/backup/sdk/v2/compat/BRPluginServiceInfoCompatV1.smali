.class public Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;
.super Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;
.source "BRPluginServiceInfoCompatV1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BRPluginServiceInfoCV1"


# instance fields
.field private mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

.field private final mUniqueID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/BackupAgent;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backupAgent type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BRPluginServiceInfoCV1"

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p1

    iget p1, p1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mUniqueID:Ljava/lang/String;

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->setColorOSSupport(Z)V

    return-void
.end method


# virtual methods
.method public getBackupAgent()Lcom/coloros/backup/sdk/BackupAgent;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mUniqueID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mUniqueID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isParent()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/BackupAgent;->getGroupType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BRPluginServiceInfoCompatV1_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v1

    iget v1, v1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
