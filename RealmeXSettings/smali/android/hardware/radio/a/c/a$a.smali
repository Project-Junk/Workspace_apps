.class public abstract Landroid/hardware/radio/a/c/a$a;
.super Landroid/os/HwBinder;
.source "IRadioConfigIndication.java"

# interfaces
.implements Landroid/hardware/radio/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 416
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 417
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    .line 418
    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    .line 419
    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x50t
        -0x2ct
        0x52t
        -0x7t
        -0x5et
        -0x1ct
        0x5ft
        -0x80t
        -0x43t
        -0x4at
        0x72t
        -0x4ft
        -0x1ct
        -0x35t
        0x64t
        -0x61t
        -0x1t
        0x50t
        0x29t
        0x3bt
        -0x21t
        0x20t
        -0x80t
        -0x67t
        -0x42t
        0x41t
        0x73t
        -0x71t
        0x11t
        -0x33t
        0x2et
        -0x53t
    .end array-data

    :array_1
    .array-data 1
        0x7ft
        -0x31t
        0x16t
        0x7ft
        0x59t
        0x3bt
        0x10t
        -0x3at
        0x7bt
        0x59t
        -0x55t
        0x70t
        0x32t
        0x17t
        -0x7ft
        -0x3et
        0x6at
        0x55t
        0x75t
        -0x16t
        -0x4at
        0x8t
        0x3t
        -0x19t
        -0x35t
        -0x4ft
        -0x3ft
        0x4ct
        0x71t
        0x8t
        0x5at
        0x3bt
    .end array-data

    :array_2
    .array-data 1
        0x22t
        -0x75t
        0x2et
        -0x1dt
        -0x38t
        -0x3et
        0x76t
        -0x37t
        -0x10t
        -0x51t
        -0x53t
        0x2dt
        -0x3dt
        0x13t
        -0x36t
        0x3dt
        0x6bt
        -0x43t
        -0x62t
        0x48t
        0x2dt
        -0x21t
        0x31t
        0x3ct
        0x72t
        0x4t
        -0x3at
        0xat
        -0x27t
        -0x4at
        0x36t
        -0x55t
    .end array-data

    :array_3
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio.config@1.2::IRadioConfigIndication"

    const-string v2, "android.hardware.radio.config@1.1::IRadioConfigIndication"

    const-string v3, "android.hardware.radio.config@1.0::IRadioConfigIndication"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.hardware.radio.config@1.2::IRadioConfigIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 426
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_18

    const/4 v3, 0x2

    if-eq p1, v3, :cond_15

    const-string v3, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_8

    .line 646
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 647
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, v2, :cond_2

    .line 633
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 634
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 636
    :cond_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/a$a;->notifySyspropsChanged()V

    return-void

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 617
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 620
    :cond_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/a$a;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 623
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 624
    invoke-virtual {p1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 602
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 605
    :cond_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/a$a;->ping()V

    .line 608
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    .line 592
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_8
    :goto_2
    return-void

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9

    move v1, v2

    :cond_9
    if-eq v1, v2, :cond_a

    .line 579
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 580
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 582
    :cond_a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/a$a;->setHALInstrumentation()V

    return-void

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    move v2, v1

    :goto_3
    if-eqz v2, :cond_c

    .line 540
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 543
    :cond_c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/a$a;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 546
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 548
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 550
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    const-wide/16 v2, 0x8

    .line 551
    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 552
    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 553
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_4
    if-ge v1, p4, :cond_e

    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 557
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_d

    .line 559
    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_d

    .line 563
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 560
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-wide/16 v1, 0x0

    .line 567
    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 569
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    :goto_5
    if-eqz v2, :cond_10

    .line 524
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 525
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 527
    :cond_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/a$a;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 531
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    :goto_6
    if-eqz v2, :cond_12

    .line 507
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 508
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 510
    :cond_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 513
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 514
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/a/c/a$a;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 515
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    :goto_7
    if-eqz v2, :cond_14

    .line 491
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 492
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 494
    :cond_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/a$a;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 497
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 498
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 499
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :cond_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_16

    move v1, v2

    :cond_16
    if-eq v1, v2, :cond_17

    .line 476
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 477
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :cond_17
    const-string p1, "android.hardware.radio.config@1.2::IRadioConfigIndication"

    .line 479
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 482
    invoke-static {p2}, Landroid/hardware/radio/a/c/c;->a(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 483
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/a/c/a$a;->simSlotsStatusChanged_1_2(ILjava/util/ArrayList;)V

    return-void

    :cond_18
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    move v1, v2

    :cond_19
    if-eq v1, v2, :cond_1a

    .line 461
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 462
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :cond_1a
    const-string p1, "android.hardware.radio.config@1.0::IRadioConfigIndication"

    .line 464
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 467
    invoke-static {p2}, Landroid/hardware/radio/a/a/d;->a(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 468
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/a/c/a$a;->simSlotsStatusChanged(ILjava/util/ArrayList;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "android.hardware.radio.config@1.2::IRadioConfigIndication"

    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0, p1}, Landroid/hardware/radio/a/c/a$a;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/a/c/a$a;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
