.class public final Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IncompleteSms"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;


# instance fields
.field public receivedParts:I

.field public totalParts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7080
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7081
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .locals 2

    .line 7063
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-nez v0, :cond_1

    .line 7064
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7066
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7067
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    .line 7069
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7071
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7153
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7147
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .locals 1

    const/4 v0, 0x0

    .line 7085
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    .line 7086
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    const/4 v0, 0x0

    .line 7087
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7088
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    .line 7106
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7107
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 7109
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7111
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 7113
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 7128
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 7138
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    goto :goto_0

    .line 7134
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

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

    .line 7057
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

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

    .line 7095
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7096
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7098
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 7099
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7101
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
