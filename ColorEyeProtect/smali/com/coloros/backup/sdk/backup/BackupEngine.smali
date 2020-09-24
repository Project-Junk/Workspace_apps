.class public Lcom/coloros/backup/sdk/backup/BackupEngine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/backup/BackupEngine$BackupThread;,
        Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;,
        Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;,
        Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupStartListener;,
        Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupDoneListener;
    }
.end annotation


# static fields
.field private static final COMPLETED_TASK_COUNT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "BackupRestore BackupEngine"

.field private static final TIME_TAG:Ljava/lang/String; = "Time Cost"


# instance fields
.field private mAllBackupAgentArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupAgentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupDoneListener:Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupDoneListener;

.field private final mBackupProgressLock:Ljava/lang/Object;

.field private mBackupStartListener:Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupStartListener;

.field private volatile mCompletedTask:I

.field private mContext:Landroid/content/Context;

.field private mITransport:Lcom/coloros/backup/sdk/ITransport;

.field private mIsCancel:Z

.field private mIsPause:Z

.field private mIsRunning:Z

.field private final mLock:Ljava/lang/Object;

.field private mModuleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

.field private mParasMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResult:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;Lcom/coloros/backup/sdk/OnProgressListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/coloros/backup/sdk/BackupAgent;",
            ">;",
            "Lcom/coloros/backup/sdk/OnProgressListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsRunning:Z

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsPause:Z

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsCancel:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupProgressLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mParasMap:Landroid/util/SparseArray;

    iput v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mCompletedTask:I

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    iput-object p2, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mAllBackupAgentArray:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/backup/sdk/backup/BackupEngine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsPause:Z

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/backup/sdk/backup/BackupEngine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsCancel:Z

    return p0
.end method

.method static synthetic access$400(Lcom/coloros/backup/sdk/backup/BackupEngine;)Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mResult:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    return-object p0
.end method

.method static synthetic access$402(Lcom/coloros/backup/sdk/backup/BackupEngine;Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;)Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mResult:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    return-object p1
.end method

.method static synthetic access$500(Lcom/coloros/backup/sdk/backup/BackupEngine;)Lcom/coloros/backup/sdk/ITransport;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-object p0
.end method

.method static synthetic access$602(Lcom/coloros/backup/sdk/backup/BackupEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/coloros/backup/sdk/backup/BackupEngine;)I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mCompletedTask:I

    return p0
.end method

.method static synthetic access$708(Lcom/coloros/backup/sdk/backup/BackupEngine;)I
    .locals 2

    iget v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mCompletedTask:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mCompletedTask:I

    return v0
.end method

