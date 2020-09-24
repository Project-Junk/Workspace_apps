.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelephonySettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings$WiFiCallingMode;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings$RilNetworkMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;


# instance fields
.field public isAirplaneMode:Z

.field public isCellularDataEnabled:Z

.field public isDataRoamingEnabled:Z

.field public isEnhanced4GLteModeEnabled:Z

.field public isVtOverLteEnabled:Z

.field public isVtOverWifiEnabled:Z

.field public isWifiCallingEnabled:Z

.field public isWifiEnabled:Z

.field public preferredNetworkMode:I

.field public wifiCallingMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 984
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 985
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 2

    .line 943
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_1

    .line 944
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 947
    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 949
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 951
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1199
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1193
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 1

    const/4 v0, 0x0

    .line 989
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    .line 990
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    .line 991
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    .line 992
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 993
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    .line 994
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    .line 995
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 996
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    .line 997
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    .line 998
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    const/4 v0, 0x0

    .line 999
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1000
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->cachedSize:I

    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    .line 1042
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1043
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1045
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1047
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 1049
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1051
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 1053
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1055
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 1057
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1059
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 1061
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1063
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 1065
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1067
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 1069
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1071
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 1073
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1075
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 1077
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1079
    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 1081
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    return v0
.end method

.method public final mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1091
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1096
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1184
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    goto :goto_0

    .line 1180
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    goto :goto_0

    .line 1163
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1164
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1173
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1174
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 1170
    :cond_1
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    goto :goto_0

    .line 1159
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    goto :goto_0

    .line 1155
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    goto :goto_0

    .line 1151
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    goto :goto_0

    .line 1114
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1115
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1144
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1145
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 1141
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    goto :goto_0

    .line 1110
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    goto :goto_0

    .line 1106
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    goto :goto_0

    .line 1102
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    goto :goto_0

    :sswitch_a
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
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
    .end packed-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

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

    .line 1007
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isAirplaneMode:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1008
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1010
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isCellularDataEnabled:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1011
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1013
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isDataRoamingEnabled:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1014
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1016
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1017
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1019
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 1020
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1022
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiEnabled:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 1023
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1025
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 1026
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1028
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->wifiCallingMode:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 1029
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1031
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 1032
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1034
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 1035
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1037
    :cond_9
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
