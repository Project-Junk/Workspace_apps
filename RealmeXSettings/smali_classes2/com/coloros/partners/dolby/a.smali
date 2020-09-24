.class public Lcom/coloros/partners/dolby/a;
.super Ljava/lang/Object;
.source "DolbyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/partners/dolby/a$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/coloros/partners/dolby/a;


# instance fields
.field public a:Lcom/oppo/a/b/a/b;

.field private c:Landroid/content/Context;

.field private d:Landroid/media/AudioManager;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/partners/dolby/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/oppo/a/b/a/a;

.field private g:Landroid/os/IBinder$DeathRecipient;

.field private h:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/partners/dolby/a;->e:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/coloros/partners/dolby/a$1;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/a$1;-><init>(Lcom/coloros/partners/dolby/a;)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/a;->f:Lcom/oppo/a/b/a/a;

    .line 83
    new-instance v0, Lcom/coloros/partners/dolby/a$2;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/a$2;-><init>(Lcom/coloros/partners/dolby/a;)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/a;->g:Landroid/os/IBinder$DeathRecipient;

    .line 94
    new-instance v0, Lcom/coloros/partners/dolby/a$3;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/a$3;-><init>(Lcom/coloros/partners/dolby/a;)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/a;->h:Landroid/content/ServiceConnection;

    .line 118
    iput-object p1, p0, Lcom/coloros/partners/dolby/a;->c:Landroid/content/Context;

    .line 119
    iget-object p1, p0, Lcom/coloros/partners/dolby/a;->c:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/partners/dolby/a;->d:Landroid/media/AudioManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/coloros/partners/dolby/a;
    .locals 2

    .line 107
    sget-object v0, Lcom/coloros/partners/dolby/a;->b:Lcom/coloros/partners/dolby/a;

    if-nez v0, :cond_1

    .line 108
    const-class v0, Lcom/coloros/partners/dolby/a;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/coloros/partners/dolby/a;->b:Lcom/coloros/partners/dolby/a;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/coloros/partners/dolby/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/partners/dolby/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/partners/dolby/a;->b:Lcom/coloros/partners/dolby/a;

    .line 112
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 114
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/partners/dolby/a;->b:Lcom/coloros/partners/dolby/a;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/a;)Lcom/oppo/a/b/a/b;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    return-object p0
.end method

