.class public final Lcom/android/ims/internal/b;
.super Landroid/telecom/Connection$VideoProvider;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/b$a;,
        Lcom/android/ims/internal/b$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/ims/internal/IImsVideoCallProvider;

.field public b:Landroid/os/RegistrantList;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/android/ims/internal/c;

.field public e:Z

.field public f:I

.field public g:Z

.field private final h:Lcom/android/ims/internal/b$a;

.field private i:Landroid/os/IBinder$DeathRecipient;

.field private final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/b;->b:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/b;->c:Ljava/util/Set;

    .line 70
    new-instance v0, Lcom/android/ims/internal/c;

    invoke-direct {v0}, Lcom/android/ims/internal/c;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/b;->d:Lcom/android/ims/internal/c;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/android/ims/internal/b;->e:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/ims/internal/b;->g:Z

    .line 75
    new-instance v1, Lcom/android/ims/internal/b$1;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/b$1;-><init>(Lcom/android/ims/internal/b;)V

    iput-object v1, p0, Lcom/android/ims/internal/b;->i:Landroid/os/IBinder$DeathRecipient;

    .line 150
    new-instance v1, Lcom/android/ims/internal/b$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/ims/internal/b$2;-><init>(Lcom/android/ims/internal/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/ims/internal/b;->j:Landroid/os/Handler;

    .line 233
    iput-object p1, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/ims/internal/b;->i:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 237
    new-instance p1, Lcom/android/ims/internal/b$a;

    invoke-direct {p1, p0, v0}, Lcom/android/ims/internal/b$a;-><init>(Lcom/android/ims/internal/b;B)V

    iput-object p1, p0, Lcom/android/ims/internal/b;->h:Lcom/android/ims/internal/b$a;

    .line 238
    iget-object p1, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    iget-object v0, p0, Lcom/android/ims/internal/b;->h:Lcom/android/ims/internal/b$a;

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lcom/android/ims/internal/b;->h:Lcom/android/ims/internal/b$a;

    return-void
.end method

.method static synthetic a(Lcom/android/ims/internal/b;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object p0
.end method

.method private static a(II)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 388
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    .line 389
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    and-int/lit8 p0, p0, -0x5

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/android/ims/internal/b;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ims/internal/b;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/android/ims/internal/b;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/ims/internal/b;->f:I

    return p0
.end method

.method static synthetic d(Lcom/android/ims/internal/b;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/ims/internal/b;->g:Z

    return p0
.end method

.method static synthetic e(Lcom/android/ims/internal/b;)Ljava/util/Set;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ims/internal/b;->c:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic f(Lcom/android/ims/internal/b;)Landroid/os/RegistrantList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/ims/internal/b;->b:Landroid/os/RegistrantList;

    return-object p0
.end method


# virtual methods
.method public final onRequestCameraCapabilities()V
    .locals 1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onRequestConnectionDataUsage()V
    .locals 1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsVideoCallProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_8

    .line 304
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/internal/b;->a(II)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/ims/internal/b;->f:I

    .line 305
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "onSendSessionModifyRequest: fromVideoState=%s, toVideoState=%s; skipping resume request - already resumed."

    .line 307
    new-array v2, v2, [Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    .line 310
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 307
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1439
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 1440
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    .line 1451
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1452
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v0

    .line 2368
    :goto_0
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v6

    .line 2369
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v7

    if-nez v6, :cond_3

    if-eqz v7, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_1
    if-nez v6, :cond_5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v6, v0

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v3

    .line 1455
    :goto_3
    invoke-static {v1, v4}, Lcom/android/ims/internal/b;->a(II)Z

    move-result v7

    if-eqz v6, :cond_6

    const-string v6, "maybeFilterPauseResume: isPauseRequest (from=%s, to=%s)"

    .line 1457
    new-array v7, v2, [Ljava/lang/Object;

    .line 1458
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    .line 1459
    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 1457
    invoke-static {p0, v6, v7}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1461
    iget-object v1, p0, Lcom/android/ims/internal/b;->d:Lcom/android/ims/internal/c;

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v5, :cond_b

    and-int/lit8 v1, v4, -0x5

    .line 1468
    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result p2

    invoke-direct {v4, v1, p2}, Landroid/telecom/VideoProfile;-><init>(II)V

    goto/16 :goto_7

    :cond_6
    if-eqz v7, :cond_b

    .line 2403
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2404
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v3

    goto :goto_4

    :cond_7
    move v5, v0

    .line 2415
    :goto_4
    invoke-static {v1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2416
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v3

    goto :goto_5

    :cond_8
    move v6, v0

    .line 1484
    :goto_5
    iget-boolean v7, p0, Lcom/android/ims/internal/b;->e:Z

    if-eqz v7, :cond_a

    if-nez v5, :cond_9

    if-eqz v6, :cond_a

    :cond_9
    const-string v5, "maybeFilterPauseResume: isResumeRequest, but camera turning on/off so skipping (from=%s, to=%s)"

    .line 1485
    new-array v6, v2, [Ljava/lang/Object;

    .line 1487
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1488
    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 1485
    invoke-static {p0, v5, v6}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    const-string v5, "maybeFilterPauseResume: isResumeRequest (from=%s, to=%s)"

    .line 1491
    new-array v6, v2, [Ljava/lang/Object;

    .line 1492
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1493
    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 1491
    invoke-static {p0, v5, v6}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1495
    iget-object v1, p0, Lcom/android/ims/internal/b;->d:Lcom/android/ims/internal/c;

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/c;->b(I)Z

    move-result v1

    if-nez v1, :cond_b

    or-int/lit8 v1, v4, 0x4

    .line 1499
    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result p2

    invoke-direct {v4, v1, p2}, Landroid/telecom/VideoProfile;-><init>(II)V

    goto :goto_7

    :cond_b
    :goto_6
    move-object v4, p2

    .line 317
    :goto_7
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    .line 318
    invoke-virtual {v4}, Landroid/telecom/VideoProfile;->getVideoState()I

    const-string p2, "onSendSessionModifyRequest: fromVideoState=%s, toVideoState=%s; "

    .line 319
    new-array v1, v2, [Ljava/lang/Object;

    .line 320
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 321
    invoke-virtual {v4}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 319
    invoke-static {p0, p2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object p2, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {p2, p1, v4}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 299
    :cond_c
    :goto_8
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "onSendSessionModifyRequest: null profile in request."

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onSetCamera(Ljava/lang/String;)V
    .locals 2

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setCamera(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onSetDeviceOrientation(I)V
    .locals 1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onSetPauseImage(Landroid/net/Uri;)V
    .locals 1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onSetZoom(F)V
    .locals 1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/b;->a:Lcom/android/ims/internal/IImsVideoCallProvider;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
