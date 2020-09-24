.class public Lcom/android/ims/e;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/e$b;,
        Lcom/android/ims/e$a;
    }
.end annotation


# static fields
.field private static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/android/ims/e$b;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field public c:I

.field public final d:Z

.field public e:Lcom/android/ims/h;

.field public f:Z

.field public g:Lcom/android/ims/ImsConfigListener;

.field public h:Lcom/android/ims/g;

.field public i:Lcom/android/ims/b;

.field public j:Lcom/android/ims/f;

.field k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/h$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/telephony/CarrierConfigManager;

.field private n:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/e;->l:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    sget-object v0, Lcom/android/ims/-$$Lambda$e$y1WJzLz6GJIFAkrQOlGR23wfTSc;->INSTANCE:Lcom/android/ims/-$$Lambda$e$y1WJzLz6GJIFAkrQOlGR23wfTSc;

    iput-object v0, p0, Lcom/android/ims/e;->a:Lcom/android/ims/e$b;

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    const/4 v1, 0x0

    .line 411
    iput-boolean v1, p0, Lcom/android/ims/e;->f:Z

    .line 418
    iput-object v0, p0, Lcom/android/ims/e;->h:Lcom/android/ims/g;

    .line 420
    iput-object v0, p0, Lcom/android/ims/e;->i:Lcom/android/ims/b;

    .line 421
    iput-object v0, p0, Lcom/android/ims/e;->j:Lcom/android/ims/f;

    .line 423
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/e;->k:Ljava/util/Set;

    .line 431
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/android/ims/e;->n:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 1626
    iput-object p1, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    .line 1627
    iput p2, p0, Lcom/android/ims/e;->c:I

    .line 1628
    iget-object p2, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110062

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/ims/e;->d:Z

    const-string p2, "carrier_config"

    .line 1630
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/ims/e;->m:Landroid/telephony/CarrierConfigManager;

    .line 1632
    invoke-direct {p0}, Lcom/android/ims/e;->D()V

    return-void
.end method

.method private static C()Ljava/util/concurrent/Executor;
    .locals 3

    .line 2329
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2330
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2332
    :cond_0
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method private D()V
    .locals 2

    .line 2416
    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/e;->c:I

    invoke-static {v0, v1}, Lcom/android/ims/h;->a(Landroid/content/Context;I)Lcom/android/ims/h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    .line 2419
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    new-instance v1, Lcom/android/ims/e$1;

    invoke-direct {v1, p0}, Lcom/android/ims/e$1;-><init>(Lcom/android/ims/e;)V

    .line 35933
    iput-object v1, v0, Lcom/android/ims/h;->c:Lcom/android/ims/h$c;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1122
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v0, p1, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 1127
    invoke-direct {p0, p2}, Lcom/android/ims/e;->d(Ljava/lang/String;)I

    move-result p1

    :cond_0
    return p1
.end method

