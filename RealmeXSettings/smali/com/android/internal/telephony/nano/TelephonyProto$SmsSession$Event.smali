.class public final Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$SmsType;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBPriority;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessageType;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Tech;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Format;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;


# instance fields
.field public blocked:Z

.field public cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

.field public dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

.field public delay:I

.field public error:I

.field public errorCode:I

.field public format:I

.field public imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

.field public imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

.field public imsError:I

.field public incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

.field public rilRequestId:I

.field public serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

.field public smsType:I

.field public tech:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7222
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7223
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .locals 2

    .line 7160
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-nez v0, :cond_1

    .line 7161
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7163
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7164
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 7166
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7168
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7691
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7685
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .locals 3

    const/4 v0, 0x0

    .line 7227
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    .line 7228
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    const/4 v1, 0x0

    .line 7229
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 7230
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 7231
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 7232
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 7233
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 7234
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    .line 7235
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    .line 7236
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    .line 7237
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    .line 7238
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    .line 7239
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    .line 7240
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    .line 7241
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    .line 7242
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    .line 7243
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    .line 7244
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7245
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 4

    .line 7313
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7314
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 7316
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7318
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 7320
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7322
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 7324
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7326
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 7328
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7330
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 7332
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7334
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 7336
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7338
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v1, :cond_7

    array-length v1, v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    .line 7339
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 7340
    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    const/4 v3, 0x7

    .line 7343
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7347
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 7349
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7351
    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 7353
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7355
    :cond_9
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 7357
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7359
    :cond_a
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 7361
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7363
    :cond_b
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 7365
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7367
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 7369
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7371
    :cond_d
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 7373
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7375
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 7377
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7379
    :cond_f
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 7381
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7383
    :cond_10
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 7385
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7395
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 7400
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 7676
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    goto :goto_0

    .line 7658
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 7659
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    if-eqz v6, :cond_1

    if-eq v6, v4, :cond_1

    if-eq v6, v3, :cond_1

    if-eq v6, v2, :cond_1

    if-eq v6, v1, :cond_1

    .line 7669
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7670
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 7666
    :cond_1
    iput v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    goto :goto_0

    .line 7651
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-nez v0, :cond_2

    .line 7652
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    .line 7654
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7633
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 7634
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    if-eqz v6, :cond_3

    if-eq v6, v4, :cond_3

    if-eq v6, v3, :cond_3

    if-eq v6, v2, :cond_3

    if-eq v6, v1, :cond_3

    .line 7644
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7645
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 7641
    :cond_3
    iput v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    goto :goto_0

    .line 7626
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-nez v0, :cond_4

    .line 7627
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    .line 7629
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7622
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    goto :goto_0

    .line 7548
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 7549
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 7615
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7616
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 7612
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    goto/16 :goto_0

    .line 7544
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    goto/16 :goto_0

    .line 7527
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 7528
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_5

    if-eq v5, v3, :cond_5

    if-eq v5, v2, :cond_5

    .line 7537
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7538
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 7534
    :cond_5
    iput v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    goto/16 :goto_0

    .line 7511
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 7512
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_6

    .line 7520
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7521
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 7517
    :cond_6
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x3a

    .line 7492
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7493
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 7494
    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v1, :cond_8

    .line 7497
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7499
    :cond_8
    :goto_2
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_9

    .line 7500
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v2, v0, v1

    .line 7501
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7502
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7505
    :cond_9
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v2, v0, v1

    .line 7506
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7507
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 7484
    :sswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_a

    .line 7485
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 7487
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7477
    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_b

    .line 7478
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 7480
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7470
    :sswitch_d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_c

    .line 7471
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 7473
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7463
    :sswitch_e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_d

    .line 7464
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 7466
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7430
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 7431
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 7456
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7457
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 7453
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    goto/16 :goto_0

    .line 7406
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 7407
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    .line 7423
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 7424
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 7420
    :pswitch_2
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    goto/16 :goto_0

    :sswitch_11
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x8 -> :sswitch_10
        0x10 -> :sswitch_f
        0x1a -> :sswitch_e
        0x22 -> :sswitch_d
        0x2a -> :sswitch_c
        0x32 -> :sswitch_b
        0x3a -> :sswitch_a
        0x40 -> :sswitch_9
        0x48 -> :sswitch_8
        0x50 -> :sswitch_7
        0x58 -> :sswitch_6
        0x60 -> :sswitch_5
        0x6a -> :sswitch_4
        0x70 -> :sswitch_3
        0x7a -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6799
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7252
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7253
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7255
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 7256
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7258
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 7259
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7261
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 7262
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7264
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 7265
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7267
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 7268
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7270
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 7271
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 7272
    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 7274
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7278
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    .line 7279
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7281
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    if-eqz v0, :cond_9

    const/16 v1, 0x9

    .line 7282
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7284
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    .line 7285
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7287
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    if-eqz v0, :cond_b

    const/16 v1, 0xb

    .line 7288
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7290
    :cond_b
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    if-eqz v0, :cond_c

    const/16 v1, 0xc

    .line 7291
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7293
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-eqz v0, :cond_d

    const/16 v1, 0xd

    .line 7294
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7296
    :cond_d
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    if-eqz v0, :cond_e

    const/16 v1, 0xe

    .line 7297
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7299
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-eqz v0, :cond_f

    const/16 v1, 0xf

    .line 7300
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7302
    :cond_f
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    if-eqz v0, :cond_10

    const/16 v1, 0x10

    .line 7303
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7305
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    if-eqz v0, :cond_11

    const/16 v1, 0x11

    .line 7306
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7308
    :cond_11
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
