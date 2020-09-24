.class public Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;
.super Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = "BRPluginServiceInfoCV1"


# instance fields
.field private mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

.field private final mUniqueID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/BackupAgent;)V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    const-string v0, "BRPluginServiceInfoCV1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupAgent type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v2

    iget v2, v2, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p1

    iget p1, p1, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mUniqueID:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->setColorOSSupport(Z)V

    return-void
.end method


# virtual methods
.method public getBackupAgent()Lcom/coloros/backup/sdk/BackupAgent;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mUniqueID:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mUniqueID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mUniqueID:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isParent()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getGroupType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BRPluginServiceInfoCompatV1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/compat/BRPluginServiceInfoCompatV1;->mBackupAgent:Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    iget p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