.method private a(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2442
    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsCallSession;

    iget-object v1, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v1, p1}, Lcom/android/ims/h;->a(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CreateCallSession: Error, remote exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "createCallSession()"

    invoke-direct {v0, v2, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/android/ims/e;
    .locals 3

    .line 442
    sget-object v0, Lcom/android/ims/e;->l:Ljava/util/HashMap;

    monitor-enter v0

    .line 443
    :try_start_0
    sget-object v1, Lcom/android/ims/e;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    sget-object p0, Lcom/android/ims/e;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/ims/e;

    if-eqz p0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/ims/e;->p()V

    .line 449
    :cond_0
    monitor-exit v0

    return-object p0

    .line 452
    :cond_1
    new-instance v1, Lcom/android/ims/e;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/e;-><init>(Landroid/content/Context;I)V

    .line 453
    sget-object p0, Lcom/android/ims/e;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 456
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/android/ims/e;)Ljava/util/Set;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/ims/e;->k:Ljava/util/Set;

    return-object p0
.end method

.method private a(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2152
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    :try_start_0
    const-string v0, "ImsManager"

    .line 2154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeMmTelCapability: changing capabilities for sub: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0, p1}, Lcom/android/ims/h;->a(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 2157
    iget-object v0, p0, Lcom/android/ims/e;->g:Lcom/android/ims/ImsConfigListener;

    if-nez v0, :cond_0

    return-void

    .line 2160
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 2161
    iget-object v3, p0, Lcom/android/ims/e;->g:Lcom/android/ims/ImsConfigListener;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    .line 2162
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    const/4 v5, 0x1

    .line 2161
    invoke-interface {v3, v4, v1, v5, v2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V

    goto :goto_0

    .line 2166
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 2167
    iget-object v1, p0, Lcom/android/ims/e;->g:Lcom/android/ims/ImsConfigListener;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v3

    .line 2168
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v0

    const/4 v4, 0x0

    .line 2167
    invoke-interface {v1, v3, v0, v4, v2}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 2172
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "changeMmTelCapability(CCR)"

    invoke-direct {v0, v2, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method private static synthetic a(Ljava/lang/Runnable;)V
    .locals 1

    .line 401
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "ImsManager"

    .line 2460
    invoke-static {v0, p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic a(ZI)V
    .locals 3

    .line 2196
    :try_start_0
    const-class v0, Lcom/android/ims/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting RTT enabled to "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    invoke-virtual {p0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 2200
    const-class v0, Lcom/android/ims/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to set RTT value enabled to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(I)Z
    .locals 1

    .line 2824
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.ims"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic a(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z
    .locals 1

    .line 1489
    invoke-virtual {p0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(I)V
    .locals 2

    .line 1198
    iget-object v0, p0, Lcom/android/ims/e;->a:Lcom/android/ims/e$b;

    new-instance v1, Lcom/android/ims/-$$Lambda$e$qeCnZB-0y-mG0PZ-ggKVX96eDeM;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/-$$Lambda$e$qeCnZB-0y-mG0PZ-ggKVX96eDeM;-><init>(Lcom/android/ims/e;I)V

    invoke-interface {v0, v1}, Lcom/android/ims/e$b;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ImsManager"

    .line 2452
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 575
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 574
    invoke-static {p0, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/ims/e;->b()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "isNonTtyOrTtyOnVolteEnabled: ImsManager null, returning default value."

    const-string v0, "ImsManager"

    .line 4456
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ImsManager"

    .line 2456
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 1383
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v1

    .line 21357
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    return p1

    :cond_0
    return v0

    .line 21359
    :cond_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getProvisionedBool failed with error for item: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 1386
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProvisionedBoolNoException: operation failed for item="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Exception:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Returning false."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImsManager"

    .line 1386
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 611
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 610
    invoke-static {p0, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/android/ims/e;->c()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "isVolteEnabledByPlatform: ImsManager null, returning default value."

    const-string v0, "ImsManager"

    .line 5456
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private d(Ljava/lang/String;)I
    .locals 2

    .line 2363
    iget-object v0, p0, Lcom/android/ims/e;->m:Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 2365
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2368
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 2371
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private synthetic d(I)V
    .locals 2

    .line 1269
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .line 648
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 647
    invoke-static {p0, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/android/ims/e;->d()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "isVolteProvisionedOnDevice: ImsManager null, returning default value."

    const-string v0, "ImsManager"

    .line 6456
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic e(I)V
    .locals 2

    .line 1200
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setConfig(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .line 679
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 678
    invoke-static {p0, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/android/ims/e;->e()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "isWfcProvisionedOnDevice: ImsManager null, returning default value."

    const-string v0, "ImsManager"

    .line 7456
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static f(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "1"

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    .line 717
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 716
    invoke-static {p0, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/android/ims/e;->f()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "isVtProvisionedOnDevice: ImsManager null, returning default value."

    const-string v0, "ImsManager"

    .line 8456
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private g(Z)V
    .locals 2

    .line 1267
    iget-object v0, p0, Lcom/android/ims/e;->a:Lcom/android/ims/e$b;

    new-instance v1, Lcom/android/ims/-$$Lambda$e$9NI8WV9wwIw2ARtiBpj_A92a1QA;

    invoke-direct {v1, p0, p1}, Lcom/android/ims/-$$Lambda$e$9NI8WV9wwIw2ARtiBpj_A92a1QA;-><init>(Lcom/android/ims/e;I)V

    invoke-interface {v0, v1}, Lcom/android/ims/e$b;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 1

    .line 748
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 747
    invoke-static {p0, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/android/ims/e;->g()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "isVtEnabledByPlatform: ImsManager null, returning default value."

    const-string v0, "ImsManager"

    .line 9456
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private h(Z)V
    .locals 5

    .line 2479
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setLteFeatureValues: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManager"

    .line 36452
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 2482
    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_0

    .line 2486
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2491
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/e;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ignore_data_enabled_changed_for_video_calls"

    .line 2492
    invoke-virtual {p0, v4}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz p1, :cond_1

    .line 2494
    invoke-virtual {p0}, Lcom/android/ims/e;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v4, :cond_2

    .line 2495
    invoke-virtual {p0}, Lcom/android/ims/e;->B()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    const/4 p1, 0x2

    if-eqz v2, :cond_3

    .line 2497
    invoke-virtual {v0, p1, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_2

    .line 2501
    :cond_3
    invoke-virtual {v0, p1, v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2507
    :cond_4
    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {p1, v0}, Lcom/android/ims/h;->a(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setLteFeatureValues: Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    .line 903
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 902
    invoke-static {p0, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/android/ims/e;->j()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "isWfcEnabledByUser: ImsManager null, returning default value."

    const-string v0, "ImsManager"

    .line 10456
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1

    .line 1287
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1286
    invoke-static {p0, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1289
    invoke-virtual {p0}, Lcom/android/ims/e;->m()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "isWfcEnabledByPlatform: ImsManager null, returning default value."

    const-string v0, "ImsManager"

    .line 18456
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$9NI8WV9wwIw2ARtiBpj_A92a1QA(Lcom/android/ims/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/e;->d(I)V

    return-void
.end method

.method public static synthetic lambda$Lzl8s8jP23p9Bc33uHfTrrlbPf0(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/ims/e;->a(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$hi4LgJuSdcxBRm8SINA1z-7ZBg8(Lcom/android/ims/e;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ims/e;->a(ZI)V

    return-void
.end method

.method public static synthetic lambda$qeCnZB-0y-mG0PZ-ggKVX96eDeM(Lcom/android/ims/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/e;->e(I)V

    return-void
.end method

.method public static synthetic lambda$y1WJzLz6GJIFAkrQOlGR23wfTSc(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/ims/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 2703
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v0

    .line 2704
    invoke-static {v0}, Lcom/android/ims/e;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    .line 2708
    invoke-virtual {p0, v1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/ims/e;->f(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "volte_vt_enabled"

    .line 2706
    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    .line 2714
    invoke-virtual {p0, v1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/ims/e;->f(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wfc_ims_enabled"

    .line 2712
    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "carrier_default_wfc_ims_mode_int"

    .line 2720
    invoke-direct {p0, v1}, Lcom/android/ims/e;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wfc_ims_mode"

    .line 2718
    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    .line 2726
    invoke-virtual {p0, v1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/ims/e;->f(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wfc_ims_roaming_enabled"

    .line 2724
    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2732
    invoke-static {v2}, Lcom/android/ims/e;->f(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "vt_ims_enabled"

    .line 2731
    invoke-static {v0, v3, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2734
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factoryReset: invalid sub id, can not reset siminfo db settings; subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManager"

    .line 39456
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/ims/e;->d(Z)V

    return-void
.end method

.method public final B()Z
    .locals 3

    .line 2763
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    return v0
.end method

.method public final a(Z[Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2646
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/h;->a(Z[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2648
    new-instance p2, Lcom/android/ims/ImsException;

    const/16 v0, 0x6a

    const-string v1, "shouldProcessCall()"

    invoke-direct {p2, v1, p1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public final a(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2030
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    .line 2033
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/h;->a(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2035
    new-instance p2, Lcom/android/ims/ImsException;

    const/16 v0, 0x6a

    const-string v1, "createCallProfile()"

    invoke-direct {p2, v1, p1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public final a(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/a$b;)Lcom/android/ims/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2053
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "makeCall :: profile="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManager"

    .line 33452
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    .line 2058
    new-instance v0, Lcom/android/ims/a;

    iget-object v1, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/ims/a;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2060
    invoke-virtual {v0, p3}, Lcom/android/ims/a;->a(Lcom/android/ims/a$b;)V

    .line 2061
    invoke-direct {p0, p1}, Lcom/android/ims/e;->a(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallSession;

    move-result-object p3

    const/4 v1, 0x0

    const-string v2, "isConferenceUri"

    .line 2062
    invoke-virtual {p1, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2066
    aget-object p1, p2, v1

    .line 34098
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "start(1) :: session="

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 34100
    iget-object v2, v0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 34101
    :try_start_0
    iput-object p3, v0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34104
    :try_start_1
    invoke-virtual {v0}, Lcom/android/ims/a;->n()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 34105
    iget-object p2, v0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p3, p1, p2}, Landroid/telephony/ims/ImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34110
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "start(1) :: "

    .line 34107
    invoke-virtual {v0, p2, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34108
    new-instance p2, Lcom/android/ims/ImsException;

    const-string p3, "start(1)"

    invoke-direct {p2, p3, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2

    :catchall_0
    move-exception p1

    .line 34110
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 34123
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "start(n) :: session="

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 34125
    iget-object p1, v0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 34126
    :try_start_3
    iput-object p3, v0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    const/4 v2, 0x1

    .line 34127
    iput-boolean v2, v0, Lcom/android/ims/a;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34130
    :try_start_4
    invoke-virtual {v0}, Lcom/android/ims/a;->n()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 34131
    iget-object v2, v0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p3, p2, v2}, Landroid/telephony/ims/ImsCallSession;->start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34136
    :try_start_5
    monitor-exit p1

    :goto_0
    return-object v0

    :catch_1
    move-exception p2

    const-string p3, "start(n) :: "

    .line 34133
    invoke-virtual {v0, p3, p2}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34134
    new-instance p3, Lcom/android/ims/ImsException;

    const-string v0, "start(n)"

    invoke-direct {p3, v0, p2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p3

    :catchall_1
    move-exception p2

    .line 34136
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p2
.end method

.method public final a(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;Lcom/android/ims/a$b;)Lcom/android/ims/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2086
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "takeCall :: incomingCall="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManager"

    .line 34452
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    const/16 v0, 0x65

    if-eqz p2, :cond_3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android:imsCallID"

    .line 35386
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 2109
    :try_start_0
    new-instance p2, Lcom/android/ims/a;

    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/android/ims/a;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2111
    new-instance v0, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {p2, v0}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallSession;)V

    .line 2112
    invoke-virtual {p2, p3}, Lcom/android/ims/a;->a(Lcom/android/ims/a$b;)V

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 2105
    :cond_1
    new-instance p1, Lcom/android/ims/ImsException;

    const-string p2, "No pending session for the call"

    const/16 p3, 0x6b

    invoke-direct {p1, p2, p3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    :goto_1
    new-instance p2, Lcom/android/ims/ImsException;

    const/4 p3, 0x0

    const-string/jumbo v0, "takeCall()"

    invoke-direct {p2, v0, p1, p3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2

    .line 2099
    :cond_2
    new-instance p1, Lcom/android/ims/ImsException;

    const-string p2, "Call ID missing in the incoming call intent"

    invoke-direct {p1, p2, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 2092
    :cond_3
    new-instance p1, Lcom/android/ims/ImsException;

    const-string p2, "Can\'t retrieve session with null intent"

    invoke-direct {p1, p2, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final a(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2588
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/h;->a(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2590
    new-instance p2, Lcom/android/ims/ImsException;

    const/16 p3, 0x6a

    const-string v0, "acknowledgeSms()"

    invoke-direct {p2, v0, p1, p3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public final a(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2142
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    if-eqz p3, :cond_0

    .line 2144
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_0

    .line 2146
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 2148
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/ims/e;->a(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    return-void
.end method

.method public final a(ILandroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2289
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    .line 2292
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/h;->a(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2294
    new-instance p2, Lcom/android/ims/ImsException;

    const/16 v0, 0x6a

    const-string v1, "setTTYMode()"

    invoke-direct {p2, v1, p1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public final a(IZ)V
    .locals 4

    .line 1155
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v0

    .line 1156
    invoke-static {v0}, Lcom/android/ims/e;->a(I)Z

    move-result v1

    const-string v2, "ImsManager"

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    .line 1158
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setWfcMode(i,b) - setting="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16452
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wfc_ims_mode"

    .line 1159
    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1162
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setWfcMode(i,b) (roaming) - setting="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17452
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wfc_ims_roaming_mode"

    .line 1163
    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setWfcMode(i,b): invalid sub id, skip setting setting in siminfo db; subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17456
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_0
    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const-string v1, "phone"

    .line 1172
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1176
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    if-ne p2, v0, :cond_3

    .line 1177
    invoke-direct {p0, p1}, Lcom/android/ims/e;->b(I)V

    if-eqz p2, :cond_2

    .line 1182
    invoke-virtual {p0}, Lcom/android/ims/e;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1183
    invoke-virtual {p0}, Lcom/android/ims/e;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1182
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/ims/e;->g(Z)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1851
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    .line 1853
    :try_start_0
    invoke-static {}, Lcom/android/ims/e;->C()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 1854
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object p1

    .line 30722
    iget-object v0, v0, Lcom/android/ims/h;->e:Lcom/android/ims/h$b;

    invoke-virtual {v0, p1}, Lcom/android/ims/h$b;->a(Landroid/os/IInterface;)V

    const-string p1, "Capability Callback registered."

    const-string v0, "ImsManager"

    .line 31452
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1858
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "addCapabilitiesCallback(IF)"

    invoke-direct {v0, v2, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 1848
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "capabilities callback can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1782
    :try_start_0
    invoke-static {}, Lcom/android/ims/e;->C()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 1783
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object p1

    .line 29704
    iget-object v0, v0, Lcom/android/ims/h;->d:Lcom/android/ims/h$d;

    invoke-virtual {v0, p1}, Lcom/android/ims/h$d;->a(Landroid/os/IInterface;)V

    const-string p1, "Registration Callback registered."

    const-string v0, "ImsManager"

    .line 30452
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1787
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "addRegistrationCallback(IRIB)"

    invoke-direct {v0, v2, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 1778
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "registration callback can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Lcom/android/ims/h$c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/android/ims/e;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string p1, "ImsManager"

    const-string v0, "removeNotifyStatusChangedCallback: callback is null!"

    .line 1695
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Z)V
    .locals 5

    const-string v0, "ImsManager"

    if-eqz p1, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/ims/e;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "setEnhanced4gLteModeSetting: Not possible to enable VoLTE due to provisioning."

    .line 3452
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v1

    const-string v2, "editable_enhanced_4g_lte_bool"

    .line 536
    invoke-virtual {p0, v2}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "hide_enhanced_4g_lte_bool"

    .line 537
    invoke-virtual {p0, v2}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string p1, "enhanced_4g_lte_on_by_default_bool"

    .line 538
    invoke-virtual {p0, p1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result p1

    :cond_2
    const/4 v2, -0x1

    .line 542
    iget-object v3, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const-string/jumbo v4, "volte_vt_enabled"

    invoke-static {v1, v4, v2, v3}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v2

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eq v2, v3, :cond_5

    .line 549
    invoke-static {v1}, Lcom/android/ims/e;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 552
    invoke-static {p1}, Lcom/android/ims/e;->f(Z)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {v1, v4, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 554
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setEnhanced4gLteModeSetting: invalid sub id, can not set property in  siminfo db; subId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3456
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :goto_1
    invoke-virtual {p0}, Lcom/android/ims/e;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 559
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/ims/e;->e(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public final a()Z
    .locals 4

    .line 491
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const/4 v2, -0x1

    const-string/jumbo v3, "volte_vt_enabled"

    .line 490
    invoke-static {v0, v3, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    const-string v1, "enhanced_4g_lte_on_by_default_bool"

    .line 493
    invoke-virtual {p0, v1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "editable_enhanced_4g_lte_bool"

    .line 498
    invoke-virtual {p0, v3}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "hide_enhanced_4g_lte_bool"

    .line 499
    invoke-virtual {p0, v3}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 2343
    iget-object v0, p0, Lcom/android/ims/e;->m:Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 2345
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2348
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2351
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Z)V
    .locals 4

    const-string v0, "ImsManager"

    if-eqz p1, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/android/ims/e;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "setWfcSetting: Not possible to enable WFC due to provisioning."

    .line 11452
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v1

    .line 953
    invoke-static {v1}, Lcom/android/ims/e;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 955
    invoke-static {p1}, Lcom/android/ims/e;->f(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wfc_ims_enabled"

    .line 954
    invoke-static {v1, v3, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "setWfcSetting: invalid sub id, can not set WFC setting in siminfo db; subId="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11456
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :goto_0
    iget-object v2, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const-string v3, "phone"

    .line 962
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 963
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 964
    invoke-virtual {p0, v1}, Lcom/android/ims/e;->c(Z)I

    move-result v2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 11992
    :goto_1
    :try_start_0
    invoke-virtual {p0, v3, v3, p1}, Lcom/android/ims/e;->a(IIZ)V

    .line 11996
    invoke-direct {p0, v2}, Lcom/android/ims/e;->b(I)V

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 12000
    invoke-virtual {p0}, Lcom/android/ims/e;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 11999
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/ims/e;->g(Z)V

    if-eqz p1, :cond_4

    const-string p1, "setWfcSetting() : turnOnIms"

    .line 12452
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12004
    invoke-virtual {p0}, Lcom/android/ims/e;->u()V

    return-void

    .line 12005
    :cond_4
    invoke-virtual {p0}, Lcom/android/ims/e;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12006
    invoke-virtual {p0}, Lcom/android/ims/e;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12007
    invoke-virtual {p0}, Lcom/android/ims/e;->a()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const-string p1, "setWfcSetting() : imsServiceAllowTurnOff -> turnOffIms"

    .line 13452
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12009
    invoke-virtual {p0}, Lcom/android/ims/e;->w()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    const-string v0, "setWfcSetting(): "

    .line 12012
    invoke-static {v0, p1}, Lcom/android/ims/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()Z
    .locals 3

    const-string v0, "carrier_volte_tty_supported_bool"

    .line 4601
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-nez v0, :cond_1

    const-string v0, "ImsManager"

    const-string v2, "isNonTtyOrTtyOnVolteEnabled: telecom not available"

    .line 594
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 597
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Z)I
    .locals 3

    const-string v0, "ImsManager"

    if-nez p1, :cond_1

    const-string p1, "editable_wfc_mode_bool"

    .line 1089
    invoke-virtual {p0, p1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "carrier_default_wfc_ims_mode_int"

    if-nez p1, :cond_0

    .line 1090
    invoke-direct {p0, v1}, Lcom/android/ims/e;->d(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "wfc_ims_mode"

    .line 1094
    invoke-direct {p0, p1, v1}, Lcom/android/ims/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1097
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getWfcMode - setting="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14452
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string/jumbo p1, "use_wfc_home_network_mode_in_roaming_network_bool"

    .line 1099
    invoke-virtual {p0, p1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1101
    invoke-virtual {p0, p1}, Lcom/android/ims/e;->c(Z)I

    move-result p1

    goto :goto_1

    :cond_2
    const-string p1, "editable_wfc_roaming_mode_bool"

    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "carrier_default_wfc_ims_roaming_mode_int"

    if-nez p1, :cond_3

    .line 1104
    invoke-direct {p0, v1}, Lcom/android/ims/e;->d(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "wfc_ims_roaming_mode"

    .line 1107
    invoke-direct {p0, p1, v1}, Lcom/android/ims/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1111
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getWfcMode (roaming) - setting="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15452
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return p1
.end method

.method public final c()Z
    .locals 4

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/ims/e;->c:I

    .line 627
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 626
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 629
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carrier_volte_available_bool"

    .line 636
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/android/ims/e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v3
.end method

.method public final d(Z)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "phone"

    const-string v2, ", nonTTY = "

    const-string v3, ", enabled = "

    const/4 v4, 0x5

    const-string v5, "ImsManager"

    if-nez p1, :cond_0

    .line 1433
    new-instance v6, Landroid/telephony/TelephonyManager;

    iget-object v7, v1, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->k()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 1434
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-eq v6, v4, :cond_0

    const-string/jumbo v0, "updateImsServiceConfig: SIM not ready"

    .line 21452
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1441
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->k()I

    move-result v6

    .line 1442
    iget-object v7, v1, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1443
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "updateImsServiceConfigForSlot: subId not active: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22452
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1447
    :cond_1
    iget-boolean v6, v1, Lcom/android/ims/e;->f:Z

    if-eqz v6, :cond_2

    if-eqz p1, :cond_16

    :cond_2
    const/4 v6, 0x0

    .line 1452
    :try_start_0
    new-instance v7, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    invoke-direct {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest;-><init>()V

    .line 22496
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->c()Z

    move-result v8

    .line 22497
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->a()Z

    move-result v9

    .line 22498
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->b()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    move v12, v11

    goto :goto_0

    :cond_3
    move v12, v6

    .line 22501
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "updateVolteFeatureValue: available = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 23452
    invoke-static {v5, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_4

    .line 22506
    invoke-virtual {v7, v11, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_1

    .line 22510
    :cond_4
    invoke-virtual {v7, v11, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 23550
    :goto_1
    new-instance v8, Landroid/telephony/TelephonyManager;

    iget-object v9, v1, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->k()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 23551
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    .line 23552
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->m()Z

    move-result v9

    .line 23553
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->j()Z

    move-result v10

    .line 23554
    invoke-virtual {v1, v8}, Lcom/android/ims/e;->c(Z)I

    move-result v12

    .line 23555
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->l()Z

    move-result v13

    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    move v14, v11

    goto :goto_2

    :cond_5
    move v14, v6

    .line 23558
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateWfcFeatureAndProvisionedValues: available = "

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mode = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", roaming = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isNetworkRoaming = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24452
    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_6

    .line 23565
    invoke-virtual {v7, v11, v11}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_3

    .line 23569
    :cond_6
    invoke-virtual {v7, v11, v11}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    :goto_3
    if-nez v14, :cond_7

    move v13, v6

    move v12, v11

    .line 23578
    :cond_7
    invoke-direct {v1, v12}, Lcom/android/ims/e;->b(I)V

    .line 23579
    invoke-direct {v1, v13}, Lcom/android/ims/e;->g(Z)V

    .line 24520
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->g()Z

    move-result v4

    .line 24521
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->h()Z

    move-result v8

    .line 24522
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->b()Z

    move-result v9

    .line 24523
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->B()Z

    move-result v10

    const-string v12, "ignore_data_enabled_changed_for_video_calls"

    .line 24524
    invoke-virtual {v1, v12}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v4, :cond_9

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-nez v12, :cond_8

    if-eqz v10, :cond_9

    :cond_8
    move v12, v11

    goto :goto_4

    :cond_9
    move v12, v6

    .line 24530
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "updateVideoCallFeatureValue: available = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", data enabled = "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25452
    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-eqz v12, :cond_a

    .line 24536
    invoke-virtual {v7, v2, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_5

    .line 24540
    :cond_a
    invoke-virtual {v7, v2, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    :goto_5
    const-string v2, "rtt_supported_bool"

    .line 26179
    invoke-virtual {v1, v2}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "rtt_always_enabled_bool"

    .line 26181
    invoke-virtual {v1, v4}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v4

    .line 26182
    iget-object v8, v1, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "rtt_calling_mode"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_c

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    move v4, v6

    goto :goto_7

    :cond_c
    :goto_6
    move v4, v11

    .line 26184
    :goto_7
    const-class v8, Lcom/android/ims/e;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "update RTT value "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v11, :cond_e

    if-eqz v4, :cond_d

    move v8, v11

    goto :goto_8

    :cond_d
    move v8, v6

    .line 26194
    :goto_8
    iget-object v9, v1, Lcom/android/ims/e;->a:Lcom/android/ims/e$b;

    new-instance v10, Lcom/android/ims/-$$Lambda$e$hi4LgJuSdcxBRm8SINA1z-7ZBg8;

    invoke-direct {v10, v1, v4, v8}, Lcom/android/ims/-$$Lambda$e$hi4LgJuSdcxBRm8SINA1z-7ZBg8;-><init>(Lcom/android/ims/e;ZI)V

    invoke-interface {v9, v10}, Lcom/android/ims/e$b;->executeRunnable(Ljava/lang/Runnable;)V

    :cond_e
    if-eqz v2, :cond_f

    if-eqz v4, :cond_f

    move v2, v11

    goto :goto_9

    :cond_f
    move v2, v6

    .line 27318
    :goto_9
    iget-object v4, v1, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 27320
    iget v8, v1, Lcom/android/ims/e;->c:I

    invoke-virtual {v4, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v8, 0x5

    if-ne v4, v8, :cond_10

    const-string v4, "carrier_supports_ss_over_ut_bool"

    .line 27325
    invoke-virtual {v1, v4}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 27326
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->n()Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v11

    goto :goto_a

    :cond_10
    move v4, v6

    :goto_a
    const-string v8, "carrier_ut_provisioning_required_bool"

    .line 26585
    invoke-virtual {v1, v8}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x4

    if-eqz v8, :cond_11

    .line 26591
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 26590
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_11

    .line 26596
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->k()I

    move-result v8

    invoke-interface {v0, v8, v9, v6}, Lcom/android/internal/telephony/ITelephony;->isMmTelCapabilityProvisionedInCache(III)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_0
    :try_start_2
    const-string/jumbo v0, "updateUtFeatureValue: couldn\'t reach telephony! returning provisioned"

    .line 26601
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v0, v11

    :goto_b
    if-eqz v4, :cond_12

    if-eqz v0, :cond_12

    move v8, v11

    goto :goto_c

    :cond_12
    move v8, v6

    .line 26606
    :goto_c
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "updateUtFeatureValue: available = "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isProvisioned = "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27452
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_13

    .line 26611
    invoke-virtual {v7, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToEnableForTech(II)V

    goto :goto_d

    .line 26615
    :cond_13
    invoke-virtual {v7, v9, v6}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->addCapabilitiesToDisableForTech(II)V

    .line 1462
    :goto_d
    invoke-direct {v1, v7}, Lcom/android/ims/e;->a(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V

    if-nez v2, :cond_15

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->i()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 27487
    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/ims/-$$Lambda$e$Lzl8s8jP23p9Bc33uHfTrrlbPf0;->INSTANCE:Lcom/android/ims/-$$Lambda$e$Lzl8s8jP23p9Bc33uHfTrrlbPf0;

    .line 27488
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_e

    :cond_14
    const-string/jumbo v0, "updateImsServiceConfig: turnOffIms"

    .line 29452
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->w()V

    goto :goto_f

    :cond_15
    :goto_e
    const-string/jumbo v0, "updateImsServiceConfig: turnOnIms"

    .line 28452
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/e;->u()V

    .line 1477
    :goto_f
    iput-boolean v11, v1, Lcom/android/ims/e;->f:Z
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v2, "updateImsServiceConfig: "

    .line 1479
    invoke-static {v2, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1480
    iput-boolean v6, v1, Lcom/android/ims/e;->f:Z

    :cond_16
    return-void
.end method

.method public final d()Z
    .locals 1

    const-string v0, "carrier_volte_provisioning_required_bool"

    .line 660
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 6767
    invoke-direct {p0, v0}, Lcom/android/ims/e;->c(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2514
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    const-string v0, "ImsManager"

    if-eqz p1, :cond_0

    .line 2520
    invoke-direct {p0, p1}, Lcom/android/ims/e;->h(Z)V

    const-string p1, "setAdvanced4GMode: turnOnIms"

    .line 37452
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    invoke-virtual {p0}, Lcom/android/ims/e;->u()V

    return-void

    .line 2524
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/e;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "setAdvanced4GMode: turnOffIms"

    .line 38452
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    invoke-virtual {p0}, Lcom/android/ims/e;->w()V

    .line 2528
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/ims/e;->h(Z)V

    return-void
.end method

.method public final e()Z
    .locals 1

    const-string v0, "carrier_volte_override_wfc_provisioning_bool"

    .line 694
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/android/ims/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "carrier_volte_provisioning_required_bool"

    .line 701
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1c

    .line 7772
    invoke-direct {p0, v0}, Lcom/android/ims/e;->c(I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const-string v0, "carrier_volte_provisioning_required_bool"

    .line 729
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 8777
    invoke-direct {p0, v0}, Lcom/android/ims/e;->c(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 4

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "persist.dbg.vt_avail_ovr"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/ims/e;->c:I

    .line 766
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 765
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 767
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carrier_vt_available_bool"

    .line 774
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    invoke-virtual {p0}, Lcom/android/ims/e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v3
.end method

.method public final h()Z
    .locals 4

    .line 799
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const/4 v2, -0x1

    const-string/jumbo v3, "vt_ims_enabled"

    .line 798
    invoke-static {v0, v3, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final i()Z
    .locals 4

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "persist.dbg.allow_ims_off"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/ims/e;->c:I

    .line 885
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 884
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 886
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "carrier_allow_turnoff_ims_bool"

    .line 891
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v3
.end method

.method public final j()Z
    .locals 4

    .line 917
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const/4 v2, -0x1

    const-string/jumbo v3, "wfc_ims_enabled"

    .line 916
    invoke-static {v0, v3, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "carrier_default_wfc_ims_enabled_bool"

    .line 922
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final k()I
    .locals 2

    .line 1188
    iget v0, p0, Lcom/android/ims/e;->c:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1191
    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 4

    .line 1230
    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v0

    iget-object v1, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const/4 v2, -0x1

    const-string/jumbo v3, "wfc_ims_roaming_enabled"

    .line 1229
    invoke-static {v0, v3, v2, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "carrier_default_wfc_ims_roaming_enabled_bool"

    .line 1233
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 4

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/ims/e;->c:I

    .line 1304
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 1303
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 1305
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carrier_wfc_ims_available_bool"

    .line 1312
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    invoke-virtual {p0}, Lcom/android/ims/e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v3
.end method

.method public final n()Z
    .locals 5

    const-string v0, "carrier_ims_gba_required_bool"

    .line 1336
    invoke-virtual {p0, v0}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1338
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/ims/e;->k()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 1339
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimIst()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsManager"

    if-nez v0, :cond_0

    const-string v0, "isGbaValid - ISF is NULL"

    .line 19456
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 1345
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1346
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isGbaValid - GBA capable="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", ISF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20452
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public final o()Z
    .locals 1

    .line 1648
    invoke-virtual {p0}, Lcom/android/ims/e;->p()V

    .line 1650
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0}, Lcom/android/ims/h;->k()Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/h;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1666
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/e;->D()V

    :cond_1
    return-void
.end method

.method public final q()I
    .locals 3

    const/4 v0, -0x1

    .line 1961
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    .line 31803
    invoke-virtual {v1}, Lcom/android/ims/h;->a()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31805
    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    const-string v1, "ImsManager"

    const-string v2, "getRegistrationTech: no connection to ImsService."

    .line 1963
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final r()Lcom/android/ims/ImsUtInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "getSupplementaryServiceConfiguration()"

    .line 1989
    iget-object v1, p0, Lcom/android/ims/e;->h:Lcom/android/ims/g;

    if-eqz v1, :cond_0

    .line 32579
    iget-object v1, v1, Lcom/android/ims/g;->a:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/android/ims/e;->h:Lcom/android/ims/g;

    return-object v0

    .line 1993
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    .line 1995
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v1}, Lcom/android/ims/h;->d()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2002
    new-instance v2, Lcom/android/ims/g;

    invoke-direct {v2, v1}, Lcom/android/ims/g;-><init>(Lcom/android/ims/internal/IImsUt;)V

    iput-object v2, p0, Lcom/android/ims/e;->h:Lcom/android/ims/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2007
    iget-object v0, p0, Lcom/android/ims/e;->h:Lcom/android/ims/g;

    return-object v0

    .line 1998
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x321

    invoke-direct {v1, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 2004
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    invoke-direct {v2, v0, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public final s()Lcom/android/ims/ImsConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2127
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    .line 2129
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    .line 35798
    invoke-virtual {v0}, Lcom/android/ims/h;->b()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2134
    new-instance v1, Lcom/android/ims/ImsConfig;

    invoke-direct {v1, v0}, Lcom/android/ims/ImsConfig;-><init>(Landroid/telephony/ims/aidl/IImsConfig;)V

    return-object v1

    .line 2131
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x83

    const-string v2, "getConfigInterface()"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final t()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2395
    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2399
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/h;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2400
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/e;->D()V

    .line 2402
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 2403
    :cond_2
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x6a

    const-string v2, "Service is unavailable"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2396
    :cond_3
    new-instance v0, Lcom/android/ims/ImsException;

    const/16 v1, 0x96

    const-string v2, "IMS not supported on device."

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final u()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2467
    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const-string v1, "phone"

    .line 2468
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2469
    iget v1, p0, Lcom/android/ims/e;->c:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->enableIms(I)V

    return-void
.end method

.method public final v()Z
    .locals 1

    .line 2473
    invoke-virtual {p0}, Lcom/android/ims/e;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2474
    invoke-virtual {p0}, Lcom/android/ims/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2475
    invoke-virtual {p0}, Lcom/android/ims/e;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final w()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2537
    iget-object v0, p0, Lcom/android/ims/e;->b:Landroid/content/Context;

    const-string v1, "phone"

    .line 2538
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2539
    iget v1, p0, Lcom/android/ims/e;->c:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->disableIms(I)V

    return-void
.end method

.method public final x()Lcom/android/ims/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "getEcbmInterface()"

    .line 2557
    iget-object v1, p0, Lcom/android/ims/e;->i:Lcom/android/ims/b;

    if-eqz v1, :cond_0

    .line 39076
    iget-object v1, v1, Lcom/android/ims/b;->a:Lcom/android/ims/internal/IImsEcbm;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbm;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/android/ims/e;->i:Lcom/android/ims/b;

    return-object v0

    .line 2561
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    .line 2563
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v1}, Lcom/android/ims/h;->e()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2569
    new-instance v2, Lcom/android/ims/b;

    invoke-direct {v2, v1}, Lcom/android/ims/b;-><init>(Lcom/android/ims/internal/IImsEcbm;)V

    iput-object v2, p0, Lcom/android/ims/e;->i:Lcom/android/ims/b;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2574
    iget-object v0, p0, Lcom/android/ims/e;->i:Lcom/android/ims/b;

    return-object v0

    .line 2566
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x385

    invoke-direct {v1, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 2571
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    invoke-direct {v2, v0, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public final y()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2606
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0}, Lcom/android/ims/h;->g()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2608
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getSmsFormat()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public final z()Lcom/android/ims/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "getMultiEndpointInterface()"

    .line 2660
    iget-object v1, p0, Lcom/android/ims/e;->j:Lcom/android/ims/f;

    if-eqz v1, :cond_0

    .line 39085
    iget-object v1, v1, Lcom/android/ims/f;->a:Lcom/android/ims/internal/IImsMultiEndpoint;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsMultiEndpoint;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2661
    iget-object v0, p0, Lcom/android/ims/e;->j:Lcom/android/ims/f;

    return-object v0

    .line 2664
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/e;->t()V

    .line 2666
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v1}, Lcom/android/ims/h;->f()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2672
    new-instance v2, Lcom/android/ims/f;

    invoke-direct {v2, v1}, Lcom/android/ims/f;-><init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V

    iput-object v2, p0, Lcom/android/ims/e;->j:Lcom/android/ims/f;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2678
    iget-object v0, p0, Lcom/android/ims/e;->j:Lcom/android/ims/f;

    return-object v0

    .line 2669
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x386

    invoke-direct {v1, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 2674
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    invoke-direct {v2, v0, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method