.method static synthetic a(Landroid/content/ComponentName;)V
    .locals 1

    .line 3183
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "doOnServiceDisconnected, name="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DolbyServiceManager"

    invoke-static {v0, p0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/a;I)V
    .locals 2

    .line 2208
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleDolbyServiceConnectStatusChange, device: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyServiceManager"

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object p0, p0, Lcom/coloros/partners/dolby/a;->e:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 2210
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/partners/dolby/a$a;

    if-eqz v0, :cond_0

    .line 2212
    invoke-interface {v0, p1}, Lcom/coloros/partners/dolby/a$a;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/a;Landroid/os/IBinder;)V
    .locals 2

    .line 3187
    invoke-static {p1}, Lcom/oppo/a/b/a/b$a;->a(Landroid/os/IBinder;)Lcom/oppo/a/b/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    .line 3188
    iget-object p1, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    if-eqz p1, :cond_0

    .line 3190
    :try_start_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->f:Lcom/oppo/a/b/a/a;

    invoke-interface {p1, v0}, Lcom/oppo/a/b/a/b;->a(Lcom/oppo/a/b/a/a;)V

    .line 3191
    iget-object p1, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    invoke-interface {p1}, Lcom/oppo/a/b/a/b;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->g:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DolbyServiceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3194
    iput-object p1, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    .line 3198
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/coloros/partners/dolby/a;->e:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 3199
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/partners/dolby/a$a;

    if-eqz p1, :cond_1

    .line 3201
    invoke-interface {p1}, Lcom/coloros/partners/dolby/a$a;->a()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const-string v1, "DolbyServiceManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "isBtDeviceSupported, mService is null"

    .line 459
    invoke-static {v1, p1}, Lcom/coloros/partners/dolby/a/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 464
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oppo/a/b/a/b;->a(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "isBtDeviceSupported:"

    .line 466
    invoke-static {v1, v0, p1}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method static synthetic b(Lcom/coloros/partners/dolby/a;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/partners/dolby/a;->g:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/partners/dolby/a;)Lcom/oppo/a/b/a/b;
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    return-object v0
.end method

.method private l()I
    .locals 8

    const-string v0, "DolbyServiceManager"

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 245
    :try_start_0
    const-class v4, Landroid/media/AudioManager;

    const-string v5, "OppoGetDeviceForStream"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 246
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 247
    iget-object v5, p0, Lcom/coloros/partners/dolby/a;->d:Landroid/media/AudioManager;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 249
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "selfGetConnectDevice, OppoGetDeviceForStream exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, v2

    .line 254
    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "selfGetConnectDevice, musicDevice: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x80

    if-ne v4, v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/partners/dolby/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-direct {p0, v0}, Lcom/coloros/partners/dolby/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    return v1
.end method

.method private m()Ljava/lang/String;
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "dolby_get_device_status"

    .line 422
    invoke-interface {v0, v2}, Lcom/oppo/a/b/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DolbyServiceManager"

    const-string v3, "getDeviceFromService:"

    .line 424
    invoke-static {v2, v3, v0}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/coloros/partners/dolby/a$a;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 124
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setEffectEnabled, isChecked="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyServiceManager"

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    if-nez v0, :cond_0

    const-string p1, "setEffectEnabled, mService is null"

    .line 275
    invoke-static {v1, p1}, Lcom/coloros/partners/dolby/a/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oppo/a/b/a/b;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setEffectEnabled:"

    .line 281
    invoke-static {v1, v0, p1}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a([I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 374
    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oppo/a/b/a/b;->a([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "DolbyServiceManager"

    const-string v1, "setGeqBands:"

    .line 381
    invoke-static {v0, v1, p1}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 5

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindEffectService, mService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyServiceManager"

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 146
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oppo.dolbyeffect.controlservice.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 150
    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 151
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 152
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 153
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/coloros/partners/dolby/a;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    iget-object v2, p0, Lcom/coloros/partners/dolby/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/partners/dolby/a;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 159
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bindEffectService, e:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "bindEffectService, return not found receiver."

    .line 162
    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final b(Lcom/coloros/partners/dolby/a$a;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setGeqEnabled, enabled = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyServiceManager"

    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const-string v2, "dolby_geq_on_off"

    invoke-interface {v0, v2, p1}, Lcom/oppo/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setGeqEnabled:"

    .line 396
    invoke-static {v1, v0, p1}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final c()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/partners/dolby/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DolbyServiceManager"

    const-string v1, "unBindEffectService, doing"

    .line 169
    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    invoke-interface {v1}, Lcom/oppo/a/b/a/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/partners/dolby/a;->g:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    iget-object v2, p0, Lcom/coloros/partners/dolby/a;->f:Lcom/oppo/a/b/a/a;

    invoke-interface {v1, v2}, Lcom/oppo/a/b/a/b;->b(Lcom/oppo/a/b/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/partners/dolby/a;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    .line 178
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 5

    .line 225
    invoke-direct {p0}, Lcom/coloros/partners/dolby/a;->m()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DolbyServiceManager"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 228
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 230
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getConnectDevice, parseInt e :"

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/partners/dolby/a/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getConnectDevice, deviceFromService: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {v3}, Lcom/coloros/partners/dolby/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/coloros/partners/dolby/a;->l()I

    move-result v3

    :cond_1
    return v3
.end method

.method public final e()Z
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const-string v1, "DolbyServiceManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "getEffectEnabled, mService is null"

    .line 287
    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 292
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/oppo/a/b/a/b;->a()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "getEffectEnabled:"

    .line 294
    invoke-static {v1, v3, v0}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public final f()I
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const/4 v1, 0x0

    const-string v2, "DolbyServiceManager"

    if-nez v0, :cond_0

    const-string v0, "getEffectSceneMode, mService is null"

    .line 314
    invoke-static {v2, v0}, Lcom/coloros/partners/dolby/a/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 320
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/oppo/a/b/a/b;->c()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "getEffectSceneMode:"

    .line 322
    invoke-static {v2, v3, v0}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getEffectSceneMode, sceneMode="

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final g()I
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const-string v1, "DolbyServiceManager"

    if-nez v0, :cond_0

    const-string v0, "getMusicIeqType, mService is null"

    .line 344
    invoke-static {v1, v0}, Lcom/coloros/partners/dolby/a/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Lcom/coloros/partners/dolby/a/b;->b()I

    move-result v0

    return v0

    .line 348
    :cond_0
    invoke-static {}, Lcom/coloros/partners/dolby/a/b;->b()I

    move-result v0

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    invoke-interface {v2}, Lcom/oppo/a/b/a/b;->b()I

    move-result v0

    const-string v2, "getMusicIeqType, type="

    .line 351
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "getMusicIeqType:"

    .line 353
    invoke-static {v1, v3, v2}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public final h()[I
    .locals 4

    const-string v0, "DolbyServiceManager"

    .line 359
    iget-object v1, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 365
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/oppo/a/b/a/b;->d()[I

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "getGeqBands:"

    .line 367
    invoke-static {v0, v3, v1}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getGeqBands, array="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final i()Z
    .locals 5

    const-string v0, "DolbyServiceManager"

    .line 401
    iget-object v1, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    const-string v3, "true"

    const-string v4, "dolby_geq_on_off"

    .line 407
    invoke-interface {v1, v4}, Lcom/oppo/a/b/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "getGeqEnabled:"

    .line 409
    invoke-static {v0, v3, v1}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getGeqEnabled, enabled = "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final j()Ljava/lang/String;
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "dolby_get_dolby_state"

    .line 436
    invoke-interface {v0, v2}, Lcom/oppo/a/b/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DolbyServiceManager"

    const-string v3, "getDolbySoundEnableState:"

    .line 438
    invoke-static {v2, v3, v0}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public final k()Ljava/lang/String;
    .locals 4

    .line 444
    iget-object v0, p0, Lcom/coloros/partners/dolby/a;->a:Lcom/oppo/a/b/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "dolby_get_dolby_profile"

    .line 450
    invoke-interface {v0, v2}, Lcom/oppo/a/b/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DolbyServiceManager"

    const-string v3, "getDolbySoundProfile:"

    .line 452
    invoke-static {v2, v3, v0}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method