.method static synthetic access$800(Lcom/coloros/backup/sdk/backup/BackupEngine;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupProgressLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/backup/sdk/backup/BackupEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->executeBackupOperation()V

    return-void
.end method

.method private addBackupAgent(Lcom/coloros/backup/sdk/BackupAgent;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v0

    iget v0, v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mParasMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setParams(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-virtual {p1, v0}, Lcom/coloros/backup/sdk/BackupAgent;->setProgressListener(Lcom/coloros/backup/sdk/OnProgressListener;)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private createTmpFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v0, "tempFile.tmp"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "BackupRestore BackupEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private deleteTmpFile(Ljava/io/File;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private executeBackupOperation()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "BackupEngine"

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Fail:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    iput-object v4, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mResult:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    iget-object v4, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v4}, Lcom/coloros/backup/sdk/ITransport;->onInitBackup()Z

    iget-object v4, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/backup/sdk/BackupAgent;

    instance-of v6, v5, Lcom/coloros/backup/sdk/BackupGroupAgent;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lcom/coloros/backup/sdk/BackupGroupAgent;

    iget-object v7, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-virtual {v6, v7}, Lcom/coloros/backup/sdk/BackupGroupAgent;->setTransport(Lcom/coloros/backup/sdk/ITransport;)V

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v6, v5}, Lcom/coloros/backup/sdk/ITransport;->prepareBackup(Lcom/coloros/backup/sdk/BackupAgent;)Z

    iget-object v6, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v6, v5}, Lcom/coloros/backup/sdk/ITransport;->getTargetDirInfo(Lcom/coloros/backup/sdk/BackupAgent;)Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coloros/backup/sdk/BackupAgent;->setTargetDirInfo(Lcom/coloros/backup/sdk/TargetDirInfo;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/coloros/backup/sdk/BackupAgent;->setProgressListener(Lcom/coloros/backup/sdk/OnProgressListener;)V

    invoke-virtual {v5}, Lcom/coloros/backup/sdk/BackupAgent;->onInit()Z

    invoke-virtual {v5}, Lcom/coloros/backup/sdk/BackupAgent;->getMaxCount()I

    move-result v6

    iget-object v7, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mOnProgressListener:Lcom/coloros/backup/sdk/OnProgressListener;

    invoke-virtual {v5, v7}, Lcom/coloros/backup/sdk/BackupAgent;->setProgressListener(Lcom/coloros/backup/sdk/OnProgressListener;)V

    invoke-virtual {v5}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v5

    iget v5, v5, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "BackupRestore BackupEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BackupThread init, failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Fail:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    iput-object v5, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mResult:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupStartListener:Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupStartListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupStartListener:Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupStartListener;

    iget-object v5, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v5}, Lcom/coloros/backup/sdk/ITransport;->getBackupPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupStartListener;->onStartBackup(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "BackupRestore BackupEngine"

    const-string v4, "mBackupStartListner == null, error!, do you set this null? Something like cancel backup."

    invoke-static {v3, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v3}, Lcom/coloros/backup/sdk/ITransport;->getBackupPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/coloros/backup/sdk/backup/BackupEngine;->createTmpFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-string v0, "BackupRestore BackupEngine--Time Cost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BackupThread begin... and init cost time : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v5}, Lcom/coloros/backup/sdk/BackupAgent;->getBackupAgentInfo()Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object v6

    iget v6, v6, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    const/16 v7, 0x230

    if-ne v6, v7, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v4, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;

    invoke-direct {v4, p0, v0}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;-><init>(Lcom/coloros/backup/sdk/backup/BackupEngine;Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->start()V

    new-instance v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;

    invoke-direct {v0, p0, v1}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;-><init>(Lcom/coloros/backup/sdk/backup/BackupEngine;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupProgressThread;->start()V

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupProgressLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    const-string v1, "BackupRestore BackupEngine"

    const-string v4, "BackupThread mBackupProgressLock wait before progress end..."

    invoke-static {v1, v4}, Lcom/coloros/backup/sdk/utils/MyLogger;->logV(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupProgressLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsCancel:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;->Cancel:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    iput-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mResult:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/BackupAgent;->onCancel()V

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v1}, Lcom/coloros/backup/sdk/ITransport;->getBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/backup/sdk/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    :cond_6
    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v0}, Lcom/coloros/backup/sdk/ITransport;->onEndBackup()Z

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupDoneListener:Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupDoneListener;

    if-eqz v0, :cond_7

    invoke-direct {p0, v3}, Lcom/coloros/backup/sdk/backup/BackupEngine;->deleteTmpFile(Ljava/io/File;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupDoneListener:Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupDoneListener;

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mResult:Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;

    invoke-interface {v0, p0}, Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupDoneListener;->onFinishBackup(Lcom/coloros/backup/sdk/backup/BackupEngine$BackupResultType;)V

    goto :goto_6

    :cond_7
    invoke-direct {p0, v3}, Lcom/coloros/backup/sdk/backup/BackupEngine;->deleteTmpFile(Ljava/io/File;)V

    :goto_6
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :goto_7
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mParasMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mParasMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsPause:Z

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsCancel:Z

    return-void
.end method

.method private setupBackupAgent(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "BackupRestore BackupEngine"

    const-string v1, "setupBackupAgent begin..."

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mAllBackupAgentArray:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/backup/sdk/BackupAgent;

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/coloros/backup/sdk/backup/BackupEngine;->addBackupAgent(Lcom/coloros/backup/sdk/BackupAgent;)V

    goto :goto_0

    :cond_0
    const-string v0, "BackupRestore BackupEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning! setupBackupAgent: this type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not exist."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logW(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string p0, "BackupRestore BackupEngine"

    const-string p1, "setupBackupAgent finish"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/backup/sdk/BackupAgent;

    invoke-virtual {v1, v2}, Lcom/coloros/backup/sdk/BackupAgent;->setCancel(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsCancel:Z

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->continueBackup()V

    return-void
.end method

.method public continueBackup()V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsPause:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsPause:Z

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public getITransport()Lcom/coloros/backup/sdk/ITransport;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-object p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsRunning:Z

    return p0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsPause:Z

    return-void
.end method

.method public setBackupItemParam(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mParasMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setBackupModelList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->reset()V

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mModuleList:Ljava/util/ArrayList;

    return-void
.end method

.method public setITransport(Lcom/coloros/backup/sdk/ITransport;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    return-void
.end method

.method public setOnBackupDoneListner(Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupDoneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupDoneListener:Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupDoneListener;

    return-void
.end method

.method public setOnBackupStartListner(Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mBackupStartListener:Lcom/coloros/backup/sdk/backup/BackupEngine$OnBackupStartListener;

    return-void
.end method

.method public startBackup()Z
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coloros/backup/sdk/simple/SimpleTransport;

    iget-object v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/backup/sdk/simple/SimpleTransport;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->setITransport(Lcom/coloros/backup/sdk/ITransport;)V

    const-string v0, "BackupRestore BackupEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mITransport is null!!!, so use SimpleTransport in SDK. Only for test!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v2}, Lcom/coloros/backup/sdk/ITransport;->getTranportName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "BackupRestore BackupEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBackup(), Transport name is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mITransport:Lcom/coloros/backup/sdk/ITransport;

    invoke-interface {v2}, Lcom/coloros/backup/sdk/ITransport;->getTranportName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mModuleList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/backup/BackupEngine;->setupBackupAgent(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/coloros/backup/sdk/backup/BackupEngine;->mIsRunning:Z

    new-instance v0, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupThread;-><init>(Lcom/coloros/backup/sdk/backup/BackupEngine;Lcom/coloros/backup/sdk/backup/BackupEngine$1;)V

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/backup/BackupEngine$BackupThread;->start()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
