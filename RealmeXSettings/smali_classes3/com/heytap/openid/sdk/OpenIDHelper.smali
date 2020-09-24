.class Lcom/heytap/openid/sdk/OpenIDHelper;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/openid/sdk/OpenIDHelper$OpenIDHelperHolder;
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private openIDService:Lcom/heytap/openid/IOpenID;

.field private packageName:Ljava/lang/String;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private signature:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->openIDService:Lcom/heytap/openid/IOpenID;

    .line 46
    iput-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->signature:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/heytap/openid/sdk/OpenIDHelper$1;

    invoke-direct {v0, p0}, Lcom/heytap/openid/sdk/OpenIDHelper$1;-><init>(Lcom/heytap/openid/sdk/OpenIDHelper;)V

    iput-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/openid/sdk/OpenIDHelper$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/heytap/openid/sdk/OpenIDHelper;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/heytap/openid/sdk/OpenIDHelper;Lcom/heytap/openid/IOpenID;)Lcom/heytap/openid/IOpenID;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->openIDService:Lcom/heytap/openid/IOpenID;

    return-object p1
.end method

.method static synthetic access$300(Lcom/heytap/openid/sdk/OpenIDHelper;)Ljava/lang/Object;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static getInstance()Lcom/heytap/openid/sdk/OpenIDHelper;
    .locals 1

    .line 42
    invoke-static {}, Lcom/heytap/openid/sdk/OpenIDHelper$OpenIDHelperHolder;->access$100()Lcom/heytap/openid/sdk/OpenIDHelper;

    move-result-object v0

    return-object v0
.end method

.method private getResultFromService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->packageName:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->signature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->packageName:Ljava/lang/String;

    const-string v1, "SHA1"

    invoke-static {p1, v0, v1}, Lcom/heytap/openid/sdk/AppUtils;->getSingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->signature:Ljava/lang/String;

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->openIDService:Lcom/heytap/openid/IOpenID;

    iget-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->signature:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p2}, Lcom/heytap/openid/IOpenID;->getOpenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, ""

    :cond_2
    return-object p1
.end method


# virtual methods
.method declared-synchronized getOpenID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string p1, "OpenID"

    const-string p2, "Get OpenID Cannot run on MainThread"

    .line 64
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    monitor-exit p0

    return-object p1

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->openIDService:Lcom/heytap/openid/IOpenID;

    if-nez v0, :cond_3

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :try_start_2
    iget-object v1, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 77
    :catch_0
    :goto_0
    :try_start_3
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 79
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/heytap/openid/sdk/OpenIDHelper;->openIDService:Lcom/heytap/openid/IOpenID;

    if-nez v0, :cond_2

    const-string p1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 80
    monitor-exit p0

    return-object p1

    .line 83
    :cond_2
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/heytap/openid/sdk/OpenIDHelper;->getResultFromService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object p1

    :catch_1
    :try_start_6
    const-string p1, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 85
    monitor-exit p0

    return-object p1

    .line 90
    :cond_3
    :try_start_7
    invoke-direct {p0, p1, p2}, Lcom/heytap/openid/sdk/OpenIDHelper;->getResultFromService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-object p1

    :catch_2
    :try_start_8
    const-string p1, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 92
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method isSupported(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.heytap.openid"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    const-wide/16 v4, 0x1

    cmp-long p1, v1, v4

    if-ltz p1, :cond_0

    return v3

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 55
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    return v3

    :catch_0
    :cond_2
    return v0
.end method
