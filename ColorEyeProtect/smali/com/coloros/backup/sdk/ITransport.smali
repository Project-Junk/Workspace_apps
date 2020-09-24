.class public interface abstract Lcom/coloros/backup/sdk/ITransport;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBackupPath()Ljava/lang/String;
.end method

.method public abstract getTargetDirInfo(Lcom/coloros/backup/sdk/BackupAgent;)Lcom/coloros/backup/sdk/TargetDirInfo;
.end method

.method public abstract getTranportName()Ljava/lang/String;
.end method

.method public abstract onEndBackup()Z
.end method

.method public abstract onEndRestore()Z
.end method

.method public abstract onInitBackup()Z
.end method

.method public abstract onInitRestore(Ljava/lang/String;)Z
.end method

.method public abstract performBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z
.end method

.method public abstract performRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z
.end method

.method public abstract prepareBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z
.end method

.method public abstract prepareRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z
.end method
