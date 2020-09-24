.class final Lorg/a/a/g$a$a;
.super Ljava/lang/Object;
.source "INetworkCallback.java"

# interfaces
.implements Lorg/a/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static a:Lorg/a/a/g;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lorg/a/a/g$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 379
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 382
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    invoke-virtual {p2, v0, v3}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 389
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    invoke-virtual {p3, v0, v3}, Lorg/a/a/l;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 393
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 396
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    invoke-virtual {p4, v0, v3}, Lorg/a/a/a;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 400
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    :goto_2
    iget-object v2, p0, Lorg/a/a/g$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 403
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 404
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/a/a/g;->a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 407
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 339
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 342
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-virtual {p2, v0, v3}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 349
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {p3, v0, v3}, Lorg/a/a/l;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 353
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 356
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    invoke-virtual {p4, v0, v3}, Lorg/a/a/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 360
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    :goto_2
    iget-object v2, p0, Lorg/a/a/g$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 363
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 364
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/a/a/g;->a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 367
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 499
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 502
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    invoke-virtual {p2, v0, v3}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 509
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    invoke-virtual {p3, v0, v3}, Lorg/a/a/l;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 513
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 516
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    invoke-virtual {p4, v0, v3}, Lorg/a/a/i;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 520
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    :goto_2
    iget-object v2, p0, Lorg/a/a/g$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 523
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 524
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/a/a/g;->a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 527
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/j;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 539
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 542
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-virtual {p2, v0, v3}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 549
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    invoke-virtual {p3, v0, v3}, Lorg/a/a/l;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 553
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 556
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    invoke-virtual {p4, v0, v3}, Lorg/a/a/j;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 560
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    :goto_2
    iget-object v2, p0, Lorg/a/a/g$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 563
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 564
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/a/a/g;->a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 567
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 459
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 462
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    invoke-virtual {p2, v0, v3}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 469
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    invoke-virtual {p3, v0, v3}, Lorg/a/a/l;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 473
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 476
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    invoke-virtual {p4, v0, v3}, Lorg/a/a/k;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 480
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    :goto_2
    iget-object v2, p0, Lorg/a/a/g$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 483
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 484
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/a/a/g;->a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 487
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/n;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 419
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    invoke-virtual {p2, v0, v3}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 429
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    invoke-virtual {p3, v0, v3}, Lorg/a/a/l;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 436
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {p4, v0, v3}, Lorg/a/a/n;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 440
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    :goto_2
    iget-object v2, p0, Lorg/a/a/g$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 443
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 444
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/a/a/g;->a(ILorg/a/a/m;Lorg/a/a/l;Lorg/a/a/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 447
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final a(ILorg/a/a/m;Lorg/a/a/l;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 308
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    invoke-virtual {p2, v0, v3}, Lorg/a/a/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 315
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    invoke-virtual {p3, v0, v3}, Lorg/a/a/l;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 319
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 321
    :goto_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v4, p0, Lorg/a/a/g$a$a;->b:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 323
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 324
    invoke-static {}, Lorg/a/a/g$a;->a()Lorg/a/a/g;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/a/a/g;->a(ILorg/a/a/m;Lorg/a/a/l;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 327
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/a/a/g$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
