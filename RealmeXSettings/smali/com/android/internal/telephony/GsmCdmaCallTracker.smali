.class public Lcom/android/internal/telephony/GsmCdmaCallTracker;
.super Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker;
.source "GsmCdmaCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GsmCdmaCallTracker"

.field private static final MAX_CONNECTIONS_CDMA:I = 0x8

.field public static final MAX_CONNECTIONS_GSM:I = 0x13

.field private static final MAX_CONNECTIONS_PER_CALL_CDMA:I = 0x1

.field private static final MAX_CONNECTIONS_PER_CALL_GSM:I = 0x5

.field private static final REPEAT_POLLING:Z = false

.field private static final VDBG:Z = false


# instance fields
.field private m3WayCallFlashDelay:I

.field public mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field public mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDesiredMute:Z

.field private mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field public mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mHangupPendingMO:Z

.field private mIsEcmTimerCanceled:Z

.field private mIsInEmergencyCall:Z

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mPendingCallClirMode:I

.field private mPendingCallInEcm:Z

.field private mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mState:Lcom/android/internal/telephony/PhoneConstants$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker;-><init>()V

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCall;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    .line 104
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 107
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 110
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$1;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 160
    iget-object p1, p1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 161
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {p1, p0, v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object p0
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 4

    .line 1680
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1681
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1682
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v1

    .line 1684
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkAndEnableDataCallAfterEmergencyCallDropped,inEcm="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 1688
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setInternalDataEnabled(Z)V

    .line 1689
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 1691
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    :cond_1
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 2

    .line 1704
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v1, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object p2, v0, p2

    .line 1706
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notify new ring "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1711
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Phantom call appeared "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v0, v1, :cond_1

    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1718
    iget-object p1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p1, v0, :cond_1

    .line 1720
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onStartedHolding()V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private dialCdma(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 412
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 413
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 416
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 418
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 419
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 421
    iget-object v1, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    iget-object v2, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v2, :cond_0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v11

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    if-eqz v2, :cond_2

    const-string/jumbo v3, "us"

    .line 427
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "vi"

    if-eqz v4, :cond_1

    .line 428
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    xor-int/lit8 v2, v0, 0x1

    goto :goto_2

    .line 429
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 434
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6, v0, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_3

    :cond_3
    move-object v12, v7

    .line 437
    :goto_3
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInEcm()Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v9, :cond_4

    .line 441
    invoke-direct {v6, v11}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 447
    :cond_4
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5

    .line 448
    invoke-direct {v6, v12, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialThreeWay(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    .line 451
    :cond_5
    new-instance v14, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v1, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v0, v14

    move-object/from16 v3, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v14, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v8, :cond_6

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dialGsm - emergency dialer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GsmCdmaCallTracker"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setHasKnownUserIntentEmergency(Z)V

    .line 459
    :cond_6
    iput-boolean v10, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 461
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 462
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    goto :goto_5

    .line 471
    :cond_7
    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 474
    invoke-direct {v6, v12}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    if-eqz v13, :cond_9

    if-eqz v13, :cond_8

    if-eqz v9, :cond_8

    goto :goto_4

    .line 483
    :cond_8
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->exitEmergencyCallbackMode()V

    .line 484
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    move/from16 v0, p2

    .line 485
    iput v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 486
    iput-boolean v11, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    goto :goto_6

    :cond_9
    :goto_4
    move/from16 v0, p2

    .line 478
    iget-object v12, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v13

    iget-object v1, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v14

    iget-object v1, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 479
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v15

    iget-object v1, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 480
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v16

    .line 481
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v18

    move/from16 v17, p2

    .line 478
    invoke-interface/range {v12 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    goto :goto_6

    .line 464
    :cond_a
    :goto_5
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 490
    :goto_6
    iget-boolean v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz v0, :cond_b

    .line 491
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    .line 492
    iput-boolean v10, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    .line 495
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 496
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 498
    iget-object v0, v6, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object v0
.end method

.method private dialGsm(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1
.end method

.method private dialThreeWay(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7

    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 505
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 508
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 509
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-boolean v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz p2, :cond_0

    .line 512
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "dialThreeWay - emergency dialer "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->setHasKnownUserIntentEmergency(Z)V

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 519
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "carrier_config"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 520
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "cdma_3waycall_flash_delay_int"

    .line 523
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 526
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 528
    :goto_0
    iget p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    if-lez p1, :cond_2

    .line 529
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x14

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 531
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x10

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 531
    invoke-interface {p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 534
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "disableDataCallInEmergencyCall"

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    :cond_0
    return-void
.end method

.method private dumpState()V
    .locals 6

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Phone State:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ringing call: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 1193
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Foreground call: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    .line 1200
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1203
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Background call: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_2

    .line 1207
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 273
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 274
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 276
    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->fakeHoldBeforeDial()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1432
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p1

    .line 1430
    :pswitch_0
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p1

    .line 1428
    :pswitch_1
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p1

    .line 1426
    :pswitch_2
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p1

    .line 1424
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3

    .line 1414
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1415
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1418
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleTimerInEmergencyCallbackMode(I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 379
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleEcmTimer, unsupported action "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaCallTracker"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 376
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 377
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    return-void
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .line 1181
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->clearDisconnected()V

    return-void
.end method

.method private isPhoneTypeGsm()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1752
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$isInOtaspCall$0(Lcom/android/internal/telephony/Connection;)Z
    .locals 1

    .line 1745
    instance-of v0, p0, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1746
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isOtaspCall()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 6

    .line 1336
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1338
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1341
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v3, -0x1

    .line 1345
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3

    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1407
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x4

    .line 729
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 738
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    const/4 v0, 0x0

    .line 739
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 740
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    .line 745
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method private operationComplete()V
    .locals 2

    .line 749
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    .line 754
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    return-void

    .line 757
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    if-gez v0, :cond_1

    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "GsmCdmaCallTracker.pendingOperations < 0"

    .line 759
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 760
    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingOperations:I

    :cond_1
    return-void
.end method

.method private reset()V
    .locals 5

    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "reset"

    .line 202
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x24

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 207
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->dispose()V

    :cond_2
    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 218
    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    return-void
.end method

.method private updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 4

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 1172
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1174
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;)V

    return-void
.end method

.method private updatePhoneState()V
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 767
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 770
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 774
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 775
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V

    .line 777
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    .line 771
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 780
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_4

    .line 781
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_2

    .line 783
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 784
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 788
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update phone state, old="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_6

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    :cond_6
    return-void
.end method

.method private updatePhoneType(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->reset()V

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x13

    .line 183
    new-array p1, p1, [Lcom/android/internal/telephony/GsmCdmaConnection;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 184
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    .line 187
    iget-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz p1, :cond_2

    .line 188
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setInternalDataEnabled(Z)V

    return-void

    :cond_1
    const/16 p1, 0x8

    .line 191
    new-array p1, p1, [Lcom/android/internal/telephony/GsmCdmaConnection;

    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 193
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 194
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 195
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    .line 196
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "phone"

    const-string v1, "acceptCall: incoming..."

    .line 565
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 570
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->updateParent(Lcom/android/internal/telephony/GsmCdmaCall;Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 580
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 581
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 583
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    return-void

    .line 585
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canConference()Z
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 652
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 653
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 654
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 3

    .line 704
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 706
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 707
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 708
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :cond_2
    const-string v0, "GsmCdmaCallTracker"

    const-string v2, "canTransfer: not possible in CDMA"

    .line 710
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public checkForDialIssues(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const-string v0, "ro.telephony.disable-call"

    const-string v1, "false"

    .line 663
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const-string/jumbo v1, "true"

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v0, :cond_7

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v0

    if-nez v0, :cond_6

    .line 682
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const-string v1, "There is already a foreground and background call."

    const/4 v2, 0x6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 683
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p1, v2, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 687
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 690
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 691
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 693
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 694
    :cond_2
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p1, v2, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    .line 697
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isInOtaspCall()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 698
    :cond_4
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const/4 v0, 0x7

    const-string v1, "OTASP provisioning is in process."

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void

    .line 679
    :cond_6
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const/4 v0, 0x4

    const-string v1, "Can\'t call while a call is ringing."

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 675
    :cond_7
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const/4 v0, 0x3

    const-string v1, "A call is already dialing."

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 671
    :cond_8
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const/4 v0, 0x5

    const-string v1, "Calling disabled via ro.telephony.disable-call property"

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 667
    :cond_9
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const/4 v0, 0x2

    const-string v1, "Modem not powered"

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public cleanupCalls()V
    .locals 0

    .line 1817
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    return-void
.end method

.method public clearDisconnected()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 644
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    .line 646
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public conference()V
    .locals 2

    .line 630
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    return-void

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    return-void
.end method

.method public dial(Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 540
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1

    .line 543
    :cond_0
    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialCdma(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized dialGsm(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    monitor-enter p0

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 293
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForDialIssues(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x1f4

    .line 311
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_5

    .line 328
    new-instance v7, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    move-object v1, v7

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaCallTracker;Lcom/android/internal/telephony/GsmCdmaCall;Z)V

    iput-object v7, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz p4, :cond_1

    const-string v0, "GsmCdmaCallTracker"

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialGsm - emergency dialer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const-string v1, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/GsmCdmaConnection;->setHasKnownUserIntentEmergency(Z)V

    :cond_1
    const/4 p4, 0x0

    .line 336
    iput-boolean p4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 341
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 353
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v4

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v5

    .line 354
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v8

    move v6, p2

    move-object v7, p3

    .line 352
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 343
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 p3, 0x7

    iput p3, p2, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    .line 357
    :goto_1
    iget-boolean p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    if-eqz p2, :cond_4

    .line 358
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setConverted(Ljava/lang/String;)V

    .line 359
    iput-boolean p4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNumberConverted:Z

    .line 362
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 363
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 365
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 325
    :cond_5
    :try_start_3
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "cannot dial in current state"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 550
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1
.end method

.method public dispatchCsCallRadioTech(I)V
    .locals 4

    .line 1663
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    if-nez v0, :cond_0

    const-string p1, "dispatchCsCallRadioTech: mConnections is null"

    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1667
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 1669
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->setCallRadioTech(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "GsmCdmaCallTracker extends:"

    .line 1768
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1770
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mConnections: length="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 1771
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge p3, v0, :cond_0

    .line 1772
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v1, v1, p3

    aput-object v1, v0, v2

    const-string v1, "  mConnections[%d]=%s\n"

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1774
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mVoiceCallEndedRegistrants="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mVoiceCallStartedRegistrants="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result p3

    if-nez p3, :cond_1

    .line 1777
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mCallWaitingRegistrants="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, " mDroppedDuringPoll: size="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p1

    .line 1780
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 1781
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, p1

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "  mDroppedDuringPoll[%d]=%s\n"

    invoke-virtual {p2, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1783
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mRingingCall="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mForegroundCall="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1785
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mBackgroundCall="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPendingMO="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mHangupPendingMO="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPhone="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mDesiredMute="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mState="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1791
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1792
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPendingCallInEcm="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mIsInEmergencyCall="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1794
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPendingCallClirMode="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mIsEcmTimerCanceled="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "GsmCdmaCallTracker"

    const-string v1, "GsmCdmaCallTracker finalized"

    .line 224
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1393
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1395
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1396
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxConnectionsPerCall()I
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 1287
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1757
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1441
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "GsmCdmaCallTracker"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_16

    const/4 v5, 0x2

    if-eq v0, v5, :cond_15

    const/4 v6, 0x3

    if-eq v0, v6, :cond_15

    const/4 v7, 0x4

    if-eq v0, v7, :cond_14

    const/4 v8, 0x5

    if-eq v0, v8, :cond_b

    const/16 v4, 0x14

    const-string v5, " not handled by phone type "

    const-string/jumbo v6, "unexpected event "

    if-eq v0, v4, :cond_8

    packed-switch v0, :pswitch_data_0

    .line 1650
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1651
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1613
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1614
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1615
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_17

    .line 1617
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    .line 1618
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    return-void

    .line 1621
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1622
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1600
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1601
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1602
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_17

    .line 1603
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    const-string p1, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    .line 1604
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1607
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1608
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1583
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1585
    iget-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz p1, :cond_2

    .line 1586
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isEmergencyCall()Z

    move-result v4

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1587
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v5

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1588
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->hasKnownUserIntentEmergency()Z

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallClirMode:I

    .line 1589
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v8

    .line 1586
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    .line 1590
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 1592
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    return-void

    .line 1594
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1595
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1459
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1460
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1461
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 1464
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1466
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->onConferenceMergeFailed()V

    goto :goto_0

    .line 1579
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioNotAvailable()V

    return-void

    .line 1575
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleRadioAvailable()V

    return-void

    .line 1474
    :cond_4
    :goto_0
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1475
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1476
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 1477
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getFailedService(I)Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 1479
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    return-void

    .line 1481
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    goto/16 :goto_4

    .line 1485
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1486
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1627
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1628
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1629
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_9

    .line 1630
    new-instance p1, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;-><init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V

    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->m3WayCallFlashDelay:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1640
    :cond_9
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const-string p1, "exception happened on Blank Flash for 3-way call"

    .line 1641
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1644
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 1645
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1496
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    .line 1498
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const v8, 0xffff

    const/16 v9, 0x10

    if-eqz v0, :cond_e

    .line 1499
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_d

    .line 1503
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 1504
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$3;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v4, :cond_c

    if-eq v0, v5, :cond_c

    if-eq v0, v6, :cond_c

    if-eq v0, v7, :cond_c

    goto :goto_1

    .line 1516
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    move v9, v8

    goto :goto_1

    :cond_d
    const-string p1, "Exception during getLastCallFailCause, assuming normal disconnect"

    .line 1525
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1530
    :cond_e
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/LastCallFailCause;

    .line 1531
    iget v0, p1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 1532
    iget-object v2, p1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    move v9, v0

    :goto_1
    const/16 p1, 0x22

    if-eq v9, p1, :cond_f

    const/16 p1, 0x29

    if-eq v9, p1, :cond_f

    const/16 p1, 0x2a

    if-eq v9, p1, :cond_f

    const/16 p1, 0x2c

    if-eq v9, p1, :cond_f

    const/16 p1, 0x31

    if-eq v9, p1, :cond_f

    const/16 p1, 0x3a

    if-eq v9, p1, :cond_f

    if-ne v9, v8, :cond_12

    .line 1543
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_11

    .line 1546
    instance-of v3, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_10

    .line 1547
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_2

    .line 1548
    :cond_10
    instance-of v3, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_11

    .line 1549
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    :cond_11
    :goto_2
    const p1, 0xc3ba

    .line 1552
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1553
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 1552
    invoke-static {p1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1556
    :cond_12
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_3
    if-ge v1, p1, :cond_13

    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1559
    invoke-virtual {v0, v9, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->onRemoteDisconnect(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1562
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1564
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1565
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;)V

    .line 1566
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 1455
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->operationComplete()V

    return-void

    .line 1571
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsWhenSafe()V

    return-void

    :cond_16
    const-string v0, "Event EVENT_POLL_CALLS_RESULT Received"

    .line 1443
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_17

    .line 1448
    iput-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mNeedsPoll:Z

    .line 1449
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1450
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    :cond_17
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 803
    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 804
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 805
    :cond_0
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 817
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 824
    iget-object v3, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 829
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 830
    :goto_1
    iget-object v15, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    array-length v15, v15

    if-ge v8, v15, :cond_1c

    .line 831
    iget-object v15, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v15, v15, v8

    if-ge v10, v4, :cond_1

    .line 836
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lcom/android/internal/telephony/DriverCall;

    .line 838
    iget v6, v7, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v5, v8, 0x1

    if-ne v6, v5, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-nez v15, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    const/4 v9, 0x0

    :cond_3
    if-nez v15, :cond_f

    if-eqz v7, :cond_f

    .line 855
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 860
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    aput-object v6, v5, v8

    .line 861
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    iput v8, v5, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    .line 862
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    const/4 v5, 0x0

    .line 863
    iput-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 866
    iget-boolean v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 867
    iput-boolean v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 870
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v0, :cond_4

    .line 871
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :try_start_1
    const-string v0, "poll: hangupPendingMO, hangup conn "

    .line 875
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 877
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    const-string v0, "GsmCdmaCallTracker"

    const-string/jumbo v2, "unexpected error on hangup"

    .line 879
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 884
    monitor-exit p0

    return-void

    :cond_5
    move-object/from16 v18, v0

    goto/16 :goto_b

    .line 888
    :cond_6
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pendingMo="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", dc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 891
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v11, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v6, v11, v7, v1, v8}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v6, v5, v8

    .line 893
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 896
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v8

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/GsmCdmaConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 899
    iget-object v6, v5, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v11, :cond_7

    iget-object v6, v5, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    sget-object v11, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v11, :cond_7

    iget-object v6, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v11, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v6, v11, :cond_7

    .line 902
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedInOrOut()V

    goto :goto_3

    .line 904
    :cond_7
    iget-object v6, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v11, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v6, v11, :cond_8

    iget-object v6, v7, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v7, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v6, v7, :cond_9

    .line 906
    :cond_8
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->releaseWakeLock()V

    .line 908
    :cond_9
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaConnection;->onConnectedConnectionMigrated()V

    .line 911
    :goto_3
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 914
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 915
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 916
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Connection;

    const-string v11, "GsmCdmaCallTracker"

    .line 917
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const-string v0, "HO Conn state is "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, v7, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    iget-object v11, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    if-ne v0, v11, :cond_a

    const-string v0, "GsmCdmaCallTracker"

    .line 919
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "Removing HO conn "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    :cond_a
    move-object/from16 v0, v18

    goto :goto_4

    :cond_b
    move-object/from16 v18, v0

    .line 926
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v5, v5, v8

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_b

    :cond_c
    move-object/from16 v18, v0

    .line 929
    invoke-direct {v1, v7, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-nez v0, :cond_e

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 933
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v5, v5, v8

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v0

    goto :goto_5

    .line 935
    :cond_d
    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v5, v5, v8

    move-object v12, v0

    move-object v13, v5

    :goto_5
    const/4 v14, 0x1

    goto/16 :goto_b

    :cond_e
    :goto_6
    move-object v12, v0

    goto/16 :goto_b

    :cond_f
    move-object/from16 v18, v0

    if-eqz v15, :cond_14

    if-nez v7, :cond_14

    .line 942
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 945
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 951
    :cond_10
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v0, :cond_11

    .line 953
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adding fgCall cn "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to droppedDuringPoll"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 954
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v6, v6, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 955
    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 957
    :cond_11
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v0, :cond_12

    .line 961
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adding rgCall cn "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to droppedDuringPoll"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 962
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v6, v6, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 963
    iget-object v7, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 967
    :cond_12
    iget-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 968
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    .line 971
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 975
    :goto_9
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v5, 0x0

    aput-object v5, v0, v8

    goto/16 :goto_d

    :cond_14
    if-eqz v15, :cond_15

    if-eqz v7, :cond_15

    .line 976
    invoke-virtual {v15, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 980
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    new-instance v5, Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {v5, v6, v7, v1, v8}, Lcom/android/internal/telephony/GsmCdmaConnection;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V

    aput-object v5, v0, v8

    .line 983
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v5, :cond_1a

    .line 984
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v0, v0, v8

    goto/16 :goto_6

    :cond_15
    if-eqz v15, :cond_1b

    if-eqz v7, :cond_1b

    .line 989
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v0

    iget-boolean v5, v7, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eq v0, v5, :cond_18

    .line 990
    iget-boolean v0, v7, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    const/4 v5, 0x1

    if-ne v0, v5, :cond_17

    .line 992
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    invoke-direct {v1, v7, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v14, 0x1

    goto :goto_a

    :cond_16
    move-object v15, v13

    .line 999
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    move-object v12, v0

    move-object v13, v15

    goto :goto_d

    :cond_17
    const-string v0, "GsmCdmaCallTracker"

    const-string v5, "Error in RIL, Phantom call appeared "

    .line 1005
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1009
    :cond_18
    invoke-virtual {v15, v7}, Lcom/android/internal/telephony/GsmCdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    if-nez v11, :cond_1a

    if-eqz v0, :cond_19

    goto :goto_b

    :cond_19
    const/4 v0, 0x0

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v0, 0x1

    :goto_c
    move v11, v0

    :cond_1b
    :goto_d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v18

    goto/16 :goto_1

    .line 1035
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz v9, :cond_1d

    .line 1036
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 1042
    :cond_1d
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_1f

    const-string v0, "GsmCdmaCallTracker"

    .line 1043
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Pending MO dropped before poll fg state:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1044
    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1043
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 1047
    iput-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    const/4 v0, 0x0

    .line 1048
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHangupPendingMO:Z

    .line 1050
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1051
    iget-boolean v4, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    if-eqz v4, :cond_1e

    .line 1052
    iput-boolean v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingCallInEcm:Z

    .line 1054
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    goto :goto_e

    :cond_1f
    const/4 v0, 0x0

    const/4 v5, 0x0

    :cond_20
    :goto_e
    if-eqz v12, :cond_21

    .line 1059
    iget-object v4, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1065
    :cond_21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    iget-object v6, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v7, v0

    :goto_f
    if-ltz v6, :cond_27

    .line 1067
    iget-object v8, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1071
    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_23

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaConnection;->getConnectTime()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v9, v15, v17

    if-nez v9, :cond_23

    .line 1074
    iget v9, v8, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-ne v9, v10, :cond_22

    const/16 v9, 0x10

    goto :goto_10

    :cond_22
    const/4 v9, 0x1

    .line 1081
    :goto_10
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "missed/rejected call, conn.cause="

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v8, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    const-string v10, "setting cause to "

    .line 1082
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1084
    iget-object v10, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1085
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v9

    or-int/2addr v7, v9

    .line 1087
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1088
    :cond_23
    iget v9, v8, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    if-eq v9, v10, :cond_25

    iget v9, v8, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_24

    goto :goto_11

    :cond_24
    move v9, v7

    move v7, v0

    goto :goto_13

    .line 1090
    :cond_25
    :goto_11
    iget-object v9, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1091
    iget v9, v8, Lcom/android/internal/telephony/GsmCdmaConnection;->mCause:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/GsmCdmaConnection;->onDisconnect(I)Z

    move-result v9

    or-int/2addr v7, v9

    .line 1093
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    move v9, v7

    const/4 v7, 0x1

    .line 1096
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v10

    if-nez v10, :cond_26

    if-eqz v7, :cond_26

    if-eqz v14, :cond_26

    if-ne v8, v13, :cond_26

    move v14, v0

    move-object v13, v5

    :cond_26
    add-int/lit8 v6, v6, -0x1

    move v7, v9

    goto/16 :goto_f

    .line 1102
    :cond_27
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 1103
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v5, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallList(ILjava/util/ArrayList;)V

    .line 1107
    :cond_28
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1108
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 1110
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handlePollCalls - disconnect hoConn= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " hoConn.State= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1110
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    .line 1113
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    goto :goto_15

    :cond_29
    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 1115
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/Connection;->onDisconnect(I)Z

    .line 1118
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    .line 1122
    :cond_2a
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 1123
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x5

    .line 1124
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1123
    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    :cond_2b
    if-nez v12, :cond_2c

    if-nez v11, :cond_2c

    if-eqz v7, :cond_2d

    .line 1137
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->internalClearDisconnected()V

    .line 1141
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    if-eqz v14, :cond_2f

    .line 1144
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1145
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    const-string v4, "Notify unknown for "

    .line 1146
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1147
    iget-object v4, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_16

    .line 1150
    :cond_2e
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    :cond_2f
    if-nez v11, :cond_30

    if-nez v12, :cond_30

    if-eqz v7, :cond_31

    .line 1155
    :cond_30
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    .line 1156
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updateMetrics([Lcom/android/internal/telephony/GsmCdmaConnection;)V

    :cond_31
    if-lez v3, :cond_32

    .line 1160
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_32

    .line 1161
    iget-object v0, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1163
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->callEndCleanupHandOverCallIfAny()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1167
    :cond_32
    monitor-exit p0

    return-void

    .line 812
    :cond_33
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->pollCallsAfterDelay()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 813
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1294
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v0, :cond_0

    const-string v0, "(ringing) hangup waiting or background"

    .line 1299
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    goto :goto_0

    .line 1302
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v1, :cond_3

    .line 1303
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(foregnd) hangup dialing or alerting..."

    .line 1305
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_0

    .line 1308
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1309
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "hangup all conns in active/background call, without affecting ringing call"

    .line 1311
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_0

    .line 1314
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1315
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 1317
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne p1, v1, :cond_5

    .line 1318
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "hangup all conns in background call"

    .line 1320
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_0

    .line 1324
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    .line 1331
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaCall;->onHangupLocal()V

    .line 1332
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void

    .line 1327
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GsmCdmaCall "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_6
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "no connections in call"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1215
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-ne p1, v0, :cond_1

    .line 1222
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1223
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleEcmTimer(I)V

    :cond_0
    const-string v0, "hangup conn with callId \'-1\' as there is no DIAL response yet "

    .line 1227
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_0

    .line 1229
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1230
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-ne v0, v1, :cond_2

    .line 1231
    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 1243
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onLocalDisconnect()V

    .line 1245
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneState()V

    .line 1246
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void

    .line 1250
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1255
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaCallTracker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->onHangupLocal()V

    return-void

    .line 1216
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GsmCdmaConnection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangupAllConnections(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .locals 6

    .line 1378
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1380
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1381
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_0

    .line 1382
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1383
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 1387
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hangupConnectionByIndex caught "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaCallTracker"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1363
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1365
    iget-object v2, p1, Lcom/android/internal/telephony/GsmCdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    .line 1366
    iget-boolean v3, v2, Lcom/android/internal/telephony/GsmCdmaConnection;->mDisconnected:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1367
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V

    .line 1368
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1373
    :cond_1
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string p2, "no GsmCdma index found"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hangupForegroundResumeBackground()V
    .locals 2

    const-string v0, "hangupForegroundResumeBackground"

    .line 1357
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    return-void
.end method

.method public hangupWaitingOrBackground()V
    .locals 2

    const-string v0, "hangupWaitingOrBackground"

    .line 1351
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->logHangupEvent(Lcom/android/internal/telephony/GsmCdmaCall;)V

    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    return-void
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .line 1735
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method public isInOtaspCall()Z
    .locals 4

    .line 1743
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaConnection;->isOtaspCall()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 1744
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/-$$Lambda$GsmCdmaCallTracker$wkXwCyVPcnlqyXzSJdP2cQlpZxg;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$GsmCdmaCallTracker$wkXwCyVPcnlqyXzSJdP2cQlpZxg;

    .line 1745
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1747
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaCallTracker"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 257
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 247
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 232
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 235
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object p2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, p2, :cond_0

    .line 236
    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    return-void

    .line 595
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1264
    iget-object v0, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mOwner:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    if-ne v0, p0, :cond_0

    .line 1269
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    const/16 v2, 0xc

    .line 1270
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1269
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1274
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaCallTracker WARN: separate() on absent connection "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaCallTracker"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1265
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GsmCdmaConnection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to GsmCdmaCallTracker "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsInEmergencyCall()V
    .locals 3

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mIsInEmergencyCall:Z

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setInternalDataEnabled(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallStateChange(Z)V

    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1282
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    .line 1283
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mDesiredMute:Z

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    return-void
.end method

.method public switchWaitingOrHoldingAndActive()V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2

    .line 612
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isPhoneTypeGsm()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 614
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 613
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 617
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->flashAndSetGenericTrue()V

    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 610
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public updatePhoneType()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType(Z)V

    return-void
.end method
