.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonyServiceState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$RoamingType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;


# instance fields
.field public channelNumber:I

.field public dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

.field public dataRat:I

.field public dataRoamingType:I

.field public voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

.field public voiceRat:I

.field public voiceRoamingType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1365
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1366
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .locals 2

    .line 1333
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_1

    .line 1334
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1337
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 1339
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1341
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1592
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1586
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .locals 3

    const/4 v0, 0x0

    .line 1370
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 1371
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    const/4 v1, -0x1

    .line 1372
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    .line 1373
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    .line 1374
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    .line 1375
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    const/4 v2, 0x0

    .line 1376
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    .line 1377
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 1378
    iput v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 4

    .line 1411
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1412
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1414
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1416
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 1418
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1420
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    .line 1422
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1424
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    if-eq v1, v2, :cond_3

    const/4 v3, 0x4

    .line 1426
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1428
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    if-eq v1, v2, :cond_4

    const/4 v3, 0x5

    .line 1430
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1432
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    .line 1434
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1436
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 1438
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_8

    const/16 v1, 0x18

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    .line 1453
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1577
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    goto :goto_0

    .line 1543
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1544
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1570
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1571
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 1567
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    goto :goto_0

    .line 1509
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1510
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 1536
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1537
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 1533
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    goto :goto_0

    .line 1491
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1492
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    if-eq v6, v5, :cond_5

    if-eqz v6, :cond_5

    if-eq v6, v4, :cond_5

    if-eq v6, v3, :cond_5

    if-eq v6, v2, :cond_5

    .line 1502
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1503
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 1499
    :cond_5
    iput v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    goto :goto_0

    .line 1473
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1474
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    if-eq v6, v5, :cond_7

    if-eqz v6, :cond_7

    if-eq v6, v4, :cond_7

    if-eq v6, v3, :cond_7

    if-eq v6, v2, :cond_7

    .line 1484
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1485
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 1481
    :cond_7
    iput v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    goto/16 :goto_0

    .line 1466
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v0, :cond_9

    .line 1467
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 1469
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1459
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-nez v0, :cond_b

    .line 1460
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 1462
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :cond_c
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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
    .packed-switch -0x1
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
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

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

    .line 1385
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1386
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1389
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1391
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    .line 1392
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1394
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    .line 1395
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1397
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    if-eq v0, v1, :cond_4

    const/4 v2, 0x5

    .line 1398
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1400
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    .line 1401
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1403
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 1404
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1406
    :cond_6
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
