.class public final Lcom/coloros/settings/feature/deviceinfo/e$a;
.super Landroid/os/Handler;
.source "OppoStorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/e;

.field private b:Ljava/lang/Object;

.field private c:Lcom/android/internal/app/IMediaContainerService;

.field private volatile d:Z

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/deviceinfo/e;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    .line 266
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 248
    iput-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->d:Z

    .line 252
    new-instance p1, Lcom/coloros/settings/feature/deviceinfo/e$a$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/deviceinfo/e$a$1;-><init>(Lcom/coloros/settings/feature/deviceinfo/e$a;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->f:Landroid/content/ServiceConnection;

    .line 267
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/e$a;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->c:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method private a()V
    .locals 2

    const-string v0, "StorageMeasurement"

    const-string v1, "onInternalMeasurementComplete"

    .line 338
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 339
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/e$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method private a(I)V
    .locals 9

    const-string v0, "StorageMeasurement"

    const-string v1, "measureExactStorage"

    .line 482
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string p1, "measureExactStorage---context == null"

    .line 485
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 488
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/e;->i(Lcom/coloros/settings/feature/deviceinfo/e;)[J

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v3}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v4, v3, p1}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;ILandroid/os/storage/StorageVolume;I)J

    move-result-wide v5

    const/4 v3, 0x0

    aput-wide v5, v2, v3

    .line 489
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/e;->i(Lcom/coloros/settings/feature/deviceinfo/e;)[J

    move-result-object v2

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v1, v6, v5, p1}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;ILandroid/os/storage/StorageVolume;I)J

    move-result-wide v7

    aput-wide v7, v2, v4

    .line 490
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/e;->i(Lcom/coloros/settings/feature/deviceinfo/e;)[J

    move-result-object v2

    const/4 v5, 0x4

    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v7}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-static {v1, v5, v7, p1}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;ILandroid/os/storage/StorageVolume;I)J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mMediaSizes[0] = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->i(Lcom/coloros/settings/feature/deviceinfo/e;)[J

    move-result-object v5

    aget-wide v7, v5, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMediaSizes[1] = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->i(Lcom/coloros/settings/feature/deviceinfo/e;)[J

    move-result-object v5

    aget-wide v4, v5, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v3}, Lcom/coloros/settings/feature/deviceinfo/e;->i(Lcom/coloros/settings/feature/deviceinfo/e;)[J

    move-result-object v3

    aget-wide v4, v3, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v3, v2, p1}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;ILandroid/os/storage/StorageVolume;I)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/coloros/settings/feature/deviceinfo/e;->j(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 495
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    const/16 v2, 0x10

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object v4

    invoke-static {v1, v2, v4, p1}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;ILandroid/os/storage/StorageVolume;I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->i(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 497
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/e;->i(Lcom/coloros/settings/feature/deviceinfo/e;)[J

    move-result-object p1

    const-wide/16 v0, 0x0

    aput-wide v0, p1, v3

    .line 499
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/e$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/e$a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->d:Z

    return v0
.end method

.method private b()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 380
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->b(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 381
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 382
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->d(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 383
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 384
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->f(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 385
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->g(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 386
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->h(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 387
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->i(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    return-void
.end method

.method private c()V
    .locals 10

    const-string v0, "StorageMeasurement"

    const-string v1, "measureApproximateStorage"

    .line 391
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Ljava/lang/String;)[J

    move-result-object v1

    .line 396
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-static {v2, v4, v5}, Lcom/coloros/settings/feature/deviceinfo/e;->g(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 397
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    const/4 v4, 0x1

    aget-wide v5, v1, v4

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->h(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 398
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->f(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v5

    aget-wide v7, v1, v4

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->d(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 399
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v5

    aget-wide v7, v1, v3

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 402
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Ljava/lang/String;)[J

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    aget-wide v5, v1, v3

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 406
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    aget-wide v5, v1, v4

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->f(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 408
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v5

    aget-wide v7, v1, v3

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    const-string v1, "/persist"

    .line 435
    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Ljava/lang/String;)[J

    move-result-object v1

    .line 437
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v5

    aget-wide v7, v1, v3

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 438
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->g(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v5

    aget-wide v7, v1, v3

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    const-string v1, "/firmware"

    .line 441
    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Ljava/lang/String;)[J

    move-result-object v1

    .line 443
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v5

    aget-wide v7, v1, v3

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 444
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->g(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v5

    aget-wide v7, v1, v3

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 446
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->h(Lcom/coloros/settings/feature/deviceinfo/e;)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 447
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/e;->h(Lcom/coloros/settings/feature/deviceinfo/e;)[Landroid/os/storage/StorageVolume;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 448
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/e;->h(Lcom/coloros/settings/feature/deviceinfo/e;)[Landroid/os/storage/StorageVolume;

    move-result-object v2

    aget-object v2, v2, v1

    .line 449
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 450
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Ljava/lang/String;)[J

    move-result-object v2

    .line 453
    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v6, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v6}, Lcom/coloros/settings/feature/deviceinfo/e;->f(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v6

    aget-wide v8, v2, v4

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/coloros/settings/feature/deviceinfo/e;->d(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 454
    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v6, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v6}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v6

    aget-wide v8, v2, v3

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 461
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Ljava/lang/String;)[J

    move-result-object v1

    .line 464
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v5}, Lcom/coloros/settings/feature/deviceinfo/e;->f(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v5

    aget-wide v7, v1, v4

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/coloros/settings/feature/deviceinfo/e;->d(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 465
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v4}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v4

    aget-wide v6, v1, v3

    add-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Problem in container service"

    .line 471
    invoke-static {v0, v2, v1}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 272
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    const/4 v5, 0x0

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/e;->b(Lcom/coloros/settings/feature/deviceinfo/e;)V

    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->d:Z

    if-eqz p1, :cond_4

    .line 316
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->e:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    :cond_2
    if-nez v2, :cond_3

    .line 319
    monitor-exit v0

    return-void

    .line 322
    :cond_3
    iput-boolean v5, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->d:Z

    .line 323
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 325
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 302
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 304
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/e$a;->b()V

    const-string p1, "StorageMeasurement"

    const-string v0, "measureSingleStorage"

    .line 1343
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1347
    :try_start_1
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1348
    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Ljava/lang/String;)[J

    move-result-object p1

    .line 1350
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v1

    aget-wide v6, p1, v5

    add-long/2addr v1, v6

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 1351
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->d(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v1

    aget-wide v6, p1, v4

    add-long/2addr v1, v6

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->b(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 1352
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->e(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v1

    aget-wide v5, p1, v5

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 1353
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->f(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v1

    aget-wide v5, p1, v4

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->d(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "StorageMeasurement"

    const-string v1, "Problem in container service"

    .line 1356
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1358
    :goto_1
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/deviceinfo/e$a;->a(I)V

    return-void

    .line 1361
    :cond_6
    :try_start_2
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1362
    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Ljava/lang/String;)[J

    move-result-object p1

    .line 1364
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->c(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v1

    aget-wide v6, p1, v5

    add-long/2addr v1, v6

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->a(Lcom/coloros/settings/feature/deviceinfo/e;J)J

    .line 1365
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->a:Lcom/coloros/settings/feature/deviceinfo/e;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/e;->d(Lcom/coloros/settings/feature/deviceinfo/e;)J

    move-result-wide v1

    aget-wide v3, p1, v4

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/deviceinfo/e;->b(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "StorageMeasurement"

    const-string v1, "Problem in container service"

    .line 1370
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1372
    :goto_2
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/e$a;->c()V

    .line 1374
    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/deviceinfo/e$a;->a(I)V

    return-void

    .line 307
    :cond_7
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/e$a;->b()V

    .line 308
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/e$a;->c()V

    .line 1477
    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/deviceinfo/e$a;->a(I)V

    return-void

    .line 274
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleMessage: MSG_MEASURE---mBound = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageMeasurement"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->e:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    goto :goto_3

    :cond_9
    move-object p1, v2

    :goto_3
    if-nez p1, :cond_a

    const-string p1, "StorageMeasurement"

    const-string v0, "handleMessage: MSG_MEASURE---context == null"

    .line 277
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iput-boolean v4, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->d:Z

    .line 285
    invoke-virtual {p0, v3, v2}, Lcom/coloros/settings/feature/deviceinfo/e$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/deviceinfo/e$a;->sendMessage(Landroid/os/Message;)Z

    .line 287
    iget-boolean v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->d:Z

    if-eqz v2, :cond_b

    .line 288
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/e$a;->removeMessages(I)V

    .line 289
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->c:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, p1}, Lcom/coloros/settings/feature/deviceinfo/e$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/e$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 291
    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 292
    invoke-static {}, Lcom/coloros/settings/feature/deviceinfo/e;->a()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    const-string v1, "StorageMeasurement"

    const-string v2, "handleMessage: MSG_MEASURE---result = "

    .line 295
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
