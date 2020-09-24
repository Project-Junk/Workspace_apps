.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPullCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;,
        Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ANSWER_WAITING_CALL:I = 0x1e

.field private static final EVENT_CHECK_FOR_WIFI_HANDOVER:I = 0x19

.field private static final EVENT_DATA_ENABLED_CHANGED:I = 0x17

.field private static final EVENT_DIAL_PENDINGMO:I = 0x14

.field private static final EVENT_EXIT_ECBM_BEFORE_PENDINGMO:I = 0x15

.field private static final EVENT_HANGUP_PENDINGMO:I = 0x12

.field private static final EVENT_ON_FEATURE_CAPABILITY_CHANGED:I = 0x1a

.field private static final EVENT_REDIAL_WIFI_E911_CALL:I = 0x1c

.field private static final EVENT_REDIAL_WIFI_E911_TIMEOUT:I = 0x1d

.field private static final EVENT_RESUME_NOW_FOREGROUND_CALL:I = 0x1f

.field private static final EVENT_RETRY_ON_IMS_WITHOUT_RTT:I = 0x28

.field private static final EVENT_SUPP_SERVICE_INDICATION:I = 0x1b

.field private static final EVENT_VT_DATA_USAGE_UPDATE:I = 0x16

.field private static final FORCE_VERBOSE_STATE_LOGGING:Z = false

.field private static final HANDOVER_TO_WIFI_TIMEOUT_MS:I = 0xea60

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCallTracker"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final TIMEOUT_HANGUP_PENDINGMO:I = 0x1f4

.field private static final TIMEOUT_PARTICIPANT_CONNECT_TIME_CACHE_MS:I = 0xea60

.field private static final TIMEOUT_REDIAL_WIFI_E911_MS:I = 0x2710

.field private static final VERBOSE_STATE_LOGGING:Z

.field static final VERBOSE_STATE_TAG:Ljava/lang/String; = "IPCTState"


# instance fields
.field private mAllowAddCallDuringVideoCall:Z

.field private mAllowEmergencyVideoCalls:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mAllowHoldingVideoCall:Z

.field private mAlwaysPlayRemoteHoldTone:Z

.field private mAutoRetryFailedWifiEmergencyCall:Z

.field public mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCallExpectedToResume:Lcom/android/ims/a;

.field private mCarrierConfigLoaded:Z

.field private mClirMode:I

.field private final mConfigCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

.field private mConnections:Ljava/util/ArrayList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDesiredMute:Z

.field private mDropVideoCallWhenAnsweringAudioCall:Z

.field public mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mHasAttemptedStartOfCallHandover:Z

.field private mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field private mIgnoreDataEnabledChangedForVideoCalls:Z

.field private mIgnoreResetUtCapability:Z

.field private mImsCallListener:Lcom/android/ims/a$b;

.field private final mImsCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field private mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

.field private mImsManager:Lcom/android/ims/e;

.field private final mImsManagerConnector:Lcom/android/ims/e$a;

.field private mImsReasonCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field private mImsUssdListener:Lcom/android/ims/a$b;

.field private mIsDataEnabled:Z

.field private mIsInEmergencyCall:Z

.field private mIsMonitoringConnectivity:Z

.field private mIsViLteDataMetered:Z

.field private mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

.field private mLastDialString:Ljava/lang/String;

.field private mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private final mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNotifyHandoverVideoFromLTEToWifi:Z

.field private mNotifyHandoverVideoFromWifiToLTE:Z

.field private mNotifyVtHandoverToWifiFail:Z

.field private mOnHoldToneId:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mOnHoldToneStarted:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPendingCallVideoState:I

.field private mPendingIntentExtras:Landroid/os/Bundle;

.field private mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPendingUssd:Landroid/os/Message;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mPhoneNumAndConnTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

.field private mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

.field private mShouldUpdateImsConfigOnDisconnect:Z

.field private mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field private mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mSupportDowngradeVtToAudio:Z

.field private mSupportPauseVideo:Z

.field private mSwitchingFgAndBgCalls:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSyncHold:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mTreatDowngradedVideoCallsAsVideoCalls:Z

.field private final mUnknownPeerConnTime:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mUssdSession:Lcom/android/ims/a;

.field private mUtInterface:Lcom/android/ims/ImsUtInterface;

.field private mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field private mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

.field private final mVtDataUsageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mVtDataUsageSnapshot:Landroid/net/NetworkStats;

.field private volatile mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

.field private pendingCallClirMode:I

.field private pendingCallInEcm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IPCTState"

    const/4 v1, 0x2

    .line 150
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1

    .line 533
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 152
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 158
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    .line 243
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 265
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    .line 270
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    .line 329
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 330
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 332
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "RG"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 334
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "FG"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 337
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "BG"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 340
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    const-string v3, "HO"

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 345
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    .line 346
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    .line 347
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    .line 361
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 362
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 364
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 368
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 369
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    .line 372
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/a;

    .line 373
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 379
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 380
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 382
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    .line 385
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 390
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 392
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 393
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 398
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 399
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    .line 401
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/a;

    .line 402
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    .line 404
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreDataEnabledChangedForVideoCalls:Z

    .line 405
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    .line 406
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    .line 407
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAutoRetryFailedWifiEmergencyCall:Z

    .line 408
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreResetUtCapability:Z

    .line 411
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 413
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    .line 414
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    .line 425
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    .line 431
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    const/4 v1, 0x1

    .line 437
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    .line 444
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    .line 451
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    .line 457
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    .line 465
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    .line 473
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    .line 481
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    .line 488
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    .line 497
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    .line 509
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    .line 514
    sget-object v0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;->INSTANCE:Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$Zw03itjXT6-LrhiYuD-9nKFg2Wg;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    .line 522
    new-instance v0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$j007jv8ZzpH3GXLLwqHDShCqh70;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$j007jv8ZzpH3GXLLwqHDShCqh70;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    .line 2275
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/a$b;

    .line 3091
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/a$b;

    .line 3153
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 3193
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 3208
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$8;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

    .line 3225
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 538
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 540
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 542
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 543
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    .line 544
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheCarrierConfiguration(I)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    const/16 v3, 0x17

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 552
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "telecom"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 553
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 554
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 553
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 556
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 557
    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 558
    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 561
    new-instance v0, Lcom/android/ims/e$a;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p1

    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/ims/e$a;-><init>(Landroid/content/Context;ILcom/android/ims/e$a$a;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/e$a;

    .line 574
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/e$a;

    invoke-virtual {p1}, Lcom/android/ims/e$a;->a()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/e;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/e;)Lcom/android/ims/e;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheCarrierConfiguration(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->scheduleHandoverCheck()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startListeningForCalls()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopListeningForCalls()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/a;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/a;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/a;)Lcom/android/ims/a;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/a;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/a;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/a;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/a;)Lcom/android/ims/a;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/a;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isWifiConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForConnectivityChanges()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/a$b;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/a$b;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I
    .locals 0

    .line 127
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    return p0
.end method

.method static synthetic access$3202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)I
    .locals 0

    .line 127
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAutoRetryFailedWifiEmergencyCall:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    return p0
.end method

.method static synthetic access$3502(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialPendingMO()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchAfterConferenceSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/a$b;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/a$b;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/telecom/ConferenceParticipant;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnectionTimeUsePhoneNumber(Landroid/telecom/ConferenceParticipant;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    return p0
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    return p0
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForConnectivityChanges()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/a;Lcom/android/ims/a;)Z
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/a;Lcom/android/ims/a;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/a;)V

    return-void
.end method

