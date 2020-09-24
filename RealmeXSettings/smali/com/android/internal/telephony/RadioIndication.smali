.class public Lcom/android/internal/telephony/RadioIndication;
.super Landroid/hardware/radio/V1_4/IRadioIndication$Stub;
.source "RadioIndication.java"


# instance fields
.field mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Landroid/hardware/radio/V1_4/IRadioIndication$Stub;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private convertConnectionStatusFromCellConnectionStatus(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported CellConnectionStatus in PhysicalChannelConfig: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    const p1, 0x7fffffff

    return p1

    :cond_0
    return v0
.end method

.method private getRadioStateFromInt(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 979
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unrecognized RadioState: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$physicalChannelConfigsIndication$0(Ljava/lang/Integer;)I
    .locals 0

    .line 1042
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private physicalChannelConfigsIndication(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1022
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1023
    instance-of v2, v1, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    if-eqz v2, :cond_0

    .line 1024
    check-cast v1, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    .line 1027
    new-instance v2, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v2}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    iget v3, v1, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->status:I

    .line 1029
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RadioIndication;->convertConnectionStatusFromCellConnectionStatus(I)I

    move-result v3

    .line 1028
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v1, v1, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->cellBandwidthDownlink:I

    .line 1030
    invoke-virtual {v2, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v1

    .line 1031
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v1

    .line 1027
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1032
    :cond_0
    instance-of v2, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    if-eqz v2, :cond_1

    .line 1033
    check-cast v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;

    .line 1035
    new-instance v2, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v2}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    .line 1036
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/RadioIndication;->setFrequencyRangeOrChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/hardware/radio/V1_4/PhysicalChannelConfig;)V

    .line 1037
    iget-object v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    iget v3, v3, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->status:I

    .line 1038
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RadioIndication;->convertConnectionStatusFromCellConnectionStatus(I)I

    move-result v3

    .line 1037
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget-object v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->base:Landroid/hardware/radio/V1_2/PhysicalChannelConfig;

    iget v3, v3, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->cellBandwidthDownlink:I

    .line 1039
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rat:I

    .line 1040
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setRat(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->physicalCellId:I

    .line 1041
    invoke-virtual {v2, v3}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v2

    iget-object v1, v1, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->contextIds:Ljava/util/ArrayList;

    .line 1042
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/-$$Lambda$RadioIndication$GND6XxOOm1d_Ro76zEUFjA9OrEA;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RadioIndication$GND6XxOOm1d_Ro76zEUFjA9OrEA;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v1

    .line 1043
    invoke-virtual {v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v1

    .line 1037
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unsupported PhysicalChannelConfig "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1049
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x44d

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1051
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhysicalChannelConfigurationRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private responseNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 1060
    iget-object p1, p2, Landroid/hardware/radio/V1_1/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1061
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_1/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_1/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1062
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1063
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRilNetworkScanResultRegistrants:Landroid/os/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private responseNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 1071
    iget-object p1, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1072
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_2/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1073
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1074
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRilNetworkScanResultRegistrants:Landroid/os/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private responseNetworkScan_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 1081
    iget-object p1, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->networkInfos:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList_1_4(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1082
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/V1_4/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 1083
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1084
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRilNetworkScanResultRegistrants:Landroid/os/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private setFrequencyRangeOrChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/hardware/radio/V1_4/PhysicalChannelConfig;)V
    .locals 2

    .line 994
    iget-object v0, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {v0}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->getDiscriminator()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1002
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported frequency type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {p2}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->getDiscriminator()B

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void

    .line 999
    :cond_0
    iget-object p2, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {p2}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->channelNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/PhysicalChannelConfig$Builder;->setChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    return-void

    .line 996
    :cond_1
    iget-object p2, p2, Landroid/hardware/radio/V1_4/PhysicalChannelConfig;->rfInfo:Landroid/hardware/radio/V1_4/RadioFrequencyInfo;

    invoke-virtual {p2}, Landroid/hardware/radio/V1_4/RadioFrequencyInfo;->range()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/PhysicalChannelConfig$Builder;->setFrequencyRange(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    return-void
.end method


# virtual methods
.method public callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x4

    .line 442
    new-array p2, p2, [C

    const/4 v0, 0x0

    .line 443
    iget-boolean v1, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    int-to-char v1, v1

    aput-char v1, p2, v0

    const/4 v0, 0x1

    .line 444
    iget-byte v1, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    int-to-char v1, v1

    aput-char v1, p2, v0

    const/4 v0, 0x2

    .line 445
    iget-byte v1, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    int-to-char v1, v1

    aput-char v1, p2, v0

    const/4 v0, 0x3

    .line 446
    iget-byte p3, p3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    int-to-char p3, p3

    aput-char p3, p2, v0

    .line 447
    iget-object p3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsCallRing([C)V

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 450
    :goto_0
    iget-object p3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fa

    invoke-virtual {p3, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 452
    iget-object p3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p3, p3, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz p3, :cond_1

    .line 453
    iget-object p3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p3, p3, Lcom/android/internal/telephony/RIL;->mRingRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p1, p2, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public callStateChanged(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public carrierInfoForImsiEncryption(I)V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 937
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x0

    const/16 v1, 0x418

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 939
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCarrierInfoForImsiEncryptionRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 527
    new-instance p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;-><init>()V

    .line 528
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->number:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    .line 529
    iget v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPresentation:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    .line 531
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    .line 532
    iget v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    .line 533
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-boolean v0, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 534
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-byte v0, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 535
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-byte v0, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 536
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->signalInfoRecord:Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    iget-byte v0, v0, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 537
    iget v0, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberType:I

    iput v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberType:I

    .line 538
    iget p2, p2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->numberPlan:I

    iput p2, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPlan:I

    .line 540
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x401

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 542
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mCallWaitingInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V
    .locals 11

    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 561
    iget-object p1, p2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->infoRec:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 563
    iget-object v2, p2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->infoRec:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    .line 564
    iget v4, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    packed-switch v4, :pswitch_data_0

    .line 643
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "RIL_UNSOL_CDMA_INFO_REC: unsupported record. Got "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 634
    :pswitch_1
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    .line 635
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    iget-byte v4, v2, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->upLink:B

    iget-byte v2, v2, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->downLink:B

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;-><init>(II)V

    .line 639
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;)V

    goto/16 :goto_1

    .line 628
    :pswitch_2
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    .line 629
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    iget-byte v2, v2, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->cause:B

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;-><init>(I)V

    .line 630
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;)V

    goto/16 :goto_1

    .line 617
    :pswitch_3
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    .line 618
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    iget-byte v4, v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlPolarityIncluded:B

    iget-byte v5, v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlToggle:B

    iget-byte v6, v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlReverse:B

    iget-byte v2, v2, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->lineCtrlPowerDenial:B

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;-><init>(IIII)V

    .line 624
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;)V

    goto/16 :goto_1

    .line 601
    :pswitch_4
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    .line 602
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    .line 604
    new-instance v10, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    iget-object v3, v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-object v4, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    iget-object v3, v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-byte v5, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    iget-object v3, v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-byte v6, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    iget-object v3, v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-byte v7, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    iget-object v3, v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingNumber:Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    iget-byte v8, v3, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    iget v9, v2, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->redirectingReason:I

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;-><init>(Ljava/lang/String;IIIII)V

    .line 612
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v10}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;)V

    goto :goto_1

    .line 590
    :pswitch_5
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    .line 591
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 593
    iget-boolean v4, v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->isPresent:Z

    iget-byte v5, v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signalType:B

    iget-byte v6, v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->alertPitch:B

    iget-byte v2, v2, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->signal:B

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;-><init>(IIII)V

    .line 597
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;)V

    goto :goto_1

    .line 578
    :pswitch_6
    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    .line 579
    new-instance v10, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    iget-object v5, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->number:Ljava/lang/String;

    iget-byte v6, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberType:B

    iget-byte v7, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->numberPlan:B

    iget-byte v8, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->pi:B

    iget-byte v9, v2, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->si:B

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    .line 586
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v10}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;)V

    goto :goto_1

    .line 569
    :pswitch_7
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    .line 571
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->alphaBuf:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(ILjava/lang/String;)V

    .line 572
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;)V

    .line 647
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v4, 0x403

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 648
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 468
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fc

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 472
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/SmsMessageConverter;->newSmsMessageFromCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Landroid/telephony/SmsMessage;

    move-result-object p1

    .line 473
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 474
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public cdmaOtaProvisionStatus(II)V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    const/4 p1, 0x1

    .line 549
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 552
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x402

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 554
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mOtaProvisionRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public cdmaPrlChanged(II)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    const/4 p1, 0x1

    .line 683
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 686
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x408

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 688
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mCdmaPrlChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public cdmaRuimSmsStorageFull(I)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 495
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fe

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 497
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 498
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public cdmaSubscriptionSourceChanged(II)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    const/4 p1, 0x1

    .line 671
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 674
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x407

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 676
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mCdmaSubscriptionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public cellInfoList(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 730
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 732
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40c

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 734
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public cellInfoList_1_2(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 742
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 744
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40c

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 746
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public cellInfoList_1_4(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 754
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList_1_4(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 756
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40c

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 758
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mRilCellInfoListRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public currentEmergencyNumberList(ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 313
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/V1_4/EmergencyNumber;

    .line 317
    new-instance v9, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v2, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->number:Ljava/lang/String;

    iget-object v1, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mcc:Ljava/lang/String;

    .line 318
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->mnc:Ljava/lang/String;

    iget v5, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->categories:I

    iget-object v6, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->urns:Ljava/util/ArrayList;

    iget v7, v0, Landroid/hardware/radio/V1_4/EmergencyNumber;->sources:I

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 321
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x44e

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 326
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mEmergencyNumberListRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 248
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/RIL;->convertHalLceData(Landroid/hardware/radio/V1_2/LinkCapacityEstimate;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;

    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 252
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz p2, :cond_0

    .line 253
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 305
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->physicalChannelConfigsIndication(Ljava/util/List;)V

    return-void
.end method

.method public currentPhysicalChannelConfigs_1_4(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 296
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->physicalChannelConfigsIndication(Ljava/util/List;)V

    return-void
.end method

.method public currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 232
    new-instance p1, Landroid/telephony/SignalStrength;

    invoke-direct {p1, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 236
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 237
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 264
    new-instance p1, Landroid/telephony/SignalStrength;

    invoke-direct {p1, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 268
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 269
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public currentSignalStrength_1_4(ILandroid/hardware/radio/V1_4/SignalStrength;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 281
    new-instance p1, Landroid/telephony/SignalStrength;

    invoke-direct {p1, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/hardware/radio/V1_4/SignalStrength;)V

    .line 285
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 286
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSignalStrengthRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public dataCallListChanged(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 335
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f2

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 337
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 338
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public dataCallListChanged_1_4(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 347
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f2

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 349
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 350
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 515
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 517
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 695
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x409

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 697
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public hardwareConfigChanged(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 818
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/RIL;->convertHalHwConfigList(Ljava/util/ArrayList;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;

    move-result-object p1

    .line 820
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x410

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 822
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public imsNetworkStateChanged(I)V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 782
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 784
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public indicateRingbackTone(IZ)V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 655
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x405

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 657
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 953
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x41a

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 957
    new-instance p1, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    iget v0, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    iget p2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-direct {p1, v0, p2}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(II)V

    .line 958
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mNattKeepaliveStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 899
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/RIL;->convertHalLceData(Landroid/hardware/radio/V1_0/LceDataInfo;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;

    move-result-object p1

    .line 901
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 903
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz p2, :cond_0

    .line 904
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mLceInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public modemReset(ILjava/lang/String;)V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 924
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x417

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 926
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsModemRestartEvent(Ljava/lang/String;)V

    .line 927
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mModemResetRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V
    .locals 0

    .line 764
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    return-void
.end method

.method public networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V
    .locals 0

    .line 770
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    return-void
.end method

.method public networkScanResult_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V
    .locals 0

    .line 776
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioIndication;->responseNetworkScan_1_4(ILandroid/hardware/radio/V1_4/NetworkScanResult;)V

    return-void
.end method

.method public networkStateChanged(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 153
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public newBroadcastSms(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 481
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 483
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    .line 484
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3fd

    .line 483
    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 487
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 488
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public newSms(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 159
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 160
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3eb

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 162
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromCMT([B)Landroid/telephony/SmsMessage;

    move-result-object p1

    .line 163
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 164
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mGsmSmsRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public newSmsOnSim(II)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 182
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ed

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 184
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mSmsOnSimRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public newSmsStatusReport(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 171
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ec

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 174
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 175
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSmsStatusRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public nitzTimeReceived(ILjava/lang/String;J)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 206
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 209
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 211
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string/jumbo p2, "telephony.test.ignore.nitz"

    .line 213
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 217
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string p2, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_1

    .line 220
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 224
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iput-object p1, p2, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    return-void
.end method

.method public onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V
    .locals 6

    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 842
    new-instance p1, Lcom/android/internal/telephony/gsm/SsData;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SsData;-><init>()V

    .line 844
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 845
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 846
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/SsData;->TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 847
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->serviceClass:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 848
    iget v0, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->result:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    .line 850
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v0

    const-string v1, " : "

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 851
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->isTypeInterrogation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object p2, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/radio/V1_0/CfData;

    .line 853
    iget-object v0, p2, Landroid/hardware/radio/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 854
    new-array v3, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    :goto_0
    if-ge v2, v0, :cond_1

    .line 857
    iget-object v3, p2, Landroid/hardware/radio/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CallForwardInfo;

    .line 858
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    new-instance v5, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v5, v4, v2

    .line 860
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v2

    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 861
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v2

    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 862
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v2

    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 863
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v2

    iget v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 864
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v2

    iget-object v5, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 865
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v4, v4, v2

    iget v3, v3, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v3, v4, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 867
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[SS Data] CF Info "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 870
    :cond_0
    iget-object p2, p2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/radio/V1_0/SsInfoData;

    .line 871
    iget-object v0, p2, Landroid/hardware/radio/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 872
    new-array v3, v0, [I

    iput-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    :goto_1
    if-ge v2, v0, :cond_1

    .line 874
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 875
    iget-object v3, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[SS Data] SS Info "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 879
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x413

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 881
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_2

    .line 882
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSsRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2
    return-void
.end method

.method public onUssd(IILjava/lang/String;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    const/4 p1, 0x2

    .line 195
    new-array p1, p1, [Ljava/lang/String;

    .line 196
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 198
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 199
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mUSSDRegistrant:Landroid/os/Registrant;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V
    .locals 3

    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 911
    new-instance p1, Landroid/telephony/PcoData;

    iget v0, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->cid:I

    iget-object v1, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->bearerProto:Ljava/lang/String;

    iget v2, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->pcoId:I

    iget-object p2, p2, Landroid/hardware/radio/V1_0/PcoDataInfo;->contents:Ljava/util/ArrayList;

    .line 914
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/telephony/PcoData;-><init>(ILjava/lang/String;I[B)V

    .line 916
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x416

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 918
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mPcoDataRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 830
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/RIL;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p1

    .line 832
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x412

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 834
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public radioStateChanged(II)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 127
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioIndication;->getRadioStateFromInt(I)I

    move-result p1

    .line 129
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "radioStateChanged: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/telephony/RIL;->setRadioState(IZ)V

    return-void
.end method

.method public resendIncallMute(I)V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 663
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x406

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 665
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public restrictedStateChanged(II)V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 505
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3ff

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 507
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRestrictedStateRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public rilConnected(I)V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 703
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40a

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 706
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 707
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget v1, p1, Lcom/android/internal/telephony/RIL;->mCdmaSubscription:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 710
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method

.method public simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 424
    new-instance p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 425
    iget v0, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->type:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 426
    iget v0, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->efId:I

    iput v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 427
    iget-object p2, p2, Landroid/hardware/radio/V1_0/SimRefreshResult;->aid:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 429
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f9

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 431
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public simSmsStorageFull(I)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 414
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f8

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 416
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->notifyRegistrant()V

    :cond_0
    return-void
.end method

.method public simStatusChanged(I)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 460
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fb

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 462
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public srvccStateNotify(II)V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    const/4 p1, 0x1

    .line 802
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v1, 0x40f

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/RIL;->writeMetricsSrvcc(I)V

    .line 809
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public stkCallControlAlphaNotify(ILjava/lang/String;)V
    .locals 2

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 889
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x414

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 891
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 892
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public stkCallSetup(IJ)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 404
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x3f7

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 406
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatCallSetUpRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v0, p3, p2, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public stkEventNotify(ILjava/lang/String;)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 394
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f6

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 396
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 397
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatEventRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public stkProactiveCommand(ILjava/lang/String;)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 384
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f5

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 386
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatProCmdRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public stkSessionEnd(I)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 374
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f4

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 376
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mCatSessionEndRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public subscriptionStatusChanged(IZ)V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    const/4 p1, 0x1

    .line 790
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 793
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40e

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 795
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSubscriptionStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    .line 357
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 358
    iget-boolean v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->isMT:Z

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 359
    iget v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 360
    iget v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 361
    iget v0, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->type:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 362
    iget-object p2, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 364
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f3

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 366
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_0

    .line 367
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public voiceRadioTechChanged(II)V
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processIndication(I)V

    const/4 p1, 0x1

    .line 716
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 719
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 721
    iget-object p2, p0, Lcom/android/internal/telephony/RadioIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mVoiceRadioTechChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
