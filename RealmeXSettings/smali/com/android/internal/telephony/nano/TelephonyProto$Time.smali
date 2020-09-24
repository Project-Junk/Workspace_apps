.class public final Lcom/android/internal/telephony/nano/TelephonyProto$Time;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Time"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$Time;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;


# instance fields
.field public elapsedTimestampMillis:J

.field public systemTimestampMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 531
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .locals 2

    .line 514
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v0, :cond_1

    .line 515
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 518
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 520
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 522
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 598
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .locals 2

    const-wide/16 v0, 0x0

    .line 536
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 537
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 539
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 6

    .line 557
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 558
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 560
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 562
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 564
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 579
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 589
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 547
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 549
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 550
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 552
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
