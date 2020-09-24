.class Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkCallback.java"

# interfaces
.implements Lorg/codeaurora/internal/INetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/INetworkCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "org.codeaurora.internal.INetworkCallback"

    return-object p0
.end method

.method public on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 451
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    invoke-virtual {p2, v0, v2}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    invoke-virtual {p3, v0, v2}, Lorg/codeaurora/internal/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 465
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    invoke-virtual {p4, v0, v2}, Lorg/codeaurora/internal/NrConfigType;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 472
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    :goto_2
    iget-object p0, p0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 277
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    invoke-virtual {p2, v0, v2}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {p3, v0, v2}, Lorg/codeaurora/internal/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 291
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    move p2, p1

    goto :goto_2

    :cond_2
    move p2, v2

    .line 293
    :goto_2
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object p0, p0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 343
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {p2, v0, v2}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    invoke-virtual {p3, v0, v2}, Lorg/codeaurora/internal/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    invoke-virtual {p4, v0, v2}, Lorg/codeaurora/internal/BearerAllocationStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 364
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    :goto_2
    iget-object p0, p0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 307
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    invoke-virtual {p2, v0, v2}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p3, v0, v2}, Lorg/codeaurora/internal/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 321
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 324
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    invoke-virtual {p4, v0, v2}, Lorg/codeaurora/internal/DcParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 328
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    :goto_2
    iget-object p0, p0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 487
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    invoke-virtual {p2, v0, v2}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    invoke-virtual {p3, v0, v2}, Lorg/codeaurora/internal/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 501
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    invoke-virtual {p4, v0, v2}, Lorg/codeaurora/internal/NrIconType;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 508
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    :goto_2
    iget-object p0, p0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.codeaurora.internal.INetworkCallback"

    .line 415
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {p2, v0, v2}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    invoke-virtual {p3, v0, v2}, Lorg/codeaurora/internal/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 429
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    invoke-virtual {p4, v0, v2}, Lorg/codeaurora/internal/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 436
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    :goto_2
    iget-object p0, p0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 3
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

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    invoke-virtual {p2, v0, v2}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    invoke-virtual {p3, v0, v2}, Lorg/codeaurora/internal/Status;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 393
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    invoke-virtual {p4, v0, v2}, Lorg/codeaurora/internal/UpperLayerIndInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 400
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    :goto_2
    iget-object p0, p0, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
