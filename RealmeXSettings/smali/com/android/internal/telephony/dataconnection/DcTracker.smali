.class public Lcom/android/internal/telephony/dataconnection/DcTracker;
.super Lcom/android/internal/telephony/dataconnection/AbstractDcTracker;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$RecoveryAction;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ReleaseNetworkType;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$RequestNetworkType;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field static final DATA_COMPLETE_MSG_EXTRA_NETWORK_REQUEST:Ljava/lang/String; = "extra_network_request"

.field static final DATA_COMPLETE_MSG_EXTRA_REQUEST_TYPE:Ljava/lang/String; = "extra_request_type"

.field static final DATA_COMPLETE_MSG_EXTRA_SUCCESS:Ljava/lang/String; = "extra_success"

.field static final DATA_COMPLETE_MSG_EXTRA_TRANSPORT_TYPE:Ljava/lang/String; = "extra_transport_type"

.field private static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field private static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field private static final DATA_STALL_NOT_SUSPECTED:Z = false

.field private static final DATA_STALL_SUSPECTED:Z = true

.field protected static final DBG:Z = true

.field private static final DEBUG_PROV_APN_ALARM:Ljava/lang/String; = "persist.debug.prov_apn_alarm"

.field private static final EVENT_SIM_RECORDS_LOADED:I = 0x64

.field private static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-stall"

.field private static final INTENT_DATA_STALL_ALARM_EXTRA_TAG:Ljava/lang/String; = "data_stall_alarm_extra_tag"

.field private static final INTENT_DATA_STALL_ALARM_EXTRA_TRANSPORT_TYPE:Ljava/lang/String; = "data_stall_alarm_extra_transport_type"

.field private static final INTENT_PROVISIONING_APN_ALARM:Ljava/lang/String; = "com.android.internal.telephony.provisioning_apn_alarm"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reconnect_alarm_extra_reason"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TRANSPORT_TYPE:Ljava/lang/String; = "reconnect_alarm_extra_transport_type"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "reconnect_alarm_extra_type"

.field private static final NETWORK_TYPE_CBS:I = 0xc

.field private static final NETWORK_TYPE_DEFAULT:I = 0x0

.field private static final NETWORK_TYPE_DUN:I = 0x4

.field private static final NETWORK_TYPE_EMERGENCY:I = 0xf

.field private static final NETWORK_TYPE_FOTA:I = 0xa

.field private static final NETWORK_TYPE_HIPRI:I = 0x5

.field private static final NETWORK_TYPE_IA:I = 0xe

.field private static final NETWORK_TYPE_IMS:I = 0xb

.field private static final NETWORK_TYPE_MCX:I = 0x3e9

.field private static final NETWORK_TYPE_MMS:I = 0x2

.field private static final NETWORK_TYPE_SUPL:I = 0x3

.field private static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field private static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field private static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PROVISIONING_APN_ALARM_DELAY_IN_MS_DEFAULT:I = 0xdbba0

.field private static final PROVISIONING_APN_ALARM_TAG_EXTRA:Ljava/lang/String; = "provisioning.apn.alarm.tag"

.field private static final PROVISIONING_SPINNER_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final PUPPET_MASTER_RADIO_STRESS_TEST:Ljava/lang/String; = "gsm.defaultpdpcontext.active"

.field private static final RADIO_TESTS:Z = false

.field private static final RECOVERY_ACTION_CLEANUP:I = 0x1

.field private static final RECOVERY_ACTION_GET_DATA_CALL_LIST:I = 0x0

.field private static final RECOVERY_ACTION_RADIO_RESTART:I = 0x3

.field private static final RECOVERY_ACTION_REREGISTER:I = 0x2

.field public static final RELEASE_TYPE_DETACH:I = 0x2

.field public static final RELEASE_TYPE_HANDOVER:I = 0x3

.field public static final RELEASE_TYPE_NORMAL:I = 0x1

.field public static final REQUEST_TYPE_HANDOVER:I = 0x2

.field public static final REQUEST_TYPE_NORMAL:I = 0x1

.field private static final VDBG:Z = false

.field private static final VDBG_STALL:Z = false

.field private static sEnableFailFastRefCounter:I


# instance fields
.field public isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAllApnSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private final mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mApnContextsByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

.field private final mApnSettingsInitializationLog:Landroid/util/LocalLog;

.field private mApnToDataConnectionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mAutoAttachOnCreationConfig:Z

.field private mCanSetPreferApn:Z

.field private final mDataConnectionTracker:Landroid/os/Handler;

.field private mDataConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

.field private final mDataRoamingLeakageLog:Landroid/util/LocalLog;

.field private mDataServiceBound:Z

.field private final mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

.field private mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field private mDataStallAlarmTag:I

.field private volatile mDataStallNoRxEnabled:Z

.field private mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

.field private mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field private mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

.field private mDisconnectPendingCount:I

.field private mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

.field private mEmergencyApn:Landroid/telephony/data/ApnSetting;

.field private volatile mFailFast:Z

.field protected final mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mInVoiceCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDisposed:Z

.field private mIsProvisioning:Z

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mLastDataProfileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogTag:Ljava/lang/String;

.field private mNetStatPollEnabled:Z

.field private mNetStatPollPeriod:I

.field private mNoRecvPollCount:I

.field private final mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;

.field protected final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPollNetStat:Ljava/lang/Runnable;

.field private mPreferredApn:Landroid/telephony/data/ApnSetting;

.field private final mPrioritySortedApnContexts:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionActionName:Ljava/lang/String;

.field private mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

.field private mProvisioningApnAlarmTag:I

.field private mProvisioningSpinner:Landroid/app/ProgressDialog;

.field private mProvisioningUrl:Ljava/lang/String;

.field private mReconnectIntent:Landroid/app/PendingIntent;

.field private mReplyAc:Lcom/android/internal/util/AsyncChannel;

.field private final mRequestNetworkCompletionMsgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRequestedApnType:I

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mRxPkts:J

.field private mSentSinceLastRecv:J

.field private final mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

.field private mState:Lcom/android/internal/telephony/DctConstants$State;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTransportType:I

.field private mTxPkts:J

