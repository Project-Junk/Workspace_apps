.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;


# instance fields
.field public callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

.field public endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

.field public events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

.field public eventsDropped:Z

.field public hardwareRevision:Ljava/lang/String;

.field public histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

.field public lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

.field public modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

.field public smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

.field public startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 2

    .line 155
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    if-nez v0, :cond_1

    .line 156
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 159
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    .line 161
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 163
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 498
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 2

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 202
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 203
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 204
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 207
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 208
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    const-string v1, ""

    .line 209
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    .line 211
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 212
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 5

    .line 279
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    move v0, v2

    .line 281
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 282
    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 285
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    move v0, v2

    .line 290
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 291
    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    .line 294
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 298
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v0

    move v0, v2

    .line 299
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 300
    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    const/4 v4, 0x3

    .line 303
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v1

    .line 307
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v0

    move v0, v2

    .line 308
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    array-length v4, v3

    if-ge v0, v4, :cond_a

    .line 309
    aget-object v3, v3, v0

    if-eqz v3, :cond_9

    const/4 v4, 0x4

    .line 312
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v0, v1

    .line 316
    :cond_b
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    if-eqz v1, :cond_c

    const/4 v3, 0x5

    .line 318
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v1, :cond_d

    const/4 v3, 0x6

    .line 322
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v1, :cond_e

    const/4 v3, 0x7

    .line 326
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-eqz v1, :cond_f

    const/16 v3, 0x8

    .line 330
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x9

    .line 333
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .line 334
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_10
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v1, :cond_12

    array-length v1, v1

    if-lez v1, :cond_12

    .line 337
    :goto_4
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    array-length v3, v1

    if-ge v2, v3, :cond_12

    .line 338
    aget-object v1, v1, v2

    if-eqz v1, :cond_11

    const/16 v3, 0xa

    .line 341
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 358
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x52

    .line 474
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 475
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    .line 476
    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v2, :cond_2

    .line 479
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    :cond_2
    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_3

    .line 482
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    aput-object v1, v0, v2

    .line 483
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 484
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 487
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    aput-object v1, v0, v2

    .line 488
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 489
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    goto :goto_0

    .line 469
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    goto :goto_0

    .line 462
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-nez v0, :cond_4

    .line 463
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 455
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v0, :cond_5

    .line 456
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 458
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 448
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v0, :cond_6

    .line 449
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 444
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x22

    .line 425
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 426
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_3

    :cond_7
    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    .line 427
    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-eqz v2, :cond_8

    .line 430
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    :cond_8
    :goto_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_9

    .line 433
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v1, v0, v2

    .line 434
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 435
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 438
    :cond_9
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v1, v0, v2

    .line 439
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 440
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x1a

    .line 405
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 406
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_5

    :cond_a
    array-length v2, v2

    :goto_5
    add-int/2addr v0, v2

    .line 407
    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-eqz v2, :cond_b

    .line 410
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    :cond_b
    :goto_6
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_c

    .line 413
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    aput-object v1, v0, v2

    .line 414
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 418
    :cond_c
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    aput-object v1, v0, v2

    .line 419
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 420
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x12

    .line 385
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 386
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_7

    :cond_d
    array-length v2, v2

    :goto_7
    add-int/2addr v0, v2

    .line 387
    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-eqz v2, :cond_e

    .line 390
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    :cond_e
    :goto_8
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_f

    .line 393
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v1, v0, v2

    .line 394
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 395
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 398
    :cond_f
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    aput-object v1, v0, v2

    .line 399
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 400
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xa

    .line 365
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 366
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_9

    :cond_10
    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    .line 367
    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-eqz v2, :cond_11

    .line 370
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    :cond_11
    :goto_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_12

    .line 373
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v1, v0, v2

    .line 374
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 375
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 378
    :cond_12
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    aput-object v1, v0, v2

    .line 379
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 380
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    goto/16 :goto_0

    :sswitch_a
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 220
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 221
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 223
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 228
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 229
    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 231
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 236
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 237
    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    .line 239
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 244
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 245
    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    const/4 v3, 0x4

    .line 247
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 251
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    if-eqz v0, :cond_8

    const/4 v2, 0x5

    .line 252
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v0, :cond_9

    const/4 v2, 0x6

    .line 255
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 257
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-eqz v0, :cond_a

    const/4 v2, 0x7

    .line 258
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 260
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    if-eqz v0, :cond_b

    const/16 v2, 0x8

    .line 261
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 263
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x9

    .line 264
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 266
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v0, :cond_e

    array-length v0, v0

    if-lez v0, :cond_e

    .line 267
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    array-length v2, v0

    if-ge v1, v2, :cond_e

    .line 268
    aget-object v0, v0, v1

    if-eqz v0, :cond_d

    const/16 v2, 0xa

    .line 270
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 274
    :cond_e
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
