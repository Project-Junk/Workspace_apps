.class public final Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilDataCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;


# instance fields
.field public apnTypeBitmask:I

.field public cid:I

.field public iframe:Ljava/lang/String;

.field public state:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2038
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2039
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 2

    .line 2012
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v0, :cond_1

    .line 2013
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2015
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2016
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 2018
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2020
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2175
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 2169
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 2

    const/4 v0, 0x0

    .line 2043
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 2044
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    const-string v1, ""

    .line 2045
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    .line 2046
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    .line 2047
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    const/4 v0, 0x0

    .line 2048
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2049
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    .line 2076
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2077
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2079
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2081
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 2083
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2085
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 2086
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    .line 2087
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2089
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 2091
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2093
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 2095
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 2110
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2160
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    goto :goto_0

    .line 2144
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 2145
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 2153
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2154
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 2150
    :cond_3
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    goto :goto_0

    .line 2140
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    goto :goto_0

    .line 2120
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 2121
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2133
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2134
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 2130
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    goto :goto_0

    .line 2116
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    goto :goto_0

    :cond_7
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1999
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

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

    .line 2056
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2057
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2059
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 2060
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2062
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 2063
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2065
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 2066
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2068
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 2069
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2071
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