.method private declared-synchronized addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    monitor-enter p0

    .line 1946
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1947
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1948
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 1949
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1951
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private addRttAttributeIfRequired(Lcom/android/ims/a;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 2

    .line 4356
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 4360
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 4361
    iget-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 4362
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttVtCallAllowed(Lcom/android/ims/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4363
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "RTT: addRttAttributeIfRequired = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 4364
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4363
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4367
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    :cond_1
    return-object p2
.end method

.method private answerWaitingCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1385
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 1388
    invoke-static {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v1

    .line 1387
    invoke-virtual {v0, v1}, Lcom/android/ims/a;->a(I)V

    .line 1389
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    :cond_0
    return-void
.end method

.method private cacheCarrierConfiguration(I)V
    .locals 3

    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 949
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 951
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "cacheCarrierConfiguration: Empty carrier config."

    .line 960
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 961
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 964
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateCarrierConfigCache(Landroid/os/PersistableBundle;)V

    return-void

    .line 952
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cacheCarrierConfiguration: No carrier config service found or not active subId = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 954
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    return-void
.end method

.method private cacheConnectionTimeWithPhoneNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 8

    .line 1409
    new-instance v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1410
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectTimeReal()J

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;-><init>(JJJ)V

    .line 1411
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maintainConnectTimeCache()V

    .line 1412
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getNumberPresentation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 1416
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getFormattedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectTime()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    .line 1419
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->access$1900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-gtz p1, :cond_0

    return-void

    .line 1423
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1425
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    invoke-interface {p1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private canAddVideoCallDuringImsAudioCall(I)Z
    .locals 5

    .line 1557
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    .line 1566
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1567
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    .line 1568
    invoke-virtual {v0}, Lcom/android/ims/a;->r()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    if-eqz v0, :cond_5

    .line 1572
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return v4

    :cond_5
    :goto_1
    return v1
.end method

.method private cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3807
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3812
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3813
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_1

    return-object p1

    .line 3819
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    const-string v1, "carrier_instant_lettering_invalid_chars_string"

    .line 3826
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3828
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    .line 3829
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v1, "carrier_instant_lettering_escaped_chars_string"

    .line 3833
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3835
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3836
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p4

    const-string v3, "android.telecom.extra.CALL_SUBJECT"

    const-string v4, "CallPull"

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const-string v6, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    .line 1070
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    .line 1072
    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0

    :cond_1
    move v6, v5

    move v7, v6

    :goto_0
    const-wide/16 v8, 0x1f4

    const/16 v10, 0x12

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 1078
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 1079
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x4e

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    :cond_2
    const/4 v0, 0x7

    .line 1081
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1082
    invoke-virtual {v1, v10, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1087
    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 1088
    iget-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    const/4 v11, 0x1

    if-eqz v7, :cond_4

    const/4 v12, 0x2

    goto :goto_1

    :cond_4
    move v12, v11

    .line 1091
    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v13

    move/from16 v14, p3

    .line 1093
    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 1096
    :try_start_0
    new-array v14, v11, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    .line 1097
    iget-object v5, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    invoke-virtual {v5, v12, v13}, Lcom/android/ims/e;->a(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    const-string v12, "oir"

    move/from16 v13, p2

    .line 1098
    invoke-virtual {v5, v12, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    const-string v12, "isConferenceUri"

    .line 1099
    invoke-virtual {v5, v12, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    if-eqz v7, :cond_5

    .line 1104
    invoke-direct {v1, v5, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setEmergencyCallInfo(Landroid/telephony/ims/ImsCallProfile;Lcom/android/internal/telephony/Connection;)V

    :cond_5
    if-eqz v0, :cond_9

    .line 1110
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "DisplayText"

    .line 1112
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cleanseInstantLetteringMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1111
    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1118
    iget-object v3, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v11, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1121
    :cond_7
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1122
    iget-object v3, v5, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 1123
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1122
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    .line 1124
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1126
    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setIsPulledCall(Z)V

    .line 1127
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPulledDialogId(I)V

    .line 1131
    :cond_8
    iget-object v3, v5, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v4, "OemCallExtras"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1139
    :cond_9
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/util/QtiImsUtils;->getRttOperatingMode(Landroid/content/Context;)I

    move-result v3

    const-string v4, "RTT: setRttModeBasedOnOperator mode = "

    .line 1140
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1142
    iget-object v4, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttSupported()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isRttOn()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v0, :cond_a

    const-string v4, "android.telecom.extra.START_CALL_WITH_RTT"

    .line 1145
    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    :cond_a
    const-string v0, "dialInternal: isStartRttCall = "

    .line 1149
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v11, :cond_c

    .line 1151
    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1152
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    iget-object v4, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1151
    invoke-static {v0, v4}, Lcom/android/internal/telephony/util/QtiImsUtils;->isRttSupportedOnVtCalls(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1153
    :cond_b
    invoke-virtual {v5}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1157
    :cond_c
    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/a$b;

    invoke-virtual {v0, v5, v14, v3}, Lcom/android/ims/e;->a(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/a$b;)Lcom/android/ims/a;

    move-result-object v0

    .line 1158
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setImsCall(Lcom/android/ims/a;)V

    .line 1160
    iget-object v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v4, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v4

    .line 1161
    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v5

    .line 1160
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V

    .line 1163
    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/a;)V

    .line 1164
    iget-boolean v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowAddCallDuringVideoCall(Z)V

    .line 1165
    iget-boolean v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAllowHoldingVideoCall(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception v0

    .line 1167
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "dialInternal : "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    const/16 v0, 0x24

    .line 1168
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1169
    invoke-virtual {v1, v10, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1170
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    return-void
.end method

.method private dialPendingMO()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2263
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    move-result v0

    .line 2264
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    .line 2268
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x14

    .line 2266
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    return-void
.end method

.method private downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3

    .line 4139
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 4141
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasCapabilities(I)Z

    move-result v1

    const-string v2, "downgradeVideoCall :: callId="

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-nez v1, :cond_0

    .line 4145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Downgrade to audio"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4149
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->modifyVideoCall(Lcom/android/ims/a;I)V

    return-void

    .line 4150
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x57f

    if-eq p1, v1, :cond_1

    .line 4153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Pause audio"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4155
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    const/4 p1, 0x2

    .line 4156
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->pauseVideo(I)V

    return-void

    .line 4158
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Disconnect call."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 13252
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "terminate :: reason=501 ; overrideReason="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 13253
    iput p1, v0, Lcom/android/ims/a;->j:I

    const/16 p1, 0x1f5

    .line 13254
    invoke-virtual {v0, p1}, Lcom/android/ims/a;->b(I)V

    :cond_2
    return-void
.end method

.method private dumpState()V
    .locals 5

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Phone State:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ringing call: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1673
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1674
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1677
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Foreground call: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1680
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    .line 1681
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1684
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Background call: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1687
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_2

    .line 1688
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private escapeChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3851
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p2, v2

    .line 3852
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\\"

    .line 3853
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3855
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3858
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 3

    monitor-enter p0

    .line 1915
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1916
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 1917
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 1920
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findConnectionTimeUsePhoneNumber(Landroid/telecom/ConferenceParticipant;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;
    .locals 2

    .line 1431
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maintainConnectTimeCache()V

    .line 1432
    invoke-virtual {p1}, Landroid/telecom/ConferenceParticipant;->getParticipantPresentation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 1433
    invoke-virtual {p1}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1434
    invoke-virtual {p1}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1439
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1440
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1444
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getFormattedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    return-object p1

    :cond_2
    :goto_0
    return-object v1

    .line 1447
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    return-object p1
.end method

.method private getCountryIso()Ljava/lang/String;
    .locals 2

    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v0

    .line 1462
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1463
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1464
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFormattedPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1452
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 1456
    :cond_0
    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getImsManagerIsNullException()Lcom/android/ims/ImsException;
    .locals 3

    .line 3891
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "no ims manager"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    .line 613
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot find package uid. pkg = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private handleDataEnabledChange(ZI)V
    .locals 3

    if-nez p1, :cond_2

    .line 4105
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 4106
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4107
    invoke-virtual {v1}, Lcom/android/ims/a;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/ims/a;->s()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4108
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleDataEnabledChange - downgrading "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4109
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->downgradeVideoCall(ILcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_0

    :cond_1
    return-void

    .line 4112
    :cond_2
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz p1, :cond_5

    .line 4114
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 4117
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleDataEnabledChange - resuming "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 4119
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->wasVideoPausedFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4122
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->resumeVideo(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 4125
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    :cond_5
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleTimerInEmergencyCallbackMode(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1055
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleEcmTimer, unsupported action "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleFeatureCapabilityChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 3

    .line 4274
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    .line 4278
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "handleFeatureCapabilityChanged: "

    .line 4279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4281
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4282
    new-instance v2, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 4284
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, " isVideoEnabledStateChanged="

    .line 4287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4288
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 4292
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleFeatureCapabilityChanged - notifyForVideoCapabilityChanged="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4294
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 4297
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4300
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleFeatureCapabilityChanged: isVolteEnabled="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoCallEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4301
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVowifiEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4302
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isUtEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4303
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4300
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4306
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged()V

    .line 4308
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCapabilities(IILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .line 1661
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pollCallsWhenSafe()V

    return-void
.end method

.method private holdActiveCallForPendingMo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    .line 1281
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const-string v1, "holdActiveCallForPendingMo"

    .line 1282
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 1284
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1286
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/a;->k()V

    .line 1287
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1290
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1291
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const-string v0, "Ignoring hold request while already holding or swapping"

    .line 1276
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1612
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    return-void
.end method

.method private isPhoneInEcbMode()Z
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiConnected()Z
    .locals 3

    .line 4192
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 4193
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4195
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4196
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4197
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method static synthetic lambda$maintainConnectTimeCache$2(JLjava/util/Map$Entry;)Z
    .locals 2

    .line 1398
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 515
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private maintainConnectTimeCache()V
    .locals 4

    .line 1396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    .line 1398
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumAndConnTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$R2Z9jNp4rrTM4H39vy492Fbmqyc;

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$R2Z9jNp4rrTM4H39vy492Fbmqyc;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1402
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    .line 1403
    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 1404
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUnknownPeerConnTime:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maybeNotifyDataDisabled(ZI)V
    .locals 3

    if-nez p1, :cond_2

    .line 4070
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 4071
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4072
    invoke-virtual {v1}, Lcom/android/ims/a;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/ims/a;->s()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 4073
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x57e

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    const-string v1, "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED"

    .line 4080
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x57d

    if-ne p2, v1, :cond_0

    const-string v1, "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED"

    .line 4083
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/a;)V
    .locals 1

    .line 2009
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2010
    invoke-virtual {p2}, Lcom/android/ims/a;->f()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2015
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2017
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "maybeSetVideoCallProvider: exception "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private modifyVideoCall(Lcom/android/ims/a;I)V
    .locals 2

    .line 3998
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4000
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v0

    .line 4001
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4002
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object p1

    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-direct {v0, p2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {p1, v1, v0}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    :cond_0
    return-void
.end method

.method private notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 2

    .line 3987
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;

    .line 3988
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;->onPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDataEnabledChanged(ZI)V
    .locals 4

    .line 4019
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataEnabledChanged: enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4021
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    .line 4023
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    if-nez v0, :cond_1

    .line 4024
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ignore data "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "enabled"

    goto :goto_0

    :cond_0
    const-string p1, "disabled"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - carrier policy indicates that data is not metered for ViLTE calls."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 4031
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 4032
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/a;

    move-result-object v3

    if-nez p1, :cond_3

    if-eqz v3, :cond_2

    .line 4033
    invoke-virtual {v3}, Lcom/android/ims/a;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 4034
    :cond_3
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    const/16 v0, 0x57d

    goto :goto_3

    :cond_5
    const/16 v0, 0x57e

    .line 4049
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeNotifyDataDisabled(ZI)V

    .line 4051
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleDataEnabledChange(ZI)V

    .line 4055
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mShouldUpdateImsConfigOnDisconnect:Z

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    if-eqz p1, :cond_6

    .line 4059
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-eqz p1, :cond_6

    .line 4060
    invoke-virtual {p1, v2}, Lcom/android/ims/e;->d(Z)V

    :cond_6
    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;I)V
    .locals 2

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processCallStateChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1959
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;IZ)V

    return-void
.end method

.method private processCallStateChange(Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 2

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processCallStateChange state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ignoreState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1972
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1984
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/a;)Z

    if-eqz p4, :cond_2

    .line 1986
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/a;)Z

    .line 1987
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/a;)Z

    .line 1989
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeSetVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/a;)V

    return-void

    .line 1993
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;)Z

    move-result p1

    .line 1994
    sget-object p4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p4, :cond_5

    .line 1995
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 1997
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1998
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    :cond_5
    if-eqz p1, :cond_7

    .line 2002
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, p2, :cond_6

    return-void

    .line 2003
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 2004
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    :cond_7
    return-void
.end method

.method private registerForConnectivityChanges()V
    .locals 4

    .line 4208
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4211
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 4212
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    const-string v1, "ImsPhoneCallTracker"

    const-string v2, "registerForConnectivityChanges"

    .line 4214
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    const/4 v2, 0x1

    .line 4216
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 4217
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 4218
    invoke-virtual {v3, v1}, Landroid/net/NetworkRequest$Builder;->setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;

    .line 4219
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4220
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    monitor-enter p0

    .line 1925
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1927
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    if-eqz p1, :cond_2

    .line 1930
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_0

    .line 1931
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 1938
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    .line 1939
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallStateChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private resetImsCapabilities()V
    .locals 3

    const-string v0, "Resetting Capabilities..."

    .line 4167
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v0

    .line 4170
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreResetUtCapability:Z

    if-eqz v1, :cond_0

    .line 4173
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 4175
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 4177
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    goto :goto_0

    .line 4180
    :cond_0
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 4182
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 4184
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    :cond_1
    return-void
.end method

.method private resumeForegroundCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {v0}, Lcom/android/ims/a;->l()V

    .line 1378
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    :cond_0
    return-void
.end method

.method private retryGetImsService()V
    .locals 1

    .line 3766
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    invoke-virtual {v0}, Lcom/android/ims/e;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3770
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/e$a;

    invoke-virtual {v0}, Lcom/android/ims/e$a;->a()V

    return-void
.end method

.method private scheduleHandoverCheck()V
    .locals 4

    .line 4247
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    .line 4248
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 4249
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/ims/a;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 4250
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    .line 4254
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ImsPhoneCallTracker"

    const-string v3, "scheduleHandoverCheck: schedule"

    .line 4255
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setEmergencyCallInfo(Landroid/telephony/ims/ImsCallProfile;Lcom/android/internal/telephony/Connection;)V
    .locals 1

    .line 1256
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1258
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->hasKnownUserIntentEmergency()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallInfo(Landroid/telephony/emergency/EmergencyNumber;Z)V

    :cond_0
    return-void
.end method

.method private setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3776
    invoke-virtual {p2}, Lcom/android/ims/a;->f()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3779
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 3782
    new-instance v2, Lcom/android/ims/internal/b;

    invoke-direct {v2, v0}, Lcom/android/ims/internal/b;-><init>(Lcom/android/ims/internal/IImsVideoCallProvider;)V

    if-eqz v1, :cond_0

    .line 11567
    iput-boolean v1, v2, Lcom/android/ims/internal/b;->e:Z

    .line 3787
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 12134
    iget-object v0, v2, Lcom/android/ims/internal/b;->b:Landroid/os/RegistrantList;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1, p2}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 12142
    iget-object p2, v2, Lcom/android/ims/internal/b;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/a;Lcom/android/ims/a;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 3930
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    if-nez v1, :cond_1

    return v0

    .line 3934
    :cond_1
    invoke-virtual {p1}, Lcom/android/ims/a;->r()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    if-eqz v1, :cond_2

    .line 12586
    iget-boolean v1, p1, Lcom/android/ims/a;->g:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    .line 3936
    :goto_1
    invoke-virtual {p1}, Lcom/android/ims/a;->s()Z

    move-result p1

    .line 3937
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    invoke-virtual {v3}, Lcom/android/ims/e;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    .line 3938
    invoke-virtual {v3}, Lcom/android/ims/e;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v0

    .line 3939
    :goto_2
    invoke-virtual {p2}, Lcom/android/ims/a;->r()Z

    move-result p2

    xor-int/2addr p2, v2

    .line 3940
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shouldDisconnectActiveCallOnAnswer : isActiveCallVideo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isActiveCallOnWifi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isIncomingCallAudio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isVowifiEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez v3, :cond_5

    return v2

    :cond_5
    :goto_3
    return v0
.end method

.method private shouldDisconnectActiveCallOnDial(Z)Z
    .locals 3

    .line 3895
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3900
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    .line 3901
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3903
    invoke-virtual {v0}, Lcom/android/ims/a;->r()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private shouldNumberBePlacedOnIms(ZLjava/lang/String;)Z
    .locals 5

    const-string v0, "ImsPhoneCallTracker"

    const/4 v1, 0x0

    .line 913
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-eqz v2, :cond_2

    .line 914
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p2, v4, v1

    invoke-virtual {v2, p1, v4}, Lcom/android/ims/e;->a(Z[Ljava/lang/String;)I

    move-result p1

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "shouldProcessCall: number: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", result: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    const-string p1, "shouldProcessCall returned unknown result."

    .line 936
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string p1, "shouldProcessCall: place over CSFB instead."

    .line 932
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v3

    :cond_2
    :try_start_1
    const-string p1, "ImsManager unavailable, shouldProcessCall returning false."

    .line 919
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    const-string p1, "ImsService unavailable, shouldProcessCall returning false."

    .line 923
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private startListeningForCalls()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "startListeningForCalls"

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelFeatureListener:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$MmTelFeatureListener;

    .line 4714
    invoke-virtual {v0}, Lcom/android/ims/e;->t()V

    if-eqz v1, :cond_4

    const/16 v2, 0x6a

    .line 4721
    :try_start_0
    iget-object v0, v0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0, v1}, Lcom/android/ims/h;->a(Landroid/telephony/ims/feature/MmTelFeature$Listener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/e;->a(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/e;->a(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsConfigListener:Lcom/android/ims/ImsConfigListener$Stub;

    .line 5671
    iput-object v1, v0, Lcom/android/ims/e;->g:Lcom/android/ims/ImsConfigListener;

    .line 628
    invoke-virtual {v0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsConfig;->addConfigCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V

    .line 631
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsEcbmStateListener()Lcom/android/ims/c;

    move-result-object v1

    .line 6059
    :try_start_1
    iget-object v3, v0, Lcom/android/ims/b;->a:Lcom/android/ims/internal/IImsEcbm;

    new-instance v4, Lcom/android/ims/b$a;

    invoke-direct {v4, v0, v1}, Lcom/android/ims/b$a;-><init>(Lcom/android/ims/b;Lcom/android/ims/c;)V

    invoke-interface {v3, v4}, Lcom/android/ims/internal/IImsEcbm;->setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 637
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "preferred_tty_mode"

    .line 636
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 640
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/ims/e;->a(ILandroid/os/Message;)V

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMultiEndpointInterface()Lcom/android/ims/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 645
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    move-result-object v1

    :try_start_2
    const-string v4, "ImsMultiEndpoint"

    const-string v5, "setExternalCallStateListener"

    .line 6075
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6076
    iget-object v4, v0, Lcom/android/ims/f;->a:Lcom/android/ims/internal/IImsMultiEndpoint;

    new-instance v5, Lcom/android/ims/f$a;

    invoke-direct {v5, v0, v1}, Lcom/android/ims/f$a;-><init>(Lcom/android/ims/f;Lcom/android/ims/d;)V

    invoke-interface {v4, v5}, Lcom/android/ims/internal/IImsMultiEndpoint;->setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6079
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "setExternalCallStateListener could not be set."

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 649
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v0, :cond_2

    const/16 v1, 0x1b

    .line 651
    invoke-interface {v0, p0, v1, v3}, Lcom/android/ims/ImsUtInterface;->registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 655
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCarrierConfigLoaded:Z

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ims/e;->d(Z)V

    :cond_3
    return-void

    :catch_1
    move-exception v0

    .line 6061
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "setEcbmStateListener()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :catch_2
    move-exception v0

    .line 4723
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "open()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 4717
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stopListeningForCalls()V
    .locals 2

    const-string v0, "stopListeningForCalls"

    .line 661
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resetImsCapabilities()V

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-eqz v0, :cond_1

    .line 666
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConfigCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v1}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsConfig;->removeConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ImsPhoneCallTracker"

    const-string v1, "stopListeningForCalls: unable to remove config callback."

    .line 668
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    .line 6973
    iget-object v1, v0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    if-eqz v1, :cond_0

    .line 6974
    iget-object v1, v0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v1}, Lcom/android/ims/h;->c()V

    :cond_0
    const/4 v1, 0x0

    .line 6976
    iput-object v1, v0, Lcom/android/ims/e;->h:Lcom/android/ims/g;

    .line 6977
    iput-object v1, v0, Lcom/android/ims/e;->i:Lcom/android/ims/b;

    .line 6978
    iput-object v1, v0, Lcom/android/ims/e;->j:Lcom/android/ims/f;

    :cond_1
    return-void
.end method

.method private switchAfterConferenceSuccess()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switchAfterConferenceSuccess fg ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1265
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const-string v0, "switchAfterConferenceSuccess"

    .line 1268
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1269
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    :cond_0
    return-void
.end method

.method private transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4

    .line 3280
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3281
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3282
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v2, v1, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 3283
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection state before handover is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3286
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3287
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    goto :goto_1

    .line 3289
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3291
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 3292
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3293
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/a;->a()V

    .line 3295
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3296
    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3297
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    goto :goto_2

    .line 3300
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call is alive and state is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3302
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 3304
    :cond_4
    iget-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3305
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 3306
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p1, :cond_5

    const-string p1, "pending MO on handover, clearing..."

    .line 3309
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3310
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    :cond_5
    return-void
.end method

.method private unregisterForConnectivityChanges()V
    .locals 3

    .line 4229
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4232
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 4233
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    const-string v1, "ImsPhoneCallTracker"

    const-string/jumbo v2, "unregisterForConnectivityChanges"

    .line 4235
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 4237
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsMonitoringConnectivity:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePhoneState()V
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1620
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1622
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1624
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1625
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_4

    .line 1626
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 1630
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_3

    .line 1628
    :cond_4
    :goto_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1633
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 1634
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_4

    .line 1636
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_6

    .line 1637
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1642
    :cond_6
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updatePhoneState pendingMo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v2, :cond_7

    const-string v2, "null"

    goto :goto_5

    .line 1643
    :cond_7
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1644
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), bg= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1645
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1642
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updatePhoneState oldState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1649
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_8

    .line 1650
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 1651
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1652
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifyPhoneStateChanged(Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/PhoneConstants$State;)V

    :cond_8
    return-void
.end method

.method private updateVtDataUsage(Lcom/android/ims/a;J)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3533
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/android/ims/a;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3534
    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/android/ims/a;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    sub-long v2, p2, v2

    .line 3538
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageMap:Ljava/util/HashMap;

    iget v5, v1, Lcom/android/ims/a;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3540
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateVtDataUsage: call="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delta="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3543
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 3546
    new-instance v12, Landroid/net/NetworkStats;

    const/4 v7, 0x1

    invoke-direct {v12, v4, v5, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 3547
    iget-object v6, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v12, v6}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 3551
    new-instance v14, Landroid/net/NetworkStats$Entry;

    move-object v6, v14

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    const-wide/16 v15, 0x2

    div-long/2addr v2, v15

    move-object/from16 v24, v14

    move-wide v14, v2

    move-wide/from16 v18, v2

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string/jumbo v25, "vt_data0"

    move-object/from16 v7, v25

    move-wide/from16 p1, v2

    move-object v2, v12

    move v12, v1

    invoke-direct/range {v6 .. v23}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 3555
    iput-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 3559
    new-instance v2, Landroid/net/NetworkStats;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 3560
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 3565
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 3566
    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3567
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 3568
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3569
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 3568
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3574
    :cond_1
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object v6, v3

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3575
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string/jumbo v7, "vt_data0"

    move v12, v1

    move-wide/from16 v14, p1

    move-wide/from16 v18, p1

    invoke-direct/range {v6 .. v23}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 3574
    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 3578
    iput-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const-string v0, "acceptCall"

    .line 1183
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    const-string v1, "cannot accept call"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1186
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1187
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1190
    :cond_1
    :goto_0
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1191
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1192
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1193
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 1196
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v2

    .line 1197
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v3

    .line 1198
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1200
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/a;Lcom/android/ims/a;)Z

    move-result v4

    .line 1204
    :cond_2
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    if-eqz v4, :cond_3

    .line 1208
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V

    .line 1210
    :try_start_0
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addRttAttributeIfRequired(Lcom/android/ims/a;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 1211
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result p1

    invoke-virtual {v3, p1, v0}, Lcom/android/ims/a;->a(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1214
    :catch_0
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1217
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCallForWaitingCall()V

    return-void

    .line 1219
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "acceptCall: incoming..."

    .line 1220
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    .line 1224
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1226
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addRttAttributeIfRequired(Lcom/android/ims/a;Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 1227
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result p1

    invoke-virtual {v2, p1, v0}, Lcom/android/ims/a;->a(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1229
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {v2}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    return-void

    .line 1232
    :cond_5
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "no valid ims call"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1235
    :catch_1
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1238
    :cond_6
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "phone not ringing"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v0, :cond_2

    .line 893
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "addParticipant : No foreground ims call"

    .line 895
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 897
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/a;->f()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 899
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 900
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "addParticipant : ImsCallSession does not exist"

    .line 902
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "addParticipant : Foreground call does not exist"

    .line 906
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public addReasonCodeRemapping(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2030
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method callEndCleanupHandOverCallIfAny()V
    .locals 2

    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callEndCleanupHandOverCallIfAny, mHandoverCall.mConnections="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1863
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1864
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1865
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    :cond_0
    return-void
.end method

.method public canConference()Z
    .locals 2

    .line 1550
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1551
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1552
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1553
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 2

    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1604
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelUSSD(Landroid/os/Message;)V
    .locals 1

    .line 1909
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/a;

    if-nez v0, :cond_0

    return-void

    .line 1910
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    const/16 p1, 0x1f5

    .line 1911
    invoke-virtual {v0, p1}, Lcom/android/ims/a;->b(I)V

    return-void
.end method

.method public checkForDialIssues()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const-string v0, "ro.telephony.disable-call"

    const-string v1, "false"

    .line 1581
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1587
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v0, :cond_2

    .line 1591
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    .line 1596
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x6

    const-string v2, "Already an active foreground and background call."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1592
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x4

    const-string v2, "Can\'t place a call while another is ringing."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1588
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x3

    const-string v2, "Another outgoing call is already being dialed."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1584
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x5

    const-string v2, "ro.telephony.disable-call has been used to disable calling."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public clearDisconnected()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "clearDisconnected"

    .line 1540
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1542
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->internalClearDisconnected()V

    .line 1544
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public conference()V
    .locals 9

    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "conference no foreground ims call"

    .line 1471
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1475
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "conference no background ims call"

    .line 1477
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 8405
    :cond_1
    iget-boolean v2, v0, Lcom/android/ims/a;->e:Z

    if-eqz v2, :cond_2

    const-string v0, "conference: skip; foreground call already in process of merging."

    .line 1482
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 9405
    :cond_2
    iget-boolean v2, v1, Lcom/android/ims/a;->e:Z

    if-eqz v2, :cond_3

    const-string v0, "conference: skip; background call already in process of merging."

    .line 1487
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1493
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v2

    .line 1494
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_4

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 1497
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1498
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnectTime()J

    move-result-wide v4

    .line 1497
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1499
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "conference - using connect time = "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-lez v8, :cond_5

    .line 1501
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "conference - bg call connect time is 0; using fg = "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1504
    :cond_5
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "conference - fg call connect time is 0; using bg = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    move-wide v2, v4

    .line 1509
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_6

    .line 1511
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConferenceConnectTime(J)V

    .line 1512
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeStart()V

    .line 1513
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    .line 1514
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheConnectionTimeWithPhoneNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    goto :goto_1

    :cond_6
    move-object v2, v5

    .line 1517
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1519
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeStart()V

    .line 1520
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    .line 1521
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cacheConnectionTimeWithPhoneNumber(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1523
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "conference: fgCallId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bgCallId="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1526
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/ims/a;->a(Lcom/android/ims/a;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "conference "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 735
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    .line 736
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 737
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    .line 738
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getClirMode()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setClirMode(I)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p2

    .line 739
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    monitor-enter p0

    .line 745
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isPhoneInEcbMode()Z

    move-result v10

    .line 746
    iget-object v1, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    .line 748
    invoke-direct {v8, v11, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldNumberBePlacedOnIms(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 753
    iget v1, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->clirMode:I

    .line 754
    iget v2, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->videoState:I

    const-string v3, "dial clirMode="

    .line 756
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v11, :cond_0

    const/4 v1, 0x2

    const-string v3, "dial emergency call, set clirModIe=2"

    .line 759
    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :cond_0
    move v12, v1

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 765
    iget-object v1, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-eqz v1, :cond_e

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForDialIssues()V

    .line 773
    invoke-direct {v8, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canAddVideoCallDuringImsAudioCall(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v13, 0x1

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    .line 778
    invoke-direct {v8, v13}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleEcmTimer(I)V

    :cond_1
    const/4 v1, 0x0

    if-eqz v11, :cond_2

    .line 783
    invoke-static {v2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    if-nez v3, :cond_2

    const-string v2, "dial: carrier does not support video emergency calls; downgrade to audio-only"

    .line 785
    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    move v14, v1

    goto :goto_0

    :cond_2
    move v14, v2

    .line 795
    :goto_0
    iget-object v2, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_5

    .line 796
    iget-object v2, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_4

    .line 804
    iput v14, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 805
    iget-object v2, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    iput-object v2, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 807
    invoke-direct {v8, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->shouldDisconnectActiveCallOnDial(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 812
    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->ENDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v2, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 813
    iget-object v2, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V

    move v2, v1

    move v15, v13

    goto :goto_1

    .line 815
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->holdActiveCallForPendingMo()V

    move v15, v1

    move v2, v13

    goto :goto_1

    .line 798
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const/4 v1, 0x6

    const-string v2, "Already too many ongoing calls."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    move v2, v1

    move v15, v2

    .line 819
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 820
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 822
    iput v12, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    .line 824
    iget-object v7, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_7

    .line 826
    :try_start_1
    iget-object v3, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 827
    iget-object v4, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 830
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_6

    .line 835
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v3, :cond_7

    move/from16 v16, v1

    goto :goto_2

    .line 831
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial in current state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move/from16 v16, v2

    .line 840
    :goto_2
    iput-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    .line 841
    iput-object v9, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    .line 842
    new-instance v6, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v2, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 843
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v0, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v6

    move-object/from16 v4, p0

    move-object v13, v6

    move v6, v11

    move-object/from16 v17, v7

    move-object v7, v0

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZLandroid/os/Bundle;)V

    iput-object v13, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v11, :cond_8

    if-eqz v9, :cond_8

    .line 845
    iget-object v0, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    const-string v0, "ImsPhoneCallTracker"

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dial ims emergency dialer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v3, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v1, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v2, "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setHasKnownUserIntentEmergency(Z)V

    .line 851
    :cond_8
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 852
    iget-object v0, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-eqz v0, :cond_9

    const-string v0, "dial: setting RTT stream on mPendingMO"

    .line 853
    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 854
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v1, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    .line 856
    :cond_9
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 857
    :try_start_3
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v16, :cond_c

    if-nez v15, :cond_c

    if-eqz v10, :cond_b

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    goto :goto_3

    .line 864
    :cond_a
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/b;->a()V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 869
    :try_start_5
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 870
    iput v12, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 871
    iput v14, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    .line 872
    iget-object v0, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    iput-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 873
    iput-boolean v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    goto :goto_4

    :catch_0
    move-exception v0

    .line 866
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 867
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "service not available"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_b
    :goto_3
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v1, v9, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {v8, v0, v12, v14, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 877
    :cond_c
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 878
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    .line 880
    iget-object v0, v8, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v7

    .line 856
    :goto_5
    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 774
    :cond_d
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot dial in current state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_e
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "service not available"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string v0, "ImsPhoneCallTracker"

    const-string v1, "dial: shouldNumberBePlacedOnIms = false"

    .line 749
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cs_fallback"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispose()V
    .locals 2

    const-string v0, "dispose"

    .line 675
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->dispose()V

    .line 681
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUtInterface:Lcom/android/ims/ImsUtInterface;

    if-eqz v0, :cond_0

    .line 683
    invoke-interface {v0, p0}, Lcom/android/ims/ImsUtInterface;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/e$a;

    invoke-virtual {v0}, Lcom/android/ims/e$a;->b()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "ImsPhoneCallTracker extends:"

    .line 3653
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3654
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3655
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mVoiceCallEndedRegistrants="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mVoiceCallStartedRegistrants="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3657
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mRingingCall="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mForegroundCall="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mBackgroundCall="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3660
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mHandoverCall="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPendingMO="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3663
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mPhone="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3664
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mDesiredMute="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mState="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mMmTelCapabilities="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mDefaultDialerUid="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDefaultDialerUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mVtDataUsageSnapshot="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " mVtDataUsageUidSnapshot="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string p1, "++++++++++++++++++++++++++++++++"

    .line 3672
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3675
    :try_start_0
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-eqz p3, :cond_0

    .line 3676
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    const-string v0, "ImsManager:"

    .line 10787
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10788
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  device supports IMS = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/ims/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/e;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10789
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mPhoneId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p3, Lcom/android/ims/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10790
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mConfigUpdated = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p3, Lcom/android/ims/e;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mImsServiceProxy = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDataEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  ignoreDataEnabledChanged = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {p3, v1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10796
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isGbaValid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10797
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isImsTurnOffAllowed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10798
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isNonTtyOrTtyOnVolteEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10800
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isVolteEnabledByPlatform = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isVolteProvisionedOnDevice = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10802
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isEnhanced4gLteModeSettingEnabledByUser = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10803
    invoke-virtual {p3}, Lcom/android/ims/e;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10802
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10804
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isVtEnabledByPlatform = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isVtEnabledByUser = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10807
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isWfcEnabledByPlatform = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10808
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isWfcEnabledByUser = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10809
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  getWfcMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11036
    invoke-virtual {p3, p1}, Lcom/android/ims/e;->c(Z)I

    move-result v1

    .line 10809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isWfcRoamingEnabledByUser = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10812
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isVtProvisionedOnDevice = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10813
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isWfcProvisionedOnDevice = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/ims/e;->e()Z

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10814
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 3679
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3682
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_1

    const-string p3, "mConnections:"

    .line 3683
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3684
    :goto_1
    iget-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 3685
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "  ["

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 0

    return-void
.end method

.method protected finalize()V
    .locals 1

    const-string v0, "ImsPhoneCallTracker finalized"

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getClirMode()I
    .locals 4

    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 723
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 722
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clir_key"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const-string v0, "dial; could not get default CLIR mode."

    .line 727
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2094
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result p1

    const/16 v0, 0xc

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/16 p1, 0x12d

    return p1

    :sswitch_1
    const/16 p1, 0x19

    return p1

    :sswitch_2
    const/16 p1, 0x47

    return p1

    :sswitch_3
    const/16 p1, 0x3c

    return p1

    .line 2232
    :sswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2233
    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    return p1

    .line 2235
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2236
    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x18

    return p1

    .line 2238
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 2239
    invoke-virtual {p1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x17

    return p1

    :sswitch_5
    const/16 p1, 0x3b

    return p1

    :sswitch_6
    const/16 p1, 0x36

    return p1

    :sswitch_7
    const/16 p1, 0x37

    return p1

    :sswitch_8
    const/16 p1, 0x35

    return p1

    :sswitch_9
    const/16 p1, 0x33

    return p1

    :sswitch_a
    const/16 p1, 0x34

    return p1

    :sswitch_b
    const/4 p1, 0x3

    return p1

    :sswitch_c
    const/16 p1, 0x40

    return p1

    :sswitch_d
    const/16 p1, 0x3f

    return p1

    :sswitch_e
    const/4 p1, 0x2

    return p1

    :sswitch_f
    const/16 p1, 0x9

    return p1

    :sswitch_10
    const/4 p1, 0x4

    return p1

    :sswitch_11
    const/16 p1, 0x8

    return p1

    :sswitch_12
    const/4 p1, 0x7

    return p1

    :sswitch_13
    return v0

    :sswitch_14
    const/16 p1, 0x44

    return p1

    :sswitch_15
    const/16 p1, 0x43

    return p1

    :sswitch_16
    const/16 p1, 0x46

    return p1

    :sswitch_17
    const/16 p1, 0x45

    return p1

    :sswitch_18
    const/16 p1, 0x42

    return p1

    :sswitch_19
    const/16 p1, 0x30

    return p1

    :sswitch_1a
    const/16 p1, 0x2f

    return p1

    :sswitch_1b
    const/16 p1, 0x2e

    return p1

    :sswitch_1c
    const/16 p1, 0x3a

    return p1

    :sswitch_1d
    const/16 p1, 0x15

    return p1

    :sswitch_1e
    const/16 p1, 0x14

    return p1

    :sswitch_1f
    const/16 p1, 0xd

    return p1

    :sswitch_20
    const/16 p1, 0x10

    return p1

    .line 2158
    :sswitch_21
    sget-object p1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, p1, :cond_2

    const/16 p1, 0x3e

    return p1

    :cond_2
    const/16 p1, 0x3d

    return p1

    :sswitch_22
    const/16 p1, 0x11

    return p1

    :sswitch_23
    const/16 p1, 0x2d

    return p1

    :sswitch_24
    const/16 p1, 0x12

    return p1

    :cond_3
    :goto_0
    const/16 p1, 0x24

    return p1

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_24
        0x6c -> :sswitch_23
        0x6f -> :sswitch_22
        0x70 -> :sswitch_21
        0x79 -> :sswitch_24
        0x7a -> :sswitch_24
        0x7b -> :sswitch_24
        0x7c -> :sswitch_24
        0x83 -> :sswitch_24
        0x84 -> :sswitch_24
        0x8f -> :sswitch_20
        0x90 -> :sswitch_24
        0xc9 -> :sswitch_1f
        0xca -> :sswitch_1f
        0xcb -> :sswitch_1f
        0xf0 -> :sswitch_1e
        0xf1 -> :sswitch_1d
        0xf3 -> :sswitch_1c
        0xf4 -> :sswitch_1b
        0xf5 -> :sswitch_1a
        0xf6 -> :sswitch_19
        0xf7 -> :sswitch_18
        0xf8 -> :sswitch_17
        0xf9 -> :sswitch_16
        0xfa -> :sswitch_15
        0xfb -> :sswitch_14
        0x141 -> :sswitch_13
        0x14b -> :sswitch_13
        0x14c -> :sswitch_13
        0x14d -> :sswitch_12
        0x14f -> :sswitch_1f
        0x151 -> :sswitch_11
        0x152 -> :sswitch_10
        0x154 -> :sswitch_13
        0x155 -> :sswitch_11
        0x160 -> :sswitch_f
        0x162 -> :sswitch_f
        0x169 -> :sswitch_e
        0x16a -> :sswitch_13
        0x16b -> :sswitch_d
        0x16c -> :sswitch_c
        0x1f5 -> :sswitch_b
        0x1f9 -> :sswitch_21
        0x1fe -> :sswitch_e
        0x3f6 -> :sswitch_a
        0x3f8 -> :sswitch_9
        0x57b -> :sswitch_8
        0x57c -> :sswitch_20
        0x57d -> :sswitch_7
        0x57e -> :sswitch_6
        0x57f -> :sswitch_5
        0x5de -> :sswitch_4
        0x5e8 -> :sswitch_3
        0x5ea -> :sswitch_2
        0x5eb -> :sswitch_1
        0xbb9 -> :sswitch_0
    .end sparse-switch
.end method

.method getEcbmInterface()Lcom/android/ims/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3696
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-eqz v0, :cond_0

    .line 3700
    invoke-virtual {v0}, Lcom/android/ims/e;->x()Lcom/android/ims/b;

    move-result-object v0

    return-object v0

    .line 3697
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public getImsRegistrationTech()I
    .locals 1

    .line 3758
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-eqz v0, :cond_0

    .line 3759
    invoke-virtual {v0}, Lcom/android/ims/e;->q()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getMultiEndpointInterface()Lcom/android/ims/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3706
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-eqz v0, :cond_1

    .line 3711
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/e;->z()Lcom/android/ims/f;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3713
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    const/16 v2, 0x386

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3716
    :cond_0
    throw v0

    .line 3707
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public getMute()Z
    .locals 1

    .line 1736
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1

    .line 4373
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .line 3754
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSwitchingFgAndBgCallsValue()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2075
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return v0
.end method

.method public getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3271
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-eqz v0, :cond_0

    .line 3275
    invoke-virtual {v0}, Lcom/android/ims/e;->r()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    return-object v0

    .line 3272
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    throw v0
.end method

.method public getVtDataUsage(Z)Landroid/net/NetworkStats;
    .locals 2

    .line 3958
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 3959
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3960
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3962
    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 3967
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 3333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3335
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    const/16 v4, 0x12

    if-eq v0, v4, :cond_8

    const/16 v5, 0x28

    const/4 v6, 0x1

    if-eq v0, v5, :cond_5

    packed-switch v0, :pswitch_data_0

    const-string v1, "ImsPhoneCallTracker"

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 3348
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->resumeForegroundCall()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3351
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage EVENT_RESUME_NOW_FOREGROUND_CALL exception="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 3357
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->answerWaitingCall()V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 3360
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage EVENT_ANSWER_WAITING_CALL exception="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 3483
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 3484
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 3485
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    const/16 v0, 0x1c

    .line 3486
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V

    .line 3487
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/a;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 3460
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    const/16 v0, 0x1d

    .line 3462
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V

    .line 3463
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 3464
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 3465
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/a;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3467
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/a;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    const-string p1, "EVENT_REDIAL_WIFI_E911_CALL: null oldConnection"

    .line 3468
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 3471
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3472
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3474
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3475
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3476
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 3478
    :catch_2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/a;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 3449
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3450
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 3452
    :try_start_3
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->setIsSsInfo(Z)V

    .line 3453
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processImsSsData(Landroid/os/AsyncResult;)V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 3455
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Exception in parsing SS Data: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3439
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3441
    :try_start_4
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 3442
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleFeatureCapabilityChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3444
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    .line 3412
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/a;

    if-eqz v0, :cond_7

    .line 3413
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/ims/a;

    .line 3414
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eq p1, v0, :cond_1

    const-string p1, "handoverCheck: no longer FG; check skipped."

    .line 3415
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->unregisterForConnectivityChanges()V

    return-void

    .line 3420
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    if-nez v0, :cond_2

    .line 3421
    iput-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHasAttemptedStartOfCallHandover:Z

    .line 3423
    :cond_2
    invoke-virtual {p1}, Lcom/android/ims/a;->s()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3425
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "handoverCheck: handover failed."

    .line 3427
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHandoverToWifiFailed()V

    .line 3431
    :cond_3
    invoke-virtual {p1}, Lcom/android/ims/a;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3432
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getDisconnectCause()I

    move-result p1

    if-nez p1, :cond_4

    .line 3433
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->registerForConnectivityChanges()V

    :cond_4
    return-void

    .line 3405
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3406
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Landroid/util/Pair;

    if-eqz v0, :cond_7

    .line 3407
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 3408
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->onDataEnabledChanged(ZI)V

    return-void

    .line 3396
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3397
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/a;

    .line 3398
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 3399
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VT data usage update. usage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imsCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    .line 3401
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updateVtDataUsage(Lcom/android/ims/a;J)V

    return-void

    .line 3370
    :pswitch_9
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p1, :cond_7

    .line 3373
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/ims/b;->a()V

    .line 3374
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3375
    iget p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    .line 3376
    iput-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z
    :try_end_5
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_5} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 3378
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 3379
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    const-wide/16 v0, 0x1f4

    .line 3380
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 3365
    :pswitch_a
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mClirMode:I

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 3366
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    return-void

    .line 3491
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 3493
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/a;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3495
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/a;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    const-string p1, "EVENT_RETRY_ON_IMS_WITHOUT_RTT: null oldConnection"

    .line 3496
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 3499
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3500
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3502
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v3, "android.telecom.extra.START_CALL_WITH_RTT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3504
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3505
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mLastDialArgs:Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3506
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V

    .line 3508
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    .line 3509
    invoke-virtual {v0}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "retryOnImsWithoutRTT"

    .line 3512
    invoke-virtual {v1, v2, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 3514
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 3515
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/a;)Z
    :try_end_6
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_6 .. :try_end_6} :catch_5

    return-void

    .line 3517
    :catch_5
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/a;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_7
    :goto_0
    return-void

    .line 3337
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p1, :cond_9

    .line 3338
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 3339
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 3340
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3342
    :cond_9
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 3343
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    .line 3344
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void

    .line 3387
    :cond_a
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    if-eqz p1, :cond_b

    .line 3388
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallClirMode:I

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingCallVideoState:I

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IILandroid/os/Bundle;)V

    .line 3390
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingIntentExtras:Landroid/os/Bundle;

    .line 3391
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->pendingCallInEcm:Z

    .line 3393
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 0

    return-void
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const-string v0, "hangup call"

    .line 1798
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1804
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 1807
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_0

    const-string v1, "(ringing) hangup incoming"

    .line 1808
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    .line 1810
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_2

    .line 1811
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "(foregnd) hangup dialing or alerting..."

    .line 1813
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "(foregnd) hangup foreground"

    .line 1817
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1821
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v2, :cond_6

    const-string v2, "(backgnd) hangup waiting or background"

    .line 1823
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1830
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->onHangupLocal()V

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 1835
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/a;->j()V

    .line 1836
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    goto :goto_1

    :cond_3
    const/16 p1, 0x1f5

    .line 1839
    invoke-virtual {v0, p1}, Lcom/android/ims/a;->b(I)V

    .line 1840
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    goto :goto_1

    .line 1843
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne p1, v0, :cond_5

    .line 1845
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;)Z

    .line 1846
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    .line 1847
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1848
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1849
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V

    const/16 p1, 0x14

    .line 1850
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void

    :catch_0
    move-exception p1

    .line 1853
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1826
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImsPhoneCall "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1801
    :cond_7
    new-instance p1, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "no connections"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const-string v0, "hangup connection"

    .line 1785
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1792
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    return-void

    .line 1788
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImsPhoneConnection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "does not belong to ImsPhoneCallTracker "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public holdActiveCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    .line 1300
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    .line 1306
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/a;

    .line 1308
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    goto :goto_0

    .line 1310
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    :goto_0
    const-string v1, "holdActiveCall"

    .line 1312
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 1313
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1315
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/a;->k()V

    .line 1316
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1319
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1320
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    const-string v0, "Ignoring hold request while already holding or swapping"

    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public holdActiveCallForWaitingCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1330
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    .line 1333
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 1334
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    const-string v1, "holdActiveCallForWaitingCall"

    .line 1335
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 1337
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/a;->k()V

    .line 1338
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1341
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1342
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public isCarrierDowngradeOfVtCallSupported()Z
    .locals 1

    .line 4265
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    return v0
.end method

.method public isImsCapabilityAvailable(II)Z
    .locals 1

    .line 3731
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method isImsServiceReady()Z
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7657
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/e;->p()V

    .line 7658
    iget-object v0, v0, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {v0}, Lcom/android/ims/h;->j()Z

    move-result v0

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .line 3723
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method public isUtEnabled()Z
    .locals 2

    .line 3795
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public isViLteDataMetered()Z
    .locals 1

    .line 4009
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    return v0
.end method

.method public isVideoCallEnabled()Z
    .locals 2

    .line 3749
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public isVolteEnabled()Z
    .locals 3

    .line 3735
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3737
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public isVowifiEnabled()Z
    .locals 3

    .line 3742
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsRegistrationTech()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3744
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public synthetic lambda$new$1$ImsPhoneCallTracker(Ljava/lang/String;)Z
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneCallTracker"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logHoldSwapState(Ljava/lang/String;)V
    .locals 3

    .line 3598
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$10;->$SwitchMap$com$android$internal$telephony$imsphone$ImsPhoneCallTracker$HoldSwapState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "???"

    goto :goto_0

    :pswitch_0
    const-string v0, "HOLDING_TO_DIAL_OUTGOING"

    goto :goto_0

    :pswitch_1
    const-string v0, "PENDING_RESUME_FOREGROUND_AFTER_FAILURE"

    goto :goto_0

    :pswitch_2
    const-string v0, "HOLDING_TO_ANSWER_INCOMING"

    goto :goto_0

    :pswitch_3
    const-string v0, "SWAPPING_ACTIVE_AND_HELD"

    goto :goto_0

    :pswitch_4
    const-string v0, "PENDING_SINGLE_CALL_UNHOLD"

    goto :goto_0

    :pswitch_5
    const-string v0, "PENDING_SINGLE_CALL_HOLD"

    goto :goto_0

    :pswitch_6
    const-string v0, "INACTIVE"

    .line 3621
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "holdSwapState set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method logState()V
    .locals 3

    .line 3630
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->VERBOSE_STATE_LOGGING:Z

    if-nez v0, :cond_0

    return-void

    .line 3634
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current IMS PhoneCall State:\n"

    .line 3635
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Foreground: "

    .line 3636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3637
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 3638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Background: "

    .line 3639
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Ringing: "

    .line 3642
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3643
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Handover: "

    .line 3645
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneCallTracker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneCallTracker"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logi(Ljava/lang/String;)V
    .locals 2

    .line 3593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneCallTracker"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2044
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    .line 2045
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 2049
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maybeRemapReasonCode : fromCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ; message = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 2051
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2052
    new-instance v5, Landroid/util/Pair;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2053
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " ; toCode = "

    if-eqz v6, :cond_1

    .line 2054
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return v0

    .line 2059
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2064
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsReasonCodeMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2066
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maybeRemapReasonCode : fromCode(wildcard) = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 2

    .line 3316
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifySrvccState state="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3318
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 3320
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p1, v0, :cond_0

    .line 3321
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3322
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 3323
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->transferHandoverConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    :cond_0
    return-void
.end method

.method public onCallHoldReceived(Lcom/android/ims/a;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "onCallHoldReceived"

    .line 4314
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 4316
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4318
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/a;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    if-eqz v2, :cond_1

    .line 4320
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 4321
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    .line 4322
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneStarted:Z

    .line 4323
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mOnHoldToneId:I

    :cond_1
    const/4 v2, 0x0

    const-string v3, "android.telecom.event.CALL_REMOTELY_HELD"

    .line 4325
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4327
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11100e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4329
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    if-eqz v2, :cond_2

    .line 4330
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4336
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeToPausedState()V

    .line 4340
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 4341
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v1, 0x2

    .line 4342
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 4343
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 4344
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/ims/a;->f()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHoldReceived(ILandroid/telephony/ims/ImsCallSession;)V

    return-void
.end method

.method public pullExternalCall(Ljava/lang/String;II)V
    .locals 3

    .line 3879
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CallPull"

    const/4 v2, 0x1

    .line 3880
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    .line 3881
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3883
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object p1

    .line 3884
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3886
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pullExternalCall failed - "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 711
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 712
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 700
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 701
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .locals 1

    .line 3971
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const-string v0, "rejectCall"

    .line 1243
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    return-void

    .line 1248
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendCallStartFailedDisconnect(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 3251
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingMO:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 3252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->findConnection(Lcom/android/ims/a;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3255
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0

    .line 3261
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 3263
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v0

    .line 3265
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/a;Lcom/android/internal/telephony/Call$State;I)V

    .line 3266
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyImsReason(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3

    const-string v0, "sendDtmf"

    .line 1750
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1752
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "sendDtmf :: "

    .line 10605
    invoke-virtual {v0, v1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 10607
    iget-object v1, v0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10608
    :try_start_0
    iget-object v2, v0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v2, :cond_0

    .line 10609
    iget-object v0, v0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSession;->sendDtmf(CLandroid/os/Message;)V

    .line 10611
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    const-string v0, "sendUSSD"

    .line 1870
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1873
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1875
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 1876
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/a;

    invoke-virtual {v1, p1}, Lcom/android/ims/a;->b(Ljava/lang/String;)V

    .line 1877
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1878
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-nez v0, :cond_1

    .line 1883
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1887
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1888
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/android/ims/e;->a(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    const-string v0, "dialstring"

    .line 1890
    invoke-virtual {p1, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1893
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/a$b;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/ims/e;->a(Landroid/telephony/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/a$b;)Lcom/android/ims/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/a;

    .line 1894
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    .line 1895
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pending ussd updated, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPendingUssd:Landroid/os/Message;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1897
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendUSSD : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1899
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    return-void
.end method

.method public setAlwaysPlayRemoteHoldTone(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4349
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4270
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsDataEnabled:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1731
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDesiredMute:Z

    .line 1732
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->setMute(Z)V

    return-void
.end method

.method public setPhoneNumberUtilsProxy(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneNumberUtilsProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneNumberUtilsProxy;

    return-void
.end method

.method public setRetryTimeout(Lcom/android/ims/e$a$b;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManagerConnector:Lcom/android/ims/e$a;

    iput-object p1, v0, Lcom/android/ims/e$a;->a:Lcom/android/ims/e$a$b;

    return-void
.end method

.method public setSharedPreferenceProxy(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 584
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSharedPreferenceProxy:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$SharedPreferenceProxy;

    return-void
.end method

.method public setSwitchingFgAndBgCallsValue(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2080
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSwitchingFgAndBgCalls:Z

    return-void
.end method

.method public setTtyMode(I)V
    .locals 2

    .line 1698
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-nez v0, :cond_0

    const-string p1, "ImsPhoneCallTracker"

    const-string v0, "ImsManager is null when setting TTY mode"

    .line 1699
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v1, "carrier_volte_tty_supported_bool"

    .line 10266
    invoke-virtual {v0, v1}, Lcom/android/ims/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    .line 10269
    invoke-virtual {v0}, Lcom/android/ims/e;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10268
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/ims/e;->e(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 1706
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setTtyMode : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1707
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2

    .line 1716
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/e;

    if-nez v0, :cond_0

    .line 1717
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getImsManagerIsNullException()Lcom/android/ims/ImsException;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    return-void

    .line 1722
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/e;->a(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1724
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUITTYMode : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    .line 1725
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 1726
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->retryGetImsService()V

    return-void
.end method

.method public startDtmf(C)V
    .locals 3

    const-string v0, "startDtmf"

    .line 1760
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "startDtmf :: "

    .line 10622
    invoke-virtual {v0, v1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 10624
    iget-object v1, v0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10625
    :try_start_0
    iget-object v2, v0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v2, :cond_0

    .line 10626
    iget-object v0, v0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession;->startDtmf(C)V

    .line 10628
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const-string p1, "startDtmf : no foreground call"

    .line 1766
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public stopDtmf()V
    .locals 3

    const-string v0, "stopDtmf"

    .line 1772
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1774
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "stopDtmf :: "

    .line 10635
    invoke-virtual {v0, v1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 10637
    iget-object v1, v0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10638
    :try_start_0
    iget-object v2, v0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v2, :cond_0

    .line 10639
    iget-object v0, v0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->stopDtmf()V

    .line 10641
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string v0, "stopDtmf : no foreground call"

    .line 1778
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method unholdHeldCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 1352
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    .line 1353
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1359
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mCallExpectedToResume:Lcom/android/ims/a;

    .line 1360
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHoldSwitchingState:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 1361
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    const-string/jumbo v1, "unholdCurrentCall"

    .line 1362
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logHoldSwapState(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v0}, Lcom/android/ims/a;->l()V

    .line 1364
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "Ignoring unhold request while already unholding or swapping"

    .line 1355
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1368
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterPhoneStateListener(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$PhoneStateListener;)V
    .locals 1

    .line 3975
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCarrierConfigCache(Landroid/os/PersistableBundle;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "allow_emergency_video_calls_bool"

    .line 977
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowEmergencyVideoCalls:Z

    const-string/jumbo v0, "treat_downgraded_video_calls_as_video_calls_bool"

    .line 979
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mTreatDowngradedVideoCallsAsVideoCalls:Z

    const-string v0, "drop_video_call_when_answering_audio_call_bool"

    .line 982
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mDropVideoCallWhenAnsweringAudioCall:Z

    const-string v0, "allow_add_call_during_video_call"

    .line 985
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowAddCallDuringVideoCall:Z

    const-string v0, "allow_holding_video_call"

    .line 988
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAllowHoldingVideoCall:Z

    const-string v0, "notify_vt_handover_to_wifi_failure_bool"

    .line 990
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyVtHandoverToWifiFail:Z

    const-string v0, "support_downgrade_vt_to_audio_bool"

    .line 992
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportDowngradeVtToAudio:Z

    const-string v0, "notify_handover_video_from_wifi_to_lte_bool"

    .line 994
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromWifiToLTE:Z

    const-string v0, "notify_handover_video_from_lte_to_wifi_bool"

    .line 996
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mNotifyHandoverVideoFromLTEToWifi:Z

    const-string v0, "ignore_data_enabled_changed_for_video_calls"

    .line 998
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreDataEnabledChangedForVideoCalls:Z

    const-string/jumbo v0, "vilte_data_is_metered_bool"

    .line 1000
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsViLteDataMetered:Z

    const-string v0, "support_pause_ims_video_calls_bool"

    .line 1002
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mSupportPauseVideo:Z

    const-string v0, "always_play_remote_hold_tone_bool"

    .line 1004
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAlwaysPlayRemoteHoldTone:Z

    const-string v0, "auto_retry_failed_wifi_emergency_call"

    .line 1006
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mAutoRetryFailedWifiEmergencyCall:Z

    const-string v0, "ignore_reset_ut_capability_bool"

    .line 1008
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIgnoreResetUtCapability:Z

    const-string v0, "ims_reasoninfo_mapping_string_array"

    .line 1012
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1013
    array-length v0, p1

    if-lez v0, :cond_5

    .line 1014
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    const-string/jumbo v4, "|"

    .line 1015
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1016
    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 1022
    :try_start_0
    aget-object v5, v4, v1

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    .line 1025
    :cond_0
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    const/4 v6, 0x1

    .line 1027
    aget-object v6, v4, v6

    if-nez v6, :cond_1

    const-string v6, ""

    :cond_1
    const/4 v7, 0x2

    .line 1031
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1033
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addReasonCodeRemapping(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Loaded ImsReasonInfo mapping : fromCode = "

    .line 1035
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v4, "any"

    goto :goto_2

    .line 1036
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ; message = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ; toCode = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1034
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1038
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid ImsReasonInfo mapping found: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const-string p1, "No carrier ImsReasonInfo mappings defined."

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method
