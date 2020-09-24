.class public Lcom/android/internal/telephony/imsphone/ImsPhone;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED:I = 0x39

.field private static final EVENT_GET_CALL_BARRING_DONE:I = 0x34

.field private static final EVENT_GET_CALL_WAITING_DONE:I = 0x36

.field private static final EVENT_GET_CLIR_DONE:I = 0x38

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3a

.field private static final EVENT_SET_CALL_BARRING_DONE:I = 0x33

.field private static final EVENT_SET_CALL_WAITING_DONE:I = 0x35

.field private static final EVENT_SET_CLIR_DONE:I = 0x37

.field private static final EVENT_VOICE_CALL_ENDED:I = 0x3b

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhone"

.field static final RESTART_ECM_TIMER:I = 0x0

.field private static final VDBG:Z = false


# instance fields
.field mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCurrentSubscriberUris:[Landroid/net/Uri;

.field mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

.field private mImsEcbmStateListener:Lcom/android/ims/c;

.field private mImsRegistered:Z

.field private mLastDialString:Ljava/lang/String;

.field private mPendingMMIs:Ljava/util/ArrayList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mRoaming:Z

.field private mRttReceiver:Landroid/content/BroadcastReceiver;

.field private mSS:Landroid/telephony/ServiceState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mSilentRedialRegistrants:Landroid/os/RegistrantList;

.field private mSsnRegistrants:Landroid/os/RegistrantList;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;Z)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "ImsPhone"

    .line 265
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 196
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 198
    new-instance p2, Landroid/telephony/ServiceState;

    invoke-direct {p2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    .line 210
    new-instance p2, Landroid/os/RegistrantList;

    invoke-direct {p2}, Landroid/os/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    const/4 p2, 0x0

    .line 212
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    .line 214
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    .line 217
    new-instance p4, Landroid/os/RegistrantList;

    invoke-direct {p4}, Landroid/os/RegistrantList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 220
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhone$1;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 1620
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhone$2;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/c;

    .line 1799
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhone$3;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2008
    new-instance p4, Lcom/android/internal/telephony/imsphone/ImsPhone$4;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRttReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 273
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p3

    const-class p4, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    .line 274
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p3

    .line 275
    invoke-virtual {p3, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsExternalCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    .line 276
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p3

    const-class p4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p3

    .line 277
    invoke-virtual {p3, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 278
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V

    .line 279
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    iget-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p3, p4}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->setCallPuller(Lcom/android/internal/telephony/imsphone/ImsPullCall;)V

    .line 281
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p3}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 283
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    const-string p3, "power"

    .line 285
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p3, 0x1

    .line 286
    invoke-virtual {p1, p3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 289
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 290
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge p2, v0, :cond_0

    aget v1, p1, p2

    .line 292
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const/16 v3, 0x39

    .line 293
    invoke-virtual {v2, v1, p0, v3, p4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 302
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    const/16 p2, 0x3a

    invoke-virtual {p1, p0, p2, p4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 309
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "org.codeaurora.intent.action.send.rtt.text"

    .line 310
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "org.codeaurora.intent.action.send.rtt.operation"

    .line 311
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEnterEmergencyCallbackMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/imsphone/ImsPhone;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->checkIfModifyRequestOrResponse(I)V

    return-void
.end method

.method private checkIfModifyRequestOrResponse(I)V
    .locals 3

    .line 2102
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttSupported()Z

    move-result v0

    const-string v1, "ImsPhone"

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 2103
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 2108
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "RTT: checkIfModifyRequestOrResponse data =  "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 2125
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2126
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 2127
    invoke-static {v1, v2}, Lcom/android/internal/telephony/util/QtiImsUtils;->shallShowRttVisibilitySetting(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2128
    invoke-virtual {p1}, Lcom/android/ims/a;->m()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2129
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->packRttModifyRequestToProfile(I)V

    :cond_3
    :goto_0
    return-void

    .line 2116
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->packRttModifyRequestToProfile(I)V

    return-void

    .line 2122
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendRttModifyResponse(Z)V

    return-void

    .line 2119
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendRttModifyResponse(Z)V

    return-void

    .line 2112
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->packRttModifyRequestToProfile(I)V

    return-void

    :cond_8
    :goto_1
    const-string p1, "RTT: Request or Response not allowed"

    .line 2104
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 735
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v2, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 738
    iget-object v2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v3, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 744
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 748
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return-object v2

    .line 754
    :cond_2
    instance-of v1, p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    if-nez v1, :cond_3

    .line 755
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p2

    goto :goto_2

    .line 757
    :cond_3
    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p2

    .line 759
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getClirMode()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 761
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 762
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1

    .line 766
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {v0, p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object p3

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dialInternal: dialing w/ mmi \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    if-nez p3, :cond_5

    .line 772
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1

    .line 773
    :cond_5
    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 774
    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getCLIRMode()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 775
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1

    .line 776
    :cond_6
    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSupportedOverImsPhone()Z

    move-result p1

    const-string p2, "cs_fallback"

    if-eqz p1, :cond_8

    .line 785
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 789
    :try_start_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 791
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    :goto_3
    return-object v2

    :cond_7
    const-string p2, "dialInternal: fallback to GSM required."

    .line 792
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 795
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 796
    throw p1

    :cond_8
    const-string p1, "dialInternal: USSD not supported by IMS; fallback to CS."

    .line 782
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 783
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getActionFromCFAction(I)I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1

    const-string v0, "AO"

    .line 1095
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string v0, "OI"

    .line 1097
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const-string v0, "OX"

    .line 1099
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const-string v0, "AI"

    .line 1101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const-string v0, "IR"

    .line 1103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    const-string v0, "AB"

    .line 1105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x7

    return p1

    :cond_5
    const-string v0, "AG"

    .line 1107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x8

    return p1

    :cond_6
    const-string v0, "AC"

    .line 1109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x9

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method private getCFReasonFromCondition(I)I
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 3

    .line 1409
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1410
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1411
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1412
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getToA()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1413
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1414
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getTimeSeconds()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1420
    iget v1, p1, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 1421
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallForwardInfo;->getServiceClass()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1423
    iput p1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    :goto_0
    return-object v0
.end method

.method private getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;
    .locals 2

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCommandException code= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorString= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1214
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    const/16 v1, 0xf1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x321

    if-eq p1, v1, :cond_1

    const/16 v1, 0x322

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1239
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL_VIDEO:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1236
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1233
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1230
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1221
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1224
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1218
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    .line 1227
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 1245
    :goto_0
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {p1, v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x335
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;
    .locals 1

    .line 1251
    instance-of v0, p1, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_0

    .line 1252
    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "getCommandException generic failure"

    .line 1254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1255
    new-instance p1, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    :goto_0
    return-object p1
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getCurrentRoaming()Z
    .locals 2

    .line 2003
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 2004
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2005
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    const-string v2, "ImsPhone"

    if-eq p1, v1, :cond_1

    const-string p1, "MmiCode 0: rejectCall"

    .line 486
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 488
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "reject failed"

    .line 490
    invoke-static {v2, v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v1, :cond_2

    const-string p1, "MmiCode 0: hangupWaitingOrBackground"

    .line 494
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 496
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "hangup failed"

    .line 498
    invoke-static {v2, v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3

    .line 575
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    const-string p1, "separate not supported"

    .line 582
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 583
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 586
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v2, :cond_2

    const-string p1, "MmiCode 2: accept ringing call"

    .line 587
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 588
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    goto :goto_0

    :cond_2
    const-string p1, "MmiCode 2: holdActiveCall"

    .line 590
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 591
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ImsPhone"

    const-string v2, "switch failed"

    .line 594
    invoke-static {v0, v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    :goto_0
    return v1
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3

    .line 545
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    :try_start_0
    const-string p1, "not support 1X SEND"

    .line 555
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 556
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 558
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v2, :cond_2

    const-string p1, "MmiCode 1: hangup foreground"

    .line 559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 560
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    goto :goto_0

    :cond_2
    const-string p1, "MmiCode 1: holdActiveCallForWaitingCall"

    .line 562
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCallForWaitingCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ImsPhone"

    const-string v2, "hangup failed"

    .line 567
    invoke-static {v0, v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    :goto_0
    return v1
.end method

.method private handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .locals 3

    const/4 v0, 0x1

    .line 1467
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1470
    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result p1

    if-ne p1, v0, :cond_0

    aput v0, v1, v2

    :cond_0
    return-object v1
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 1

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "MmiCode 5: CCBS not supported!"

    .line 631
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 633
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return v0
.end method

.method private handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I
    .locals 3

    const/4 v0, 0x2

    .line 1478
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1481
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    aput v2, v0, v1

    aput v2, v0, v2

    :cond_0
    return-object v0
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 1

    .line 615
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "MmiCode 4: not support explicit call transfer"

    .line 621
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 622
    sget-object p1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return v0
.end method

.method private handleEnterEmergencyCallbackMode()V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1673
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1676
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setIsInEcm(Z)V

    .line 1678
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    const-wide/32 v0, 0x493e0

    const-string v2, "ro.cdma.ecmexittimer"

    .line 1682
    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1684
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1686
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 1

    .line 604
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "MmiCode 3: merge calls"

    .line 608
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    return v0
.end method

.method private isCfEnable(I)Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2

    .line 2212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3

    const-string v0, "onNetworkInitiatedUssd"

    .line 1262
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private packRttModifyRequestToProfile(I)V
    .locals 4

    .line 2139
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    const-string v1, "ImsPhone"

    if-nez v0, :cond_0

    const-string p1, "RTT: cannot send rtt modify request"

    .line 2140
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2144
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 2145
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    iget v3, v0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {v2, v3, v0}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 2147
    iget-object v0, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    const-string p1, "RTT: packRttModifyRequestToProfile"

    .line 2149
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method private processWfcDisconnectForNotification(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1863
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const-string v3, "carrier_config"

    .line 1864
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-nez v2, :cond_0

    const-string v1, "processDisconnectReason: CarrierConfigManager is not ready"

    .line 1866
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1869
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1871
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processDisconnectReason: no config for subId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v3, "wfc_operator_error_codes_string_array"

    .line 1875
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 1882
    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 1883
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1885
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 1886
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    .line 1889
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_a

    .line 1890
    aget-object v7, v2, v6

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1891
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 1892
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid carrier config: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1897
    :cond_3
    iget-object v8, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1905
    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 1906
    aget-object v9, v7, v5

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1907
    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1908
    iget-object v9, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v8, :cond_4

    .line 1909
    iget-object v9, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1910
    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1916
    :cond_4
    iget-object v8, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const v9, 0x104074d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x1

    .line 1919
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_8

    .line 1920
    array-length v10, v3

    if-ge v7, v10, :cond_8

    array-length v10, v4

    if-lt v7, v10, :cond_5

    goto :goto_1

    .line 1926
    :cond_5
    iget-object v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1927
    iget-object v6, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1928
    aget-object v10, v3, v7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1929
    aget-object v2, v3, v7

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v10, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    aput-object v10, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1933
    :cond_6
    aget-object v3, v4, v7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1934
    aget-object v3, v4, v7

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1941
    :cond_7
    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "alertTitle"

    .line 1942
    invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "alertMessage"

    .line 1943
    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notificationMessage"

    .line 1944
    invoke-virtual {v10, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1945
    iget-object v9, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1923
    :cond_8
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid index: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    :cond_9
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private sendEmergencyCallbackModeChange()V
    .locals 3

    .line 1647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v1

    const-string v2, "phoneinECMState"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1649
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const/4 v1, -0x1

    .line 1650
    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendEmergencyCallbackModeChange: isInEcm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "sendErrorResponse"

    .line 1194
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1196
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1198
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1494
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 1496
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1497
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V
    .locals 1

    .line 507
    new-instance v0, Landroid/telephony/UssdResponse;

    invoke-direct {v0, p1, p2}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 508
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "USSD_RESPONSE"

    .line 509
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 510
    invoke-virtual {p4, p3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private updateDataServiceState()V
    .locals 4

    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 1503
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1505
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    const/4 v1, 0x2

    .line 1507
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForDomain(I)Ljava/util/List;

    move-result-object v1

    .line 1508
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 1509
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    goto :goto_0

    .line 1512
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDataServiceState: defSs = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " imsSs = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateRoamingState(ZZ)V
    .locals 2

    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 1987
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateRoamingState now: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1988
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    if-eqz p2, :cond_0

    .line 1990
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-static {p2, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p2

    .line 1991
    invoke-virtual {p2, p1}, Lcom/android/ims/e;->c(Z)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/android/ims/e;->a(IZ)V

    return-void

    :cond_0
    const-string p1, "ImsPhone"

    const-string/jumbo p2, "updateRoamingState service state is OUT_OF_SERVICE"

    .line 1993
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1996
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "updateRoamingState postponed: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1997
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 p2, 0x3b

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    return-void
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addParticipant(Ljava/lang/String;)V

    return-void
.end method

.method public callEndCleanupHandOverCallIfAny()V
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->callEndCleanupHandOverCallIfAny()V

    return-void
.end method

.method public canConference()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForDialIssues()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public cancelUSSD(Landroid/os/Message;)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cancelUSSD(Landroid/os/Message;)V

    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    return-void
.end method

.method public conference()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    return-void
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 727
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public dispose()V
    .locals 5

    const-string v0, "dispose"

    .line 318
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->tearDown()V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dispose()V

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 330
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    .line 331
    invoke-virtual {v4, v3, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRttReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "ImsPhone extends:"

    .line 2184
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2186
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string p1, "ImsPhone:"

    .line 2188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mDefaultPhone = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2190
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mPendingMMIs = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mPostDialHandler = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2192
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mSS = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2193
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mWakeLock = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mIsPhoneInEcmState = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2195
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mEcmExitRespRegistrant = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2196
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mSilentRedialRegistrants = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mImsRegistered = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2198
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mRoaming = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2199
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mSsnRegistrants = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .line 1656
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const-string v0, "exitEmergencyCallbackMode()"

    .line 1659
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1664
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/b;

    move-result-object v0

    .line 1665
    invoke-virtual {v0}, Lcom/android/ims/b;->a()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1667
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->explicitCallTransfer()V

    return-void
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getCallBarring(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x1

    .line 1117
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;I)V

    return-void
.end method

.method public getCallBarring(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1

    const-string v0, ""

    .line 1121
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    return-void
.end method

.method public getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1

    .line 1127
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getCallBarring facility="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", serviceClass = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    const/16 p2, 0x34

    .line 1129
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p4}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1136
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 3

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCallForwardingOption reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceclass ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "requesting call forwarding query."

    .line 991
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    .line 993
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 997
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p2, v0}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1000
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 1003
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    .line 981
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "getCallWaiting"

    .line 1055
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    const/16 v0, 0x36

    .line 1057
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1060
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1061
    invoke-interface {v1, v0}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1063
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSubscriberUris()[Landroid/net/Uri;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCurrentSubscriberUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 1781
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExternalCallTracker:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandoverConnection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1342
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1344
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1346
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1347
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsEcbmStateListener()Lcom/android/ims/c;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/c;

    return-object v0
.end method

.method public getImsRegistrationTech()I
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2

    const-string v0, "getCLIR"

    .line 949
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    const/16 v0, 0x38

    .line 951
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 954
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 955
    invoke-interface {v1, v0}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 957
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 1401
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubId()I
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVtDataUsage(Z)Landroid/net/NetworkStats;
    .locals 1

    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getVtDataUsage(Z)Landroid/net/NetworkStats;

    move-result-object p1

    return-object p1
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1977
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1435
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 1436
    array-length v1, p1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1439
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    .line 1440
    array-length v5, p1

    if-nez v5, :cond_1

    goto :goto_5

    .line 1447
    :cond_1
    array-length v0, p1

    move v5, v3

    :goto_1
    if-ge v5, v0, :cond_7

    .line 1448
    aget-object v6, p1, v5

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v6

    if-nez v6, :cond_5

    .line 1450
    aget-object v6, p1, v5

    iget v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    const/16 v7, 0x50

    if-ne v6, v7, :cond_3

    .line 1452
    aget-object v6, p1, v5

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVideoCallForwardingPreference(Z)V

    .line 1453
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    goto :goto_4

    :cond_3
    if-eqz v2, :cond_5

    .line 1455
    aget-object v6, p1, v5

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    aget-object v7, p1, v5

    .line 1456
    invoke-virtual {v7}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 1455
    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1459
    :cond_5
    :goto_4
    aget-object v6, p1, v5

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInfo(Landroid/telephony/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    .line 1444
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    :cond_7
    return-object v1
.end method

.method public handleExitEmergencyCallbackMode()V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleExitEmergencyCallbackMode: mIsPhoneInEcmState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1696
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setIsInEcm(Z)V

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_1

    .line 1703
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1707
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1708
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1712
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    .line 1713
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    return-void
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 647
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 651
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 656
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 676
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 673
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 670
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 667
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 663
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 659
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1518
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1521
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_a

    const/16 v2, 0xd

    if-eq v1, v2, :cond_8

    packed-switch v1, :pswitch_data_0

    .line 1612
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "Voice call ended. Handle pending updateRoamingState."

    .line 1602
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1603
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1605
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCurrentRoaming()Z

    move-result p1

    .line 1606
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    if-eq v0, p1, :cond_3

    .line 1607
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateRoamingState(ZZ)V

    return-void

    .line 1583
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1584
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    .line 1588
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1589
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_3

    .line 1591
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Roaming state changed - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1597
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v3, v5

    .line 1598
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateRoamingState(ZZ)V

    :cond_3
    :goto_0
    return-void

    :pswitch_2
    const-string p1, "EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED"

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1578
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    return-void

    .line 1558
    :pswitch_3
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_4

    const-string v1, "queryClir"

    .line 1561
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1563
    :cond_4
    iget-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1567
    :pswitch_4
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 1568
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->saveClirSetting(I)V

    goto :goto_2

    .line 1547
    :pswitch_5
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 1548
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x34

    if-ne v1, v2, :cond_5

    .line 1549
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCbQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v4

    goto :goto_1

    .line 1550
    :cond_5
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x36

    if-ne p1, v1, :cond_6

    .line 1551
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCwQueryResult([Landroid/telephony/ims/ImsSsInfo;)[I

    move-result-object v4

    .line 1554
    :cond_6
    :goto_1
    iget-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1573
    :cond_7
    :goto_2
    :pswitch_6
    iget-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1538
    :cond_8
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_9

    .line 1539
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Landroid/telephony/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v4

    .line 1541
    :cond_9
    iget-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1523
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1524
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    .line 1525
    iget-boolean v6, v2, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mIsCfu:Z

    if-eqz v6, :cond_e

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_e

    .line 1526
    iget v6, v2, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mServiceClass:I

    const/16 v7, 0x50

    if-ne v6, v7, :cond_c

    .line 1527
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v5, :cond_b

    move v3, v5

    :cond_b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVideoCallForwardingPreference(Z)V

    .line 1528
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyCallForwardingIndicator()V

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_e

    .line 1529
    iget v6, v2, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mServiceClass:I

    if-ne v6, v5, :cond_e

    .line 1530
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v5, :cond_d

    move v3, v5

    :cond_d
    iget-object p1, v2, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    .line 1533
    :cond_e
    :goto_3
    iget-object p1, v2, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1734
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1724
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1725
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    const-wide/32 v0, 0x493e0

    const-string p1, "ro.cdma.ecmexittimer"

    .line 1728
    invoke-static {p1, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1730
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1731
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    return-void
.end method

.method public handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const-string v0, "Could not execute USSD "

    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "ImsPhone"

    if-lez v1, :cond_0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleUssdRequest: queue full: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logi(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    return v2

    .line 525
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 535
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception v1

    .line 527
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cs_fallback"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 530
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    :goto_0
    return v2

    .line 528
    :cond_1
    throw v1
.end method

.method public holdActiveCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCall()V

    return-void
.end method

.method initiateSilentRedial()V
    .locals 3

    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastDialString:Ljava/lang/String;

    .line 1362
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public bridge synthetic isDataAllowed(I)Z
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isDataAllowed(I)Z

    move-result p1

    return p1
.end method

.method public isImsAvailable()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isImsServiceReady()Z

    move-result v0

    return v0
.end method

.method public isImsCapabilityAvailable(II)Z
    .locals 1

    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isImsCapabilityAvailable(II)Z

    move-result p1

    return p1
.end method

.method public isImsRegistered()Z
    .locals 1

    .line 1786
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    return v0
.end method

.method isInCall()Z
    .locals 3

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 690
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
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

.method public isInEcm()Z
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v0

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isRttOn()Z
    .locals 3

    .line 2174
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/util/QtiImsUtils;->isRttOn(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ImsPhone"

    if-nez v0, :cond_0

    const-string v0, "RTT: RTT is off"

    .line 2175
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 2178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RTT: Rtt on = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/telephony/util/QtiImsUtils;->isRttOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public isRttSupported()Z
    .locals 4

    .line 2154
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/QtiImsUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    const-string v1, "ImsPhone"

    if-nez v0, :cond_0

    const-string v0, "RTT: RTT is not supported"

    .line 2155
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 2158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RTT: rtt supported = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 2159
    invoke-static {v2, v3}, Lcom/android/internal/telephony/util/QtiImsUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Rtt mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 2160
    invoke-static {v2}, Lcom/android/internal/telephony/util/QtiImsUtils;->getRttOperatingMode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2158
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public isRttVtCallAllowed(Lcom/android/ims/a;)Z
    .locals 1

    .line 2169
    invoke-virtual {p1}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    .line 2170
    invoke-static {p1, v0}, Lcom/android/internal/telephony/util/QtiImsUtils;->isRttSupportedOnVtCalls(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isUserDataEnabled()Z
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isUserDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isUtEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1957
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    move-result v0

    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    return v0
.end method

.method public isVolteEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1761
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiCallingEnabled()Z
    .locals 1

    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic migrateFrom(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->migrateFrom(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .line 1972
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public bridge synthetic notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 1

    .line 716
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyForVideoCapabilityChanged(Z)V

    return-void
.end method

.method public bridge synthetic notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public notifyIncomingRing()V
    .locals 2

    const-string v0, "notifyIncomingRing"

    .line 838
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 839
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 v1, 0xe

    .line 840
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic notifyPhoneStateChanged()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPhoneStateChanged()V

    return-void
.end method

.method public bridge synthetic notifyPreciseCallStateChanged()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    return-void
.end method

.method public bridge synthetic notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method public notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 2

    .line 638
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifySuppSvcNotification: suppSvc = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 640
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 641
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic onCallQualityChanged(Landroid/telephony/CallQuality;I)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onCallQualityChanged(Landroid/telephony/CallQuality;I)V

    return-void
.end method

.method public onFeatureCapabilityChanged()V
    .locals 1

    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsCapabilityChanged()V

    return-void
.end method

.method onIncomingUSSD(ILjava/lang/String;)V
    .locals 5

    .line 1269
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onIncomingUSSD ussdMode="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    const/4 p1, 0x0

    .line 1282
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_3

    .line 1283
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1284
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz p1, :cond_5

    if-eqz v1, :cond_4

    .line 1292
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    return-void

    .line 1294
    :cond_4
    invoke-virtual {p1, p2, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    return-void

    :cond_5
    if-nez v1, :cond_6

    if-eqz p2, :cond_6

    .line 1303
    invoke-static {p2, v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object p1

    .line 1306
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    :cond_6
    return-void
.end method

.method public onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1322
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMMIDone: mmi="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1324
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getUssdCallbackReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1326
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v1, v2, :cond_1

    const/16 v1, 0x64

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 1328
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    return-void

    :cond_2
    const-string v0, "onMMIDone: notifyRegistrants"

    .line 1331
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logv(Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onTtyModeReceived(I)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onTtyModeReceived(I)V

    return-void
.end method

.method public processDisconnectReason(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 1851
    iget v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processWfcDisconnectForNotification(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1381
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1382
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    return-void
.end method

.method public sendDtmf(C)V
    .locals 2

    .line 812
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public sendEmergencyCallStateChange(Z)V
    .locals 1

    .line 1962
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->sendEmergencyCallStateChange(Z)V

    return-void
.end method

.method public sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "sendErrorResponse"

    .line 1205
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1207
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1208
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 4

    .line 2033
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    const-string v1, "ImsPhone"

    if-nez v0, :cond_0

    const-string p1, "RTT: imsCall null"

    .line 2035
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2039
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/a;->m()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "RTT: imsCall not RTT capable"

    .line 2040
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2045
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "RTT: Text null"

    .line 2046
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2050
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttVtCallAllowed(Lcom/android/ims/a;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "RTT: VT call is not allowed"

    .line 2051
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2055
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RTT: sendRttMessage = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-virtual {v0, p1}, Lcom/android/ims/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    const-string v0, "ImsPhone"

    const-string v1, "RTT: sendRttModifyRequest"

    .line 2065
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "RTT: imsCall null"

    .line 2068
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2073
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/ims/a;->b(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2075
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "RTT: sendRttModifyRequest exception = "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 4

    .line 2085
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    const-string v1, "ImsPhone"

    if-nez v0, :cond_0

    const-string p1, "RTT: imsCall null"

    .line 2087
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2091
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttVtCallAllowed(Lcom/android/ims/a;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "RTT: Not allowed for VT"

    .line 2092
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2096
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RTT: sendRttModifyResponse = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v3, "ACCEPTED"

    goto :goto_0

    :cond_2
    const-string v3, "REJECTED"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    invoke-virtual {v0, p1}, Lcom/android/ims/a;->c(Z)V

    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4

    const-string v0, "sendUssdResponse"

    .line 1176
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1177
    invoke-static {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1180
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    return-void
.end method

.method public setBroadcastEmergencyCallStateChanges(Z)V
    .locals 1

    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setBroadcastEmergencyCallStateChanges(Z)V

    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1142
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 6

    .line 1150
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "setCallBarring facility="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lockState="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", serviceClass = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    const/16 p3, 0x33

    .line 1154
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1165
    :try_start_0
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 1167
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1170
    invoke-virtual {p0, p4, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 10
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object v1, p0

    move v0, p2

    move v6, p4

    move-object/from16 v9, p6

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setCallForwardingOption action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " serviceClass="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    .line 1028
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1029
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1031
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isVoiceUnconditionalForwarding(II)Z

    move-result v4

    move-object v5, p3

    invoke-direct {v2, p3, v4, v9, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;-><init>(Ljava/lang/String;ZLandroid/os/Message;I)V

    const/16 v4, 0xc

    .line 1034
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCfEnable(I)Z

    move-result v7

    const/4 v8, 0x0

    .line 1033
    invoke-virtual {p0, v4, v7, v8, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1037
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 1038
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getActionFromCFAction(I)I

    move-result v3

    .line 1039
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    move-result v4

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 1038
    invoke-interface/range {v2 .. v8}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1045
    invoke-virtual {p0, v9, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-eqz v9, :cond_1

    .line 1048
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 1013
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 2

    .line 1082
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCallWaiting enable="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    const/16 v0, 0x35

    .line 1084
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 1088
    invoke-interface {v1, p1, p2, v0}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1090
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1073
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "call_waiting_service_class_int"

    .line 1075
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1078
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method protected setCurrentSubscriberUris([Landroid/net/Uri;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCurrentSubscriberUris:[Landroid/net/Uri;

    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setImsRegistered(Z)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1791
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    return-void
.end method

.method public setIsInEcm(Z)V
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setIsInEcm(Z)V

    return-void
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public setMute(Z)V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    return-void
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1741
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2

    .line 963
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCLIR action= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->logd(Ljava/lang/String;)V

    const/16 v0, 0x37

    const/4 v1, 0x0

    .line 968
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 970
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 971
    invoke-interface {v1, p1, v0}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 973
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    return-void
.end method

.method public setServiceState(I)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 352
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    if-eqz v0, :cond_1

    .line 356
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 357
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsServiceStateChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 352
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0

    .line 850
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setTtyMode(I)V

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setUiTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(Lcom/android/internal/telephony/uicc/IccRecords;IZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 2

    .line 824
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x44

    if-le p1, v0, :cond_1

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDtmf called with invalid character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startDtmf(C)V

    return-void
.end method

.method public bridge synthetic startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic startOnHoldTone(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public bridge synthetic startRingbackTone()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->startRingbackTone()V

    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopDtmf()V

    return-void
.end method

.method public bridge synthetic stopNetworkScan(Landroid/os/Message;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopNetworkScan(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic stopRingbackTone()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->stopRingbackTone()V

    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use hold() and unhold() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unholdHeldCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unholdHeldCall()V

    return-void
.end method

.method public bridge synthetic unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSilentRedial(Landroid/os/Handler;)V
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2

    .line 1388
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1389
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 1390
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 0

    .line 1746
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {p1}, Landroid/os/Registrant;->clear()V

    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->updateServiceLocation()V

    return-void
.end method
