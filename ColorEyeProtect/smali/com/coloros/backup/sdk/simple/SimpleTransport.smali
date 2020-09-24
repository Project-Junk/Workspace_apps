.class public Lcom/coloros/backup/sdk/simple/SimpleTransport;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/backup/sdk/ITransport;


# static fields
.field private static final NAME:Ljava/lang/String; = "SimpleTransportInSDK"

.field private static final TAG:Ljava/lang/String; = "SimpleTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParentPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/simple/SimpleTransport;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/coloros/backup/sdk/utils/SDCardUtils;->getStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Data"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "simple_test"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/simple/SimpleTransport;->mParentPath:Ljava/lang/String;

    const-string p1, "SimpleTransport"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleTransport, use SimpleTransport, data folder is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/simple/SimpleTransport;->mParentPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBackupPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/simple/SimpleTransport;->mParentPath:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetDirInfo(Lcom/coloros/backup/sdk/BackupAgent;)Lcom/coloros/backup/sdk/TargetDirInfo;
    .locals 2

    new-instance p1, Lcom/coloros/backup/sdk/TargetDirInfo;

    invoke-direct {p1}, Lcom/coloros/backup/sdk/TargetDirInfo;-><init>()V

    iget-object p0, p0, Lcom/coloros/backup/sdk/simple/SimpleTransport;->mParentPath:Ljava/lang/String;

    iput-object p0, p1, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    const-string p0, "SimpleTransport"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTargetDirInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTranportName()Ljava/lang/String;
    .locals 0

    const-string p0, "SimpleTransportInSDK"

    return-object p0
.end method

.method public onEndBackup()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onEndRestore()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInitBackup()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/coloros/backup/sdk/simple/SimpleTransport;->mParentPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v0, "SimpleTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitBackup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/simple/SimpleTransport;->mParentPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onInitRestore(Ljava/lang/String;)Z
    .locals 2

    const-string p1, "SimpleTransport"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInitRestore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/simple/SimpleTransport;->mParentPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public performBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z
    .locals 0

    const-string p0, "SimpleTransport"

    const-string p1, "performBackup: "

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public performRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z
    .locals 0

    const-string p0, "SimpleTransport"

    const-string p1, "prepareBackup: "

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public prepareRestore(Lcom/coloros/backup/sdk/BackupAgent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
