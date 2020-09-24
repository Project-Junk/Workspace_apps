.class public abstract Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;
.super Landroid/os/HwBinder;
.source "ICryptoeng.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final getDebugInfo()Lcom/coloros/systemui/keyguard/security/verify/DebugInfo;
    .locals 2

    .line 77
    new-instance p0, Lcom/coloros/systemui/keyguard/security/verify/DebugInfo;

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/verify/DebugInfo;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/verify/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/security/verify/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/verify/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 59
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x61t
        -0x30t
        -0x14t
        0x3ft
        0xet
        0xet
        -0x58t
        -0x3et
        0x3ct
        0x14t
        -0x3t
        0x5at
        -0x41t
        0x3et
        -0x39t
        0x5et
        -0x4ct
        -0x20t
        0x7at
        0x2t
        -0x32t
        -0x2t
        0x6bt
        0x2at
        -0x55t
        -0x71t
        0x23t
        0x6ct
        0x4ct
        0x61t
        0x2bt
        -0x34t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.oppo.hardware.cryptoeng@1.0::ICryptoeng"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "vendor.oppo.hardware.cryptoeng@1.0::ICryptoeng"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 85
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "android.hidl.base@1.0::IBase"

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 173
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;->notifySyspropsChanged()V

    goto/16 :goto_2

    .line 166
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;->getDebugInfo()Lcom/coloros/systemui/keyguard/security/verify/DebugInfo;

    move-result-object p0

    .line 168
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 169
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/keyguard/security/verify/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2

    .line 158
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;->setHALInstrumentation()V

    goto/16 :goto_2

    .line 135
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 137
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 138
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 139
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 140
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 141
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 142
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    move-wide v3, v2

    move v2, v0

    :goto_1
    const/16 v5, 0x20

    if-ge v2, v5, :cond_0

    .line 148
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    aget-byte v5, v5, v2

    invoke-virtual {p4, v3, v4, v5}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 153
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    .line 128
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 131
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    .line 123
    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    .line 116
    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 119
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2

    :sswitch_7
    const-string p1, "vendor.oppo.hardware.cryptoeng@1.0::ICryptoeng"

    .line 108
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;->cryptoeng_invoke_command(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 112
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0xf43484e -> :sswitch_6
        0xf444247 -> :sswitch_5
        0xf445343 -> :sswitch_4
        0xf485348 -> :sswitch_3
        0xf494e54 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.oppo.hardware.cryptoeng@1.0::ICryptoeng"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
