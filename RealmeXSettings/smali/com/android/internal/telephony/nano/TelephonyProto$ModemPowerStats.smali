.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModemPowerStats"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;


# instance fields
.field public cellularKernelActiveTimeMs:J

.field public energyConsumedMah:D

.field public idleTimeMs:J

.field public loggingDurationMs:J

.field public monitoredRailEnergyConsumedMah:D

.field public numBytesRx:J

.field public numBytesTx:J

.field public numPacketsRx:J

.field public numPacketsTx:J

.field public rxTimeMs:J

.field public sleepTimeMs:J

.field public timeInRatMs:[J

.field public timeInRxSignalStrengthLevelMs:[J

.field public timeInVeryPoorRxSignalLevelMs:J

.field public txTimeMs:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7910
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7911
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .locals 2

    .line 7854
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-nez v0, :cond_1

    .line 7855
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7857
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7858
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 7860
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7862
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8275
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8269
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .locals 5

    const-wide/16 v0, 0x0

    .line 7915
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    .line 7916
    iput-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    .line 7917
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    .line 7918
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    .line 7919
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    .line 7920
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    .line 7921
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    .line 7922
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    .line 7923
    sget-object v4, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    .line 7924
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    .line 7925
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    .line 7926
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    .line 7927
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 7928
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 7929
    iput-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    const/4 v0, 0x0

    .line 7930
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7931
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 12

    .line 7996
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7997
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 7999
    invoke-static {v6, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8001
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v7, 0x0

    .line 8002
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 8003
    iget-wide v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    .line 8004
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 8006
    :cond_1
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    .line 8008
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8010
    :cond_2
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    .line 8012
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8014
    :cond_3
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    .line 8016
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8018
    :cond_4
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x6

    .line 8020
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8022
    :cond_5
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v5, 0x7

    .line 8024
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8026
    :cond_6
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    const/16 v5, 0x8

    .line 8028
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8030
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v2

    move v5, v1

    .line 8032
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    array-length v10, v9

    if-ge v1, v10, :cond_8

    .line 8033
    aget-wide v10, v9, v1

    .line 8035
    invoke-static {v10, v11}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    add-int/2addr v0, v5

    .line 8038
    array-length v1, v9

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    .line 8040
    :cond_9
    iget-wide v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 8042
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8044
    :cond_a
    iget-wide v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 8046
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8048
    :cond_b
    iget-wide v9, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 8050
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8052
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-eqz v1, :cond_e

    array-length v1, v1

    if-lez v1, :cond_e

    move v1, v2

    move v3, v1

    .line 8054
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    array-length v5, v4

    if-ge v1, v5, :cond_d

    .line 8055
    aget-wide v9, v4, v1

    .line 8057
    invoke-static {v9, v10}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    add-int/2addr v0, v3

    .line 8060
    array-length v1, v4

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    .line 8062
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-eqz v1, :cond_10

    array-length v1, v1

    if-lez v1, :cond_10

    move v1, v2

    .line 8064
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    array-length v4, v3

    if-ge v2, v4, :cond_f

    .line 8065
    aget-wide v4, v3, v2

    .line 8067
    invoke-static {v4, v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_f
    add-int/2addr v0, v1

    .line 8070
    array-length v1, v3

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    .line 8072
    :cond_10
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 8073
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0xf

    .line 8074
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    .line 8075
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8085
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 8090
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 8260
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    goto :goto_0

    .line 8237
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 8238
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 8241
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 8242
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_1

    .line 8243
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8246
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8247
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    array-length v2, v2

    :goto_2
    add-int/2addr v3, v2

    .line 8248
    new-array v3, v3, [J

    if-eqz v2, :cond_3

    .line 8250
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8252
    :cond_3
    :goto_3
    array-length v1, v3

    if-ge v2, v1, :cond_4

    .line 8253
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8255
    :cond_4
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 8256
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x70

    .line 8221
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8222
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    .line 8223
    new-array v0, v0, [J

    if-eqz v2, :cond_6

    .line 8225
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8227
    :cond_6
    :goto_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_7

    .line 8228
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 8229
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 8232
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 8233
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    goto/16 :goto_0

    .line 8197
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 8198
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 8201
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 8202
    :goto_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_8

    .line 8203
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 8206
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8207
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_7

    :cond_9
    array-length v2, v2

    :goto_7
    add-int/2addr v3, v2

    .line 8208
    new-array v3, v3, [J

    if-eqz v2, :cond_a

    .line 8210
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8212
    :cond_a
    :goto_8
    array-length v1, v3

    if-ge v2, v1, :cond_b

    .line 8213
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 8215
    :cond_b
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 8216
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x68

    .line 8181
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8182
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_9

    :cond_c
    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    .line 8183
    new-array v0, v0, [J

    if-eqz v2, :cond_d

    .line 8185
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8187
    :cond_d
    :goto_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_e

    .line 8188
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 8189
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 8192
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 8193
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    goto/16 :goto_0

    .line 8176
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    goto/16 :goto_0

    .line 8172
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    goto/16 :goto_0

    .line 8168
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    goto/16 :goto_0

    .line 8145
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 8146
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 8149
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 8150
    :goto_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_f

    .line 8151
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 8154
    :cond_f
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8155
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_c

    :cond_10
    array-length v2, v2

    :goto_c
    add-int/2addr v3, v2

    .line 8156
    new-array v3, v3, [J

    if-eqz v2, :cond_11

    .line 8158
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8160
    :cond_11
    :goto_d
    array-length v1, v3

    if-ge v2, v1, :cond_12

    .line 8161
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 8163
    :cond_12
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    .line 8164
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x48

    .line 8129
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8130
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_e

    :cond_13
    array-length v2, v2

    :goto_e
    add-int/2addr v0, v2

    .line 8131
    new-array v0, v0, [J

    if-eqz v2, :cond_14

    .line 8133
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8135
    :cond_14
    :goto_f
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_15

    .line 8136
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 8137
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 8140
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 8141
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    goto/16 :goto_0

    .line 8124
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    goto/16 :goto_0

    .line 8120
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    goto/16 :goto_0

    .line 8116
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    goto/16 :goto_0

    .line 8112
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    goto/16 :goto_0

    .line 8108
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    goto/16 :goto_0

    .line 8104
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    goto/16 :goto_0

    .line 8100
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    goto/16 :goto_0

    .line 8096
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    goto/16 :goto_0

    :sswitch_12
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0x8 -> :sswitch_11
        0x11 -> :sswitch_10
        0x18 -> :sswitch_f
        0x20 -> :sswitch_e
        0x28 -> :sswitch_d
        0x30 -> :sswitch_c
        0x38 -> :sswitch_b
        0x40 -> :sswitch_a
        0x48 -> :sswitch_9
        0x4a -> :sswitch_8
        0x50 -> :sswitch_7
        0x58 -> :sswitch_6
        0x60 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6a -> :sswitch_3
        0x70 -> :sswitch_2
        0x72 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7848
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7938
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 7939
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7941
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    .line 7942
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 7943
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 7945
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    .line 7946
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7948
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    .line 7949
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7951
    :cond_3
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    const/4 v6, 0x5

    .line 7952
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7954
    :cond_4
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5

    const/4 v6, 0x6

    .line 7955
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7957
    :cond_5
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_6

    const/4 v6, 0x7

    .line 7958
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7960
    :cond_6
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_7

    const/16 v6, 0x8

    .line 7961
    invoke-virtual {p1, v6, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7963
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 7964
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    array-length v7, v6

    if-ge v0, v7, :cond_8

    const/16 v7, 0x9

    .line 7965
    aget-wide v8, v6, v0

    invoke-virtual {p1, v7, v8, v9}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7968
    :cond_8
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 7969
    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7971
    :cond_9
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 7972
    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7974
    :cond_a
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 7975
    invoke-virtual {p1, v0, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7977
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    if-eqz v0, :cond_c

    array-length v0, v0

    if-lez v0, :cond_c

    move v0, v1

    .line 7978
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    array-length v3, v2

    if-ge v0, v3, :cond_c

    const/16 v3, 0xd

    .line 7979
    aget-wide v6, v2, v0

    invoke-virtual {p1, v3, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7982
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    .line 7983
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    array-length v2, v0

    if-ge v1, v2, :cond_d

    const/16 v2, 0xe

    .line 7984
    aget-wide v6, v0, v1

    invoke-virtual {p1, v2, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7987
    :cond_d
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 7988
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 7989
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 7991
    :cond_e
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
