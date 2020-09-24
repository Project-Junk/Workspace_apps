.class abstract Lcom/android/internal/telephony/sip/SipPhoneBase;
.super Lcom/android/internal/telephony/Phone;
.source "SipPhoneBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SipPhoneBase"


# instance fields
.field private mRingbackRegistrants:Landroid/os/RegistrantList;

.field private mState:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 6

    .line 54
    new-instance v4, Lcom/android/internal/telephony/sip/SipCommandInterface;

    invoke-direct {v4, p2}, Lcom/android/internal/telephony/sip/SipCommandInterface;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 50
    new-instance p1, Landroid/os/RegistrantList;

    invoke-direct {p1}, Landroid/os/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    .line 51
    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-void
.end method


# virtual methods
.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0

    const-string p1, "SipPhoneBase"

    const-string p2, "Error! This functionality is not implemented for SIP."

    .line 449
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public canDial()Z
    .locals 5

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 186
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "canDial(): serviceState = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SipPhoneBase"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    return v1

    :cond_0
    const-string v0, "ro.telephony.disable-call"

    const-string v3, "false"

    .line 189
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "canDial(): disableCall = "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "true"

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "canDial(): ringingCall: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "canDial(): foregndCall: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "canDial(): backgndCall: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-nez v0, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public disableDataConnectivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 0

    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 0

    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public abstract getBackgroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 0

    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 352
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1

    const-string p1, "SipPhoneBase"

    const-string v0, "Error! This functionality is not implemented for SIP."

    .line 454
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    .line 139
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    return-object v0
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .line 134
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    const-string v0, "SipPhoneBase"

    const-string v1, "[SipPhone] getEsn() is a CDMA method"

    .line 270
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    return-object v0
.end method

.method public abstract getForegroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    const-string v0, "SipPhoneBase"

    const-string v1, "[SipPhone] getMeid() is a CDMA method"

    .line 276
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 338
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public abstract getRingingCall()Lcom/android/internal/telephony/Call;
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .line 97
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 114
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDataAllowed(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method isInCall()Z
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 212
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isUserDataEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method migrateFrom(Lcom/android/internal/telephony/sip/SipPhoneBase;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    iget-object p1, p1, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->migrate(Landroid/os/RegistrantList;Landroid/os/RegistrantList;)V

    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 0

    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .line 156
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->notifyPreciseCallStateChangedP()V

    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateIccAvailability()V
    .locals 0

    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public saveClirSetting(I)V
    .locals 0

    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendEmergencyCallStateChange(Z)V
    .locals 0

    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setBroadcastEmergencyCallStateChanges(Z)V
    .locals 0

    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 0

    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 0

    const-string p1, "SipPhoneBase"

    const-string p2, "call waiting not supported"

    .line 357
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0

    const-string p1, "SipPhoneBase"

    const-string p2, "Error! This functionality is not implemented for SIP."

    .line 459
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 345
    invoke-static {p2, p1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 346
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0

    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 320
    invoke-static {p3, p1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 321
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public startRingbackTone()V
    .locals 3

    .line 83
    new-instance v0, Landroid/os/AsyncResult;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public stopRingbackTone()V
    .locals 3

    .line 89
    new-instance v0, Landroid/os/AsyncResult;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mRingbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method updatePhoneState()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 495
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ^^^ new phone state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhoneBase;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipPhoneBase"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->notifyPhoneStateChanged()V

    :cond_2
    return-void
.end method

.method public updateServiceLocation()V
    .locals 0

    return-void
.end method
