.class public final Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "CarrierIdProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/CarrierIdProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;


# instance fields
.field public carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 2

    .line 14
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    if-nez v0, :cond_1

    .line 15
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    sput-object v1, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->_emptyArray:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 1

    .line 36
    invoke-static {}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->emptyArray()[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 4

    .line 62
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 65
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 68
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 74
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 98
    new-array v0, v0, [Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    if-eqz v1, :cond_4

    .line 101
    iget-object v3, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 104
    new-instance v2, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;-><init>()V

    aput-object v2, v0, v1

    .line 105
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;-><init>()V

    aput-object v2, v0, v1

    .line 110
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 111
    iput-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

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

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 48
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 50
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 55
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 57
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
