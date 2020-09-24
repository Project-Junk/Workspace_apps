.class public Lcom/coloros/backup/sdk/v2/component/BRPluginService;
.super Landroid/app/Service;
.source "BRPluginService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;,
        Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;,
        Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;,
        Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;
    }
.end annotation


# static fields
.field public static final DEBUG_SYNC_THREAD:Z = true

.field public static final TAG:Ljava/lang/String; = "BRPluginService"


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mAsyncThread:Landroid/os/HandlerThread;

.field private mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

.field private mBRPlugin:Ljava/lang/Object;

.field private mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;

.field private mBinder:Landroid/os/IBinder;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mHandler:Landroid/os/Handler;

.field private mInvocationBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;

.field private mLoader:Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;

.field private mMessenger:Landroid/os/Messenger;

.field private mPluginClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mSendMessenger:Landroid/os/Messenger;

.field private mSyncHandler:Landroid/os/Handler;

.field private mSyncThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mSendMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Ljava/lang/Object;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/backup/sdk/v2/component/BRPluginService;ILandroid/os/Bundle;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->sendMsg(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Ljava/lang/Class;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->load(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Bundle;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->receive(Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)Landroid/os/HandlerThread;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$800([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->getStackMsg([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Messenger;ILandroid/os/Bundle;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method private findClass(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 344
    new-instance v0, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;

    invoke-direct {v0}, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mLoader:Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;

    .line 346
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mLoader:Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->load(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez p2, :cond_0

    .line 349
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mLoader:Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->findClass(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Ljava/lang/ClassLoader;I)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 351
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mLoader:Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p2, p1, v1, v0}, Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;->findClass(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;Ljava/lang/ClassLoader;I)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLocalPluginConfig()Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 8

    .line 358
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_plugins"

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/host/BRPluginSource;->getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object v0

    const/4 v1, 0x0

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imposible! no this service? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BRPluginService"

    invoke-static {v3, v2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 368
    new-instance v3, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;

    invoke-direct {v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;-><init>()V

    .line 369
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->setClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->setMetaData(Landroid/os/Bundle;)V

    if-eqz v0, :cond_1

    .line 372
    array-length v2, v0

    if-lez v2, :cond_1

    .line 373
    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 374
    invoke-virtual {v3}, Lcom/coloros/backup/sdk/v2/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private static getStackMsg([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 489
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 490
    aget-object v2, p0, v1

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 336
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v3

    invoke-static {p1, p2, p3, v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private load(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string v0, "plugins"

    .line 385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "br_type"

    .line 386
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 389
    array-length v3, v0

    if-lez v3, :cond_0

    .line 391
    new-array v4, v3, [Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_1

    .line 393
    new-instance v6, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    aget-object v7, v0, v5

    check-cast v7, Landroid/os/Bundle;

    invoke-direct {v6, v7}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 400
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->getLocalPluginConfig()Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6

    const-string v3, "use local plugin config:"

    const-string v5, "BRPluginService"

    if-eqz v0, :cond_2

    .line 401
    :try_start_1
    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->isPreferLocalClass()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v6, :cond_2

    .line 403
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isPreferLocalClass true"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto/16 :goto_4

    .line 406
    :cond_2
    :try_start_3
    invoke-virtual {p0, v4, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->onLoad([Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;I)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    .line 412
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", no plugin in host, isUseParentClass:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->isUseParentClass()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "load localPlugin is null! pls check your .config file"

    .line 415
    invoke-static {v5, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :cond_4
    :try_start_5
    const-string v0, "use host\'s plugin config:"

    .line 419
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v4

    .line 423
    :goto_1
    :try_start_6
    invoke-direct {p0, v0, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->findClass(Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;I)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    .line 424
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    if-eqz p1, :cond_5

    .line 425
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    const-string p1, "Didn\'t find plugin class. "

    .line 427
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v0, v4

    goto :goto_2

    :catch_4
    move-exception p1

    move-object v0, v4

    goto :goto_3

    :catch_5
    move-exception p1

    move-object v0, v4

    goto :goto_4

    :catch_6
    move-exception p1

    move-object v0, v2

    .line 437
    :goto_2
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :catch_7
    move-exception p1

    move-object v0, v2

    .line 434
    :goto_3
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_5

    :catch_8
    move-exception p1

    move-object v0, v2

    .line 431
    :goto_4
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 441
    :goto_5
    :try_start_7
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    const-class v3, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_6

    :catch_9
    move-exception p1

    .line 443
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object p1, v2

    .line 445
    :goto_6
    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p1, v5, v1

    iget-object v6, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mInvocationBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;

    invoke-static {v3, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 448
    iget-object v5, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    iget-object v6, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v1

    aput-object p1, v8, v4

    const-class p1, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    const/4 v9, 0x2

    aput-object p1, v8, v9

    new-array p1, v7, [Ljava/lang/Object;

    aput-object p0, p1, v1

    aput-object v3, p1, v4

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBREngineConfig:Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    aput-object v1, p1, v9

    const-string v1, "onCreate"

    invoke-static {v5, v6, v1, v8, p1}, Lcom/coloros/backup/sdk/v2/common/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_6

    return-object v2

    .line 454
    :cond_6
    invoke-virtual {v0}, Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private onReveiveMsg(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Intent;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Intent;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 329
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v0, v4

    const-string p3, "onReveiveMsg"

    invoke-static {p1, p2, p3, v1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private receive(Landroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "intent"

    .line 323
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->onReveiveMsg(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Intent;Z)V

    return-void
.end method

.method private returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;Z)V
    .locals 2

    xor-int/lit8 p4, p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 313
    invoke-static {v1, p2, p4, v0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 316
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private sendMsg(ILandroid/os/Bundle;Z)V
    .locals 2

    xor-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 299
    invoke-static {v1, p1, p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 301
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mSendMessenger:Landroid/os/Messenger;

    if-eqz p2, :cond_0

    .line 303
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_0
    const-string p1, "BRPluginService"

    const-string p2, "mSendMessenger == null"

    .line 308
    invoke-static {p1, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getBRPluginLoader()Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mLoader:Lcom/coloros/backup/sdk/v2/common/load/BRPluginLoader;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 287
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBinder:Landroid/os/IBinder;

    if-nez p1, :cond_0

    const-string p1, "BRPluginService"

    const-string v0, "onBind "

    .line 288
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBinder:Landroid/os/IBinder;

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 270
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "BRPluginService"

    const-string v1, "onCreate "

    .line 271
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "br_plugin_messager_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    .line 273
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 274
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "br_plugin_async_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    .line 275
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 276
    new-instance v0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;-><init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mAsyncHandler:Landroid/os/Handler;

    .line 277
    new-instance v0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$WorkHandler;-><init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mSyncHandler:Landroid/os/Handler;

    .line 279
    new-instance v0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;

    invoke-virtual {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mAsyncHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mSyncHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$MessagerHandler;-><init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mMessenger:Landroid/os/Messenger;

    .line 281
    new-instance v0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;

    invoke-direct {v0, p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;-><init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginService$BRPluginHandlerImpl;

    .line 282
    new-instance v0, Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;-><init>(Lcom/coloros/backup/sdk/v2/component/BRPluginService;Lcom/coloros/backup/sdk/v2/component/BRPluginService$1;)V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mInvocationBRPluginHandler:Lcom/coloros/backup/sdk/v2/component/BRPluginService$InvocationBRPluginHandlerImpl;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 459
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "BRPluginService"

    const-string v1, "onDestroy"

    .line 460
    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method public onLoad([Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;I)Lcom/coloros/backup/sdk/v2/common/plugin/BRPluginConfig;
    .locals 3

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 474
    array-length v0, p1

    if-lez v0, :cond_1

    .line 475
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
