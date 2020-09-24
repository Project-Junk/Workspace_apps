.class public Lcom/android/internal/telephony/RadioResponse;
.super Landroid/hardware/radio/V1_4/IRadioResponse$Stub;
.source "RadioResponse.java"


# static fields
.field private static final CDMA_BROADCAST_SMS_NO_OF_SERVICE_CATEGORIES:I = 0x1f

.field private static final CDMA_BSI_NO_OF_INTS_STRUCT:I = 0x3


# instance fields
.field mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/hardware/radio/V1_4/IRadioResponse$Stub;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private static convertCarrierList(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_0/Carrier;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 2272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2273
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2274
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v4, v2, Landroid/hardware/radio/V1_0/Carrier;->mcc:Ljava/lang/String;

    .line 2275
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v5, v2, Landroid/hardware/radio/V1_0/Carrier;->mnc:Ljava/lang/String;

    .line 2277
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/Carrier;

    iget v2, v2, Landroid/hardware/radio/V1_0/Carrier;->matchType:I

    .line 2278
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/Carrier;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/Carrier;->matchData:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v6, :cond_0

    move-object v6, v3

    move-object v8, v7

    :goto_1
    move-object v9, v8

    goto :goto_2

    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    move-object v6, v7

    move-object v8, v6

    move-object v9, v8

    move-object v7, v3

    goto :goto_2

    :cond_1
    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    move-object v8, v3

    move-object v6, v7

    move-object v9, v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    move-object v9, v3

    move-object v6, v7

    move-object v8, v6

    goto :goto_2

    :cond_3
    move-object v6, v7

    move-object v8, v6

    goto :goto_1

    .line 2288
    :goto_2
    new-instance v2, Landroid/service/carrier/CarrierIdentifier;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private convertHalCardStatus(Landroid/hardware/radio/V1_0/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;
    .locals 7

    .line 1540
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 1541
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->cardState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 1542
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->universalPinState:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 1543
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 1544
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->cdmaSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 1545
    iget v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->imsSubscriptionAppIndex:I

    iput v1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 1546
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    move v1, v2

    .line 1554
    :cond_0
    new-array v2, v1, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1556
    iget-object v3, p1, Landroid/hardware/radio/V1_0/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/AppStatus;

    .line 1557
    new-instance v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 1558
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1559
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 1560
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 1562
    iget-object v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 1563
    iget-object v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 1564
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    iput v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 1565
    iget v5, v3, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 1566
    iget v3, v3, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 1567
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v4, v3, v2

    .line 1568
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IccCardApplicationStatus "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private convertHalKeepaliveStatusCode(I)I
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid Keepalive Status"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static convertOpertatorInfoToString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "available"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "current"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "forbidden"

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2176
    iget-object v3, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2180
    iget v4, v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-nez v4, :cond_1

    .line 2181
    iget v10, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    .line 2182
    iget v11, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    .line 2183
    new-array v12, v6, [I

    :goto_0
    if-ge v5, v6, :cond_0

    .line 2185
    iget-object v4, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    aget v4, v4, v5

    aput v4, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2187
    :cond_0
    iget v13, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    .line 2188
    new-instance v2, Landroid/telephony/ModemActivityInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v14, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    goto :goto_1

    .line 2191
    :cond_1
    new-instance v2, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-array v4, v6, [I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v2

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v22}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    .line 2193
    iput v5, v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 2195
    :goto_1
    iget-object v4, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v4, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2196
    iget-object v4, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 1957
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1959
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    .line 1960
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1961
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 1962
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1963
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1964
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1965
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1966
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1967
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1969
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 1970
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1972
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private responseCarrierRestrictions(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V
    .locals 3

    .line 2296
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2303
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllCarriersAllowed()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    move p2, v1

    .line 2312
    :cond_2
    iget-boolean p4, p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    xor-int/2addr p4, v1

    .line 2317
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    iget-object v2, p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    .line 2318
    invoke-static {v2}, Lcom/android/internal/telephony/RadioResponse;->convertCarrierList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    iget-object p3, p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    .line 2319
    invoke-static {p3}, Lcom/android/internal/telephony/RadioResponse;->convertCarrierList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p3

    .line 2320
    invoke-virtual {p3, p4}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p3

    .line 2321
    invoke-virtual {p3, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 2322
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p2

    .line 2325
    :goto_0
    iget p3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p3, :cond_3

    .line 2326
    iget-object p3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2328
    :cond_3
    iget-object p3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method private responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 2087
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2092
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/16 p2, 0x5e

    .line 2101
    new-array v1, p2, [I

    const/16 v4, 0x1f

    aput v4, v1, v2

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_2

    add-int/lit8 v5, v4, 0x0

    .line 2109
    div-int/lit8 v6, v4, 0x3

    aput v6, v1, v5

    add-int/lit8 v5, v4, 0x1

    .line 2110
    aput v3, v1, v5

    add-int/lit8 v5, v4, 0x2

    .line 2111
    aput v2, v1, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v3

    .line 2116
    new-array v4, v4, [I

    .line 2118
    aput v1, v4, v2

    .line 2119
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 2121
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v1, v1, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->serviceCategory:I

    aput v1, v4, v3

    add-int/lit8 v1, v3, 0x1

    .line 2122
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v5, v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->language:I

    aput v5, v4, v1

    add-int/lit8 v1, v3, 0x2

    .line 2123
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget-boolean v5, v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->selected:Z

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_1
    move-object v1, v4

    .line 2126
    :cond_2
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_3

    .line 2127
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2129
    :cond_3
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2138
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2139
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 2140
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2142
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseCellInfoList_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2152
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2153
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 2154
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2156
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseCellInfoList_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 2163
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2166
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertHalCellInfoList_1_4(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2167
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 2168
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2170
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2044
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2047
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 2048
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    .line 2049
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    aget v2, v2, v4

    .line 2050
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2053
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 2054
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget v3, v3, Landroid/hardware/radio/V1_0/NeighboringCell;->rssi:I

    .line 2055
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/NeighboringCell;->cid:Ljava/lang/String;

    .line 2056
    new-instance v6, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v6, v3, v5, v2}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 2057
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2060
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 2061
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2063
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1656
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1657
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    .line 1661
    new-instance v5, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v5}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1664
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1665
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->index:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1666
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->toa:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1667
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 1668
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1669
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-byte v6, v6, Landroid/hardware/radio/V1_0/Call;->als:B

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 1670
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1671
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 1672
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1675
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 1674
    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1676
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 1678
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 1679
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1680
    new-instance v6, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1681
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/UusInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 1682
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/UusInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 1683
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1684
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1685
    iget-object v8, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    goto :goto_1

    .line 1687
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v8, "responseCurrentCalls: uusInfo data is null or empty"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1690
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1691
    invoke-virtual {v9}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v9, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v9}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x2

    iget-object v9, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1692
    invoke-virtual {v9}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v7, "Incoming UUS : type=%d, dcs=%d, length=%d"

    .line 1690
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 1693
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Incoming UUS : data (hex): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1694
    invoke-virtual {v8}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1693
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_2

    .line 1696
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "Incoming UUS : NOT present!"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 1700
    :goto_2
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v7, v5, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1702
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    iget-boolean v5, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_2

    .line 1705
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1706
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1708
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1709
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1713
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v1, :cond_4

    .line 1715
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1716
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_4

    .line 1717
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v1, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1719
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {p2}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1723
    :cond_4
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_5

    .line 1724
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1726
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private responseCurrentCalls_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .line 1732
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1735
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1736
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    .line 1740
    new-instance v5, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v5}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1743
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1744
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->index:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1745
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->toa:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1746
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 1747
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1748
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-byte v6, v6, Landroid/hardware/radio/V1_0/Call;->als:B

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 1749
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1750
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-boolean v6, v6, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 1751
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1754
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 1753
    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1755
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 1757
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget v6, v6, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 1758
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1759
    new-instance v6, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1760
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_2/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/UusInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/UusInfo;->uusType:I

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 1761
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_2/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/radio/V1_0/UusInfo;

    iget v8, v8, Landroid/hardware/radio/V1_0/UusInfo;->uusDcs:I

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 1762
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1763
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_2/Call;->base:Landroid/hardware/radio/V1_0/Call;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/UusInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/UusInfo;->uusData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1764
    iget-object v8, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    goto :goto_1

    .line 1766
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v8, "responseCurrentCalls: uusInfo data is null or empty"

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1769
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1770
    invoke-virtual {v9}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v9, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v9}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x2

    iget-object v9, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1771
    invoke-virtual {v9}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v7, "Incoming UUS : type=%d, dcs=%d, length=%d"

    .line 1769
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 1772
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Incoming UUS : data (hex): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1773
    invoke-virtual {v8}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1772
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_2

    .line 1775
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "Incoming UUS : NOT present!"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLogv(Ljava/lang/String;)V

    .line 1779
    :goto_2
    iget-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v7, v5, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1781
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_2/Call;

    iget v6, v6, Landroid/hardware/radio/V1_2/Call;->audioQuality:I

    iput v6, v5, Lcom/android/internal/telephony/DriverCall;->audioQuality:I

    .line 1783
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    iget-boolean v5, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_2

    .line 1786
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1787
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1789
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1790
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1794
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v1, :cond_4

    .line 1796
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1797
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz p2, :cond_4

    .line 1798
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v1, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1800
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {p2}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1804
    :cond_4
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_5

    .line 1805
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1807
    :cond_5
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2025
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2029
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2030
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 2031
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2033
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 2069
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2072
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2073
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2074
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v5, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 2075
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v6, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v7, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 2076
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v8, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget-boolean v9, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 2074
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2078
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 2079
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2081
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 2203
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2206
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RIL;->convertHalHwConfigList(Ljava/util/ArrayList;Lcom/android/internal/telephony/RIL;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2207
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 2208
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2210
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseICC_IOBase64(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 6

    .line 2216
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2219
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    .line 2222
    iget-object v4, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2223
    iget-object p2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2224
    :goto_0
    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 2225
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 2226
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2228
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .locals 4

    .line 1574
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1577
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RadioResponse;->convertHalCardStatus(Landroid/hardware/radio/V1_0/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object p2

    .line 1578
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1579
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 1580
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1582
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseIccCardStatus_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .locals 4

    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1591
    iget-object v1, p2, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RadioResponse;->convertHalCardStatus(Landroid/hardware/radio/V1_0/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object v1

    .line 1592
    iget v2, p2, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->physicalSlotIndex:I

    .line 1593
    iget-object v2, p2, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 1594
    iget-object p2, p2, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 1595
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1596
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 1597
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1599
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseIccCardStatus_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V
    .locals 4

    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1608
    iget-object v1, p2, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget-object v1, v1, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RadioResponse;->convertHalCardStatus(Landroid/hardware/radio/V1_0/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object v1

    .line 1609
    iget-object v2, p2, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget v2, v2, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->physicalSlotIndex:I

    .line 1610
    iget-object v2, p2, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget-object v2, v2, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 1611
    iget-object v2, p2, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget-object v2, v2, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 1612
    iget-object p2, p2, Landroid/hardware/radio/V1_4/CardStatus;->eid:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 1613
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1614
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 1615
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1617
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 4

    .line 1943
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1946
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    iget-object p2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    .line 1947
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 1948
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1950
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1640
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 1641
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1642
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1644
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 1645
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1647
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private varargs responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .locals 3

    .line 1629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1630
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1631
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1633
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 3

    .line 1861
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1864
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 1865
    iget v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 1866
    iget-object p2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 1867
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 1868
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1870
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseLceData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 2

    .line 2260
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2263
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RIL;->convertHalLceData(Landroid/hardware/radio/V1_0/LceDataInfo;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/LinkCapacityEstimate;

    move-result-object p2

    .line 2264
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 2265
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2267
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 3

    .line 2246
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2250
    iget v2, p2, Landroid/hardware/radio/V1_0/LceStatusInfo;->lceStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2251
    iget-byte p2, p2, Landroid/hardware/radio/V1_0/LceStatusInfo;->actualIntervalMs:B

    invoke-static {p2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 2253
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2255
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 1993
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1996
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1997
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1998
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 1999
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 2000
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    invoke-static {v7}, Lcom/android/internal/telephony/RadioResponse;->convertOpertatorInfoToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2002
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 2003
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2005
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 2

    .line 2234
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2237
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RIL;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    .line 2238
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 2239
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2241
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 5

    .line 2010
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2014
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2015
    new-instance v1, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 2017
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 2019
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 2

    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1933
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object p2

    .line 1934
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 1935
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1937
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 2

    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1880
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 1881
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 1882
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1884
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseSignalStrength_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 2

    .line 1891
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1894
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 1895
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 1896
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1898
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseSignalStrength_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V
    .locals 2

    .line 1905
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1908
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/hardware/radio/V1_4/SignalStrength;)V

    .line 1909
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 1910
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1912
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 4

    .line 1917
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1920
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget p2, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .line 1921
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_0

    .line 1922
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1924
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1828
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 1829
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1831
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1845
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1848
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1849
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1850
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1852
    :cond_0
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1

    .line 1853
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1855
    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private varargs responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V
    .locals 3

    .line 1836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1837
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1838
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1840
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 3

    .line 1813
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1817
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1818
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1820
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 87
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 925
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 531
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 467
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 173
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 165
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 545
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 733
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1625
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 2335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1024
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 781
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .locals 2

    .line 1395
    new-instance v0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 1396
    iget-object v1, p3, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    .line 1397
    iget-object p3, p3, Landroid/hardware/radio/V1_0/CarrierRestrictions;->excludedCarriers:Ljava/util/ArrayList;

    iput-object p3, v0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    const/4 p3, 0x1

    .line 1398
    iput-boolean p3, v0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    const/4 p3, 0x0

    .line 1400
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RadioResponse;->responseCarrierRestrictions(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    return-void
.end method

.method public getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1414
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RadioResponse;->responseCarrierRestrictions(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    return-void
.end method

.method public getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 750
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    .line 989
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    const/4 p2, 0x4

    aput-object p6, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 2

    const/4 v0, 0x2

    .line 517
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 959
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 861
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1062
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1103
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1113
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1123
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 688
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .locals 2

    const/4 v0, 0x2

    .line 476
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V

    return-void
.end method

.method public getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 708
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V

    return-void
.end method

.method public getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 341
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 358
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 374
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 375
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    .line 1017
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 556
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 935
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 1254
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    return-void
.end method

.method public getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    return-void
.end method

.method public getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    return-void
.end method

.method public getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .locals 2

    const/4 v0, 0x2

    .line 1149
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    return-void
.end method

.method public getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    return-void
.end method

.method public getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 3

    .line 2343
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2346
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 2347
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2349
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 679
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .line 831
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 581
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    .line 392
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    .line 819
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->convertToNetworkTypeBitMask(I)I

    move-result p2

    .line 818
    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p2

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iput p2, v0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    const/4 v0, 0x1

    .line 821
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iput p2, v0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    const/4 v0, 0x1

    .line 806
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 895
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 3

    .line 1284
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1287
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RIL;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    .line 1288
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1292
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    const/4 v1, 0x0

    .line 1293
    iput v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1295
    :cond_1
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_2

    .line 1296
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1298
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    return-void
.end method

.method public getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    return-void
.end method

.method public getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    return-void
.end method

.method public getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 1032
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 877
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1098
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 307
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_0

    .line 324
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 774
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 1183
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 1184
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1186
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    .line 1169
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    .line 1204
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 1213
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1220
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    return-void
.end method

.method public rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1053
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseICC_IOBase64(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 1072
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Inexplicable response received for requestIsimAuthentication"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1279
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 909
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 902
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0

    .line 918
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1421
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 760
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .locals 0

    .line 1089
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0

    .line 1158
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public sendOemRilRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .locals 0

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 767
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 663
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 4

    .line 1352
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAllowedCarriersResponse - error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1356
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1358
    iget-object v0, p2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    .line 1359
    :cond_0
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 1361
    iput v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1363
    iget-object v0, p2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 1365
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 4

    .line 1375
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1377
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAllowedCarriersResponse_1_4 - error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1379
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1381
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 1383
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 740
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 572
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 501
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1428
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 973
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 966
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 852
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 845
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1272
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 565
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 949
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 942
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1435
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1456
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 670
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 595
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 796
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 788
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .locals 0

    .line 1304
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    return-void
.end method

.method public setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 399
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1449
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1463
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 718
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 2357
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 868
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 1241
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V
    .locals 0

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 640
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .locals 4

    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1479
    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 p2, 0x6

    if-eq v2, p2, :cond_2

    const/16 p2, 0x2a

    if-eq v2, p2, :cond_1

    .line 1498
    new-instance p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    const/4 v2, 0x3

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(I)V

    goto :goto_1

    .line 1495
    :cond_1
    new-instance p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    const/4 v2, 0x2

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(I)V

    goto :goto_1

    .line 1492
    :cond_2
    new-instance p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    invoke-direct {p2, v3}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(I)V

    goto :goto_1

    .line 1481
    :cond_3
    iget v2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RadioResponse;->convertHalKeepaliveStatusCode(I)I

    move-result v2

    if-gez v2, :cond_4

    .line 1483
    new-instance p2, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    invoke-direct {p2, v3}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(I)V

    move-object v1, p2

    goto :goto_0

    .line 1485
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;

    iget p2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    invoke-direct {v3, p2, v2}, Lcom/android/internal/telephony/dataconnection/KeepaliveStatus;-><init>(II)V

    move-object v1, v3

    .line 1489
    :goto_0
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v1

    .line 1503
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw p2
.end method

.method public startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 0

    .line 1313
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    return-void
.end method

.method public startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 615
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 625
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 647
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 4

    .line 1511
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1515
    :try_start_0
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 1516
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    throw v2
.end method

.method public stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .locals 0

    .line 1322
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    return-void
.end method

.method public stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 149
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 133
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 157
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 141
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 182
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 998
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .locals 2

    const/4 v0, 0x1

    .line 726
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method
