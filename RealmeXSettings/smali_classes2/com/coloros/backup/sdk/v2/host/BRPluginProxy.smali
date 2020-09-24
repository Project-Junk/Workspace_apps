.class public Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;
.super Ljava/lang/Object;
.source "BRPluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field public mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

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

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;-><init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/host/process/BREngine;Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mServiceConnectLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInstallLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mFileDescriptorMap:Ljava/util/HashMap;

    .line 683
    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;

    invoke-direct {v0, p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mConn:Landroid/content/ServiceConnection;

    .line 183
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    .line 184
    iput-object p3, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    .line 185
    invoke-virtual {p3}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIntent:Landroid/content/Intent;

    .line 186
    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngine:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    if-eqz p4, :cond_0

    .line 189
    new-instance p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverHandler;

    invoke-direct {p1, p0, p4}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverHandler;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mReceiverMsgHandler:Landroid/os/Handler;

    :cond_0
    if-eqz p5, :cond_1

    .line 192
    new-instance p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverWorkHandler;

    invoke-direct {p1, p0, p5}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$ReceiverWorkHandler;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mReceiverWorkHandler:Landroid/os/Handler;

    .line 194
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 196
    new-instance p2, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PluginProtectHandler;

    invoke-direct {p2, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$PluginProtectHandler;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->updatePluginProtect()V

    return-void
.end method

.method static synthetic access$1002(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/os/Bundle;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->receiveReturn(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mReceiverWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->addPluginProtect()V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->createInner(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;ILandroid/os/Bundle;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->invokeMethodInner(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$802(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$900(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Ljava/lang/Object;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mServiceConnectLock:Ljava/lang/Object;

    return-object p0
.end method

.method private addPluginProtect()V
    .locals 4

    .line 967
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 969
    :try_start_0
    new-instance v1, Landroid/app/OppoWhiteListManager;

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/OppoWhiteListManager;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x493e0

    .line 970
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/OppoWhiteListManager;->addStageProtectInfo(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "BRPluginProxy"

    const-string v1, "NoSuchMethodError"

    .line 972
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addShareLibs(Landroid/content/Context;Ljava/lang/String;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)V
    .locals 5

    .line 936
    invoke-virtual {p3}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->isUseParentClass()Z

    move-result v0

    if-nez v0, :cond_2

    .line 937
    invoke-virtual {p3}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getDexPath()[Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 940
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 941
    array-length p2, p1

    if-lez p2, :cond_2

    .line 942
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 943
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 944
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 946
    :cond_0
    array-length v0, p1

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 947
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 950
    :cond_1
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string p2, "dexPaths"

    invoke-virtual {p3, p2, p1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->putValue(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private backupAppData(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const-string v0, "backup_src_folder"

    .line 766
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "backup_dst_folder"

    .line 767
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "BRPluginProxy"

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 769
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    .line 770
    new-instance v2, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;

    invoke-direct {v2}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->backup(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 771
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRestoreSrv backup result: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "backup_restore_app_data_result"

    .line 772
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1

    .line 775
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "check: backupSrcFolder, backupDstFolder: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private connectServiceBlock()V
    .locals 5

    .line 668
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 671
    iget-boolean v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsServiceConnected:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 673
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mServiceConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
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
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 677
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 679
    :goto_1
    monitor-exit v1

    goto :goto_0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method private createAndInvokeMethod(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;
        }
    .end annotation

    .line 508
    iget-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsServiceConnected:Z

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    .line 512
    :cond_0
    new-instance p1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;

    invoke-direct {p1, p0, p2, p3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$7;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 519
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private createInner(Landroid/os/Bundle;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "config"

    .line 560
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 561
    new-instance v1, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-direct {v1, p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>(Landroid/os/Bundle;)V

    .line 563
    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getLocalBRPlugins(Landroid/content/Context;)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object v2

    .line 565
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mServiceInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BRPluginProxy"

    invoke-static {v5, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    array-length v4, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_3

    .line 568
    aget-object v8, v2, v7

    .line 570
    iget-object v9, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v9}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v9}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getVersion()I

    move-result v9

    invoke-virtual {v8}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getVersion()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 572
    invoke-virtual {v8}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getTargetPackage()[Ljava/lang/String;

    move-result-object v8

    .line 573
    iget-object v9, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 575
    array-length v10, v8

    move v11, v6

    :goto_1
    if-ge v11, v10, :cond_2

    aget-object v12, v8, v11

    .line 576
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 577
    iget-object v8, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    aget-object v9, v2, v7

    invoke-direct {p0, v8, v12, v9}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->addShareLibs(Landroid/content/Context;Ljava/lang/String;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)V

    .line 578
    aget-object v8, v2, v7

    invoke-virtual {v8}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "add brPluginConfigs: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v2, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 586
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 587
    new-array v4, v6, [Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    const-string v4, "plugins"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 588
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 589
    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result p1

    const-string v0, "br_type"

    const/4 v1, 0x1

    if-nez p1, :cond_4

    .line 591
    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    if-ne p1, v1, :cond_5

    .line 593
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 596
    :cond_5
    :goto_3
    invoke-direct {p0, v6, v2, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    return-void
.end method

.method private getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 958
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x400

    .line 959
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFileDescriptor(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const-string v0, "file_path"

    .line 743
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_flag"

    const/high16 v2, 0x38000000

    .line 744
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 746
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 748
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    :cond_0
    const/4 v3, 0x0

    .line 752
    :try_start_0
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 754
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v3, :cond_1

    .line 757
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "open file success: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BRPluginProxy"

    invoke-static {v2, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mFileDescriptorMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "file_descriptor"

    .line 761
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method

.method private handleInvokeMethod(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "invoke_plugin_method_plugin_id"

    .line 909
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke_plugin_method_name"

    .line 911
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "invoke_plugin_method_args"

    .line 913
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 915
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "invokeMethod:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BRPluginProxy"

    invoke-static {v4, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/backup/sdk/v2/host/process/BREngine;->invokeOtherPluginMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "invoke_plugin_method_result"

    .line 918
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 919
    invoke-direct {p0, p2, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendIntentMsg(Landroid/content/Intent;Z)V

    return-void
.end method

.method private invokeMethodInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 622
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invokeMethod:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BRPluginProxy"

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-string p1, "sendMessage service == null"

    .line 624
    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 628
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "args"

    .line 629
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "method"

    .line 630
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v2, 0x1

    .line 631
    invoke-static {p1, v2, v2, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 633
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mMessenger:Landroid/os/Messenger;

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 635
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 637
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sendMessage "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private receiveReturn(Landroid/os/Bundle;)V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    monitor-enter v0

    const/4 v1, 0x0

    .line 550
    :try_start_0
    iput-boolean v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsWaitReturn:Z

    .line 551
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    const-string v2, "return"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 552
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 553
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private releaseFileDescriptors()V
    .locals 5

    .line 923
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mFileDescriptorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 925
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 927
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "close fileDescriptor failed, path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BRPluginProxy"

    invoke-static {v2, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removePluginProtect()V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 987
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/16 v2, 0xe

    .line 988
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 991
    :cond_0
    :try_start_0
    new-instance v1, Landroid/app/OppoWhiteListManager;

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/OppoWhiteListManager;-><init>(Landroid/content/Context;)V

    .line 992
    invoke-virtual {v1, v0}, Landroid/app/OppoWhiteListManager;->removeStageProtectInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "BRPluginProxy"

    const-string v1, "NoSuchMethodError"

    .line 994
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private restoreAppData(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const-string v0, "restore_src_folder"

    .line 781
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restore_dst_folder"

    .line 783
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "BRPluginProxy"

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    .line 787
    new-instance v2, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;

    invoke-direct {v2}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->restore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 788
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRestoreSrv restore result: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "backup_restore_app_data_result"

    .line 789
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1

    .line 792
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "check: restoreSrcFolder, restoreDstFolder: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private restoreTar(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 13

    const-string v0, "restore_tar_file"

    .line 831
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restore_tar_package"

    .line 833
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tar_exclude_agrs"

    .line 834
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "restore_tar_app_data_dst_folder"

    .line 835
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 839
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

    .line 840
    iget-object v5, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "tar"

    const-string v8, "BRPluginProxy"

    if-nez v5, :cond_0

    .line 843
    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app is not installed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 848
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_1

    goto :goto_0

    .line 849
    :cond_1
    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 850
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/data/data/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 851
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 853
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 855
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 858
    :cond_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_a

    const-string v10, "File(appDataTar)!= null"

    .line 859
    invoke-static {v8, v10}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-instance v10, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;

    invoke-direct {v10}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;-><init>()V

    if-eqz v2, :cond_3

    .line 863
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v12, "--exclude="

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->unTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 866
    :cond_3
    invoke-virtual {v10, v0, v1}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->unTar(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 868
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v12, "unTarResult : "

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 870
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 872
    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    :cond_4
    const-string v1, "dearchive failed"

    .line 874
    invoke-static {v8, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_9

    .line 879
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 881
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tarPath = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 883
    :cond_6
    invoke-virtual {v10, v4, v3}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->restore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7

    .line 886
    invoke-virtual {v10, v4, v3}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->restore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "restore data fail ,so try one more time."

    .line 887
    invoke-static {v8, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-gez v0, :cond_8

    const-string v0, "app data restore fail"

    .line 890
    invoke-static {v8, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v11, v6

    .line 897
    :cond_9
    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 898
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->cleardir(Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string v0, "no tar app data exit"

    .line 902
    invoke-static {v8, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_b
    :goto_3
    invoke-virtual {p1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method private sendIntentMsg(Landroid/content/Intent;Z)V
    .locals 5

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendIntentMsg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", async:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BRPluginProxy"

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-string p1, "sendIntentMsg mService == null"

    .line 645
    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 649
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 650
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "intent"

    .line 651
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "args"

    .line 652
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    move p2, v4

    goto :goto_0

    :cond_1
    move p2, v0

    .line 653
    :goto_0
    invoke-static {p1, v3, p2, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 655
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mMessenger:Landroid/os/Messenger;

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 657
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 659
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "sendIntentMsg "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz p2, :cond_2

    .line 662
    invoke-virtual {p2, v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private sendMessage(ILandroid/os/Bundle;I)V
    .locals 3

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMessage:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", async:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BRPluginProxy"

    invoke-static {v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-string p1, "sendMessage mService == null"

    .line 602
    invoke-static {v1, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 606
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "args"

    .line 607
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 608
    invoke-static {p2, p1, p3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 609
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mMessenger:Landroid/os/Messenger;

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 611
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 613
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "sendMessage "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    .line 616
    invoke-virtual {p2, p3, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private tar(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    const-string v0, "tar_file"

    .line 798
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tar_source_folder"

    .line 799
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tar_exclude_agrs"

    .line 800
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "BRPluginProxy"

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 806
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->isEmptyFolder(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 808
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tar empty folder:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_0
    new-instance v2, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;

    invoke-direct {v2}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v0, v1, v3}, Lcom/coloros/backup/sdk/utils/BackupRestoreSrv;->tar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 812
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    invoke-static {v3}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    :cond_1
    const-string v0, "tar app data error, delete the file"

    .line 816
    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "delete srcFolder:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    move v0, v2

    .line 821
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRestoreSrv tar result: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tar"

    .line 822
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1

    .line 825
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "check: tarFilePath, srcFolder, excludeAgrs: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updatePluginProtect()V
    .locals 4

    .line 978
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mPluginProtectHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsWaitReturn:Z

    .line 528
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 530
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 532
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsWaitReturn:Z

    if-eqz p1, :cond_2

    .line 533
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mService:Landroid/os/Messenger;

    if-eqz p1, :cond_1

    .line 537
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    const-string v1, "return"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
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

    .line 541
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "BRPluginProxy"

    const-string v1, "waitForReturn, mService == null"

    .line 534
    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance p1, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;

    invoke-direct {p1}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;-><init>()V

    throw p1

    .line 544
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mWaitForReturnLock:Landroid/os/Bundle;

    const-string v0, "return"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 544
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    const-string p1, "BRPluginProxy"

    const-string v0, "waitForReturn, mService == null"

    .line 524
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance p1, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;

    invoke-direct {p1}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected backup(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;
        }
    .end annotation

    .line 435
    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$4;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 442
    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    return-void
.end method

.method public cancel(Landroid/os/Bundle;)V
    .locals 2

    .line 250
    iget-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsDestroy:Z

    if-nez v0, :cond_0

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, v0, p1, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->releaseFileDescriptors()V

    return-void
.end method

.method protected create(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;
        }
    .end annotation

    const-string v0, "BRPluginProxy"

    const-string v1, "onCreate "

    .line 378
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->addPluginProtect()V

    const/4 v1, 0x0

    .line 380
    iput-boolean v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsDestroy:Z

    .line 381
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mReceiverMsgHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mMessenger:Landroid/os/Messenger;

    .line 382
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->connectServiceBlock()V

    .line 384
    new-instance v1, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$1;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 392
    invoke-direct {p0, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    new-instance v2, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-direct {v2, v1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate load config:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginCreate(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p1, "onCreate result == null, load config failed!"

    .line 397
    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "load config failed!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected destroy(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 459
    iput-boolean v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mIsDestroy:Z

    .line 460
    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$6;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 467
    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object p1

    .line 469
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 471
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginEnd(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 472
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->releaseFileDescriptors()V

    .line 473
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->removePluginProtect()V

    return-void
.end method

.method public doContinue(Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0, v0, p1, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    return-void
.end method

.method public doPause(Landroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 240
    invoke-direct {p0, v0, p1, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendMessage(ILandroid/os/Bundle;I)V

    return-void
.end method

.method public getBREngineConfig()Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    return-object v0
.end method

.method public getBRPluginConfig()Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    return-object v0
.end method

.method public getPluginBackupPath()Ljava/lang/String;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBackupRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getBackupFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRPluginConfig:Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getBackupFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getServiceInfo()Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    return-object v0
.end method

.method public handleMsg(Landroid/content/Intent;Z)V
    .locals 2

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceiveMsg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BRPluginProxy"

    invoke-static {v0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 719
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "get_file_descriptor"

    .line 721
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->getFileDescriptor(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "backup_app_data"

    .line 723
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->backupAppData(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "restore_app_data"

    .line 725
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 726
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->restoreAppData(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "tar"

    .line 727
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 728
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->tar(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "restore_tar"

    .line 729
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 730
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->restoreTar(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "invoke_plugin_method"

    .line 731
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 732
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngine:Lcom/coloros/backup/sdk/v2/host/process/BREngine;

    invoke-direct {p0, p2, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->handleInvokeMethod(Lcom/coloros/backup/sdk/v2/host/process/BREngine;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string p1, "install_app"

    .line 733
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_6

    const/4 p1, 0x1

    .line 737
    invoke-direct {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->sendIntentMsg(Landroid/content/Intent;Z)V

    :cond_6
    return-void
.end method

.method public invokeMethod(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const-string v0, "BRPluginProxy"

    const-string v1, "invokeMethod"

    .line 479
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 486
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->createAndInvokeMethod(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v3

    add-int/lit8 v1, v1, 0x1

    .line 491
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createAndInvokeMethod retryTimes:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :goto_1
    if-ne v1, v4, :cond_1

    .line 495
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-virtual {v3}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ErrorHelper;->buildErrorBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 501
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v2
.end method

.method protected prepare(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;
        }
    .end annotation

    .line 420
    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$3;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 429
    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object p1

    .line 430
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPrepare(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method

.method protected preview(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$2;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 414
    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    move-result-object p1

    .line 415
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-interface {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onPluginPreview(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    return-void
.end method

.method protected restore(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;
        }
    .end annotation

    .line 447
    new-instance v0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$5;-><init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V

    .line 454
    invoke-direct {p0, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->waitForReturn(Ljava/lang/Runnable;)Landroid/os/Bundle;

    return-void
.end method

.method public runBeginByManual(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->prepare(Landroid/os/Bundle;)V

    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 335
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->prepare(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 339
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {v1, v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    .line 342
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public runEndByManual(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->destroy(Landroid/os/Bundle;)V

    return-void

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 366
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->destroy(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 369
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {v1, v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    .line 372
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

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

    .line 262
    :try_start_0
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v4

    if-nez v4, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->prepare(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->backup(Landroid/os/Bundle;)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->destroy(Landroid/os/Bundle;)V

    goto :goto_1

    .line 267
    :cond_0
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 268
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->prepare(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->restore(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->destroy(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    const-string v2, "BRPluginProxy"

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "runOne retryTimes:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v0, v2, :cond_3

    .line 282
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ErrorHelper;->buildErrorBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 287
    :goto_2
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {v0, v3, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    .line 290
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
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

    .line 300
    :try_start_0
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v4

    if-nez v4, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->preview(Landroid/os/Bundle;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->destroy(Landroid/os/Bundle;)V

    goto :goto_1

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v4}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 305
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->create(Landroid/os/Bundle;)V

    .line 306
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->preview(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->destroy(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    const-string v2, "BRPluginProxy"

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "runPreview retryTimes:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v0, v2, :cond_3

    .line 317
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/exception/ServiceConnectFailException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ErrorHelper;->buildErrorBundle(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener;->onError(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 322
    :goto_2
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0, v3, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    .line 325
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public runStepByManual(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-nez v1, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->backup(Landroid/os/Bundle;)V

    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getBRType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 351
    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->restore(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 354
    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    if-eqz v1, :cond_2

    .line 355
    invoke-virtual {v1, v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;)V

    .line 357
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setBREngineConfig(Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    return-void
.end method

.method public setBRExceptionHandler(Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRExceptionHandler:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;

    return-void
.end method

.method public setBRListener(Lcom/coloros/backup/sdk/v2/host/listener/BRListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mBRListener:Lcom/coloros/backup/sdk/v2/host/listener/BRListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BRPluginProxy_["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->mInfo:Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-virtual {v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
