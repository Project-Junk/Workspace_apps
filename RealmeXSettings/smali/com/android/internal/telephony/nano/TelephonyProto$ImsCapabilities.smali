.class public final Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsCapabilities"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;


# instance fields
.field public utOverLte:Z

.field public utOverWifi:Z

.field public videoOverLte:Z

.field public videoOverWifi:Z

.field public voiceOverLte:Z

.field public voiceOverWifi:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1874
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1875
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .locals 2

    .line 1845
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_1

    .line 1846
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1848
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1849
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 1851
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1853
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1995
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1989
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .locals 1

    const/4 v0, 0x0

    .line 1879
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    .line 1880
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    .line 1881
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    .line 1882
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    .line 1883
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    .line 1884
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    const/4 v0, 0x0

    .line 1885
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1886
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    .line 1916
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1917
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1919
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1921
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 1923
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1925
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 1927
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1929
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 1931
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1933
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 1935
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1937
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 1939
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1949
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 1954
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1980
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    goto :goto_0

    .line 1976
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    goto :goto_0

    .line 1972
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    goto :goto_0

    .line 1968
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    goto :goto_0

    .line 1964
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    goto :goto_0

    .line 1960
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1839
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

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

    .line 1893
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1894
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1896
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1897
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1899
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1900
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1902
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1903
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1905
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 1906
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1908
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 1909
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1911
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