.field private final mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    .line 657
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 762
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTracker;-><init>()V

    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x11

    .line 231
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:I

    .line 277
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    const/4 v3, 0x5

    invoke-direct {v0, v3, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 292
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    .line 295
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Landroid/telephony/data/ApnSetting;

    .line 298
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    .line 303
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    .line 306
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    .line 309
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceBound:Z

    .line 325
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    .line 330
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    .line 332
    new-instance v2, Landroid/util/LocalLog;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataRoamingLeakageLog:Landroid/util/LocalLog;

    .line 333
    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnSettingsInitializationLog:Landroid/util/LocalLog;

    .line 335
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 393
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;

    .line 561
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 566
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 567
    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 568
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 574
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    .line 576
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(JJ)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    .line 580
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 584
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNoRecvPollCount:I

    const/4 v2, 0x1

    .line 588
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallNoRxEnabled:Z

    .line 590
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    .line 593
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 596
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 599
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    .line 600
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 601
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 606
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    .line 609
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 612
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    .line 616
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 619
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 622
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    .line 624
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 626
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLastDataProfileList:Ljava/util/ArrayList;

    .line 644
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 660
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    .line 662
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 682
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestNetworkCompletionMsgs:Ljava/util/Map;

    const-string v2, "DCT"

    .line 763
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLogTag:Ljava/lang/String;

    .line 764
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 765
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 766
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 767
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 768
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 769
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    .line 770
    new-instance v2, Lcom/android/internal/telephony/SettingsObserver;

    invoke-direct {v2, v0, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 771
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 772
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    .line 773
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 7

    .line 686
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTracker;-><init>()V

    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x11

    .line 231
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:I

    .line 277
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    const/4 v3, 0x5

    invoke-direct {v0, v3, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 292
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    .line 295
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Landroid/telephony/data/ApnSetting;

    .line 298
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    .line 303
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    .line 306
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    .line 309
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceBound:Z

    .line 325
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    .line 330
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    .line 332
    new-instance v2, Landroid/util/LocalLog;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataRoamingLeakageLog:Landroid/util/LocalLog;

    .line 333
    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnSettingsInitializationLog:Landroid/util/LocalLog;

    .line 335
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 393
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;

    .line 561
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 566
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 567
    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 568
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 574
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    .line 576
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(JJ)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    .line 580
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 584
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNoRecvPollCount:I

    const/4 v2, 0x1

    .line 588
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallNoRxEnabled:Z

    .line 590
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    .line 593
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 596
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 599
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    .line 600
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 601
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 606
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    .line 609
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 612
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    .line 616
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 619
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 622
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    .line 624
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 626
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLastDataProfileList:Ljava/util/ArrayList;

    .line 644
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 660
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    .line 662
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 682
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestNetworkCompletionMsgs:Ljava/util/Map;

    .line 687
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "DCT.constructor"

    .line 688
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 690
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p2, v2, :cond_0

    const-string v5, "C"

    goto :goto_0

    :cond_0
    const-string v5, "I"

    .line 694
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 695
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v2, :cond_1

    .line 696
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 698
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DCT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLogTag:Ljava/lang/String;

    .line 700
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    .line 701
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-direct {v4, p1, p2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;-><init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 703
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    .line 704
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 705
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const v4, 0x42021

    invoke-virtual {p2, p0, v4, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 706
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 707
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v4, "alarm"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 709
    new-instance p2, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    .line 711
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.SCREEN_ON"

    .line 712
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 713
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.internal.telephony.data-stall"

    .line 714
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.internal.telephony.provisioning_apn_alarm"

    .line 715
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 716
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 720
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    const v5, 0x4202e

    invoke-virtual {v4, p0, v5, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 723
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v5, p2, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 725
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 726
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v5, "disabled_on_boot_key"

    invoke-interface {p2, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v4, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 728
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 729
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;

    invoke-virtual {p2, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 731
    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "DcHandlerThread"

    invoke-direct {p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 733
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 734
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-static {p2, p0, v4, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->makeDcc(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Handler;Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 735
    new-instance p2, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p2, v3, v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 737
    iput-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 738
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllEvents()V

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    .line 740
    new-instance p2, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    .line 741
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 744
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initApnContexts()V

    .line 746
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 748
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.android.internal.telephony.data-reconnect."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_1

    .line 753
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initEmergencyApnSetting()V

    .line 755
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "com.android.internal.telephony.PROVISION"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    .line 757
    new-instance p1, Lcom/android/internal/telephony/SettingsObserver;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 758
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerSettingsObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DcTracker;)I
    .locals 0

    .line 136
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/dataconnection/DcTracker;I)I
    .locals 0

    .line 136
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/os/Handler;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerSettingsObserver()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DcTracker;)J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/dataconnection/DcTracker;J)J
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallNoRxEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartDataStallAlarm()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/content/Intent;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDefaultDataRoamingEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateDataActivity()V

    return-void
.end method

.method private addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    .locals 7

    .line 1000
    new-instance v6, Lcom/android/internal/telephony/dataconnection/ApnContext;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLogTag:Ljava/lang/String;

    move-object v0, v6

    move-object v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 1001
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1003
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method private addEmergencyApnSetting()V
    .locals 3

    .line 4190
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_2

    .line 4191
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/ApnSetting;

    const/16 v2, 0x200

    .line 4192
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "addEmergencyApnSetting - E-APN setting is already present"

    .line 4193
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    .line 4200
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4201
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding emergency APN : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private addRequestNetworkCompleteMsg(Landroid/os/Message;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestNetworkCompletionMsgs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2364
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2365
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestNetworkCompletionMsgs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3415
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/16 v3, 0x5b

    .line 3416
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3417
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    .line 3418
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3420
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 3269
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildWaitingApns: E requestedApnType="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3272
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 3274
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApns()Ljava/util/ArrayList;

    move-result-object v2

    .line 3275
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3276
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/data/ApnSetting;

    .line 3277
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3280
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sortApnListByPreferred(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 3284
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 3293
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v3, v4

    goto :goto_1

    :catch_0
    const-string v4, "buildWaitingApns: usePreferred NotFoundException set to true"

    .line 3296
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    :goto_1
    if-eqz v3, :cond_2

    .line 3300
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 3303
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buildWaitingApns: usePreferred="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " canSetPreferApn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mPreferredApn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " operator="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " radioTech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " IccRecords r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_5

    .line 3310
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-eqz v3, :cond_5

    .line 3311
    invoke-virtual {v3, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3313
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buildWaitingApns: Preferred APN:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 3314
    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3313
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3316
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "buildWaitingApns: no preferred APN"

    if-eqz v2, :cond_4

    .line 3317
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v2

    .line 3318
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v6

    .line 3317
    invoke-static {v2, v6}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3319
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3320
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sortApnListByPreferred(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3321
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "buildWaitingApns: X added preferred apnList="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object p1

    .line 3324
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3325
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 3326
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    goto :goto_2

    .line 3329
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3330
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 3331
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 3335
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buildWaitingApns: mAllApnSettings="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3336
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 3337
    invoke-virtual {v3, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3338
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v4

    .line 3339
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v5

    .line 3338
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3340
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buildWaitingApns: adding apn="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3341
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3344
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buildWaitingApns: networkTypeBitmask:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3345
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not include radioTech:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3344
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3350
    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buildWaitingApns: couldn\'t handle requested ApnType="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3355
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sortApnListByPreferred(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "default"

    .line 3357
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-nez p1, :cond_a

    .line 3358
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz p1, :cond_a

    .line 3361
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3362
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_a

    .line 3363
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/ApnSetting;

    .line 3364
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3365
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v3

    .line 3364
    invoke-virtual {v1, v2, v3}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3366
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "buildWaitingApns: reset preferred APN to "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3368
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 3369
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 3376
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "buildWaitingApns: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " APNs in the list: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object p2
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1862
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1865
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1866
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1867
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 1868
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private checkDataRoamingStatus(Z)V
    .locals 4

    if-nez p1, :cond_2

    .line 2657
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2658
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2659
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2660
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_0

    .line 2661
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataRoamingLeakageLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PossibleRoamingLeakage  connection params: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2662
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2663
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getConnectionParams()Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2661
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 16

    move-object/from16 v0, p0

    .line 2285
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v3, v1, :cond_0

    .line 2289
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApns()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sortApnListByPreferred(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 2292
    :goto_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkForCompatibleConnectedApnContext: apnContext="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2297
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    move-object v6, v5

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " curApnCtx="

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2298
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2300
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v10

    .line 2301
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "apnSetting: "

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-eqz v3, :cond_5

    .line 2302
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 2303
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/data/ApnSetting;

    .line 2304
    invoke-virtual {v14, v10}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2305
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v12, :cond_4

    if-eq v14, v11, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v7

    move-object v5, v9

    goto :goto_2

    .line 2308
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkForCompatibleConnectedApnContext: found dun conn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v9

    :cond_5
    if-eqz v10, :cond_1

    .line 2323
    invoke-virtual {v10, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2324
    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v13

    aget v10, v10, v13

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto/16 :goto_1

    :cond_6
    move-object v6, v7

    move-object v5, v9

    goto/16 :goto_1

    .line 2327
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkForCompatibleConnectedApnContext: found canHandle conn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v9

    :cond_8
    if-eqz v5, :cond_9

    .line 2349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkForCompatibleConnectedApnContext: found potential conn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v5

    .line 2355
    :cond_9
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "checkForCompatibleConnectedApnContext: NO conn apnContext="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v2
.end method

.method private cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z
    .locals 9

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanUpAllConnections: detach="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1591
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SinglePdnArbitration"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "specificDisabled"

    .line 1592
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "roamingOn"

    .line 1593
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carrierActionDisableMeteredApn"

    .line 1594
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1595
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pdpReset"

    .line 1596
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1599
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    const/4 v6, 0x2

    const-string v7, "ims"

    if-eqz v0, :cond_4

    .line 1601
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1604
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1605
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1606
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v2

    .line 1607
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "clean up metered ApnContext Type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1607
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1610
    invoke-direct {p0, p1, v6, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_1

    .line 1615
    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1616
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1620
    :cond_5
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v7

    if-nez v7, :cond_6

    move v3, v2

    .line 1621
    :cond_6
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1622
    invoke-direct {p0, p1, v6, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_1

    .line 1626
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 1627
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    const/16 p2, 0x11

    .line 1630
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:I

    .line 1632
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cleanUpConnectionInternal: mDisconnectPendingCount = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 1633
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez p1, :cond_8

    .line 1634
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    :cond_8
    return v3
.end method

.method private cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 8

    if-nez p3, :cond_0

    const-string p1, "cleanUpConnectionInternal: apn context is null"

    .line 1667
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    .line 1671
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cleanUpConnectionInternal: detach="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1675
    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 1677
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_1

    .line 1680
    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_6

    .line 1684
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v4, :cond_9

    const/4 v1, 0x0

    .line 1686
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dun"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1689
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "cleanUpConnectionInternal: disconnectAll DUN connection"

    .line 1691
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move v1, v5

    .line 1700
    :cond_2
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getConnectionGeneration()I

    move-result v4

    .line 1701
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cleanUpConnectionInternal: tearing down"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v3, " all"

    .line 1702
    :cond_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " using gen#"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1703
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "apnContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1705
    new-instance v3, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v4, 0x4200f

    .line 1706
    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    if-nez v1, :cond_5

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    goto :goto_0

    .line 1711
    :cond_4
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1709
    :cond_5
    :goto_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownAll(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1714
    :goto_1
    sget-object p2, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1715
    iget p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    add-int/2addr p2, v5

    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    goto :goto_2

    .line 1720
    :cond_6
    sget-object p2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    const-string p2, "cleanUpConnectionInternal: connected, bug no dc"

    .line 1721
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1722
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 1727
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->reset()V

    .line 1728
    :cond_8
    sget-object p2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1729
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1730
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    .line 1736
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1738
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cleanUpConnectionInternal: X detach="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1740
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " apnContext="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " dc="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    return-void
.end method

.method private cleanUpConnectionsOnUpdatedApns(ZLjava/lang/String;)V
    .locals 6

    .line 4225
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleanUpConnectionsOnUpdatedApns: detach="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4226
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "apnChanged"

    .line 4227
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    goto :goto_1

    .line 4229
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4235
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4236
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v2

    .line 4238
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result v4

    .line 4237
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 4241
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 4245
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->containsAllApns(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4247
    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 4248
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4250
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 4251
    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 4257
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result p2

    if-nez p2, :cond_5

    .line 4258
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 4259
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    :cond_5
    const/16 p2, 0x11

    .line 4262
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:I

    .line 4264
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mDisconnectPendingCount = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 4265
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez p1, :cond_6

    .line 4266
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    :cond_6
    return-void
.end method

.method private completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;I)V
    .locals 3

    .line 2706
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "completeConnection: successful, notify the world apnContext="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2708
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "completeConnection: MOBILE_PROVISIONING_ACTION url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MAIN"

    const-string v1, "android.intent.category.APP_BROWSER"

    .line 2713
    invoke-static {v0, v1}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2715
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10400000

    .line 2716
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2719
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2721
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "completeConnection: startActivityAsUser failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2724
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    const/4 v1, 0x0

    .line 2725
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    .line 2726
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    const v2, 0x4202a

    .line 2727
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    .line 2733
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 2735
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 2736
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    return-void
.end method

.method private containsAllApns(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)Z"
        }
    .end annotation

    .line 4209
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    .line 4211
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 4213
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 4214
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v5

    .line 4213
    invoke-virtual {v3, v0, v5}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-nez v1, :cond_0

    return v4

    :cond_3
    return v1
.end method

.method private createDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 7

    const-string v0, "createDataConnection E"

    .line 3242
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3244
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 3245
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    move v2, v0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v1

    .line 3247
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createDataConnection() X id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dc="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public static createDataProfile(Landroid/telephony/data/ApnSetting;IZ)Landroid/telephony/data/DataProfile;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4809
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4813
    :cond_0
    invoke-static {v0}, Landroid/telephony/ServiceState;->bearerBitmapHasCdma(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 4819
    :goto_0
    new-instance v2, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v2}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 4820
    invoke-virtual {v2, p1}, Landroid/telephony/data/DataProfile$Builder;->setProfileId(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4821
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/telephony/data/DataProfile$Builder;->setApn(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4822
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/telephony/data/DataProfile$Builder;->setProtocolType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4823
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/telephony/data/DataProfile$Builder;->setAuthType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4824
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/telephony/data/DataProfile$Builder;->setUserName(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4825
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/telephony/data/DataProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4826
    invoke-virtual {p1, v1}, Landroid/telephony/data/DataProfile$Builder;->setType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4827
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/data/DataProfile$Builder;->setMaxConnectionsTime(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4828
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/data/DataProfile$Builder;->setMaxConnections(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4829
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/data/DataProfile$Builder;->setWaitTime(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4830
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/data/DataProfile$Builder;->enable(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4831
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/data/DataProfile$Builder;->setSupportedApnTypesBitmask(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4832
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/data/DataProfile$Builder;->setRoamingProtocolType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4833
    invoke-virtual {p1, v0}, Landroid/telephony/data/DataProfile$Builder;->setBearerBitmask(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4834
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/data/DataProfile$Builder;->setMtu(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 4835
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile$Builder;->setPersistent(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 4836
    invoke-virtual {p0, p2}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 4837
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method

.method private static createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;
    .locals 1

    .line 4801
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;IZ)Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method

.method private dedupeApnSettings()V
    .locals 6

    .line 3186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3191
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 3192
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/ApnSetting;

    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    move v1, v2

    .line 3195
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 3196
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/ApnSetting;

    .line 3197
    invoke-virtual {v3, v4}, Landroid/telephony/data/ApnSetting;->similar(Landroid/telephony/data/ApnSetting;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3198
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mergeApns(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;

    move-result-object v3

    .line 3199
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3201
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private destroyDataConnections()V
    .locals 1

    .line 3253
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v0, "destroyDataConnections: clear mDataConnectionList"

    .line 3254
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3255
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    const-string v0, "destroyDataConnections: mDataConnecitonList is empty, ignore"

    .line 3257
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 5

    .line 1879
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, 0x0

    .line 1881
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1882
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v4

    if-ne v4, v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_0

    .line 1889
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "findFreeDataConnection: found free DataConnection="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string v0, "findFreeDataConnection: NO free DataConnection"

    .line 1894
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getApnProfileID(Ljava/lang/String;)I
    .locals 2

    const-string v0, "ims"

    .line 3866
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string v0, "fota"

    .line 3868
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const-string v0, "cbs"

    .line 3870
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const-string v0, "ia"

    .line 3872
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "dun"

    .line 3874
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private getCellLocationId()I
    .locals 2

    .line 3883
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3886
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    .line 3887
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_0

    .line 3888
    :cond_0
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_1

    .line 3889
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private getDataRat()I
    .locals 3

    .line 4867
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 4868
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4871
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPreferredApnSetId()I
    .locals 7

    .line 1792
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preferapnset/subId/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1794
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1793
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "apn_set_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "getPreferredApnSetId: cursor is null"

    .line 1797
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    return v1

    .line 1802
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    const-string v2, "getPreferredApnSetId: no APNs found"

    .line 1803
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1806
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1807
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1810
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1811
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1
.end method

.method private getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .line 3896
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    return-object p1
.end method

.method private handlePcoData(Landroid/os/AsyncResult;)V
    .locals 6

    .line 4375
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 4376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PCO_DATA exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 4379
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/PcoData;

    .line 4380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4381
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    iget v2, p1, Landroid/telephony/PcoData;->cid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->getActiveDcByCid(I)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4383
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4385
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 4386
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PCO_DATA for unknown cid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/telephony/PcoData;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inferring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 4387
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 4388
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v3

    .line 4389
    iget v4, p1, Landroid/telephony/PcoData;->cid:I

    if-ne v3, v4, :cond_3

    .line 4391
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4392
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 4397
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContexts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4398
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v4, v5, :cond_4

    .line 4400
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4407
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "PCO_DATA - couldn\'t infer cid"

    .line 4408
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 4411
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 4412
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContexts()Ljava/util/List;

    move-result-object v1

    .line 4413
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_8

    .line 4417
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4418
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    .line 4420
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "apnType"

    .line 4421
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4422
    iget-object v2, p1, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    const-string v4, "apnProto"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4423
    iget v2, p1, Landroid/telephony/PcoData;->pcoId:I

    const-string v4, "pcoId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4424
    iget-object v2, p1, Landroid/telephony/PcoData;->contents:[B

    const-string v4, "pcoValue"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4425
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method private handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 1

    .line 4315
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    const/4 v0, 0x0

    .line 4316
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 4317
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    return-void
.end method

.method private handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 0

    .line 4328
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 4329
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 4330
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    return-void
.end method

.method private initApnContexts()V
    .locals 6

    const-string v0, "initApnContexts: E"

    .line 1008
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1012
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    .line 1013
    new-instance v4, Landroid/net/NetworkConfig;

    invoke-direct {v4, v3}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 1016
    iget v3, v4, Landroid/net/NetworkConfig;->type:I

    if-eqz v3, :cond_7

    const/16 v5, 0x3e9

    if-eq v3, v5, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    const/16 v5, 0xe

    if-eq v3, v5, :cond_1

    const/16 v5, 0xf

    if-eq v3, v5, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 1051
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "initApnContexts: skipping unknown type="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v4, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    const-string v3, "cbs"

    .line 1039
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :pswitch_1
    const-string v3, "ims"

    .line 1036
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :pswitch_2
    const-string v3, "fota"

    .line 1033
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, "emergency"

    .line 1045
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "ia"

    .line 1042
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "hipri"

    .line 1030
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "dun"

    .line 1027
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, "supl"

    .line 1024
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, "mms"

    .line 1021
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :cond_6
    const-string v3, "mcx"

    .line 1048
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    goto :goto_1

    :cond_7
    const-string v3, "default"

    .line 1018
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    .line 1054
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "initApnContexts: apnContext="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initEmergencyApnSetting()V
    .locals 7

    .line 4172
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "filtered"

    .line 4173
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "type=\"emergency\""

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4172
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4177
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4178
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4179
    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Landroid/telephony/data/ApnSetting;

    .line 4182
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private isConnected()Z
    .locals 3

    .line 3090
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3091
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isDataRoamingFromUserAction()Z
    .locals 5

    .line 2575
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2576
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "data_roaming_is_user_setting_key"

    .line 2580
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const-string v4, "device_provisioned"

    .line 2581
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 2582
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const/4 v2, 0x1

    .line 2584
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 6

    .line 2121
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 2125
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2126
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2129
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    .line 2130
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v3, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method private isOnlySingleDcAllowed(I)Z
    .locals 5

    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2150
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 2152
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "only_single_dc_allowed_int_array"

    .line 2154
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2159
    :goto_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "persist.telephony.test.singleDc"

    .line 2160
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 2164
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    if-nez v1, :cond_3

    .line 2165
    aget v4, v0, v3

    if-ne p1, v4, :cond_2

    move v1, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2169
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isOnlySingleDcAllowed("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v1
.end method

.method private isPhoneStateIdle()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4646
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4647
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4648
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 4649
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isPhoneStateIdle false: Voice call active on phone "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isProvisioningApn(Ljava/lang/String;)Z
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz p1, :cond_0

    .line 1146
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 4020
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private mergeApns(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;
    .locals 29

    .line 3211
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v0

    .line 3212
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    const/16 v2, 0x11

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3213
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v0

    :cond_0
    move v1, v0

    .line 3215
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    or-int v13, v0, v2

    .line 3216
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 3217
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3218
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v8, v0

    .line 3219
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v0

    :goto_2
    move v9, v0

    .line 3220
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3221
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v5, v0

    .line 3222
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v0

    :goto_4
    move v6, v0

    .line 3223
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    goto :goto_5

    .line 3224
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    :goto_5
    move v14, v0

    .line 3225
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 3226
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v0

    :goto_6
    move v15, v0

    .line 3227
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 3228
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_7

    .line 3229
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    or-int/2addr v0, v3

    move/from16 v17, v0

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v17, v2

    .line 3231
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v3

    .line 3232
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v10

    .line 3233
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v12

    .line 3234
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v18

    .line 3235
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v19

    if-nez v19, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v19

    if-eqz v19, :cond_b

    :cond_a
    const/4 v2, 0x1

    :cond_b
    move/from16 v19, v2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v20

    .line 3236
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v24

    .line 3237
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result v27

    .line 3238
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v28

    move-object v2, v0

    .line 3231
    invoke-static/range {v1 .. v28}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;III)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method private notifyAllDataDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 3965
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    .line 3966
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    .line 3967
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private notifyNoData(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 2

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyNoData: type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2247
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2248
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2249
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->notifyDataConnectionFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "subscription"

    const/4 v1, -0x1

    .line 544
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 546
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "data_stall_alarm_extra_transport_type"

    .line 550
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 551
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    const v1, 0x42011

    .line 556
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-string v2, "data_stall_alarm_extra_tag"

    .line 557
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 558
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V
    .locals 3

    .line 4754
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActionIntentProvisioningApnAlarm: action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4756
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const v1, 0x42027

    .line 4755
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-string v1, "provisioning.apn.alarm.tag"

    const/4 v2, 0x0

    .line 4757
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4758
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 1

    const v0, 0x4202f

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 489
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 490
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onApnChanged()V
    .locals 4

    .line 2092
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    .line 2093
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 2096
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v3, v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v3, :cond_2

    .line 2098
    check-cast v1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    :cond_2
    const-string v1, "onApnChanged: createAllApnList and cleanUpAllConnections"

    .line 2103
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 2105
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfilesAsNeeded()V

    .line 2106
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    xor-int/2addr v0, v2

    const-string v1, "apnChanged"

    .line 2107
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionsOnUpdatedApns(ZLjava/lang/String;)V

    .line 2110
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 2111
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    :cond_3
    return-void
.end method

.method private onDataConnectionAttached()V
    .locals 3

    const-string v0, "onDataConnectionAttached"

    .line 1215
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1217
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v2, :cond_0

    const-string v0, "onDataConnectionAttached: start polling notify attached"

    .line 1218
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1219
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    const/4 v0, 0x0

    .line 1220
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    .line 1223
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    if-eqz v0, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1226
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "dataAttached"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    return-void
.end method

.method private onDataConnectionDetached()V
    .locals 2

    const-string v0, "onDataConnectionDetached: stop polling and notify detached"

    .line 1207
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1208
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 1209
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 1210
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    .line 1211
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private onDataEnabledChanged(ZI)V
    .locals 2

    .line 3986
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataEnabledChanged: enable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabledChangedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3991
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->reevaluateDataConnections()V

    .line 3992
    sget-object p1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string p2, "dataEnabled"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const-string p2, "specificDisabled"

    goto :goto_0

    :cond_1
    const-string p2, "carrierActionDisableMeteredApn"

    goto :goto_0

    :cond_2
    const-string p2, "dataDisabledInternal"

    .line 4011
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    return-void
.end method

.method private onDataReconnect(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "reconnect_alarm_extra_reason"

    .line 494
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reconnect_alarm_extra_type"

    .line 495
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    const-string v3, "subscription"

    const/4 v4, -0x1

    .line 498
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 503
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eq v3, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    const-string v3, "reconnect_alarm_extra_transport_type"

    .line 507
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 508
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    if-eq p1, v2, :cond_1

    return-void

    .line 512
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDataReconnect: mState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " apnContext="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 519
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 520
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    .line 523
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDataReconnect: apnContext state="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 525
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "onDataReconnect: keep associated"

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "onDataReconnect: state is FAILED|IDLE, disassociate"

    .line 528
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string v0, ""

    .line 530
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    :goto_1
    const v0, 0x42003

    .line 535
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    .line 537
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private onDataRoamingOff()V
    .locals 2

    const-string v0, "onDataRoamingOff"

    .line 2595
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2597
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->reevaluateDataConnections()V

    .line 2599
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2604
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfilesAsNeeded()V

    .line 2605
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 2610
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "roamingOff"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    return-void

    .line 2612
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    return-void
.end method

.method private onDataRoamingOnOrSettingsChanged(I)V
    .locals 3

    const-string v0, "onDataRoamingOnOrSettingsChanged"

    .line 2620
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const v1, 0x42030

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2625
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "device is not roaming. ignored the request."

    .line 2626
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2630
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkDataRoamingStatus(Z)V

    .line 2632
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v1

    const-string v2, "roamingOn"

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 2637
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->reevaluateDataConnections()V

    :cond_2
    const-string p1, "onDataRoamingOnOrSettingsChanged: setup data on roaming"

    .line 2640
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2642
    sget-object p1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 2643
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    return-void

    :cond_3
    const-string p1, "onDataRoamingOnOrSettingsChanged: Tear down data connection on roaming."

    .line 2648
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2649
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    return-void
.end method

.method private onDataServiceBindingChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4842
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->start()V

    goto :goto_0

    .line 4844
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->dispose()V

    .line 4846
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceBound:Z

    return-void
.end method

.method private onDataSetupComplete(Lcom/android/internal/telephony/dataconnection/ApnContext;ZII)V
    .locals 8

    .line 2745
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v0

    .line 2746
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestNetworkCompletionMsgs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2748
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2749
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    invoke-direct {p0, v2, p2, v3, p4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRequestNetworkCompleteMsg(Landroid/os/Message;ZII)V

    goto :goto_0

    .line 2751
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const-string v0, "apnType"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_c

    .line 2755
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "onDataSetupComplete: no connection to DC, handle as error"

    .line 2776
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2777
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Lcom/android/internal/telephony/dataconnection/ApnContext;I)V

    return-void

    .line 2779
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p3

    .line 2781
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDataSetupComplete: success apn="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_3

    const-string/jumbo v5, "unknown"

    goto :goto_1

    .line 2782
    :cond_3
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2781
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v4, -0x1

    if-eqz p3, :cond_5

    .line 2784
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2786
    :try_start_0
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v5

    if-ne v5, v4, :cond_4

    const/16 v5, 0x1f90

    .line 2790
    :cond_4
    new-instance v6, Landroid/net/ProxyInfo;

    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2791
    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 2793
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2794
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2793
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 2799
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p2

    const-string v5, "default"

    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v6, "gsm.defaultpdpcontext.active"

    if-eqz p2, :cond_6

    :try_start_1
    const-string/jumbo p2, "true"

    .line 2801
    invoke-static {v6, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string p2, "Failed to set PUPPET_MASTER_RADIO_STRESS_TEST to true"

    .line 2803
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2805
    :goto_3
    iget-boolean p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-nez p2, :cond_7

    const-string p2, "onDataSetupComplete: PREFERRED APN is null"

    .line 2806
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2807
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 2808
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-eqz p2, :cond_7

    .line 2809
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    goto :goto_4

    :cond_6
    :try_start_2
    const-string p2, "false"

    .line 2814
    invoke-static {v6, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    const-string p2, "Failed to set PUPPET_MASTER_RADIO_STRESS_TEST to false"

    .line 2816
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2821
    :cond_7
    :goto_4
    sget-object p2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2823
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkDataRoamingStatus(Z)V

    .line 2825
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result p2

    .line 2826
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p3

    .line 2827
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_8

    .line 2828
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2829
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_8
    if-eqz p2, :cond_a

    .line 2831
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    if-eqz v1, :cond_9

    goto :goto_5

    .line 2846
    :cond_9
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "onDataSetupComplete: successful, BUT send connected to prov apn as mIsProvisioning:"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " == false && (isProvisioningApn:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " == true"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2853
    new-instance p2, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;

    .line 2854
    invoke-virtual {p3}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object p4

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2855
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p0, p4, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2856
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2859
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    invoke-virtual {p3, v2, v3, p2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 2863
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    goto :goto_6

    .line 2833
    :cond_a
    :goto_5
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    invoke-virtual {p3, v3, v3, p2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 2838
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;I)V

    .line 2866
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onDataSetupComplete: SETUP complete type="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", reason:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2867
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2866
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2869
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_b

    const-string p1, "persist.radio.test.pco"

    .line 2872
    invoke-static {p1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v4, :cond_b

    .line 2874
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "PCO testing: read pco value from persist.radio.test.pco "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2875
    new-array p2, v2, [B

    int-to-byte p1, p1

    aput-byte p1, p2, v3

    .line 2877
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2879
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "apnProto"

    const-string p4, "IPV4V6"

    .line 2880
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0xff00

    const-string p4, "pcoId"

    .line 2881
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "pcoValue"

    .line 2882
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2883
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    :cond_b
    return-void

    .line 2889
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    .line 2890
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDataSetupComplete: error apn="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", cause="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", requestType="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    invoke-static {p4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2890
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2893
    invoke-static {p3}, Landroid/telephony/DataFailCause;->isEventLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 2895
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getCellLocationId()I

    move-result p2

    const v4, 0xc3b9

    const/4 v5, 0x3

    .line 2896
    new-array v5, v5, [Ljava/lang/Object;

    .line 2897
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v2

    const/4 p2, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, p2

    .line 2896
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2899
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    .line 2900
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_e

    .line 2901
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    .line 2900
    :cond_e
    invoke-virtual {v2, v3, v1, p3}, Lcom/android/internal/telephony/Phone;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2904
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "errorCode"

    .line 2906
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2907
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2908
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 2910
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, p3, v1}, Landroid/telephony/DataFailCause;->isRadioRestartFailure(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2911
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->restartOnError(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const-string v0, "Modem restarted."

    .line 2912
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2913
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRestartRadio()V

    .line 2918
    :cond_10
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2919
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cause = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mark apn as permanent failed. apn = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->markApnPermanentFailed(Landroid/telephony/data/ApnSetting;)V

    .line 2922
    :cond_11
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Lcom/android/internal/telephony/dataconnection/ApnContext;I)V

    return-void
.end method

.method private onDataSetupCompleteError(Lcom/android/internal/telephony/dataconnection/ApnContext;I)V
    .locals 4

    .line 2934
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDelayForNextApn(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    .line 2939
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v2, "onDataSetupCompleteError: Try next APN. delay = "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2940
    sget-object p2, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2944
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(JLcom/android/internal/telephony/dataconnection/ApnContext;)V

    return-void

    .line 2948
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2949
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2950
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 2951
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onDataSetupCompleteError: Stop retrying APNs. delay="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", requestType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2951
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onDataStallAlarm(I)V
    .locals 6

    .line 4657
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    if-eq v0, p1, :cond_0

    .line 4659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataStallAlarm: ignore, tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expecting "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Data stall alarm"

    .line 4664
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4665
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateDataStallInfo()V

    .line 4667
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    const/16 v1, 0xa

    const-string v2, "pdp_watchdog_trigger_packet_count"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    .line 4672
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 4674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataStallAlarm: tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " do recovery action="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    .line 4675
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->access$2300(Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4674
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const p1, 0x42012

    .line 4678
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4685
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    return-void
.end method

.method private onDisableApn(II)V
    .locals 5

    .line 2467
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-nez v0, :cond_0

    .line 2469
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "disableApn("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): NO ApnContext"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 2474
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisableApn: apnType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", release type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2475
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2476
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    .line 2482
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDependencyMet()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "dataDisabledInternal"

    .line 2483
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dun"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2494
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2495
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v3, v4, :cond_7

    .line 2496
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Clean up the connection. Apn type = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", state = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2497
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2498
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2499
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    move p1, v1

    goto :goto_2

    :cond_5
    const-string v3, "dependencyUnmet"

    .line 2503
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move p1, v2

    .line 2507
    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    if-eqz p1, :cond_8

    .line 2509
    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2512
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "disableApn:isOnlySingleDcAllowed true & higher priority APN disabled"

    .line 2513
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2516
    sget-object p1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string p2, "SinglePdnArbitration"

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    :cond_9
    return-void
.end method

.method private onDisconnectDone(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4

    .line 2988
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisconnectDone: EVENT_DISCONNECT_DONE apnContext="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2989
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2991
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 2995
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2996
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onDisconnectDone: radio will be turned off, no retries"

    .line 2997
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2999
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Landroid/telephony/data/ApnSetting;)V

    .line 3000
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3004
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 3005
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 3008
    :cond_0
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez p1, :cond_1

    .line 3009
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    :cond_1
    return-void

    .line 3015
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "gsm.defaultpdpcontext.active"

    const-string v1, "false"

    .line 3017
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to set PUPPET_MASTER_RADIO_STRESS_TEST to false"

    .line 3019
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    :goto_0
    const-string v0, "onDisconnectDone: attached, ready and retry after disconnect"

    .line 3024
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getRetryAfterDisconnectDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 3029
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(JLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_1

    .line 3032
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11100ab

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3035
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    const-string v0, "onDisconnectDone: restartRadio after provisioning"

    .line 3036
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3037
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    .line 3039
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Landroid/telephony/data/ApnSetting;)V

    .line 3040
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3041
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "onDisconnectDone: isOnlySigneDcAllowed true so setup single apn"

    .line 3042
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3043
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "SinglePdnArbitration"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_1

    :cond_5
    const-string v0, "onDisconnectDone: not retrying"

    .line 3046
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3050
    :cond_6
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    .line 3051
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 3053
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_8

    .line 3054
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3055
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    .line 3054
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    .line 3056
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    :cond_8
    return-void
.end method

.method private onEnableApn(IILandroid/os/Message;)V
    .locals 6

    .line 2389
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onEnableApn("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): NO ApnContext"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 2392
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    invoke-direct {p0, p3, v1, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRequestNetworkCompleteMsg(Landroid/os/Message;ZII)V

    return-void

    .line 2396
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onEnableApn: apnType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", request type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2398
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDependencyMet()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string p1, "dependencyUnmet"

    .line 2402
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    const-string p1, "onEnableApn: dependency is not met."

    .line 2405
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2407
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    invoke-direct {p0, p3, v1, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRequestNetworkCompleteMsg(Landroid/os/Message;ZII)V

    return-void

    .line 2411
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    const-string v4, "dataEnabled"

    if-eqz v2, :cond_2

    .line 2412
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    .line 2413
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2438
    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string p2, "onEnableApn: \'CONNECTING\' so return"

    .line 2415
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string p2, "onEnableApn state=CONNECTING, so return"

    .line 2416
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2417
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addRequestNetworkCompleteMsg(Landroid/os/Message;I)V

    return-void

    :pswitch_2
    const-string p1, "onEnableApn: \'DISCONNECTING\' so return"

    .line 2427
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string p1, "onEnableApn state=DISCONNECTING, so return"

    .line 2428
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2429
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    invoke-direct {p0, p3, v1, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRequestNetworkCompleteMsg(Landroid/os/Message;ZII)V

    return-void

    :pswitch_3
    const-string p1, "onEnableApn: \'CONNECTED\' so return"

    .line 2420
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string p1, "onEnableApn state=CONNECTED, so return"

    .line 2421
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2423
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    invoke-direct {p0, p3, v3, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRequestNetworkCompleteMsg(Landroid/os/Message;ZII)V

    return-void

    .line 2442
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "dependencyMet"

    .line 2443
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 2445
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2447
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v4, :cond_4

    .line 2448
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2451
    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 2452
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V

    .line 2453
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2454
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addRequestNetworkCompleteMsg(Landroid/os/Message;I)V

    return-void

    .line 2456
    :cond_5
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    invoke-direct {p0, p3, v1, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRequestNetworkCompleteMsg(Landroid/os/Message;ZII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onNetworkStatusChanged(ILjava/lang/String;)V
    .locals 1

    .line 2965
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2966
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.internal.telephony.CARRIER_SIGNAL_REDIRECTED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "redirectionUrl"

    .line 2967
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2968
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 2969
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Notify carrier signal receivers with redirectUrl: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2972
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->isRecoveryOnBadNetworkEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "Skip data stall recovery on network status change with in threshold"

    .line 2973
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2976
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    if-eq v0, p2, :cond_3

    const-string p1, "Skip data stall recovery on non WWAN"

    .line 2977
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2980
    :cond_3
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->processNetworkStatusChanged(Z)V

    return-void
.end method

.method private onRadioAvailable()V
    .locals 3

    const-string v0, "onRadioAvailable"

    .line 2670
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2671
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2675
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    const-string v0, "onRadioAvailable: We\'re on the simulator; assuming data is connected"

    .line 2677
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2680
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2681
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    :cond_1
    return-void
.end method

.method private onRadioOffOrNotAvailable()V
    .locals 2

    const/4 v0, 0x0

    .line 2689
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 2692
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2694
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    .line 2697
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "onRadioOffOrNotAvailable: is off and clean up all connections"

    .line 2699
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string v1, "radioTurnedOff"

    .line 2700
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    return-void
.end method

.method private onSimNotReady()V
    .locals 2

    const-string v0, "onSimNotReady"

    .line 2270
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "simNotReady"

    .line 2272
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2274
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    .line 2276
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2277
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2280
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 2281
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfilesAsNeeded()V

    return-void
.end method

.method private onUpdateIcc()V
    .locals 4

    .line 3901
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    return-void

    .line 3905
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 3907
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v0, :cond_3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "Removing stale icc objects."

    .line 3910
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3912
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 3915
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "New records found."

    .line 3916
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3917
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const v1, 0x42002

    .line 3918
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    .line 3922
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSimNotReady()V

    :cond_3
    return-void
.end method

.method private onVoiceCallEnded()V
    .locals 2

    const-string v0, "onVoiceCallEnded"

    .line 3073
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3074
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 3075
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3076
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3077
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 3078
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 3079
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    goto :goto_0

    .line 3082
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetPollStats()V

    .line 3086
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "2GVoiceCallEnded"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    return-void
.end method

.method private onVoiceCallStarted()V
    .locals 1

    const-string v0, "onVoiceCallStarted"

    .line 3062
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3063
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 3064
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onVoiceCallStarted stop polling"

    .line 3065
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3066
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 3067
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 3068
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    :cond_0
    return-void
.end method

.method private reevaluateDataConnections()V
    .locals 2

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 892
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->reevaluateRestrictedState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerForAllEvents()V
    .locals 3

    .line 805
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42001

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42006

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x4202d

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v2, 0x42008

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v2, 0x42007

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerServiceStateTrackerEvents()V

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    const v2, 0x42031

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->registerForServiceBindingChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private registerSettingsObserver()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 424
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "data_roaming"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const v2, 0x42030

    .line 428
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string v1, "device_provisioned"

    .line 432
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v2, 0x42032

    .line 431
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    return-void
.end method

.method public static releaseTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "HANDOVER"

    return-object p0

    :cond_1
    const-string p0, "DETACH"

    return-object p0

    :cond_2
    const-string p0, "NORMAL"

    return-object p0
.end method

.method public static requestTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "HANDOVER"

    return-object p0

    :cond_1
    const-string p0, "NORMAL"

    return-object p0
.end method

.method private resetPollStats()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 4274
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    .line 4275
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    const/16 v0, 0x3e8

    .line 4276
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    return-void
.end method

.method private restartDataStallAlarm()V
    .locals 1

    .line 4738
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4741
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->isAggressiveRecovery()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "restartDataStallAlarm: action is pending. not resetting the alarm."

    .line 4742
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    .line 4746
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    const/4 v0, 0x0

    .line 4747
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    return-void
.end method

.method private restartRadio()V
    .locals 3

    const-string v0, "restartRadio: ************TURN OFF RADIO**************"

    .line 2180
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "radioTurnedOff"

    .line 2181
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 2182
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    .line 2191
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v0

    .line 2193
    :try_start_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Failed to set net.ppp.reset-by-timeout"

    .line 2195
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2

    .line 2208
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "radioTurnedOff"

    .line 2210
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private sendRequestNetworkCompleteMsg(Landroid/os/Message;ZII)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2374
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_success"

    .line 2375
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "extra_request_type"

    .line 2376
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "extra_transport_type"

    .line 2377
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2378
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2

    .line 905
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setActivity = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 906
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 907
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    return-void
.end method

.method private setDataProfilesAsNeeded()V
    .locals 4

    const-string v0, "setDataProfilesAsNeeded"

    .line 3112
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3116
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 3117
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v2

    .line 3118
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3119
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3126
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLastDataProfileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLastDataProfileList:Ljava/util/ArrayList;

    .line 3128
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3129
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3130
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v2

    const/4 v3, 0x0

    .line 3129
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->setDataProfile(Ljava/util/List;ZLandroid/os/Message;)V

    :cond_3
    return-void
.end method

.method private setDataRoamingFromUserAction(Z)V
    .locals 2

    .line 2588
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2589
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_roaming_is_user_setting_key"

    .line 2590
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setDefaultDataRoamingEnabled()V
    .locals 3

    .line 2554
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_roaming"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2557
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2562
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataRoamingFromUserAction()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 2566
    :catch_0
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setDefaultDataRoamingEnabled: useCarrierSpecificDefault "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 2569
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDefaultDataRoamingEnabled()Z

    move-result v0

    .line 2570
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setDataRoamingEnabled(Z)V

    :cond_2
    return-void
.end method

.method private setPreferredApn(I)V
    .locals 4

    .line 3424
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-nez v0, :cond_0

    const-string p1, "setPreferredApn: X !canSEtPreferApn"

    .line 3425
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    .line 3429
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 3430
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "setPreferredApn: delete"

    .line 3431
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3432
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    .line 3433
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-ltz p1, :cond_1

    const-string v2, "setPreferredApn: insert"

    .line 3436
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3437
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3438
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "apn_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3439
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method private setRadio(Z)V
    .locals 1

    const-string v0, "phone"

    .line 934
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 936
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;II)Z
    .locals 11

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setupData: apnContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    invoke-static {p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1909
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setupData. requestType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNextApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "setupData: return for no apn found!"

    .line 1919
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 1925
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1926
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v2

    if-nez v2, :cond_1

    .line 1928
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v2

    :cond_1
    move v5, v2

    .line 1936
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dun"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1937
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1938
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1941
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v0, v3

    :cond_4
    :goto_1
    const/4 v10, 0x1

    if-nez v2, :cond_9

    .line 1949
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1950
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "setupData: Higher priority ApnContext active.  Ignoring call"

    .line 1952
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v1

    .line 1957
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ims"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "SinglePdnArbitration"

    .line 1961
    invoke-direct {p0, v10, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "setupData: Some calls are disconnecting first. Wait and retry"

    .line 1965
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v1

    :cond_6
    const-string v2, "setupData: Single pdp. Continue setting up data call."

    .line 1972
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1975
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1978
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_9

    const-string p1, "setupData: No free DataConnection and couldn\'t create one, WEIRD"

    .line 1982
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v1

    :cond_9
    move-object v3, v2

    .line 1986
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incAndGetConnectionGeneration()I

    move-result v8

    .line 1988
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupData: dc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " apnSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " gen#="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1993
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Landroid/telephony/data/ApnSetting;)V

    .line 1994
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1995
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const v0, 0x42000

    .line 1998
    iput v0, v7, Landroid/os/Message;->what:I

    .line 1999
    new-instance v0, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p1

    move v6, p2

    move v9, p3

    .line 2000
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IILandroid/os/Message;II)V

    const-string p1, "setupData: initing!"

    .line 2002
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v10
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 4

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1419
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1420
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":[state="

    .line 1421
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",enabled="

    .line 1423
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    .line 1425
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1427
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupDataOnConnectableApns: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1433
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_2

    .line 1434
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_4

    .line 1435
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    if-ne p2, v2, :cond_3

    .line 1436
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    goto :goto_2

    .line 1437
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1438
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1440
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseDataConnection(Ljava/lang/String;)V

    .line 1443
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isConnectable() call trySetupData"

    .line 1444
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1446
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method private startAlarmForReconnect(JLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4

    .line 2218
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 2220
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.internal.telephony.data-reconnect."

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reconnect_alarm_extra_reason"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "reconnect_alarm_extra_type"

    .line 2222
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2223
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    const-string v2, "reconnect_alarm_extra_transport_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2224
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    const/high16 v0, 0x10000000

    .line 2225
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startAlarmForReconnect: delay="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " apn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2234
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .line 2240
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    const/4 p1, 0x2

    .line 2240
    invoke-virtual {p3, p1, v1, v2, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startDataStallAlarm(Z)V
    .locals 6

    .line 4691
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->isNoRxDataStallDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4692
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_2

    .line 4695
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->isAggressiveRecovery()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4700
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    const v0, 0x57e40

    const-string v1, "data_stall_alarm_non_aggressive_delay_in_ms"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    .line 4696
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    const v0, 0xea60

    const-string v1, "data_stall_alarm_aggressive_delay_in_ms"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 4705
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    .line 4710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.data-stall"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4711
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    const-string v2, "data_stall_alarm_extra_tag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4712
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    const-string v2, "data_stall_alarm_extra_transport_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4713
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4714
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 4716
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    .line 4717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 4716
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_2
    return-void
.end method

.method private startNetStatPoll()V
    .locals 2

    .line 4280
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "startNetStatPoll"

    .line 4283
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4285
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetPollStats()V

    const/4 v0, 0x1

    .line 4286
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    .line 4287
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4289
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 4290
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    :cond_1
    return-void
.end method

.method private startProvisioningApnAlarm()V
    .locals 7

    .line 4762
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "provisioning_apn_alarm_delay_in_ms"

    const v2, 0xdbba0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4765
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 4767
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.debug.prov_apn_alarm"

    .line 4768
    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4770
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4772
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startProvisioningApnAlarm: e="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 4775
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    .line 4777
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startProvisioningApnAlarm: tag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4780
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4781
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    const-string v3, "provisioning.apn.alarm.tag"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4782
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 4784
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 4785
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 4784
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private stopDataStallAlarm()V
    .locals 2

    .line 4730
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    .line 4731
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 4732
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 4733
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method private stopNetStatPoll()V
    .locals 1

    const/4 v0, 0x0

    .line 4295
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    .line 4296
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "stopNetStatPoll"

    .line 4298
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4302
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 4303
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    :cond_0
    return-void
.end method

.method private stopProvisioningApnAlarm()V
    .locals 2

    .line 4790
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopProvisioningApnAlarm: current tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mProvsioningApnAlarmIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4793
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    .line 4794
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 4795
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 4796
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method private teardownForDun()Z
    .locals 2

    .line 1847
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result v0

    .line 1848
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1850
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApns()Ljava/util/ArrayList;

    move-result-object v0

    .line 1851
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z
    .locals 4

    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1462
    sget-object p2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1463
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    const-string/jumbo p1, "trySetupData: X We\'re on the simulator; assuming connected retValue=true"

    .line 1465
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 1469
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;-><init>()V

    .line 1470
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z

    move-result v1

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "trySetupData for APN type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", requestType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1474
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v1, :cond_6

    .line 1477
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "trySetupData: make a FAILED ApnContext IDLE so its reusable"

    .line 1479
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 1481
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1483
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result v1

    .line 1484
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .line 1485
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    .line 1484
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    .line 1486
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_5

    .line 1487
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "emergency"

    .line 1491
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1492
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 1493
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 1495
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    .line 1498
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1499
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 p2, 0x1b

    .line 1500
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyNoData(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    const-string/jumbo p2, "trySetupData: X No APN found retValue=false"

    .line 1502
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    return v0

    .line 1506
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "trySetupData: Create from mAllApnSettings : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 1509
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1508
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1514
    :cond_5
    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;II)Z

    move-result p1

    .line 1516
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "trySetupData: X retValue="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return p1

    .line 1519
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "trySetupData failed. apnContext = [type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", apnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDependencyMet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDependencyMet()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1521
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1527
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDataEnabled() = false. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_8

    .line 1533
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    const-string v1, " Stop retrying."

    .line 1534
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    :cond_8
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    return v0
.end method

.method private unregisterForAllEvents()V
    .locals 2

    .line 861
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPcoData(Landroid/os/Handler;)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    .line 869
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 874
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterServiceStateTrackerEvents()V

    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->unregisterForServiceBindingChanged(Landroid/os/Handler;)V

    return-void
.end method

.method private updateDataActivity()V
    .locals 9

    .line 4338
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    iget-wide v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(JJ)V

    .line 4339
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    invoke-direct {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>()V

    .line 4340
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->updateTotalTxRxSum()V

    .line 4341
    iget-wide v2, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    .line 4342
    iget-wide v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    .line 4348
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    if-eqz v1, :cond_5

    iget-wide v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-wide v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 4349
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    iget-wide v5, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    sub-long/2addr v1, v5

    .line 4350
    iget-wide v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    iget-wide v7, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    sub-long/2addr v5, v7

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 4355
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    .line 4357
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    .line 4359
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    goto :goto_0

    .line 4361
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    if-ne v0, v1, :cond_4

    .line 4362
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 4365
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    if-eq v1, v0, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    if-eqz v1, :cond_5

    .line 4368
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 4369
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    :cond_5
    return-void
.end method

.method private updateDataStallInfo()V
    .locals 8

    .line 4605
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;)V

    .line 4606
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->updateTcpTxRxSum()V

    .line 4613
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    iget-wide v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iget-wide v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    sub-long/2addr v1, v3

    .line 4614
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    iget-wide v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iget-wide v5, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 4624
    iput-wide v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    .line 4625
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->reset()V

    return-void

    :cond_0
    if-lez v0, :cond_2

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 4627
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPhoneStateIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4628
    iget-wide v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    goto :goto_0

    .line 4630
    :cond_1
    iput-wide v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    .line 4633
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateDataStallInfo: OUT sent="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSentSinceLastRecv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v0, :cond_3

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 4638
    iput-wide v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    .line 4639
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->reset()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected allowInitialAttachForOperator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cleanUpAllConnections"

    .line 1566
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const v0, 0x4201d

    .line 1567
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1568
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1569
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 2

    .line 1647
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleanUpConnection: apnContext="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const v0, 0x42018

    .line 1648
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 1649
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1650
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1651
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected createAllApnList()V
    .locals 8

    .line 3139
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3140
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 3141
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3144
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v1, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filtered/subId/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3146
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3145
    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    .line 3144
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3149
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3150
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3154
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3156
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_3
    const-string v1, "createAllApnList: cursor is null"

    .line 3158
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3159
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnSettingsInitializationLog:Landroid/util/LocalLog;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cursor is null for carrier, operator: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3163
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    .line 3165
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dedupeApnSettings()V

    .line 3167
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 3168
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "createAllApnList: No APN found for carrier, operator: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3169
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnSettingsInitializationLog:Landroid/util/LocalLog;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "no APN found for carrier, operator: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3171
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    goto :goto_3

    .line 3175
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    .line 3176
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3177
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    const/4 v0, -0x1

    .line 3178
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 3180
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createAllApnList: mPreferredApn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3182
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createAllApnList: X mAllApnSettings="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public disableApn(II)V
    .locals 1

    const v0, 0x4200e

    .line 2462
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispose()V
    .locals 3

    const-string v0, "DCT.dispose"

    .line 827
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 831
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 835
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    :cond_1
    const/4 v0, 0x1

    .line 838
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 840
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/dataconnection/DcTracker$DctOnSubscriptionsChangedListener;

    .line 846
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->dispose()V

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->dispose()V

    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 854
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllEvents()V

    .line 856
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->destroyDataConnections()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const-string v0, "DcTracker:"

    .line 4024
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " RADIO_TESTS=false"

    .line 4025
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDataEnabledSettings="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4027
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isDataAllowed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4028
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4029
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mRequestedApnType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4030
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPhone="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4031
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mActivity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4032
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4033
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mTxPkts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4034
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mRxPkts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4035
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNetStatPollPeriod="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4036
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNetStatPollEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNetStatPollEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4037
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDataStallTxRxSum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDataStallAlarmTag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDataStallNoRxEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallNoRxEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4040
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSentSinceLastRecv="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSentSinceLastRecv:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4041
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNoRecvPollCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mNoRecvPollCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4042
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mResolver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4043
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mReconnectIntent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4044
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mAutoAttachEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4045
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIsScreenOn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4046
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mUniqueIdGenerator="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4047
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mDataServiceBound="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mDataRoamingLeakageLog= "

    .line 4048
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4049
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataRoamingLeakageLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, " mApnSettingsInitializationLog= "

    .line 4050
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnSettingsInitializationLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4052
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string v0, " ***************************************"

    .line 4053
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4054
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    if-eqz v1, :cond_1

    .line 4056
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceBound:Z

    if-eqz v2, :cond_0

    .line 4057
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, " Can\'t dump mDcc because data service is not bound."

    .line 4059
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, " mDcc=null"

    .line 4062
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4064
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4065
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 4067
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4068
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " mDataConnections: count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4069
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4070
    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, " *** mDataConnection[%d] \n"

    invoke-virtual {p2, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4071
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "mDataConnections=null"

    .line 4074
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4076
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4077
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4078
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    .line 4080
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4081
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " mApnToDataConnectonId size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4082
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4083
    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, " mApnToDataConnectonId[%s]=%d\n"

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    :cond_4
    const-string v1, "mApnToDataConnectionId=null"

    .line 4086
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4088
    :cond_5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4089
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4090
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_7

    .line 4092
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4093
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " mApnContexts size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4094
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4095
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3

    .line 4097
    :cond_6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v0, " mApnContexts=null"

    .line 4099
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4101
    :goto_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mAllApnSettings size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v2

    .line 4104
    :goto_5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 4105
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, " mAllApnSettings[%d]: %s\n"

    invoke-virtual {p2, v5, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4107
    :cond_8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPreferredApn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIsPsRestricted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIsDisposed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mIntentReceiver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mReregisterOnReconnectFailure="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " canSetPreferApn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mApnObserver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " getOverallState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mAttached="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4118
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4119
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public enableApn(IILandroid/os/Message;)V
    .locals 1

    const v0, 0x4200d

    .line 2383
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public fetchDunApns()Ljava/util/ArrayList;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "net.tethering.noprovisioning"

    .line 1750
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fetchDunApns: net.tethering.noprovisioning=true ret: empty list"

    .line 1751
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1752
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 1754
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result v0

    .line 1755
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1756
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    .line 1757
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1762
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "tether_dun_apn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1763
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1764
    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->arrayFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1768
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1769
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1770
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/ApnSetting;

    const/16 v5, 0x8

    .line 1771
    invoke-virtual {v4, v5}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1772
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1779
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 1780
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v4

    .line 1781
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v5

    .line 1780
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1784
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method protected finalize()V
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz p1, :cond_0

    .line 1107
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1109
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    const-string v0, "get all active apn types"

    .line 1090
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1094
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1095
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1099
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getActivity()Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    return-object v0
.end method

.method protected getAttachedStatus()Z
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getAutoAttachEnabled()Z
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getDataConnectionByApnType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz p1, :cond_0

    .line 1837
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataConnectionByContextId(I)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->getActiveDcByCid(I)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object p1

    return-object p1
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "return link properties for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "return new LinkProperties"

    .line 1069
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1070
    new-instance p1, Landroid/net/LinkProperties;

    invoke-direct {p1}, Landroid/net/LinkProperties;-><init>()V

    return-object p1
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "get active pdp is not null, return NetworkCapabilities for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "return new NetworkCapabilities"

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1085
    new-instance p1, Landroid/net/NetworkCapabilities;

    invoke-direct {p1}, Landroid/net/NetworkCapabilities;-><init>()V

    return-object p1
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 8

    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1158
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1160
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v2, :cond_3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    const/4 v6, 0x5

    if-eq v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v5, v1

    move v3, v2

    move v4, v3

    goto :goto_0

    .line 1164
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0

    :cond_4
    if-nez v3, :cond_5

    .line 1182
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0

    :cond_5
    if-eqz v4, :cond_6

    .line 1187
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0

    :cond_6
    if-nez v5, :cond_7

    .line 1190
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0

    .line 1193
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string v0, "getPcscfAddress()"

    .line 4123
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "apnType is null, return null"

    .line 4127
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "emergency"

    .line 4131
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4132
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    goto :goto_0

    :cond_1
    const-string v1, "ims"

    .line 4133
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4134
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    :goto_0
    if-nez p1, :cond_2

    const-string p1, "apnContext is null, return null"

    .line 4141
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v0

    .line 4145
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4149
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getPcscfAddresses()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 4152
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 4153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pcscf["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :cond_4
    return-object v0

    :cond_5
    const-string p1, "apnType is invalid, return null"

    .line 4136
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method getPreferredApn()Landroid/telephony/data/ApnSetting;
    .locals 9

    .line 3444
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3449
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 3450
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3451
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "_id"

    const-string v2, "name"

    const-string v5, "apn"

    filled-new-array {v0, v2, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "name ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3456
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    goto :goto_0

    .line 3458
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    .line 3460
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPreferredApn: mRequestedApnType="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cursor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " cursor.count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 3461
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3460
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3463
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-eqz v3, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 3465
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3466
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3467
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/ApnSetting;

    .line 3468
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getPreferredApn: apnSetting="

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3469
    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v5

    if-ne v5, v0, :cond_3

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:I

    invoke-virtual {v4, v5}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3470
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPreferredApn: X found apnSetting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3471
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_4
    if-eqz v2, :cond_5

    .line 3478
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v0, "getPreferredApn: X not found"

    .line 3481
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v1

    :cond_6
    :goto_1
    const-string v0, "getPreferredApn: mAllApnSettings is empty"

    .line 3445
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 3

    .line 1123
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result p1

    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 1125
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1126
    invoke-virtual {v2, p1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1127
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1128
    sget-object p1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    return-object p1

    .line 1129
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isActivating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1130
    sget-object p1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    return-object p1

    .line 1131
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isInactive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1132
    sget-object p1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    return-object p1

    .line 1133
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDisconnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    sget-object p1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    return-object p1

    .line 1139
    :cond_4
    sget-object p1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    return-object p1
.end method

.method public getSubId()J
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 3505
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1a

    const v3, 0x4201a

    if-eq v0, v3, :cond_19

    const v3, 0x4201d

    const/4 v4, 0x1

    if-eq v0, v3, :cond_17

    const v3, 0x42021

    if-eq v0, v3, :cond_16

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/16 v1, 0x11

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    .line 3859
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unhandled event="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DcTracker"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3643
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3644
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "data_roaming_is_user_setting_key"

    .line 3645
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 3646
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 3847
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataServiceBindingChanged(Z)V

    return-void

    .line 3844
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataReconnect(Landroid/os/Bundle;)V

    return-void

    .line 3850
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3851
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Landroid/util/Pair;

    if-eqz v0, :cond_1b

    .line 3852
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 3853
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3854
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3855
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataEnabledChanged(ZI)V

    return-void

    .line 3840
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handlePcoData(Landroid/os/AsyncResult;)V

    return-void

    .line 3651
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3652
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 3653
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onNetworkStatusChanged(ILjava/lang/String;)V

    return-void

    .line 3612
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, p1, :cond_1b

    .line 3613
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3614
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    return-void

    .line 3597
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "nwTypeChanged"

    .line 3604
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionsOnUpdatedApns(ZLjava/lang/String;)V

    .line 3606
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    return-void

    .line 3832
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_0

    .line 3833
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    return-void

    .line 3834
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1b

    .line 3835
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    return-void

    :pswitch_9
    const-string v0, "EVENT_PROVISIONING_APN_ALARM"

    .line 3778
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3779
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3780
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3781
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_1

    const-string p1, "EVENT_PROVISIONING_APN_ALARM: Disconnecting"

    .line 3782
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3783
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    .line 3784
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    .line 3785
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopProvisioningApnAlarm()V

    .line 3786
    invoke-direct {p0, v4, v5, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    return-void

    .line 3789
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_PROVISIONING_APN_ALARM: ignore stale tag, mProvisioningApnAlarmTag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningApnAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != arg1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "EVENT_PROVISIONING_APN_ALARM: Not connected ignore"

    .line 3795
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    :pswitch_a
    const-string v0, "CMD_IS_PROVISIONING_APN"

    .line 3800
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3804
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "apnType"

    .line 3806
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 3808
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CMD_IS_PROVISIONING_APN: apnType is empty"

    .line 3809
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3812
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isProvisioningApn(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "CMD_IS_PROVISIONING_APN: NO provisioning url ignoring"

    .line 3815
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    :goto_0
    move v0, v3

    .line 3818
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CMD_IS_PROVISIONING_APN: ret="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3819
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x42026

    if-eqz v0, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    return-void

    .line 3757
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    :try_start_1
    const-string v0, "provisioningUrl"

    .line 3760
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 3762
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url not a string"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3763
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    .line 3766
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url is empty, ignoring"

    .line 3767
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3768
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    .line 3769
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    return-void

    .line 3771
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CMD_ENABLE_MOBILE_PROVISIONING: provisioningUrl="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3772
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    .line 3773
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startProvisioningApnAlarm()V

    return-void

    .line 3720
    :pswitch_c
    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_8

    move p1, v4

    goto :goto_3

    :cond_8
    const/4 p1, -0x1

    :goto_3
    add-int/2addr v0, p1

    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    .line 3722
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:  sEnableFailFastRefCounter="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3725
    sget p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    if-gez p1, :cond_9

    .line 3726
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: sEnableFailFastRefCounter:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < 0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3728
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3729
    sput v3, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    .line 3731
    :cond_9
    sget p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    if-lez p1, :cond_a

    move p1, v4

    goto :goto_4

    :cond_a
    move p1, v3

    .line 3733
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sEnableFailFastRefCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3736
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    if-eq v0, p1, :cond_1b

    .line 3737
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    xor-int/2addr p1, v4

    .line 3739
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataStallNoRxEnabled:Z

    .line 3740
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->isNoRxDataStallDetectionEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3741
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p1, v0, :cond_c

    iget-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3743
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    .line 3744
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    const-string p1, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: start data stall"

    .line 3745
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3746
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 3747
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    return-void

    :cond_c
    const-string p1, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: stop data stall"

    .line 3749
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3750
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    return-void

    .line 3685
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3686
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 3687
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3688
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3689
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 3690
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getConnectionGeneration()I

    move-result v2

    if-ne v2, v0, :cond_d

    .line 3691
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Lcom/android/internal/telephony/dataconnection/ApnContext;I)V

    return-void

    :cond_d
    const-string p1, "EVENT_DATA_SETUP_COMPLETE_ERROR: Dropped the event because generation did not match."

    .line 3693
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    return-void

    :pswitch_e
    const-string v0, "EVENT_CLEAN_UP_CONNECTION"

    .line 3586
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3587
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-direct {p0, v4, v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    return-void

    .line 3557
    :pswitch_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EVENT_PS_RESTRICT_DISABLED "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3558
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    .line 3559
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3560
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 3561
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    return-void

    .line 3564
    :cond_e
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    const-string v2, "psRestrictEnabled"

    if-ne p1, v0, :cond_f

    .line 3565
    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    .line 3566
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 3568
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz p1, :cond_10

    .line 3570
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3571
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    return-void

    :cond_10
    const-string p1, "**** Default ApnContext not found ****"

    .line 3573
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3574
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez p1, :cond_11

    goto/16 :goto_6

    .line 3575
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Default ApnContext not found"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3546
    :pswitch_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EVENT_PS_RESTRICT_ENABLED "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3547
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 3548
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 3549
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    return-void

    .line 3536
    :pswitch_11
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onApnChanged()V

    return-void

    .line 3532
    :pswitch_12
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDsRecoveryHandler:Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataStallRecoveryHandler;->doRecovery()V

    return-void

    .line 3627
    :pswitch_13
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataStallAlarm(I)V

    return-void

    .line 3528
    :pswitch_14
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionAttached()V

    return-void

    .line 3699
    :pswitch_15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_DISCONNECT_DONE msg="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3700
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3701
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 3702
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3703
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3704
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getConnectionGeneration()I

    move-result v1

    if-ne v1, p1, :cond_12

    .line 3705
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisconnectDone(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    return-void

    :cond_12
    const-string p1, "EVENT_DISCONNECT_DONE: Dropped the event because generation did not match."

    .line 3707
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 3623
    :pswitch_16
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisableApn(II)V

    return-void

    .line 3619
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onEnableApn(IILandroid/os/Message;)V

    return-void

    .line 3631
    :pswitch_18
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataRoamingOff()V

    return-void

    .line 3636
    :pswitch_19
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataRoamingOnOrSettingsChanged(I)V

    return-void

    .line 3524
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionDetached()V

    return-void

    .line 3717
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onVoiceCallEnded()V

    return-void

    .line 3713
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onVoiceCallStarted()V

    return-void

    .line 3661
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRadioOffOrNotAvailable()V

    return-void

    .line 3582
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    return-void

    .line 3507
    :pswitch_1f
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSIMRecords()Lcom/android/internal/telephony/uicc/SIMRecords;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 3508
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz p1, :cond_13

    .line 3509
    invoke-virtual {p1, p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    .line 3511
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoaded()V

    return-void

    .line 3657
    :pswitch_20
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRadioAvailable()V

    return-void

    .line 3665
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3666
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 3667
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3668
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3669
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 3670
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getConnectionGeneration()I

    move-result v5

    if-ne v5, v1, :cond_15

    const/high16 v1, 0x10000

    .line 3673
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_14

    .line 3675
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5

    :cond_14
    move v3, v4

    .line 3677
    :goto_5
    invoke-direct {p0, v2, v3, v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupComplete(Lcom/android/internal/telephony/dataconnection/ApnContext;ZII)V

    return-void

    :cond_15
    const-string p1, "EVENT_DATA_SETUP_COMPLETE: Dropped the event because generation did not match."

    .line 3679
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 3824
    :cond_16
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    return-void

    .line 3590
    :cond_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_18

    .line 3591
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3593
    :cond_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnectionsInternal(ZLjava/lang/String;)Z

    return-void

    .line 3828
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    return-void

    .line 3516
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoaded()V

    .line 3517
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz p1, :cond_1b

    .line 3518
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3519
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    :cond_1b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42000
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42006
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4200b
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42016
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x42023
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4202c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_19
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 3

    .line 1817
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApns()Ljava/util/ArrayList;

    move-result-object v0

    .line 1818
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hasMatchedTetherApnSetting: APNs="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1819
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1263
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    invoke-direct {v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;-><init>()V

    .line 1266
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isInternalDataEnabled()Z

    move-result v4

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAttachedStatus()Z

    move-result v5

    .line 1268
    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v6

    .line 1269
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->getPowerStateFromCarrier()Z

    move-result v7

    .line 1271
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRat()I

    move-result v8

    const/16 v9, 0x12

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    move v6, v10

    move v7, v6

    .line 1277
    :cond_0
    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v10

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 1280
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v13

    .line 1279
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v13

    if-eqz v1, :cond_3

    .line 1283
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v14, v15}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v14, v10

    .line 1285
    :goto_2
    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1293
    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1294
    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    :cond_4
    if-eqz v1, :cond_6

    .line 1299
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    const-string v9, "emergency"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1300
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v2, :cond_5

    .line 1304
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->EMERGENCY_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    :cond_5
    return v10

    :cond_6
    if-eqz v1, :cond_7

    .line 1311
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1312
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->APN_NOT_CONNECTABLE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    :cond_7
    if-eqz v1, :cond_9

    .line 1317
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    const-string v12, "default"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1318
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    const-string v12, "ia"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    const/16 v9, 0x12

    if-ne v8, v9, :cond_9

    .line 1320
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ON_IWLAN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 1323
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isEmergency()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1324
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->IN_ECBM:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    :cond_a
    if-nez v5, :cond_b

    .line 1327
    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1328
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    :cond_b
    if-nez v11, :cond_c

    .line 1331
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 1333
    :cond_c
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v15, v5, :cond_d

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1334
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1335
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 1336
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    :cond_d
    if-nez v4, :cond_e

    .line 1339
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    :cond_e
    if-nez v13, :cond_f

    .line 1342
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 1344
    :cond_f
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1345
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 1347
    :cond_10
    iget-boolean v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    if-eqz v4, :cond_11

    .line 1348
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    :cond_11
    if-nez v6, :cond_12

    .line 1351
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    :cond_12
    if-nez v7, :cond_13

    .line 1354
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 1356
    :cond_13
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1357
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V

    .line 1361
    :cond_14
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->containsHardDisallowedReasons()Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v2, :cond_15

    .line 1363
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->copyFrom(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V

    :cond_15
    const/4 v1, 0x0

    return v1

    :cond_16
    if-nez v14, :cond_17

    .line 1376
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v4

    if-nez v4, :cond_17

    .line 1377
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    :cond_17
    if-eqz v1, :cond_18

    .line 1383
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->hasRestrictedRequests(Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1384
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1385
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    .line 1389
    :cond_18
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1390
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NORMAL:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V

    :cond_19
    if-eqz v2, :cond_1a

    .line 1394
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->copyFrom(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V

    .line 1397
    :cond_1a
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->allowed()Z

    move-result v1

    return v1
.end method

.method public isDataAllowed(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1243
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z

    move-result p1

    return p1
.end method

.method public isDisconnected()Z
    .locals 2

    .line 3101
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3102
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method isEmergency()Z
    .locals 3

    .line 1452
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1453
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isEmergency: result="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return v0
.end method

.method isPermanentFailure(I)Z
    .locals 2

    .line 1873
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1874
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1873
    invoke-static {v0, p1, v1}, Landroid/telephony/DataFailCause;->isPermanentFailure(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1875
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 4016
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected notifyOffApnsOfAvailability()V
    .locals 4

    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1546
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1547
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyOffApnOfAvailability type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1548
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method onRecordsLoaded()V
    .locals 2

    .line 3488
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 3489
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3490
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoadedOrSubIdChanged()V

    return-void

    .line 3492
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring EVENT_RECORDS_LOADED as subId is not valid: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected onRecordsLoadedOrSubIdChanged()V
    .locals 2

    const-string v0, "onRecordsLoadedOrSubIdChanged: createAllApnList"

    .line 2258
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2259
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110025

    .line 2260
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    .line 2262
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 2263
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfilesAsNeeded()V

    .line 2264
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 2265
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyDataConnection()V

    .line 2266
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "simLoaded"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;I)V
    .locals 2

    .line 3971
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3973
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "notify All Data Disconnected"

    .line 3974
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3975
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    :cond_0
    return-void
.end method

.method public registerServiceStateTrackerEvents()V
    .locals 4

    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    const/4 v2, 0x0

    const v3, 0x42010

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    const v3, 0x42009

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200c

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42016

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42017

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    const v3, 0x42029

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public releaseNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V
    .locals 3

    .line 923
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    .line 924
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DcTracker.releaseNetwork for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-virtual {p3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->releaseNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V

    :cond_0
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;ILandroid/os/Message;Landroid/util/LocalLog;)V
    .locals 3

    .line 912
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    .line 913
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContextsByType:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DcTracker.requestNetwork for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-virtual {p4, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestNetwork(Landroid/net/NetworkRequest;ILandroid/os/Message;Landroid/util/LocalLog;)V

    :cond_0
    return-void
.end method

.method sendRestartRadio()V
    .locals 1

    const-string v0, "sendRestartRadio:"

    .line 2174
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const v0, 0x4201a

    .line 2175
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2176
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2

    const v0, 0x42028

    .line 4308
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 4309
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4310
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4311
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2

    const v0, 0x42028

    .line 4321
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 4322
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4323
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4324
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDataRoamingEnabledByUser(Z)V
    .locals 2

    .line 2524
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->setDataRoamingEnabled(Z)V

    const/4 v0, 0x1

    .line 2525
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataRoamingFromUserAction(Z)V

    .line 2527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDataRoamingEnabledByUser: set phoneSubId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected setInitialAttachApn()V
    .locals 29

    move-object/from16 v0, p0

    .line 2011
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setInitialApn: E mPreferredApn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2013
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2014
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    move-object v4, v3

    goto/16 :goto_1

    .line 2015
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2017
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v3

    move-object v5, v4

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/data/ApnSetting;

    if-nez v4, :cond_2

    const/16 v7, 0x200

    .line 2019
    invoke-virtual {v6, v7}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2021
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "setInitialApn: firstNonEmergencyApnSetting="

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v4, v6

    .line 2024
    :cond_2
    invoke-virtual {v6, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2026
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setInitialApn: iaApnSetting="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_2

    :cond_3
    if-nez v5, :cond_1

    const/16 v7, 0x11

    .line 2030
    invoke-virtual {v6, v7}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2032
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "setInitialApn: defaultApnSetting="

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    :cond_4
    move-object v1, v3

    goto :goto_2

    :cond_5
    move-object v1, v3

    move-object v4, v1

    :goto_1
    move-object v5, v4

    :goto_2
    if-nez v1, :cond_6

    if-nez v5, :cond_6

    .line 2039
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->allowInitialAttachForOperator()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "Abort Initial attach"

    .line 2040
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz v1, :cond_7

    const-string v2, "setInitialAttachApn: using iaApnSetting"

    .line 2051
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2053
    :cond_7
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    if-eqz v1, :cond_8

    const-string v1, "setInitialAttachApn: using mPreferredApn"

    .line 2054
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2055
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Landroid/telephony/data/ApnSetting;

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    const-string v1, "setInitialAttachApn: using defaultApnSetting"

    .line 2057
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    const-string v1, "setInitialAttachApn: using firstNonEmergencyApnSetting"

    .line 2060
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_3

    :cond_a
    move-object v1, v3

    :goto_3
    if-nez v1, :cond_b

    const-string v1, "setInitialAttachApn: X There in no available apn"

    .line 2065
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    return-void

    .line 2067
    :cond_b
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 2069
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v1, "setInitialAttachApn: use empty apn"

    .line 2070
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x100

    const/16 v17, 0x2

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v11, ""

    const-string v13, ""

    const-string v14, ""

    const-string v28, ""

    .line 2072
    invoke-static/range {v4 .. v28}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    .line 2077
    :cond_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "setInitialAttachApn: X selected Apn="

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2078
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 2079
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2078
    invoke-static {v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2080
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v4

    .line 2078
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    return-void
.end method

.method protected setupDataOnConnectableApns(Ljava/lang/String;)V
    .locals 1

    .line 1411
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    return-void
.end method

.method public sortApnListByPreferred(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 3394
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 3395
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApnSetId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3397
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$4;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$4;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1

    .line 3980
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterServiceStateTrackerEvents()V
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(ILandroid/os/Handler;)V

    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(ILandroid/os/Handler;)V

    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mTransportType:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(ILandroid/os/Handler;)V

    return-void
.end method

.method public update()V
    .locals 2

    .line 3933
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update sub = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "update(): Active DDS, register for all events now!"

    .line 3934
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3935
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    .line 3937
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateAutoAttachOnCreation()V

    .line 3939
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->updateCurrentCarrierInProvider()Z

    return-void
.end method

.method public updateAutoAttachOnCreation()V
    .locals 5

    .line 3949
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v0

    .line 3950
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 3951
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3958
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v0

    if-eq v4, v0, :cond_1

    .line 3959
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-nez v0, :cond_1

    .line 3960
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    const/16 v4, 0xd

    if-eq v0, v4, :cond_1

    .line 3961
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/4 v3, 0x1

    .line 3958
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 3952
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
