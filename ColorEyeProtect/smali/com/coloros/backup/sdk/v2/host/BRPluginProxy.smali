.class public Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;,
        Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PluginProtectHandler;,
        Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverWorkHandler;,
        Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverHandler;
    }
.end annotation


# static fields
.field private static final BR_RETRY_TIMES:I = 0x3

.field private static final PROTECT_TIME:J = 0x493e0L

.field private static final RETRY_DURATION:I = 0x5dc

.field private static final SERVICE_CONNECT_RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BRPluginProxy"

.field private static final UPDATE_DELAY_TIME:J = 0xea60L


# instance fields
.field private mBREngine:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

.field protected mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

.field private mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

.field protected mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

.field protected mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFileDescriptorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

.field private final mInstallLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private volatile mIsDestroy:Z

.field private volatile mIsServiceConnected:Z

.field private volatile mIsWaitReturn:Z

.field private mMessenger:Landroid/os/Messenger;

.field private mPluginProtectHandler:Landroid/os/Handler;

.field private mReceiverMsgHandler:Landroid/os/Handler;

.field private mReceiverWorkHandler:Landroid/os/Handler;

.field private mService:Landroid/os/Messenger;

.field private final mServiceConnectLock:Ljava/lang/Object;

.field private final mWaitForReturnLock:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;-><init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mServiceConnectLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInstallLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mFileDescriptorMap:Ljava/util/HashMap;

    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;

    invoke-direct {v0, p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mConn:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {p3}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngine:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    if-eqz p4, :cond_0

    new-instance p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverHandler;

    invoke-direct {p1, p0, p4}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverHandler;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mReceiverMsgHandler:Landroid/os/Handler;

    :cond_0
    if-eqz p5, :cond_1

    new-instance p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverWorkHandler;

    invoke-direct {p1, p0, p5}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverWorkHandler;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mReceiverWorkHandler:Landroid/os/Handler;

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PluginProtectHandler;

    invoke-direct {p2, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PluginProtectHandler;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->updatePluginProtect()V

    return-void
.end method

.method static synthetic access$1002(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInstallLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->receiveReturn(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mReceiverWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->addPluginProtect()V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->createInner(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;ILandroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->invokeMethodInner(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$802(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$900(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mServiceConnectLock:Ljava/lang/Object;

    return-object p0
.end method

.method private addPluginProtect()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/app/OppoWhiteListManager;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Landroid/app/OppoWhiteListManager;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/OppoWhiteListManager;->addStageProtectInfo(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BRPluginProxy"

    const-string v0, "NoSuchMethodError"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addShareLibs(Landroid/content/Context;Ljava/lang/String;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)V
    .locals 4

    invoke-virtual {p3}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->isUseParentClass()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getDexPath()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    array-length p1, p0

    if-lez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    array-length p2, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p0

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "dexPaths"

    new-array p2, v1, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p3, p0, p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->putValue(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private backupAppData(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    const-string p0, "backup_src_folder"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "backup_dst_folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    new-instance v1, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;

    invoke-direct {v1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->backup(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string v0, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackupRestoreSrv backup result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "backup_restore_app_data_result"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1

    :cond_0
    const-string p1, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check: backupSrcFolder, backupDstFolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private connectServiceBlock()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsServiceConnected:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mServiceConnectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mServiceConnectLock:Ljava/lang/Object;

    mul-int/lit16 v3, v0, 0x5dc

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method private createAndInvokeMethod(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsServiceConnected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    :cond_0
    new-instance p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;

    invoke-direct {p1, p0, p2, p3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private createInner(Landroid/os/Bundle;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "config"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-direct {v0, p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getLocalBRPlugins(Landroid/content/Context;)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "BRPluginProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mServiceInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v7}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v7}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getVersion()I

    move-result v7

    invoke-virtual {v6}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getVersion()I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {v6}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getTargetPackage()[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    array-length v8, v6

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v6, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    aget-object v7, v1, v5

    invoke-direct {p0, v6, v10, v7}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->addShareLibs(Landroid/content/Context;Ljava/lang/String;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)V

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "BRPluginProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add brPluginConfigs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "plugins"

    new-array v5, v4, [Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v2, "config"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    const-string p1, "br_type"

    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    if-ne p1, v0, :cond_5

    const-string p1, "br_type"

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    :goto_3
    invoke-direct {p0, v4, v1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    return-void
.end method

.method private getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x400

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFileDescriptor(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    const-string v0, "file_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_flag"

    const/high16 v2, 0x38000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "BRPluginProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open file success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mFileDescriptorMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p0, "file_descriptor"

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method

.method private handleInvokeMethod(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "invoke_plugin_method_plugin_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke_plugin_method_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "invoke_plugin_method_args"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "BRPluginProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeMethod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->invokeOtherPluginMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "invoke_plugin_method_result"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendIntentMsg(Landroid/content/Intent;Z)V

    return-void
.end method

.method private installPackage(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    const-string v0, "install_app_file"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "install_app_file"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "install_app_package_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInstallLock:Ljava/lang/Object;

    monitor-enter p1

    :goto_0
    :try_start_0
    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->access$1300(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "BRPluginProxy"

    const-string v1, "wait for install "

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInstallLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->access$1400(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const-string p0, "BRPluginProxy"

    const-string p1, "install success"

    :goto_1
    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p0, "BRPluginProxy"

    const-string p1, "install fail"

    goto :goto_1

    :goto_2
    const-string p0, "install_app_result"

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;->access$1400(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PackageInstallObserver;)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    const-string p0, "BRPluginProxy"

    const-string p1, "install fail, file is not exists."

    goto :goto_3

    :cond_3
    const-string p0, "BRPluginProxy"

    const-string p1, "install fail, apkFilePath is empty."

    :goto_3
    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object p2
.end method

.method private invokeMethodInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-string p0, "BRPluginProxy"

    const-string p1, "sendMessage service == null"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "method"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v1, v1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mMessenger:Landroid/os/Messenger;

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "BRPluginProxy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessage "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private receiveReturn(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsWaitReturn:Z

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    const-string v2, "return"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private releaseFileDescriptors()V
    .locals 5

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mFileDescriptorMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BRPluginProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close fileDescriptor failed, path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removePluginProtect()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :try_start_0
    new-instance v1, Landroid/app/OppoWhiteListManager;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Landroid/app/OppoWhiteListManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/OppoWhiteListManager;->removeStageProtectInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BRPluginProxy"

    const-string v0, "NoSuchMethodError"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private restoreAppData(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    const-string p0, "restore_src_folder"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "restore_dst_folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    new-instance v1, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;

    invoke-direct {v1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->restore(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string v0, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackupRestoreSrv restore result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "backup_restore_app_data_result"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1

    :cond_0
    const-string p1, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check: restoreSrcFolder, restoreDstFolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private restoreTar(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 11

    const-string v0, "restore_tar_file"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restore_tar_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tar_exclude_agrs"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "restore_tar_app_data_dst_folder"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_rtmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const/4 v5, 0x1

    if-nez p0, :cond_0

    const-string p0, "tar"

    invoke-virtual {p1, p0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "BRPluginProxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app is not installed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_a

    const-string v7, "BRPluginProxy"

    const-string v9, "File(appDataTar)!= null"

    invoke-static {v7, v9}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;

    invoke-direct {v7}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;-><init>()V

    if-eqz v2, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--exclude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->unTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v0, v1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->unTar(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_1
    const-string v2, "BRPluginProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unTarResult : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    :cond_4
    const-string v1, "BRPluginProxy"

    const-string v2, "dearchive failed"

    invoke-static {v1, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tarPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object p0, v4

    :goto_2
    invoke-virtual {v7, p0, v3}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->restore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7

    invoke-virtual {v7, p0, v3}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->restore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string p0, "BRPluginProxy"

    const-string v1, "restore data fail ,so try one more time."

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-gez v0, :cond_8

    const-string p0, "BRPluginProxy"

    const-string v0, "app data restore fail"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move v8, v5

    :cond_9
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->cleardir(Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const-string p0, "BRPluginProxy"

    const-string v0, "no tar app data exit"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    const-string p0, "tar"

    invoke-virtual {p1, p0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method private sendIntentMsg(Landroid/content/Intent;Z)V
    .locals 4

    const-string v0, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIntentMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", async:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-string p0, "BRPluginProxy"

    const-string p1, "sendIntentMsg mService == null"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "intent"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "args"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v2, 0x2

    xor-int/2addr p2, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, p2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mMessenger:Landroid/os/Messenger;

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIntentMsg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendMessage(ILandroid/os/Bundle;I)V
    .locals 3

    const-string v0, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", async:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-string p0, "BRPluginProxy"

    const-string p1, "sendMessage mService == null"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, p3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mMessenger:Landroid/os/Messenger;

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "BRPluginProxy"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessage "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tar(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const-string p0, "tar_file"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tar_source_folder"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tar_exclude_agrs"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->isEmptyFolder(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    const-string v1, "BRPluginProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tar empty folder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;

    invoke-direct {v1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, p0, v0, v2}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->tar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    :cond_1
    const-string p0, "BRPluginProxy"

    const-string v2, "tar app data error, delete the file"

    invoke-static {p0, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p0, "BRPluginProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete srcFolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    move p0, v1

    :goto_0
    const-string v0, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackupRestoreSrv tar result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tar"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1

    :cond_3
    const-string p1, "BRPluginProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check: tarFilePath, srcFolder, excludeAgrs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private updatePluginProtect()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsWaitReturn:Z

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsWaitReturn:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    const-string v1, "return"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "BRPluginProxy"

    const-string p1, "waitForReturn, mService == null"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;-><init>()V

    throw p0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    const-string p1, "return"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_3
    const-string p0, "BRPluginProxy"

    const-string p1, "waitForReturn, mService == null"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected backup(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$4;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    return-void
.end method

.method public cancel(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsDestroy:Z

    if-nez v0, :cond_0

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->releaseFileDescriptors()V

    return-void
.end method

.method protected create(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "BRPluginProxy"

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->addPluginProtect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsDestroy:Z

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mReceiverMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mMessenger:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->connectServiceBlock()V

    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-direct {v1, v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    const-string v0, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate load config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginCreate(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p0, "BRPluginProxy"

    const-string p1, "onCreate result == null, load config failed!"

    invoke-static {p0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "load config failed!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected destroy(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsDestroy:Z

    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$6;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginEnd(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->releaseFileDescriptors()V

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->removePluginProtect()V

    return-void
.end method

.method public doContinue(Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    return-void
.end method

.method public doPause(Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    return-void
.end method

.method public getBREngineConfig()Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    return-object p0
.end method

.method public getBRPluginConfig()Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    return-object p0
.end method

.method public getPluginBackupPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getBackupFolder()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getServiceInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    return-object p0
.end method

.method public handleMsg(Landroid/content/Intent;Z)V
    .locals 3

    const-string v0, "BRPluginProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "get_file_descriptor"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getFileDescriptor(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "backup_app_data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->backupAppData(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "restore_app_data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->restoreAppData(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "tar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->tar(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "restore_tar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->restoreTar(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "invoke_plugin_method"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngine:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-direct {p0, p2, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->handleInvokeMethod(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v1, "install_app"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->installPackage(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendIntentMsg(Landroid/content/Intent;Z)V

    :cond_7
    return-void
.end method

.method public invokeMethod(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const-string v0, "BRPluginProxy"

    const-string v1, "invokeMethod"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->createAndInvokeMethod(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    const-string v3, "BRPluginProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAndInvokeMethod retryTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :goto_1
    if-ne v0, v3, :cond_1

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-virtual {v2}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ErrorHelper;->buildErrorBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v1
.end method

.method protected prepare(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPrepare(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method

.method protected preview(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$2;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPreview(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method

.method protected restore(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$5;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    return-void
.end method

.method public runBeginByManual(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->prepare(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public runEndByManual(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->destroy(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public runOne(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->prepare(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->backup(Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->destroy(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->prepare(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->restore(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    const-string v2, "BRPluginProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runOne retryTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_2
    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ErrorHelper;->buildErrorBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    invoke-virtual {p0, v3, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void
.end method

.method public runPreview(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->preview(Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->destroy(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->preview(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    const-string v2, "BRPluginProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runPreview retryTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_2
    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ErrorHelper;->buildErrorBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    invoke-virtual {p0, v3, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void
.end method

.method public runStepByManual(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->backup(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->restore(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBREngineConfig(Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    return-void
.end method

.method public setBRExceptionHandler(Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    return-void
.end method

.method public setBRListener(Lcom/coloros/backup/sdk/v2/host/listener/BRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BRPluginProxy_["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
