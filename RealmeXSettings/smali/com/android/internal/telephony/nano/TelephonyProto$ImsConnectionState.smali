.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsConnectionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;


# instance fields
.field public reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1744
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1745
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .locals 2

    .line 1727
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_1

    .line 1728
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1730
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1731
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 1733
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1735
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1835
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1829
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .locals 1

    const/4 v0, 0x0

    .line 1749
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    const/4 v0, 0x0

    .line 1750
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 1751
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1752
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    .line 1770
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1771
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1773
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1775
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 1777
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1787
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 1792
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1817
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-nez v0, :cond_2

    .line 1818
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 1820
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1798
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1799
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 1810
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1811
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 1807
    :cond_4
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1711
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1759
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1760
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1762
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1763
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1765
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
