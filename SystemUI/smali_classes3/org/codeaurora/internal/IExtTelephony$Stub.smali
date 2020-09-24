.class public abstract Lorg/codeaurora/internal/IExtTelephony$Stub;
.super Landroid/os/Binder;
.source "IExtTelephony.java"

# interfaces
.implements Lorg/codeaurora/internal/IExtTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/IExtTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/internal/IExtTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.internal.IExtTelephony"

.field static final TRANSACTION_activateUiccCard:I = 0x3

.field static final TRANSACTION_deactivateUiccCard:I = 0x4

.field static final TRANSACTION_disable5g:I = 0x1d

.field static final TRANSACTION_enable5g:I = 0x1c

.field static final TRANSACTION_enable5gOnly:I = 0x1e

.field static final TRANSACTION_getActiveSubscription:I = 0x13

.field static final TRANSACTION_getCurrentPrimaryCardSlotId:I = 0x1b

.field static final TRANSACTION_getCurrentUiccCardProvisioningStatus:I = 0x1

.field static final TRANSACTION_getPhoneIdForECall:I = 0x7

.field static final TRANSACTION_getPrimaryCarrierSlotId:I = 0x16

.field static final TRANSACTION_getPrimaryStackPhoneId:I = 0xa

.field static final TRANSACTION_getSmscAddress:I = 0x19

.field static final TRANSACTION_getUiccCardProvisioningUserPreference:I = 0x2

.field static final TRANSACTION_isDeviceInSingleStandby:I = 0xf

.field static final TRANSACTION_isDsdaEnabled:I = 0x14

.field static final TRANSACTION_isEmergencyNumber:I = 0xb

.field static final TRANSACTION_isFdnEnabled:I = 0x9

.field static final TRANSACTION_isLocalEmergencyNumber:I = 0xc

.field static final TRANSACTION_isPotentialEmergencyNumber:I = 0xd

.field static final TRANSACTION_isPotentialLocalEmergencyNumber:I = 0xe

.field static final TRANSACTION_isPrimaryCarrierSlotId:I = 0x17

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x5

.field static final TRANSACTION_isVendorApkAvailable:I = 0x1a

.field static final TRANSACTION_query5gConfigInfo:I = 0x24

.field static final TRANSACTION_query5gStatus:I = 0x1f

.field static final TRANSACTION_queryNrBearerAllocation:I = 0x21

.field static final TRANSACTION_queryNrDcParam:I = 0x20

.field static final TRANSACTION_queryNrIconType:I = 0x25

.field static final TRANSACTION_queryNrSignalStrength:I = 0x22

.field static final TRANSACTION_queryUpperLayerIndInfo:I = 0x23

.field static final TRANSACTION_registerCallback:I = 0x26

.field static final TRANSACTION_setDsdaAdapter:I = 0x12

.field static final TRANSACTION_setLocalCallHold:I = 0x10

.field static final TRANSACTION_setPrimaryCardOnSlot:I = 0x8

.field static final TRANSACTION_setSMSPromptEnabled:I = 0x6

.field static final TRANSACTION_setSmscAddress:I = 0x18

.field static final TRANSACTION_supplyIccDepersonalization:I = 0x15

.field static final TRANSACTION_switchToActiveSub:I = 0x11

.field static final TRANSACTION_unRegisterCallback:I = 0x27


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.codeaurora.internal.IExtTelephony"

    .line 20
    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.codeaurora.internal.IExtTelephony"

    .line 31
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    instance-of v1, v0, Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lorg/codeaurora/internal/IExtTelephony;

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lorg/codeaurora/internal/IExtTelephony$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/codeaurora/internal/IExtTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "org.codeaurora.internal.IExtTelephony"

    if-eq p1, v0, :cond_17

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 558
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/codeaurora/internal/INetworkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/INetworkCallback;

    move-result-object p1

    .line 561
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->unRegisterCallback(Lorg/codeaurora/internal/INetworkCallback;)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 540
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lorg/codeaurora/internal/INetworkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/INetworkCallback;

    move-result-object p2

    .line 545
    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;

    move-result-object p0

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 548
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Client;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 517
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 522
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 527
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 530
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 534
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 494
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 499
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 504
    :cond_3
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 507
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 511
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 471
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 476
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 481
    :cond_5
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_6

    .line 484
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 488
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 448
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 453
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 458
    :cond_7
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_8

    .line 461
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 465
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 425
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    .line 430
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 435
    :cond_9
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_a

    .line 438
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 442
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 402
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    .line 407
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 412
    :cond_b
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_c

    .line 415
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 419
    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 379
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_d

    .line 384
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 389
    :cond_d
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->query5gStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_e

    .line 392
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 396
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 356
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_f

    .line 361
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 366
    :cond_f
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->enable5gOnly(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_10

    .line 369
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 373
    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 333
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_11

    .line 338
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 343
    :cond_11
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->disable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_12

    .line 346
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 350
    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 310
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_13

    .line 315
    sget-object p4, Lorg/codeaurora/internal/Client;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/codeaurora/internal/Client;

    .line 320
    :cond_13
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->enable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_14

    .line 323
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {p0, p3, v1}, Lorg/codeaurora/internal/Token;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 327
    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v1

    .line 302
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->getCurrentPrimaryCardSlotId()I

    move-result p0

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 292
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isVendorApkAvailable(Ljava/lang/String;)Z

    move-result p0

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 282
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 285
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->getSmscAddress(I)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 270
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->setSmscAddress(ILjava/lang/String;)Z

    move-result p0

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 260
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 263
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isPrimaryCarrierSlotId(I)Z

    move-result p0

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 252
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->getPrimaryCarrierSlotId()I

    move-result p0

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 237
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IDepersoResCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IDepersoResCallback;

    move-result-object v0

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 246
    invoke-virtual {p0, p1, p4, v0, p2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 229
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isDsdaEnabled()Z

    move-result p0

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 221
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->getActiveSubscription()I

    move-result p0

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 212
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/codeaurora/internal/IDsda$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IDsda;

    move-result-object p1

    .line 215
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->setDsdaAdapter(Lorg/codeaurora/internal/IDsda;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 203
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->switchToActiveSub(I)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 191
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_15

    move v3, v1

    .line 196
    :cond_15
    invoke-virtual {p0, p1, v3}, Lorg/codeaurora/internal/IExtTelephony$Stub;->setLocalCallHold(IZ)Z

    move-result p0

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 183
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isDeviceInSingleStandby()Z

    move-result p0

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 173
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isPotentialLocalEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 163
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 153
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isLocalEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 143
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 135
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->getPrimaryStackPhoneId()I

    move-result p0

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 127
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isFdnEnabled()Z

    move-result p0

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 118
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 121
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->setPrimaryCardOnSlot(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 110
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->getPhoneIdForECall()I

    move-result p0

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 101
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_16

    move v3, v1

    .line 104
    :cond_16
    invoke-virtual {p0, v3}, Lorg/codeaurora/internal/IExtTelephony$Stub;->setSMSPromptEnabled(Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->isSMSPromptEnabled()Z

    move-result p0

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 83
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 86
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->deactivateUiccCard(I)I

    move-result p0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 73
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 76
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->activateUiccCard(I)I

    move-result p0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 63
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->getUiccCardProvisioningUserPreference(I)I

    move-result p0

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 53
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 56
    invoke-virtual {p0, p1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->getCurrentUiccCardProvisioningStatus(I)I

    move-result p0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 48
    :cond_17
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
