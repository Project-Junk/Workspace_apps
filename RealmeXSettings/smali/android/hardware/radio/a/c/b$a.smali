.class public abstract Landroid/hardware/radio/a/c/b$a;
.super Landroid/os/HwBinder;
.source "IRadioConfigResponse.java"

# interfaces
.implements Landroid/hardware/radio/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 443
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

    .line 500
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 501
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    .line 502
    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    .line 503
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

    .line 473
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
        -0x28t
        -0x19t
        0x71t
        0x7et
        -0x7ft
        -0x79t
        -0x23t
        0x74t
        0x53t
        -0x2ct
        0x14t
        0x2ft
        -0x71t
        0x33t
        0x1et
        0x7ct
        0x32t
        0x5et
        0x7at
        0x6ft
        -0x62t
        -0x73t
        0x44t
        -0x54t
        0xdt
        0x52t
        -0x4dt
        -0x42t
        0x50t
        0x2bt
        -0x2t
        -0x7dt
    .end array-data

    :array_1
    .array-data 1
        -0x4ct
        0x2et
        -0x4dt
        -0x45t
        -0x2bt
        -0x19t
        -0x4bt
        0x19t
        -0x1et
        -0x7dt
        0x62t
        0x34t
        0xct
        0x22t
        0x5t
        -0x56t
        0x75t
        0x35t
        0x6dt
        -0x1at
        -0x4dt
        0xft
        0x4ft
        -0x30t
        -0x62t
        -0x3et
        -0x16t
        0x78t
        0x4ft
        0x25t
        0xat
        -0x50t
    .end array-data

    :array_2
    .array-data 1
        -0x5et
        -0x17t
        -0x49t
        -0x56t
        0x9t
        -0x9t
        -0x6ct
        0x26t
        -0x9t
        0x65t
        -0x7dt
        -0x7ft
        0x74t
        -0x20t
        0x4bt
        0x6ft
        -0x66t
        0x3et
        0x6ct
        -0x75t
        0x76t
        -0x47t
        0x23t
        -0x4t
        0x17t
        0x5t
        0x63t
        0x22t
        0x7t
        -0x46t
        -0x2ct
        0x4bt
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

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio.config@1.2::IRadioConfigResponse"

    const-string v2, "android.hardware.radio.config@1.1::IRadioConfigResponse"

    const-string v3, "android.hardware.radio.config@1.0::IRadioConfigResponse"

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

    const-string v0, "android.hardware.radio.config@1.2::IRadioConfigResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 510
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-string v2, "android.hardware.radio.config@1.0::IRadioConfigResponse"

    const-string v3, "android.hardware.radio.config@1.1::IRadioConfigResponse"

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v2, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    move v5, v6

    :cond_0
    if-eqz v5, :cond_8

    .line 811
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v5, v6

    :cond_1
    if-eq v5, v6, :cond_2

    .line 798
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 801
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/b$a;->notifySyspropsChanged()V

    return-void

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    if-eqz v6, :cond_4

    .line 782
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 785
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/b$a;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 788
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 789
    invoke-virtual {p1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    if-eqz v6, :cond_6

    .line 767
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 770
    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/b$a;->ping()V

    .line 773
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7

    move v5, v6

    :cond_7
    if-eqz v5, :cond_8

    .line 757
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 758
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :cond_8
    :goto_2
    return-void

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9

    move v5, v6

    :cond_9
    if-eq v5, v6, :cond_a

    .line 744
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 747
    :cond_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/b$a;->setHALInstrumentation()V

    return-void

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    move v6, v5

    :goto_3
    if-eqz v6, :cond_c

    .line 705
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 708
    :cond_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/b$a;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 711
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 713
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 715
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    const-wide/16 v2, 0x8

    .line 716
    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 717
    invoke-virtual {p2, v2, v3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 718
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, p4, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_4
    if-ge v5, p4, :cond_e

    mul-int/lit8 v3, v5, 0x20

    int-to-long v3, v3

    .line 722
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-eqz v6, :cond_d

    .line 724
    array-length v7, v6

    const/16 v8, 0x20

    if-ne v7, v8, :cond_d

    .line 728
    invoke-virtual {v2, v3, v4, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 725
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 732
    :cond_e
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 734
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    move v6, v5

    :goto_5
    if-eqz v6, :cond_10

    .line 689
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 692
    :cond_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/b$a;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 695
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 696
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    move v6, v5

    :goto_6
    if-eqz v6, :cond_12

    .line 672
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 673
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 675
    :cond_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 679
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/a/c/b$a;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 680
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 681
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_13

    goto :goto_7

    :cond_13
    move v6, v5

    :goto_7
    if-eqz v6, :cond_14

    .line 656
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 657
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 659
    :cond_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Landroid/hardware/radio/a/c/b$a;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 662
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 664
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v5, v6

    :cond_15
    if-eq v5, v6, :cond_16

    .line 640
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 641
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    :cond_16
    const-string p1, "android.hardware.radio.config@1.2::IRadioConfigResponse"

    .line 643
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 646
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 647
    invoke-static {p2}, Landroid/hardware/radio/a/c/c;->a(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 648
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/a/c/b$a;->getSimSlotsStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void

    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v5, v6

    :cond_17
    if-eq v5, v6, :cond_18

    .line 623
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 624
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 626
    :cond_18
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 629
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 630
    new-instance p3, Landroid/hardware/radio/a/b/e;

    invoke-direct {p3}, Landroid/hardware/radio/a/b/e;-><init>()V

    const-wide/16 v2, 0x1

    .line 1046
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1073
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p2

    iput-byte p2, p3, Landroid/hardware/radio/a/b/e;->a:B

    .line 632
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/a/c/b$a;->getModemsConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/a/b/e;)V

    return-void

    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19

    move v5, v6

    :cond_19
    if-eq v5, v6, :cond_1a

    .line 608
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 611
    :cond_1a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 614
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 615
    invoke-virtual {p0, p1}, Landroid/hardware/radio/a/c/b$a;->setModemsConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void

    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b

    move v5, v6

    :cond_1b
    if-eq v5, v6, :cond_1c

    .line 593
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 594
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 596
    :cond_1c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 599
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 600
    invoke-virtual {p0, p1}, Landroid/hardware/radio/a/c/b$a;->setPreferredDataModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void

    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    move v5, v6

    :cond_1d
    if-eq v5, v6, :cond_1e

    .line 576
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 579
    :cond_1e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 582
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 583
    new-instance p3, Landroid/hardware/radio/a/b/f;

    invoke-direct {p3}, Landroid/hardware/radio/a/b/f;-><init>()V

    .line 584
    invoke-virtual {p3, p2}, Landroid/hardware/radio/a/b/f;->a(Landroid/os/HwParcel;)V

    .line 585
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/a/c/b$a;->getPhoneCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/a/b/f;)V

    return-void

    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    move v5, v6

    :cond_1f
    if-eq v5, v6, :cond_20

    .line 561
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 564
    :cond_20
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 567
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 568
    invoke-virtual {p0, p1}, Landroid/hardware/radio/a/c/b$a;->setSimSlotsMappingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void

    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21

    move v5, v6

    :cond_21
    if-eq v5, v6, :cond_22

    .line 545
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 546
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 548
    :cond_22
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 551
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 552
    invoke-static {p2}, Landroid/hardware/radio/a/a/d;->a(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 553
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/a/c/b$a;->getSimSlotsStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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

    const-string v0, "android.hardware.radio.config@1.2::IRadioConfigResponse"

    .line 522
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

    .line 529
    invoke-virtual {p0, p1}, Landroid/hardware/radio/a/c/b$a;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/a/c/b$a;->interfaceDescriptor()Ljava/lang/String;

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
