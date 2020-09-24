.class public final Lcom/android/ims/h;
.super Ljava/lang/Object;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/h$c;,
        Lcom/android/ims/h$e;,
        Lcom/android/ims/h$b;,
        Lcom/android/ims/h$d;,
        Lcom/android/ims/h$a;
    }
.end annotation


# static fields
.field private static l:Z = true


# instance fields
.field protected final a:I

.field protected b:Landroid/os/IBinder;

.field c:Lcom/android/ims/h$c;

.field final d:Lcom/android/ims/h$d;

.field public final e:Lcom/android/ims/h$b;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/concurrent/Executor;

.field private volatile h:Z

.field private i:Ljava/lang/Integer;

.field private final j:Ljava/lang/Object;

.field private k:Z

.field private m:Landroid/telephony/ims/aidl/IImsRegistration;

.field private n:Landroid/telephony/ims/aidl/IImsConfig;

.field private final o:Landroid/os/IBinder$DeathRecipient;

.field private final p:Lcom/android/ims/h$e;

.field private final q:Lcom/android/ims/internal/IImsServiceFeatureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/android/ims/h;->h:Z

    const/4 v1, 0x0

    .line 428
    iput-object v1, p0, Lcom/android/ims/h;->i:Ljava/lang/Integer;

    .line 430
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    .line 432
    iput-boolean v0, p0, Lcom/android/ims/h;->k:Z

    .line 440
    new-instance v0, Lcom/android/ims/-$$Lambda$h$sGpS9SCoOM_p2wQe8zYTXlBQ1RM;

    invoke-direct {v0, p0}, Lcom/android/ims/-$$Lambda$h$sGpS9SCoOM_p2wQe8zYTXlBQ1RM;-><init>(Lcom/android/ims/h;)V

    iput-object v0, p0, Lcom/android/ims/h;->o:Landroid/os/IBinder$DeathRecipient;

    .line 502
    new-instance v0, Lcom/android/ims/h$1;

    invoke-direct {v0, p0}, Lcom/android/ims/h$1;-><init>(Lcom/android/ims/h;)V

    iput-object v0, p0, Lcom/android/ims/h;->q:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 573
    iput p2, p0, Lcom/android/ims/h;->a:I

    .line 574
    iput-object p1, p0, Lcom/android/ims/h;->f:Landroid/content/Context;

    .line 576
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/ims/h;->g:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-nez p2, :cond_1

    .line 581
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 583
    :cond_1
    new-instance p2, Landroid/os/HandlerExecutor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/ims/h;->g:Ljava/util/concurrent/Executor;

    .line 585
    :goto_0
    new-instance p2, Lcom/android/ims/h$d;

    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/ims/h$d;-><init>(Lcom/android/ims/h;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/ims/h;->d:Lcom/android/ims/h$d;

    .line 586
    new-instance p2, Lcom/android/ims/h$b;

    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/ims/h$b;-><init>(Lcom/android/ims/h;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/ims/h;->e:Lcom/android/ims/h$b;

    .line 587
    new-instance p2, Lcom/android/ims/h$e;

    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/ims/h$e;-><init>(Lcom/android/ims/h;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/ims/h;->p:Lcom/android/ims/h$e;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    const-string v0, "phone"

    .line 485
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic a(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 0

    .line 18966
    invoke-static {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/android/ims/h;)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/ims/h;->a()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Lcom/android/ims/h;
    .locals 3

    .line 457
    new-instance v0, Lcom/android/ims/h;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/h;-><init>(Landroid/content/Context;I)V

    .line 458
    invoke-static {p0}, Lcom/android/ims/e;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 460
    sput-boolean v2, Lcom/android/ims/h;->l:Z

    return-object v0

    .line 464
    :cond_0
    invoke-static {p0}, Lcom/android/ims/h;->a(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "MmTelFeatureConnection"

    const-string p1, "create: TelephonyManager is null!"

    .line 466
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1658
    :cond_1
    iget-object v1, v0, Lcom/android/ims/h;->q:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 472
    invoke-virtual {p0, p1, v1}, Landroid/telephony/TelephonyManager;->getImsMmTelFeatureAndListen(ILcom/android/ims/internal/IImsServiceFeatureCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 475
    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 1662
    iget-object v1, v0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1663
    :try_start_0
    iput-object p0, v0, Lcom/android/ims/h;->b:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    :try_start_1
    iget-object p0, v0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    if-eqz p0, :cond_2

    .line 1666
    iget-object p0, v0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    iget-object p1, v0, Lcom/android/ims/h;->o:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p0, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    :catch_0
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    invoke-virtual {v0}, Lcom/android/ims/h;->i()I

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1671
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 479
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "create: binder is null! Slot Id: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MmTelFeatureConnection"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/android/ims/h;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/ims/h;->i:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcom/android/ims/h;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/ims/h;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/android/ims/h;)Ljava/lang/Object;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/android/ims/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    return-void
.end method

.method static synthetic d(Lcom/android/ims/h;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/ims/h;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic e(Lcom/android/ims/h;)Lcom/android/ims/h$c;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/ims/h;->c:Lcom/android/ims/h$c;

    return-object p0
.end method

.method static synthetic f(Lcom/android/ims/h;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/ims/h;->l()V

    return-void
.end method

.method static synthetic g(Lcom/android/ims/h;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/ims/h;->h:Z

    return p0
.end method

.method static synthetic h(Lcom/android/ims/h;)Z
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/android/ims/h;->h:Z

    return v0
.end method

.method private l()V
    .locals 4

    .line 594
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h;->d:Lcom/android/ims/h$d;

    invoke-virtual {v1}, Lcom/android/ims/h$d;->a()V

    .line 596
    iget-object v1, p0, Lcom/android/ims/h;->e:Lcom/android/ims/h$b;

    invoke-virtual {v1}, Lcom/android/ims/h$b;->a()V

    .line 597
    iget-object v1, p0, Lcom/android/ims/h;->p:Lcom/android/ims/h$e;

    invoke-virtual {v1}, Lcom/android/ims/h$e;->a()V

    .line 598
    iget-boolean v1, p0, Lcom/android/ims/h;->h:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 599
    iput-boolean v1, p0, Lcom/android/ims/h;->h:Z

    const/4 v2, 0x0

    .line 601
    iput-object v2, p0, Lcom/android/ims/h;->m:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 602
    iput-object v2, p0, Lcom/android/ims/h;->n:Landroid/telephony/ims/aidl/IImsConfig;

    .line 603
    iget-object v2, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/ims/h;->o:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/ims/h;->c:Lcom/android/ims/h$c;

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/android/ims/h;->c:Lcom/android/ims/h$c;

    invoke-interface {v1}, Lcom/android/ims/h$c;->b()V

    .line 610
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$j3bbX7O42Da-YBRPUJln49ZSRLE(Lcom/android/ims/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/h;->l()V

    return-void
.end method

.method public static synthetic lambda$sGpS9SCoOM_p2wQe8zYTXlBQ1RM(Lcom/android/ims/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/h;->o()V

    return-void
.end method

.method private m()Ljava/lang/Integer;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 17966
    :try_start_0
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    .line 921
    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    sget-boolean v0, Lcom/android/ims/h;->l:Z

    if-eqz v0, :cond_1

    .line 960
    invoke-virtual {p0}, Lcom/android/ims/h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 961
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ImsServiceProxy is not ready to accept commands."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IMS is not supported on this device."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic o()V
    .locals 2

    const-string v0, "MmTelFeatureConnection"

    const-string v1, "DeathRecipient triggered, binder died."

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/ims/h;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/ims/h;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$h$j3bbX7O42Da-YBRPUJln49ZSRLE;

    invoke-direct {v1, p0}, Lcom/android/ims/-$$Lambda$h$j3bbX7O42Da-YBRPUJln49ZSRLE;-><init>(Lcom/android/ims/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/h;->l()V

    return-void
.end method


# virtual methods
.method public final a(Z[Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 16654
    iget-boolean p1, p0, Lcom/android/ims/h;->k:Z

    if-nez p1, :cond_0

    const-string p1, "MmTelFeatureConnection"

    const-string p2, "MmTel does not support emergency over IMS, fallback to CS."

    .line 883
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 886
    :cond_0
    iget-object p1, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 887
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 888
    iget-object v0, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 16966
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    .line 888
    invoke-interface {v0, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->shouldProcessCall([Ljava/lang/String;)I

    move-result p2

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 889
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final a(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 778
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 4966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 778
    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 779
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a()Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h;->m:Landroid/telephony/ims/aidl/IImsRegistration;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/android/ims/h;->m:Landroid/telephony/ims/aidl/IImsRegistration;

    monitor-exit v0

    return-object v1

    .line 619
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 620
    iget-object v0, p0, Lcom/android/ims/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/h;->a(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 623
    iget v1, p0, Lcom/android/ims/h;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 624
    :goto_0
    iget-object v1, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/h;->m:Landroid/telephony/ims/aidl/IImsRegistration;

    if-nez v2, :cond_2

    .line 628
    iput-object v0, p0, Lcom/android/ims/h;->m:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 630
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    iget-object v0, p0, Lcom/android/ims/h;->m:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0

    :catchall_0
    move-exception v0

    .line 630
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 619
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final a(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 786
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 5966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 786
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 787
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 846
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 11966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 846
    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSms(III)V

    .line 847
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 837
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 10966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    .line 837
    invoke-interface/range {v2 .. v8}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 839
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(ILandroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 822
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 8966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 822
    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setUiTtyMode(ILandroid/os/Message;)V

    .line 823
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 875
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 15966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 875
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 876
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 753
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 3966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    const/4 v2, 0x0

    .line 753
    invoke-interface {v1, p1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 754
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 684
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 1966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 684
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 685
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final b()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h;->n:Landroid/telephony/ims/aidl/IImsConfig;

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/ims/h;->n:Landroid/telephony/ims/aidl/IImsConfig;

    monitor-exit v0

    return-object v1

    .line 640
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 641
    iget-object v0, p0, Lcom/android/ims/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/h;->a(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 643
    iget v1, p0, Lcom/android/ims/h;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 644
    :goto_0
    iget-object v1, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/h;->n:Landroid/telephony/ims/aidl/IImsConfig;

    if-nez v2, :cond_2

    .line 647
    iput-object v0, p0, Lcom/android/ims/h;->n:Landroid/telephony/ims/aidl/IImsConfig;

    .line 649
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    iget-object v0, p0, Lcom/android/ims/h;->n:Landroid/telephony/ims/aidl/IImsConfig;

    return-object v0

    :catchall_0
    move-exception v0

    .line 649
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 640
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final b(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 854
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 12966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 854
    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSmsReport(III)V

    .line 855
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/android/ims/h;->d:Lcom/android/ims/h$d;

    invoke-virtual {v0}, Lcom/android/ims/h$d;->a()V

    .line 690
    iget-object v0, p0, Lcom/android/ims/h;->e:Lcom/android/ims/h$b;

    invoke-virtual {v0}, Lcom/android/ims/h$b;->a()V

    .line 691
    iget-object v0, p0, Lcom/android/ims/h;->p:Lcom/android/ims/h$e;

    invoke-virtual {v0}, Lcom/android/ims/h$e;->a()V

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ims/h;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 2966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    const/4 v2, 0x0

    .line 695
    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 697
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string v0, "MmTelFeatureConnection"

    const-string v1, "closeConnection: couldn\'t remove listener!"

    .line 699
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d()Lcom/android/ims/internal/IImsUt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 793
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 6966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 793
    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 794
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 814
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 7966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 814
    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 815
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 829
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 9966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 829
    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 830
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 861
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 13966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 861
    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 862
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/h;->n()V

    .line 868
    iget-object v1, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    .line 14966
    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    .line 868
    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->onSmsReady()V

    .line 869
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()I
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/h;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/h;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/android/ims/h;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 901
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 903
    invoke-direct {p0}, Lcom/android/ims/h;->m()Ljava/lang/Integer;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lcom/android/ims/h;->j:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 906
    :try_start_1
    monitor-exit v1

    return v0

    .line 909
    :cond_1
    iput-object v0, p0, Lcom/android/ims/h;->i:Ljava/lang/Integer;

    .line 910
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFeatureState - returning "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MmTelFeatureConnection"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    .line 910
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 901
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final j()Z
    .locals 2

    .line 946
    invoke-virtual {p0}, Lcom/android/ims/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/h;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 953
    iget-boolean v0, p0, Lcom/android/ims/h;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
