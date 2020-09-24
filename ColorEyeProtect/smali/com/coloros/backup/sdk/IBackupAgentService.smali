.class public interface abstract Lcom/coloros/backup/sdk/IBackupAgentService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/IBackupAgentService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;
.end method

.method public abstract getMaxCount()I
.end method

.method public abstract onBackupAndIncProgress()I
.end method

.method public abstract onEnd()Z
.end method

.method public abstract onInit()Z
.end method

.method public abstract onRestoreAndIncProgress()I
.end method

.method public abstract onStart()Z
.end method

.method public abstract setParams(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTargetDirInfo(Lcom/coloros/backup/sdk/TargetDirInfo;)V
.end method
