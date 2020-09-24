.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveSubscriptionInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;


# instance fields
.field public carrierId:I

.field public isOpportunistic:I

.field public slotIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4744
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4745
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .locals 2

    .line 4724
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-nez v0, :cond_1

    .line 4725
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4727
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4728
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    .line 4730
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4732
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4829
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4823
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 4749
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    .line 4750
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    .line 4751
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    const/4 v0, 0x0

    .line 4752
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4753
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    .line 4774
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4775
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4777
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4779
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 4781
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4783
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 4785
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4795
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 4800
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4814
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    goto :goto_0

    .line 4810
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    goto :goto_0

    .line 4806
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4718
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

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

    .line 4760
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4761
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4763
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4764
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4766
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 4767
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4769
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
