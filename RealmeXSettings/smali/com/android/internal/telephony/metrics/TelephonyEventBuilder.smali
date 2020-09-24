.class public Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
.super Ljava/lang/Object;
.source "TelephonyEventBuilder.java"


# instance fields
.field private final mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    .line 62
    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object v0
.end method

.method public setActiveSubscriptionInfoChange(Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x13

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 170
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    return-object p0
.end method

.method public setCarrierIdMatching(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xd

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 142
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    return-object p0
.end method

.method public setCarrierKeyChange(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xe

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 148
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    return-object p0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 121
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object p0
.end method

.method public setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 91
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    return-object p0
.end method

.method public setDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xf

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 184
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    return-object p0
.end method

.method public setDeactivateDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 109
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    return-object p0
.end method

.method public setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 115
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    return-object p0
.end method

.method public setEnabledModemBitmap(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x14

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 177
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 85
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 79
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    return-object p0
.end method

.method public setModemRestart(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xb

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 133
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    return-object p0
.end method

.method public setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 127
    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    return-object p0
.end method

.method public setNetworkValidate(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 191
    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    return-object p0
.end method

.method public setOnDemandDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x11

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 198
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 73
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 67
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    return-object p0
.end method

.method public setSetupDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 97
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    return-object p0
.end method

.method public setSetupDataCallResponse(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 103
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    return-object p0
.end method

.method public setSimStateChange(Landroid/util/SparseArray;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;"
        }
    .end annotation

    .line 154
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    new-array v2, v0, [I

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    .line 156
    iget-object v1, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v3, 0x12

    iput v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 158
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 159
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iget-object v3, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
