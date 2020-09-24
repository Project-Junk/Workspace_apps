.class public abstract Landroid/hardware/radio/b/a/c$a;
.super Landroid/os/HwBinder;
.source "IOemHookResponse.java"

# interfaces
.implements Landroid/hardware/radio/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 371
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

    .line 424
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 425
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    .line 426
    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    .line 427
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

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6ft
        -0x2ct
        -0x79t
        0x4ft
        0xet
        -0x23t
        -0x2ct
        0x62t
        0x6at
        0x27t
        0x65t
        -0x71t
        -0x27t
        0x4ft
        -0x53t
        0x52t
        0x6ct
        0x31t
        0x7ft
        0x35t
        0x63t
        0x43t
        -0x62t
        0x79t
        0x71t
        -0x75t
        -0x25t
        0x1at
        0x3at
        0x23t
        0x9t
        -0x2bt
    .end array-data

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio.deprecated@1.0::IOemHookResponse"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.hardware.radio.deprecated@1.0::IOemHookResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 434
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

    const-string v0, "android.hardware.radio.deprecated@1.0::IOemHookResponse"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_18

    const/4 v4, 0x2

    if-eq p1, v4, :cond_15

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_8

    .line 656
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 657
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    if-eq v2, v3, :cond_2

    .line 643
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 644
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 646
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Landroid/hardware/radio/b/a/c$a;->notifySyspropsChanged()V

    return-void

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 627
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 630
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Landroid/hardware/radio/b/a/c$a;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 633
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 634
    invoke-virtual {p1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 635
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 612
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 615
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Landroid/hardware/radio/b/a/c$a;->ping()V

    .line 618
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 619
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_8

    .line 602
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_8
    :goto_2
    return-void

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9

    move v2, v3

    :cond_9
    if-eq v2, v3, :cond_a

    .line 589
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 592
    :cond_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Landroid/hardware/radio/b/a/c$a;->setHALInstrumentation()V

    return-void

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    move v3, v2

    :goto_3
    if-eqz v3, :cond_c

    .line 550
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 551
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 553
    :cond_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Landroid/hardware/radio/b/a/c$a;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 556
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 558
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 560
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    const-wide/16 v0, 0x8

    .line 561
    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 562
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 563
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_4
    if-ge v2, p4, :cond_e

    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 567
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_d

    .line 569
    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_d

    .line 573
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 570
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-wide/16 v1, 0x0

    .line 577
    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 579
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    move v3, v2

    :goto_5
    if-eqz v3, :cond_10

    .line 534
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 535
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 537
    :cond_10
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Landroid/hardware/radio/b/a/c$a;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 541
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v3, v2

    :goto_6
    if-eqz v3, :cond_12

    .line 517
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 520
    :cond_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 523
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 524
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/b/a/c$a;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 525
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 526
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    goto :goto_7

    :cond_13
    move v3, v2

    :goto_7
    if-eqz v3, :cond_14

    .line 501
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 502
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 504
    :cond_14
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Landroid/hardware/radio/b/a/c$a;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 507
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 508
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 509
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :cond_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_16

    move v2, v3

    :cond_16
    if-eq v2, v3, :cond_17

    .line 485
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 486
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 488
    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 491
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 493
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/b/a/c$a;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void

    :cond_18
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    move v2, v3

    :cond_19
    if-eq v2, v3, :cond_1a

    .line 469
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 470
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 472
    :cond_1a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 475
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 477
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/b/a/c$a;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

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

    const-string v0, "android.hardware.radio.deprecated@1.0::IOemHookResponse"

    .line 446
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

    .line 453
    invoke-virtual {p0, p1}, Landroid/hardware/radio/b/a/c$a;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/b/a/c$a;->interfaceDescriptor()Ljava/lang/String;

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
