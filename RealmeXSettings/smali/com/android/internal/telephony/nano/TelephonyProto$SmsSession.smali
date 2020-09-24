.class public final Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;


# instance fields
.field public events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

.field public eventsDropped:Z

.field public phoneId:I

.field public startTimeMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7721
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7722
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .locals 2

    .line 7698
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-nez v0, :cond_1

    .line 7699
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7701
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7702
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 7704
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7706
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7844
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7838
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .locals 2

    const/4 v0, 0x0

    .line 7726
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    .line 7727
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    .line 7728
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 7729
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    const/4 v0, 0x0

    .line 7730
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7731
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 4

    .line 7760
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7761
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 7763
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7765
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 7767
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7769
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 7770
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 7771
    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 7774
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7778
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 7780
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7790
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 7795
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 7829
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    goto :goto_0

    .line 7810
    :cond_2
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7811
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 7812
    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-eqz v1, :cond_4

    .line 7815
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7817
    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 7818
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    aput-object v2, v0, v1

    .line 7819
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7820
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7823
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    aput-object v2, v0, v1

    .line 7824
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7825
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    goto :goto_0

    .line 7805
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    goto :goto_0

    .line 7801
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6796
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

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

    .line 7738
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7739
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7741
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 7742
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7744
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 7745
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 7746
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 7748
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7752
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    .line 7753
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7755
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
