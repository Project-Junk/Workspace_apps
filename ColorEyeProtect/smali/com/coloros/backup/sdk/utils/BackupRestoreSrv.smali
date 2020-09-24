.class public Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupRestoreSrv"


# instance fields
.field private mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->getInstence()Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    return-void
.end method


# virtual methods
.method public backup(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Backup"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public backupSpecialFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cleardir(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClearDir"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public disconnect()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->disconnect()V

    return-void
.end method

.method public restore(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restore"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public tar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p3}, Lcom/coloros/backup/sdk/utils/TarToolUtils;->isMultiBlackFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TarExclude"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Tar"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result p3

    const-string p0, "BackupRestoreSrv"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tar result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tar"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public unTar(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unTar"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public unTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unTarExclude"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->mSrvClient:Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->unTar(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    :cond_0
    return p3
.end method
